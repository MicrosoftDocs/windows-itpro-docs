---
title: Configuring Microsoft Intune devices for Update Compliance
manager: aaroncz
description: Configuring devices that are enrolled in Intune for Update Compliance
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# Configuring Microsoft Intune devices for Update Compliance

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

This article is specifically targeted at configuring devices enrolled to [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) for Update Compliance, within Microsoft Intune itself. Configuring devices for Update Compliance in Microsoft Intune breaks down to the following steps:

1. [Create a configuration profile](#create-a-configuration-profile) for devices you want to enroll, that contains settings for all the MDM policies that must be configured.
1. Wait for data to populate. The length of this process depends on the computer being on, connected to the internet, and correctly configured. Some data types take longer to appear than others. You can learn more in the broad section on [enrolling devices to Update Compliance](update-compliance-get-started.md#enroll-devices-in-update-compliance).

> [!TIP]
> If you need to troubleshoot client enrollment, consider deploying the [configuration script](#deploy-the-configuration-script) as a Win32 app to a few devices and reviewing the logs it creates. Additional checks are performed with the script to ensure devices are correctly configured.

## Create a configuration profile

Take the following steps to create a configuration profile that will set required policies for Update Compliance:

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices/Windows/Configuration profiles**.
1. On the **Configuration profiles** view, select **Create a profile**.
1. Select **Platform**="Windows 10 and later" and **Profile type**="Templates".
1. For **Template name**, select **Custom**, and then press **Create**.
1. You're now on the Configuration profile creation screen. On the **Basics** tab, give a **Name** and **Description**.
1. On the **Configuration settings** page, you'll be adding multiple OMA-URI Settings that correspond to the policies described in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md).
    1. If you don't already have it, get your Commercial ID. For steps, see [Get your CommmercialID](update-compliance-get-started.md#get-your-commercialid).
    1. Add a setting for **Commercial ID** with the following values:
        - **Name**: Commercial ID
        - **Description**: Sets the Commercial ID that corresponds to the Update Compliance Log Analytics workspace.
        - **OMA-URI**: `./Vendor/MSFT/DMClient/Provider/ProviderID/CommercialID`
        - **Data type**: String
        - **Value**: *Set this value to your Commercial ID*
    1. Add a setting configuring the **Windows Diagnostic Data level** for devices:
        - **Name**: Allow Telemetry
        - **Description**: Sets the maximum allowed diagnostic data to be sent to Microsoft, required for Update Compliance.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowTelemetry`
        - **Data type**: Integer
        - **Value**: 1 (*all that is required is 1, but it can be safely set to a higher value*).
    1. (*Recommended, but not required*) Add a setting for **disabling devices' Diagnostic Data opt-in settings interface**. If this setting isn't disabled, users of each device can potentially override the diagnostic data level of devices such that data won't be available for those devices in Update Compliance:
        - **Name**: Disable Telemetry opt-in interface
        - **Description**: Disables the ability for end-users of devices can adjust diagnostic data to levels lower than defined by the Allow Telemetry setting.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInSettingsUx`
        - **Data type**: Integer
        - **Value**: 1
    1. Add a setting to **Allow device name in diagnostic data**; otherwise, there will be no device name in Update Compliance:
        - **Name**: Allow device name in Diagnostic Data
        - **Description**: Allows device name in Diagnostic Data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowDeviceNameInDiagnosticData`
        - **Data type**: Integer
        - **Value**: 1
    1. Add a setting to **Allow Update Compliance processing**; this policy is required for Update Compliance:
        - **Name**: Allow Update Compliance Processing
        - **Description**: Opts device data into Update Compliance processing. Required to see data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowUpdateComplianceProcessing`
        - **Data type**: Integer
        - **Value**: 16
    1. Add a setting to **Allow commercial data pipeline**; this policy is required for Update Compliance:
        - **Name**: Allow commercial data pipeline
        - **Description**: Configures Microsoft to be the processor of the Windows diagnostic data collected from an Azure Active Directory-joined device.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowCommercialDataPipeline`
        - **Data type**: Integer
        - **Value**: 1

1. Proceed through the next set of tabs **Scope tags**, **Assignments**, and **Applicability Rules** to assign the configuration profile to devices you wish to enroll.
1. Review and select **Create**.

## Deploy the configuration script

The [Update Compliance Configuration Script](update-compliance-configuration-script.md) is a useful tool for properly enrolling devices in Update Compliance, though it isn't strictly necessary. It checks to ensure that devices have the required services running and checks connectivity to the endpoints detailed in the section on [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md). You can deploy the script as a Win32 app. For more information, see [Win32 app management in Microsoft Intune](/mem/intune/apps/apps-win32-app-management).

When you deploy the configuration script as a Win32 app, you won't be able to retrieve the results of logs on the device without having access to the device, or saving results of the logs to a shared filesystem. We recommend deploying the script in Pilot mode to a set of devices that you do have access to, or have a way to access the resultant log output the script provides, with as similar of a configuration profile as other devices that will be enrolled to Update Compliance, and analyzing the logs for any potential issues. Following this, you can deploy the configuration script in Deployment mode as a Win32 app to all Update Compliance devices.
