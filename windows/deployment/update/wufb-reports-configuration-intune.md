---
title: Configure devices using Microsoft Intune
titleSuffix: Windows Update for Business reports
description: How to configure devices to use Windows Update for Business reports from Microsoft Intune.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11 and Windows 10</a> devices managed by <a href=https://learn.microsoft.com/mem/intune/fundamentals/what-is-intune target=_blank>Microsoft Intune</a>
ms.date: 03/08/2023
---

# Configuring Microsoft Intune devices for Windows Update for Business reports
<!--37063317, 30141258, 37063041-->

This article is targeted at configuring devices enrolled to [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) for Windows Update for Business reports, within Microsoft Intune itself. Configuring devices for Windows Update for Business reports in Microsoft Intune breaks down to the following steps:

1. [Create a configuration profile](#create-a-configuration-profile) for devices you want to enroll. The configuration profile contains settings for all the Mobile Device Management (MDM) policies that must be configured.
1. Wait for data to populate. The length of this process depends on the computer being on, connected to the internet, and correctly configured. Some data types take longer to appear than others. For more information, see [Use Windows Update for Business reports](wufb-reports-use.md).

> [!TIP]
> - If you need to troubleshoot client enrollment, consider deploying the [configuration script](#deploy-the-configuration-script) as a Win32 app to a few devices and reviewing the logs it creates. Additional checks are performed with the script to ensure devices are correctly configured.
> - Intune provides compliance reports and they have their own prerequisites for use. The number of devices that appear in the Intune reports may also vary from the Windows Update for Business reports. For more information, see [Intune compliance reports for updates](/mem/intune/protect/windows-update-reports).

## Create a configuration profile

Create a configuration profile that will set the required policies for Windows Update for Business reports. There are two profile types that can be used to create a configuration profile for Windows Update for Business reports (select one):
- The [settings catalog](#settings-catalog)
- [Template](#custom-oma-uri-based-profile) for a custom OMA URI-based profile

### Settings catalog

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Windows** > **Configuration profiles**.
1. On the **Configuration profiles** view, select **Create profile**.
1. Select the following options, then select **Create** when you're done:
   - **Platform**: Windows 10 and later
   - **Profile type**: Settings Catalog
1. You're now on the Configuration profile creation page. On the **Basics** tab, provide a **Name** and **Description** for the profile.
1. On the **Configuration settings** page, you'll add multiple settings from the **System** category. Using the **Settings picker**, select the **System** category.
1. Add the following required settings and values the **System** category:
   - **Setting**: Allow Telemetry
      - **Value**: Basic
        -  Basic is the minimum value, but it can be safely set to a higher value. Basic is also known as required diagnostic data.

1. Add the following recommended settings and values from the **System** category:
   > [!Note]
   > These settings aren't required, but they're recommended to ensure that users of the device cannot override the diagnostic data level of the device.
   - **Setting**: Configure Telemetry Opt In Settings Ux
      - **Value**: Disabled
        -  By turning this setting on, you're disabling the ability for a user to potentially override the diagnostic data level of devices such that data won't be available for those devices in Windows Update for Business reports.

   - **Setting**: Configure Telemetry Opt In Change Notification
        - **Value**: Disabled
          -  By turning this setting on, you're disabling notifications of diagnostic data changes.
          
    - **Setting**: Allow device name to be sent in Windows diagnostic data
        - **Value**: Allowed
          - If this policy is disabled, the device name won't be sent and won't be visible in Windows Update for Business reports.

1. Continue through the next set of tabs **Scope tags**, **Assignments**, and **Applicability Rules** to assign the configuration profile to devices you wish to enroll.
1. Review the settings and then select **Create**.

### Custom OMA URI-based profile

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Windows** > **Configuration profiles**.
1. On the **Configuration profiles** view, select **Create profile**.
1. Select the following options, then select **Create** when you're done:
   - **Platform**:Windows 10 and later
   - **Profile type**: Templates
   - **Template name**: Custom
1. You're now on the Configuration profile creation screen. On the **Basics** tab, provide a **Name** and **Description**.
1. On the **Configuration settings** page, you'll be adding multiple OMA-URI Settings that correspond to the policies described in [Manually configuring devices for Windows Update for Business reports](wufb-reports-configuration-manual.md).

   **Required settings**: 

    1. Add a setting configuring the **Windows Diagnostic Data level** for devices:
        - **Name**: Allow Telemetry
        - **Description**: Sets the maximum allowed diagnostic data to be sent to Microsoft, required for Windows Update for Business reports.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowTelemetry`
        - **Data type**: Integer
        - **Value**: 1 
          - *1 is the minimum value meaning required or basic diagnostic data, but it can be safely set to a higher value.*

   **Recommended settings, but not required**:

    1. Add settings for **Disabling devices' Diagnostic Data opt-in settings interface**. If these aren't disabled, users of each device can potentially override the diagnostic data level of devices such that data won't be available for those devices in Windows Update for Business reports: 
        - **Name**: Disable Telemetry opt-in interface
        - **Description**: Disables the ability for end users of devices can adjust diagnostic data to levels lower than defined by the Allow Telemetry setting.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInSettingsUx`
        - **Data type**: Integer
        - **Value**: 1
    1. Add a setting to **Allow device name in diagnostic data**; otherwise, the device name won't be in Windows Update for Business reports:
        - **Name**: Allow device name in Diagnostic Data
        - **Description**: Allows device name in Diagnostic Data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowDeviceNameInDiagnosticData`
        - **Data type**: Integer
        - **Value**: 1
    1. Add a setting to **Configure Telemetry Opt In Change Notification**. Diagnostic data opt-in change notifications won't appear when changes occur. 
        - **Name**: Configure Telemetry Opt In Change Notification
        - **Description**: Disables Telemetry Opt In Change Notification
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInChangeNotification`
        - **Data type**: Integer
        - **Value**: 1

1. Continue through the next set of tabs **Scope tags**, **Assignments**, and **Applicability Rules** to assign the configuration profile to devices you wish to enroll.
1. Review the settings and then select **Create**.

## Deploy the configuration script

The [Windows Update for Business reports Configuration Script](wufb-reports-configuration-script.md) is a useful tool for properly enrolling devices in Windows Update for Business reports, though it isn't strictly necessary. It checks to ensure that devices have the required services running and checks connectivity to the endpoints detailed in the section on [Manually configuring devices for Windows Update for Business reports](wufb-reports-configuration-manual.md). You can deploy the script as a Win32 app. For more information, see [Win32 app management in Microsoft Intune](/mem/intune/apps/apps-win32-app-management).

> [!NOTE]
> Using the script is optional when configuring devices through Intune. The script can be leveraged as a troubleshooting tool to ensure that devices are properly configured for Windows Update for Business reports. 

When you deploy the configuration script as a Win32 app, you won't be able to retrieve the results of logs on the device without having access to the device, or saving results of the logs to a shared filesystem. We recommend deploying the script in pilot mode to a subset of devices that you can access. After following this guidance, you can deploy the configuration script in deployment mode as a Win32 app to all Windows Update for Business reports devices.


## Next steps

[Use Windows Update for Business reports](wufb-reports-use.md)
