---
title: How USMT Works (Windows 10)
description: Learn how USMT works and how it includes two tools that migrate settings and data - ScanState and LoadState.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
ms.date: 11/01/2022
---

# How USMT works

USMT includes two tools that migrate settings and data: **ScanState** and **LoadState**. **ScanState** collects information from the source computer, and **LoadState** applies that information to the destination computer.

- [How USMT works](#how-usmt-works)
  - [The ScanState process](#the-scanstate-process)
  - [The LoadState process](#the-loadstate-process)
  - [Related articles](#related-articles)

    > [!NOTE]
    > For more information about how USMT processes the rules and the XML files, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

## The ScanState process

When you run the **ScanState** tool on the source computer, it goes through the following process:

1. It parses and validates the command-line parameters, creates the `ScanState.log` file, and then begins logging.

2. It collects information about all of the migration components that need to be migrated. A *migration component* is a logical group of files, registry keys, and values. For example, the set of files, registry keys, and values that store the settings of Adobe Acrobat is grouped into a single migration component.

    There are three types of components:

    - Components that migrate the operating system settings
  
    - Components that migrate application settings

    - Components that migrate users' files

    The **ScanState** tool collects information about the application settings and user data components from the .xml files that are specified on the command line.

    In Windows 7, and Windows 8, the manifest files control how the operating-system settings are migrated. You can't modify these files. If you want to exclude certain operating-system settings, you must create and modify a `Config.xml` file.

3. **ScanState** determines which user profiles should be migrated. By default, all user profiles on the source computer are migrated. However, you can include and exclude users using the User Options. The public profile in a source computer running Windows 7, Windows 8, and Windows 10 is always migrated, and you can't exclude these profiles from the migration.

4. In the **Scanning** phase, **ScanState** does the following for each user profile selected for migration:

    1. For each component, **ScanState** checks the type of the component. If the current user profile is the system profile and the component type is **System** or **UserAndSystem**, the component is selected for this user. Otherwise, the component is ignored. Alternatively, if the current user profile isn't the system profile and the component type is **User** or **UserAndSystem**, the component is selected for this user. Otherwise, this component is ignored.

        > [!NOTE]
        > From this point on, **ScanState** does not distinguish between components that migrate operating-system settings, those that migrate application settings, and those that migrate users' files. **ScanState** processes all components in the same way.

    2. Each component that is selected in the previous step is processed further. Any profile-specific variables (such as **CSIDL_PERSONAL**) are evaluated in the context of the current profile. For example, if the profile that is being processed belongs to **User1**, then **CSIDL_PERSONAL** would expand to `C:\Users\User1\Documents`, assuming that the user profiles are stored in the `C:\Users` directory.

    3. For each selected component, **ScanState** evaluates the **&lt;detects&gt;** section. If the condition in the **&lt;detects&gt;** section evaluates to false, the component isn't processed any further. Otherwise, the processing of this component continues.

    4. For each selected component, **ScanState** evaluates the **&lt;rules&gt;** sections. For each **&lt;rules&gt;** section, if the current user profile is the system profile and the context of the **&lt;rules&gt;** section is **System** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored. Alternatively, if the current user profile isn't the system profile and the context of the **&lt;rules&gt;** section is **User** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored.

    5. **ScanState** creates a list of migration units that need to be migrated by processing the various subsections under this **&lt;rules&gt;** section. Each unit is collected if it's mentioned in an **&lt;include&gt;** subsection, as long as there isn't a more specific rule for it in an **&lt;exclude&gt;** subsection in the same **&lt;rules&gt;** section. For more information about precedence in the .xml files, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

        In addition, any migration unit (such as a file, registry key, or set of registry values) that is in an &lt;UnconditionalExclude&gt; section isn't migrated.

        > [!NOTE]
        > **ScanState** ignores some subsections such as &lt;destinationCleanup&gt; and &lt;locationModify&gt;. These sections are evaluated only on the destination computer.

5. In the **Collecting** phase, **ScanState** creates a master list of the migration units by combining the lists that were created for each selected user profile.

6. In the **Saving** phase, **ScanState** writes the migration units that were collected to the store location.

    > [!NOTE]
    > **ScanState** does not modify the source computer in any way.

## The LoadState process

The **LoadState** process is similar to the **ScanState** process. The **ScanState** tool collects migration units such as file, registry key, or registry values from the source computer and saves them to the store. Similarly, the **LoadState** tool collects migration units from the store and applies them to the destination computer.

1. **ScanState** parses and validates the command-line parameters, creates the `ScanState.log` file, and then begins logging.

2. **LoadState** collects information about the migration components that need to be migrated.

   **LoadState** obtains information for the application-settings components and user-data components from the migration .xml files that are specified by the `LoadState.exe` command.

   In Windows 7, Windows 8, and Windows 10, the manifest files control how the operating-system settings are migrated. You can't modify these files. If you want to exclude certain operating-system settings, you must create and modify a `Config.xml` file.

3. **LoadState** determines which user profiles should be migrated. By default, all user profiles present on the source computer are migrated. However, you can include and exclude users using the **User Options**. The system profile, the Public profile in a source computer running Windows 7, Windows 8, and Windows 10 is always migrated and you can't exclude these profiles from the migration.

   - If you're migrating local user accounts and if the accounts don't already exist on the destination computer, you must use the `/lac` command-line option. If you don't specify the `/lac` option, any local user accounts that aren't already present on the destination computer, aren't migrated.

   - The `/md` and `/mu` options are processed to rename the user profile on the destination computer, if they've been included when the `LoadState.exe` command was specified.

   - For each user profile selected from the store, **LoadState** creates a corresponding user profile on the destination computer. The destination computer doesn't need to be connected to the domain for domain user profiles to be created. If USMT can't determine a domain, it attempts to apply the settings to a local account. For more information, see [Identify Users](usmt-identify-users.md).

4. In the **Scanning** phase, **LoadState** does the following for each user profile:

   1. For each component, **LoadState** checks the type of the component. If the current user profile is the system profile and the component type is **System** or **UserAndSystem**, the component is selected for this user. Otherwise, the component is ignored. Alternatively, if the current user profile isn't the system profile and the component type is **User** or **UserAndSystem**, the component is selected for this user. Otherwise, this component is ignored.

       > [!NOTE]
       > From this point on, **LoadState** does not distinguish between components that migrate operating-system settings, those that migrate application settings, and those that migrate users' files. **LoadState** evaluates all components in the same way.

   2. Each component that is selected is processed further. Any profile-specific variables (such as **CSIDL_PERSONAL**) are evaluated in the context of the current profile. For example, if the profile being processed belongs to **User1**, then **CSIDL_PERSONAL** would expand to `C:\Users\User1\Documents` (assuming that the user profiles are stored in the `C:\Users` directory).

       > [!NOTE]
       > **LoadState** ignores the **&lt;detects&gt;** section specified in a component. At this point, all specified components are considered to be detected and are selected for migration.

   3. For each selected component, **LoadState** evaluates the **&lt;rules&gt;** sections. For each **&lt;rules&gt;** section, if the current user profile is the system profile and the context of the **&lt;rules&gt;** section is **System** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored. Alternatively, if the current user profile isn't the system profile and the context of the **&lt;rules&gt;** section is **User** or **UserAndSystem**, the rule is processed further. Otherwise, this rule is ignored.

   4. **LoadState** creates a master list of migration units by processing the various subsections under the **&lt;rules&gt;** section. Each migration unit that is in an **&lt;include&gt;** subsection is migrated as long, as there isn't a more specific rule for it in an **&lt;exclude&gt;** subsection in the same **&lt;rules&gt;** section. For more information about precedence, see [Conflicts and precedence](usmt-conflicts-and-precedence.md).

   5. **LoadState** evaluates the destination computer-specific subsections, for example, the **&lt;destinationCleanup&gt;** and **&lt;locationModify&gt;** subsections.

   6. If the destination computer is running Windows 7, Windows 8, or Windows 10, then the migunits that were collected by **ScanState** using downlevel manifest files are processed by **LoadState** using the corresponding Component Manifest for Windows 7. The downlevel manifest files aren't used during **LoadState**.

       > [!IMPORTANT]
       > It is important to specify the .xml files with the `LoadState.exe` command if you want **LoadState** to use them. Otherwise, any destination-specific rules, such as **&lt;locationModify&gt;**, in these .xml files are ignored, even if the same .xml files were provided when the `ScanState.exe` command ran.

5. In the **Apply** phase, **LoadState** writes the migration units that were collected to the various locations on the destination computer. If there are conflicts and there isn't a **&lt;merge&gt;** rule for the object, the default behavior for the registry is for the source to overwrite the destination. The default behavior for files is for the source to be renamed incrementally, for example, OriginalFileName(1).OriginalExtension. Some settings, such as fonts, wallpaper, and screen-saver settings, don't take effect until the next time the user logs on. For this reason, you should sign out when the `LoadState.exe` command actions have completed.

## Related articles

[User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md)
