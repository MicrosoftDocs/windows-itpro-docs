---
title: Add or hide Windows features
description: Learn how to add Windows optional features using the Apps & features page in the Settings app. Also see the group policy objects (GPO) and MDM policies that show or hide Apps and Windows Features in the Settings app. Use Windows PowerShell to show or hide specific features in Windows Features.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.date: 08/18/2023
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Add or hide Windows features

Windows includes optional features that aren't installed by default, but you can add later. These features are called [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities), and can be installed at any time. Some of these features are language resources like language packs or handwriting support. On organization-owned devices, you can control access to these other features. You can use group policy or mobile device management (MDM) policies to hide the UI from users, or use Windows PowerShell to enable or disable specific features.

## Use the Windows Settings app to add or uninstall features

### Windows 11

1. Open the Start menu and search for **Settings**.

1. In the Settings app, search for "optional" and select **Optional features**.

   > [!TIP]
   > You can also use the following shortcut to open it directly: [`ms-settings:optionalfeatures`](ms-settings:optionalfeatures).

1. To add a feature:

    1. Select **View features** next to "Add an optional feature."

    1. Find the feature you want to add, like **XPS Viewer**. Select the box to add it. You can select multiple features.

    1. Select **Next**. Review the list of features you selected, and then select **Install** to add the selected features.

1. To uninstall a feature:

    1. Search for it in the list of **Installed features**.

    1. Expand the section, and select **Uninstall**.

### Windows 10

1. In the Search bar, search for "apps" and select **Apps and features**.

1. Select **Optional features** > **Add a feature**.

1. Select the feature you want to add, like **XPS Viewer**, and then select **Install.**

When the installation completes, the feature is listed in **Apps & features**. In **Apps & features** > **Optional features** > **More Windows features**, there are more features that you and your users can install.

To uninstall a feature, open the **Settings** app. Select the feature, and then select **Uninstall**.

## Use group policy or MDM policies to hide Windows features

By default, the OS might show Windows features and allow users to install and uninstall these optional apps and features. To hide Windows features on your user devices, you can use group policy or an MDM provider like Microsoft Intune.

### Group policy

If you use group policy, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Windows Features"` policy. By default, this policy may be set to **Not configured**, which means users can add or remove features. When this setting is **Enabled**, the settings page to add optional features is hidden on the device.

You can't use group policy to disable specific Windows features, such as XPS Viewer. If you want to disable specific features, use [Windows PowerShell](#use-windows-powershell-to-disable-specific-features).

If you want to hide the entire **Apps** feature in the Settings app, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Programs and Features" page` policy.

### MDM

Using Microsoft Intune, you can use [administrative templates](/mem/intune/configuration/administrative-templates-windows) or the [settings catalog](/mem/intune/configuration/settings-catalog) to hide Windows features.

If you want to hide the entire **Apps** feature in the Settings app, you can use a configuration policy on Intune enrolled devices. For more information on the settings you can configure, see [Control Panel and Settings device restrictions in Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings).

## Use Windows PowerShell to disable specific features

To disable specific features, use the Windows PowerShell [Disable-WindowsOptionalFeature](/powershell/module/dism/disable-windowsoptionalfeature) cmdlet.

> [!NOTE]
> There isn't a group policy that disables specific Windows features.

To automate disabling specific features, create a scheduled task to run a PowerShell script. For more information about Windows task scheduler, see [Task Scheduler for developers](/windows/win32/taskschd/task-scheduler-start-page).

Microsoft Intune can also run PowerShell scripts. For more information, see [Use PowerShell scripts on Windows client devices in Intune](/mem/intune/apps/intune-management-extension).

To enable specific features, use the [Enable-WindowsOptionalFeature](/powershell/module/dism/enable-windowsoptionalfeature) cmdlet.

Another useful PowerShell cmdlet is [Get-WindowsOptionalFeature](/powershell/module/dism/get-windowsoptionalfeature). Use this cmdlet to view information about optional features in the current OS or a mounted image. This cmdlet returns the current state of features, and whether a restart may be required when the state changes.

## Related articles

- [Features on Demand overview](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities)

- [Available Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod)

- [Language and region Features on Demand (FOD)](/windows-hardware/manufacture/desktop/features-on-demand-language-fod)
