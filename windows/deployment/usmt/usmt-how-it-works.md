---
title: How USMT Works
description: Learn how USMT works and how it includes two tools that migrate settings and data - ScanState and LoadState.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 01/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# How USMT works

USMT includes two tools that migrate settings and data: **ScanState** and **LoadState**. **ScanState** collects information from the source computer, and **LoadState** applies that information to the destination computer.

> [!NOTE]
>
> For more information about how USMT processes the rules and the XML files, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

## The ScanState process

When the **ScanState** tool runs on the source computer, it goes through the following process:

1. It parses and validates the command-line parameters, creates the `ScanState.log` file, and then begins logging.

1. It collects information about all of the migration components that need to be migrated. A *migration component* is a logical group of files, registry keys, and values. For example, the set of files, registry keys, and values that store the settings of Adobe Acrobat is grouped into a single migration component.

    There are three types of components:

    - Components that migrate the operating system settings.
  
    - Components that migrate application settings.

    - Components that migrate users' files.

    The **ScanState** tool collects information about the application settings and user data components from the **.xml** files that are specified on the command line.

    In currently supported versions of Windows, the manifest files control how the operating-system settings are migrated. These files can't be modified. To exclude certain operating-system settings, a `Config.xml` file must be created and modified.

1. **ScanState** determines which user profiles should be migrated. By default, all user profiles on the source computer are migrated. However, users can be included and excluded using the [User options](usmt-scanstate-syntax.md#user-options). The System profile and the Public profile in a source computer running currently supported versions of Windows is always migrated, and these profiles can't be excluded from the migration.

1. In the **Scanning** phase, **ScanState** does the following for each user profile selected for migration:

    1. For each component, **ScanState** checks the type of the component. If the current user profile is the system profile and the component type is **System** or **UserAndSystem**, the component is selected for this user. Otherwise, the component is ignored. Alternatively, if the current user profile isn't the system profile and the component type is **User** or **UserAndSystem**, the component is selected for this user. Otherwise, this component is ignored.

        > [!NOTE]
        >
        > From this point on, **ScanState** doesn't distinguish between components that migrate operating-system settings, components that migrate application settings, and components that migrate users' files. **ScanState** processes all components in the same way.

    1. Each component that is selected in the previous step is processed further. Any profile-specific variables (such as **CSIDL_PERSONAL**) are evaluated in the context of the current profile. For example, if the profile that is being processed belongs to **User1**, then **CSIDL_PERSONAL** would expand to `C:\Users\User1\Documents`, assuming that the user profiles are stored in the `C:\Users` directory.

    1. For each selected component, **ScanState** evaluates the **\<detects\>** section. If the condition in the **\<detects\>** section evaluates to false, the component isn't processed any further. Otherwise, the processing of this component continues.

    1. For each selected component, **ScanState** evaluates the **\<rules\>** sections. For each **\<rules\>** section, if the current user profile is the system profile and the context of the **\<rules\>** section is **System** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored. Alternatively, if the current user profile isn't the system profile and the context of the **\<rules\>** section is **User** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored.

    1. **ScanState** creates a list of migration units that need to be migrated by processing the various subsections under this **\<rules\>** section. Each unit is collected if the unit is mentioned in an **\<include\>** subsection, as long as there isn't a more specific rule for it in an **\<exclude\>** subsection in the same **\<rules\>** section. For more information about precedence in the **.xml** files, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

        In addition, any migration unit (such as a file, registry key, or set of registry values) that is in an \<UnconditionalExclude\> section isn't migrated.

        > [!NOTE]
        >
        > **ScanState** ignores some subsections such as \<destinationCleanup\> and \<locationModify\>. These sections are evaluated only on the destination computer.

1. In the **Collecting** phase, **ScanState** creates a central list of the migration units by combining the lists that were created for each selected user profile.

1. In the **Saving** phase, **ScanState** writes the migration units that were collected to the store location.

    > [!NOTE]
    >
    > **ScanState** doesn't modify the source computer in any way.

## The LoadState process

The **LoadState** process is similar to the **ScanState** process. The **ScanState** tool collects migration units such as file, registry key, or registry values from the source computer and saves them to the store. Similarly, the **LoadState** tool collects migration units from the store and applies them to the destination computer.

1. **ScanState** parses and validates the command-line parameters, creates the `ScanState.log` file, and then begins logging.

1. **LoadState** collects information about the migration components that need to be migrated.

   **LoadState** obtains information for the application-settings components and user-data components from the migration **.xml** files that are specified by the `LoadState.exe` command.

   In currently supported versions of Windows, the manifest files control how the operating-system settings are migrated. These files can't be modified. To exclude certain operating-system settings, a `Config.xml` file must be created and modified.

1. **LoadState** determines which user profiles should be migrated. By default, all user profiles present on the source computer are migrated. However, users can be included and excluded using the [User options](usmt-loadstate-syntax.md#user-options). The System profile and the Public profile in a source computer running currently supported versions of Windows is always migrated and these profiles can't be excluded from the migration.

   - If local user accounts are being migrated and if the accounts don't already exist on the destination computer, the `/lac` command-line option must be used. If the `/lac` option isn't specified, any local user accounts that aren't already present on the destination computer, aren't migrated.

   - When specified with the `LoadState.exe` command, the `/md` and `/mu` options are processed to rename the user profile on the destination computer.

   - For each user profile selected from the store, **LoadState** creates a corresponding user profile on the destination computer. The destination computer doesn't need to be connected to the domain for domain user profiles to be created. If USMT can't determine a domain, it attempts to apply the settings to a local account. For more information, see [Identify Users](usmt-identify-users.md).

1. In the **Scanning** phase, **LoadState** does the following for each user profile:

   1. For each component, **LoadState** checks the type of the component. If the current user profile is the system profile and the component type is **System** or **UserAndSystem**, the component is selected for this user. Otherwise, the component is ignored. Alternatively, if the current user profile isn't the system profile and the component type is **User** or **UserAndSystem**, the component is selected for this user. Otherwise, this component is ignored.

       > [!NOTE]
       >
       > From this point on, **LoadState** doesn't distinguish between components that migrate operating-system settings, components that migrate application settings, and components that migrate users' files. **LoadState** evaluates all components in the same way.

   1. Each component that is selected is processed further. Any profile-specific variables (such as **CSIDL_PERSONAL**) are evaluated in the context of the current profile. For example, if the profile being processed belongs to **User1**, then **CSIDL_PERSONAL** would expand to `C:\Users\User1\Documents` (assuming that the user profiles are stored in the `C:\Users` directory).

       > [!NOTE]
       >
       > **LoadState** ignores the **\<detects\>** section specified in a component. At this point, all specified components are considered to be detected and are selected for migration.

   1. For each selected component, **LoadState** evaluates the **\<rules\>** sections. For each **\<rules\>** section, if the current user profile is the system profile and the context of the **\<rules\>** section is **System** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored. Alternatively, if the current user profile isn't the system profile and the context of the **\<rules\>** section is **User** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored.

   1. **LoadState** creates a central list of migration units by processing the various subsections under the **\<rules\>** section. Each migration unit that is in an **\<include\>** subsection is migrated as long, as there isn't a more specific rule for it in an **\<exclude\>** subsection in the same **\<rules\>** section. For more information about precedence, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

   1. **LoadState** evaluates the destination computer-specific subsections, for example, the **\<destinationCleanup\>** and **\<locationModify\>** subsections.

   1. If the destination computer is running a currently supported version of Windows, then the migunits that were collected by **ScanState** using downlevel manifest files are processed by **LoadState** using the corresponding Component Manifest from the downlevel Windows version. The downlevel manifest files aren't used during **LoadState**.

       > [!IMPORTANT]
       >
       > For **LoadState** to use the **.xml** files, it's important to specify them with the `LoadState.exe` command. Otherwise, any destination-specific rules, such as **\<locationModify\>**, in these **.xml** files are ignored, even if the same **.xml** files were provided when the `ScanState.exe` command ran.

1. In the **Apply** phase, **LoadState** writes the migration units that were collected to the various locations on the destination computer. If there are conflicts and there isn't a **\<merge\>** rule for the object, the default behavior for the registry is for the source to overwrite the destination. The default behavior for files is for the source to be renamed incrementally, for example, OriginalFileName(1).OriginalExtension. Some settings, such as fonts, wallpaper, and screen-saver settings, don't take effect until the next time the user logs on. For this reason, sign out when the `LoadState.exe` command actions are finished.

## Related articles

- [User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md).
