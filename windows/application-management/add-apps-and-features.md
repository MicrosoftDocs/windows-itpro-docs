---
title: Add or hide optional apps and features on Windows devices | Microsoft Docs
description: Learn how to add Windows 10 and Windows 11 optional features using the Apps & features page in the Settings app. Also see the group policy objects (GPO) and MDM policies that show or hide Apps and Windows Features in the Settings app. Use Windows PowerShell to show or hide specific features in Windows Features.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: article
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.date: 08/30/2021
ms.reviewer: 
manager: dougeby
ms.topic: article
---

# Add or hide features on the Windows client OS

> Applies to:
> 
> - Windows 10

The Windows client operating systems include more features that you and your users can install. These features are called [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) (opens another Microsoft web site), and can be installed at any time. On your organization-owned devices, you may want to control access to these other features.

This article:

- Shows you how to add features using the user interface.
- Lists the group policies and Mobile device management (MDM) policies to hide Windows Features.
- Includes information on using Windows PowerShell to disable specific Windows Features.

If you're working on your own device, use the **Settings** app to add features.

## Add or uninstall features

1. In the Search bar, search for "apps", and select **Apps and features**.
2. Select **Optional features** > **Add a feature**.
3. Select the feature you want to add, like **XPS Viewer**, and then select **Install.**

When the installation completes, the feature is listed in **Apps & features**. In **Apps & features** > **Optional features** > **More Windows features**, there are more features that you and your users can install.

To uninstall a feature, open the **Settings** app. Select the feature, and then select **Uninstall**.

## Use Group Policy or MDM to hide Windows Features

By default, the OS might show Windows Features, and allow users to install and uninstall these optional apps and features.

To hide Windows Features on your user devices, you can use Group Policy (on-premises), or use an MDM provider, such as Microsoft Intune (cloud).

### Group Policy

If you use Group Policy, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Windows Features"` policy. By default, this policy may be set to **Not configured**, which means users can add or remove features. When this setting is **Enabled**, the Windows Features is hidden on the device.

You can't use Group Policy to disable specific Windows Features, such as XPS Viewer. If you want to disable specific features, use [Windows PowerShell](#use-windows-powershell-to-disable-specific-features) (in this article).

If you want to hide the entire **Apps** feature in the Settings app, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Programs and Features" page` policy.

### MDM

Using Microsoft Intune, you can use [Administrative Templates](/mem/intune/configuration/administrative-templates-windows) (opens another Microsoft web site) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) (opens another Microsoft web site) to hide Windows Features.

If you want to hide the entire **Apps** feature in the Settings app, you can use a configuration policy on Intune enrolled devices. For more information on the Control Panel settings you can configure, see [Control Panel settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings).

## Use Windows PowerShell to disable specific features

To disable specific features, you can use the Windows PowerShell [Disable-WindowsOptionalFeature](/powershell/module/dism/disable-windowsoptionalfeature) command. There isn't a Group Policy that disables specific Windows Features.

If you're looking to automate disabling specific features, you can create a scheduled task. Then, use the scheduled task to run your Windows PowerShell script. For more information about Task Scheduler, see [Task Scheduler for developers](/windows/win32/taskschd/task-scheduler-start-page).

Microsoft Intune can also execute Windows PowerShell scripts. For more information, see [Use PowerShell scripts on Windows client devices in Intune](/mem/intune/apps/intune-management-extension).

## Restore Windows features

- If you use Group Policy or MDM to hide Windows Features or the entire Apps feature, you can set the policy to **Not configured**. Then, deploy your policy. When the device receives the policy, the features are configurable.
- Using Windows PowerShell, you can also enable specific features using the [Enable-WindowsOptionalFeature](/powershell/module/dism/enable-windowsoptionalfeature) command.
