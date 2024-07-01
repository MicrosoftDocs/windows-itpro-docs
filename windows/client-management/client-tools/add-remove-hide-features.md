---
title: Add, remove, or hide Windows features
description: Learn how to add or remove Windows optional features using the Optional features page in the Settings app. Also see the group policy objects (GPO) and MDM policies that show or hide Windows Features in the Settings app. Use Windows PowerShell to show or hide specific features in Windows Features.
ms.date: 07/01/2024
ms.topic: how-to
zone_pivot_groups: windows-versions-11-10
---

# Add, remove, or hide Windows features

Windows has optional features that aren't included by default, but you can add later. These features are called [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities), and can be added at any time. Some of these features are language resources like language packs or handwriting support. On organization-owned devices, you can control access to these other features. You can use group policy or mobile device management (MDM) policies to hide the UI from users, or use Windows PowerShell to enable or disable specific features.

## Use the Windows Settings app to add or remove features

<!-- OSADO-45535220 -->

Open the **Optional features** pane in the **Settings** app by selecting the following link:

> [!div class="nextstepaction"]
> [Optional features](ms-settings:optionalfeatures)

Or

1. Right-click on the **Start** menu and select **Run**.

1. In the **Run** window, next to **Open:**, enter:

   ```console
   ms-settings:optionalfeatures
   ```

   and then select **OK**.

Or

::: zone pivot="windows-11"

1. Right-click on the **Start** menu and select **Settings**.

1. In the left hand pane of the Settings app, select **System**.

1. In the right hand **System** pane, select **Optional features**.

> [!NOTE]
>
> The navigation steps, UI elements, and UI text in this section are based on the latest version of Windows 11 with the latest cumulative update installed. For other versions of Windows 11 that are currently supported or don't have the latest cumulative update, some of the navigation steps, UI elements, and UI text might be different. For example, the [**Optional features**](ms-settings:optionalfeatures) pane might be located under **Settings** > **Apps**.

::: zone-end

::: zone pivot="windows-10"

1. Right-click on the **Start** menu and select **Settings**.

1. In the Settings app, select **System**.

1. In the left hand pane, select **Optional features**.

> [!NOTE]
>
> The navigation steps, UI elements, and UI text in this section are based on Windows 10 22H2 with the latest cumulative update installed. For other versions of Windows 10 that are currently supported or don't have the latest cumulative update, some of the navigation steps, UI elements, and UI text might be different. For example, the [**Optional features**](ms-settings:optionalfeatures) pane might be located under **Settings** > **Apps** > **Apps & features**.

::: zone-end

### Add a feature

::: zone pivot="windows-11"

Once the **System > Optional features** pane is open, add a feature with the following steps:

1. Select the **View features** button next to **Add an optional feature**.

1. In the **Add an optional feature** window that opens:

    1. Find the desired feature to add and then select the box next to the feature to add it. Multiple features can be selected.

    1. Once all of the desired features are selected, select the **Next** button.

    1. Review the selected list of features and then select the **Add** button to add the selected features.

::: zone-end

::: zone pivot="windows-10"

Once the **Optional features** pane is open, add a feature with the following steps:

1. Select the **+** button next to **Add a feature**.

1. In the **Add an optional feature** window that opens:

    1. Find the desired feature to add and then select the box next to the feature to add it. Multiple features can be selected.

    1. Once all of the desired features are selected, select the **Add** button.

::: zone-end

> [!IMPORTANT]
>
> Windows Update is used to add the optional features. The device needs to be online so Windows Update can download the content that it needs to add.

### Remove a feature

::: zone pivot="windows-11"

Once the **System > Optional features** pane is open, remove a feature with the following steps:

1. Under **Installed features**, search for the feature that needs to be removed in the **Search installed features** search box, or scroll through the list of added features until the feature that needs to be removed is found.

1. Once the feature that needs to be removed is found, select the feature to expand it, and then select the **Remove** button.

::: zone-end

::: zone pivot="windows-10"

Once the **Optional features** pane is open, remove a feature with the following steps:

1. Under **Installed features**, search for the feature that needs to be removed in the **Find an installed optional feature** search box, or scroll through the list of added features until the feature that needs to be removed is found.

1. Once the feature that needs to be removed is found, select the feature to expand it, and then select the **Remove** button.

::: zone-end

## Use group policy or MDM policies to hide Windows features

By default, the OS might show Windows features and allow users to add and remove these optional apps and features. To hide Windows features on your user devices, you can use group policy or an MDM provider like Microsoft Intune.

### Group policy

If you use group policy, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Windows Features"` policy. By default, this policy might be set to **Not configured**, which means users can add or remove features. When this setting is **Enabled**, the settings page to add optional features is hidden on the device.

You can't use group policy to disable specific Windows features. If you want to disable specific features, use [Windows PowerShell](#use-windows-powershell-to-disable-specific-features).

If you want to hide the entire **Apps** feature in the Settings app, use the `User Configuration\Administrative Template\Control Panel\Programs\Hide "Programs and Features" page` policy.

### MDM

Using Microsoft Intune, you can use [administrative templates](/mem/intune/configuration/administrative-templates-windows) or the [settings catalog](/mem/intune/configuration/settings-catalog) to hide Windows features.

If you want to hide the entire **Apps** feature in the Settings app, you can use a configuration policy on Intune enrolled devices. For more information on the settings you can configure, see [Control Panel and Settings device restrictions in Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10#control-panel-and-settings).

## Use Windows PowerShell to disable specific features

To disable specific features, use the Windows PowerShell [Disable-WindowsOptionalFeature](/powershell/module/dism/disable-windowsoptionalfeature) cmdlet.

> [!NOTE]
>
> There isn't a group policy that disables specific Windows features.

To automate disabling specific features, create a scheduled task to run a PowerShell script. For more information about Windows task scheduler, see [Task Scheduler for developers](/windows/win32/taskschd/task-scheduler-start-page).

Microsoft Intune can also run PowerShell scripts. For more information, see [Use PowerShell scripts on Windows client devices in Intune](/mem/intune/apps/intune-management-extension).

To enable specific features, use the [Enable-WindowsOptionalFeature](/powershell/module/dism/enable-windowsoptionalfeature) cmdlet.

Another useful PowerShell cmdlet is [Get-WindowsOptionalFeature](/powershell/module/dism/get-windowsoptionalfeature). Use this cmdlet to view information about optional features in the current OS or a mounted image. This cmdlet returns the current state of features, and whether a restart might be required when the state changes.

## Related content

- [Features on Demand overview](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities).
- [Available Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod).
- [Language and region Features on Demand (FOD)](/windows-hardware/manufacture/desktop/features-on-demand-language-fod).
