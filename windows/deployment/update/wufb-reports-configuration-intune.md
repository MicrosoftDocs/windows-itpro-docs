---
title: Configuring Microsoft Intune devices for Windows Update for Business reports
ms.reviewer: 
manager: aaroncz
description: Configuring devices that are enrolled in Microsoft Intune for Windows Update for Business reports
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.date: 12/05/2022
ms.technology: itpro-updates
---

# Configuring Microsoft Intune devices for Windows Update for Business reports
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10 managed by [Microsoft Intune](/mem/intune/fundamentals/what-is-intune)***


This article is targeted at configuring devices enrolled to [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) for Windows Update for Business reports, within Microsoft Intune itself. Configuring devices for Windows Update for Business reports in Microsoft Intune breaks down to the following steps:

1. [Create a configuration profile](#create-a-configuration-profile) for devices you want to enroll. The configuration profile contains settings for all the Mobile Device Management (MDM) policies that must be configured.
1. Wait for data to populate. The length of this process depends on the computer being on, connected to the internet, and correctly configured. Some data types take longer to appear than others. For more information, see [Use Windows Update for Business reports](wufb-reports-use.md).

> [!TIP]
> If you need to troubleshoot client enrollment, consider deploying the [configuration script](#deploy-the-configuration-script) as a Win32 app to a few devices and reviewing the logs it creates. Additional checks are performed with the script to ensure devices are correctly configured.

## Create a configuration profile

Create a configuration profile that will set the required policies for Windows Update for Business reports. There are two profile types that can be used to create a configuration profile for Windows Update for Business reports:
- The [settings catalog](#settings-catalog)
- [Template](#custom-oma-uri-based-profile) for a custom OMA URI-based profile

### Settings catalog

1. In the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Windows** > **Configuration profiles**.
1. On the **Configuration profiles** view, select **Create profile**.
1. Select **Platform**="Windows 10 and later" and **Profile type**="Settings Catalog", and then select **Create**.
1. You're now on the Configuration profile creation screen. On the **Basics** tab, give a **Name** and **Description**.
1. On the **Configuration settings** page, you'll be adding multiple settings from the **System** category. Using the **Settings picker**, select the **System** category, then add the following settings and values:
    1. Required settings for Windows Update for Business reports: 
        - **Setting**: Allow Commercial Data Pipeline
        - **Value**: Enabled
        - **Setting**: Allow Telemetry
        - **Value**: Basic (*Basic is the minimum value, but it can be safely set to a higher value*)
        - **Setting**: Allow Update Compliance Processing
        - **Value**: Enabled
        - **Setting**: Configure Telemetry Opt In Change Notification
    1. (*Recommended, but not required*) Allow device name to be sent in Windows Diagnostic Data. If this policy is disabled, the device name won't be sent and won't be visible in Windows Update for Business reports:
        - **Setting**: Allow device name to be sent in Windows diagnostic data
        - **Value**: Allowed

1. Continue through the next set of tabs **Scope tags**, **Assignments**, and **Applicability Rules** to assign the configuration profile to devices you wish to enroll.
1. Review the settings and then select **Create**.

### Custom OMA URI-based profile

1. In the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** > **Windows** > **Configuration profiles**.
1. On the **Configuration profiles** view, select **Create profile**.
1. Select **Platform**="Windows 10 and later" and **Profile type**="Templates".
1. For **Template name**, select **Custom**, and then select **Create**.
1. You're now on the Configuration profile creation screen. On the **Basics** tab, give a **Name** and **Description**.
1. On the **Configuration settings** page, you'll be adding multiple OMA-URI Settings that correspond to the policies described in [Manually configuring devices for Windows Update for Business reports](wufb-reports-configuration-manual.md).

    1. Add a setting to **Allow commercial data pipeline**; this policy is required for Windows Update for Business reports:
        - **Name**: Allow commercial data pipeline
        - **Description**: Configures Microsoft to be the processor of the Windows diagnostic data collected from an Azure Active Directory-joined device.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowCommercialDataPipeline`
        - **Data type**: Integer
        - **Value**: 1 
    1. Add a setting configuring the **Windows Diagnostic Data level** for devices:
        - **Name**: Allow Telemetry
        - **Description**: Sets the maximum allowed diagnostic data to be sent to Microsoft, required for Windows Update for Business reports.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowTelemetry`
        - **Data type**: Integer
        - **Value**: 1 (*1 is the minimum value meaning basic, but it can be safely set to a higher value*).
    1. Add a setting to **Allow Update Compliance processing**; this policy is required for Windows Update for Business reports:
        - **Name**: Allow Update Compliance Processing
        - **Description**: Opts device data into Update Compliance processing. Required to see data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowUpdateComplianceProcessing`
        - **Data type**: Integer
        - **Value**: 16
    1. (*Recommended, but not required*) Add settings for **disabling devices' Diagnostic Data opt-in settings interface**. If these aren't disabled, users of each device can potentially override the diagnostic data level of devices such that data won't be available for those devices in Windows Update for Business reports: 
        - **Name**: Disable Telemetry opt-in interface
        - **Description**: Disables the ability for end users of devices can adjust diagnostic data to levels lower than defined by the Allow Telemetry setting.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInSettingsUx`
        - **Data type**: Integer
        - **Value**: 1
    1. (*Recommended, but not required*) Add a setting to **Allow device name in diagnostic data**; otherwise, the device name won't be in Windows Update for Business reports:
        - **Name**: Allow device name in Diagnostic Data
        - **Description**: Allows device name in Diagnostic Data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowDeviceNameInDiagnosticData`
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
