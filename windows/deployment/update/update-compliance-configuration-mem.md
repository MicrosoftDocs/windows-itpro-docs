---
title: Configuring MEM devices for Update Compliance
ms.reviewer: 
manager: laurawi
description: Configuring MEM-enrolled devices for Update Compliance
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav, intune, mem
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Configuring Microsoft Endpoint Manager devices for Update Compliance

> [!NOTE]
> As of May 10, 2021, a new policy is required to use Update Compliance: "Allow Update Compliance Processing." For more details, see the Mobile Device Management policies and Group policies tables.

This article is specifically targeted at configuring devices enrolled to [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview) (MEM) for Update Compliance, within MEM itself. Configuring devices for Update Compliance in MEM breaks down to the following steps:

1. [Create a configuration profile](#create-a-configuration-profile) for devices you want to enroll, that contains settings for all the MDM policies that must be configured. 
2. [Deploy the configuration script](#deploy-the-configuration-script) as a Win32 app to those same devices, so additional checks can be performed to ensure devices are correctly configured. 
3. Wait for data to populate. The length of this process depends on the computer being on, connected to the internet, and correctly configured. Some data types take longer to appear than others. You can learn more about this in the broad section on [enrolling devices to Update Compliance](update-compliance-get-started.md##enroll-devices-in-update-compliance). 

## Create a configuration profile

Take the following steps to create a configuration profile that will set required policies for Update Compliance:

1. Go to your MEM admin portal and navigate to **Devices/Windows/Configuration profiles**.
2. On the Configuration profiles view, select **Create a profile**.
3. Select **Platform**="Windows 10 and later" and **Profile type**="Templates".
4. For **Template name**, select "Custom", then hit **Create**.
5. You are now on the Configuration profile creation screen. On the **Basics** tab, give a **Name** and **Description**.
6. On the **Configuration settings** page, you will be adding multiple OMA-URI Settings that correspond to the policies described in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md).
    1. Add a setting for **Commercial ID**, with the following values:
        - **Name**: Commercial ID
        - **Description**: Sets the Commercial ID that corresponds to the Update Compliance Log Analytics workspace.
        - **OMA-URI**: `./Vendor/MSFT/DMClient/Provider/MS DM Server/CommercialID`
        - **Data type**: String
        - **Value**: *Set this to your Commercial ID*
    2. Add a setting configuring devices' **Windows Diagnostic Data level**:
        - **Name**: Allow Telemetry
        - **Description**: Sets the maximum allowed diagnostic data to be sent to Microsoft, required for Update Compliance.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowTelemetry`
        - **Data type**: Integer
        - **Value**: 1 (*all that is required is 1, but it can be safely set to a higher value*).
    3. (*Recommended, but not required*) Add a setting for **disabling devices' Diagnostic Data opt-in settings interface**. If this is not disabled, users of each device can potentially override the diagnostic data level of devices such that data will not be available for those devices in Update Compliance:
        - **Name**: Disable Telemetry opt-in interface
        - **Description**: Disables the ability for end-users of devices can adjust diagnostic data to levels lower than defined by the Allow Telemetry setting.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/ConfigureTelemetryOptInSettingsUx`
        - **Data type**: Integer
        - **Value**: 1
    4. Add a setting to **Allow device name in diagnostic data**; otherwise, there will be no device name in Update Compliance:
        - **Name**: Allow device name in Diagnostic Data
        - **Description**: Allows device name in Diagnostic Data.
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowDeviceNameInDiagnosticData`
        - **Data type**: Integer
        - **Value**: 1
    5. Add a setting to **Allow Update Compliance processing**; this policy is required for Update Compliance: 
        - **Name**: Allow Update Compliance Processing
        - **Description**: Opts device data into Update Compliance processing. Required to see data. 
        - **OMA-URI**: `./Vendor/MSFT/Policy/Config/System/AllowUpdateComplianceProcessing`
        - **Data type**: Integer
        - **Value**: 16
7.  Proceed through the next set of tabs **Scope tags**, **Assignments**, and **Applicability Rules** to assign the configuration profile to devices you wish to enroll. 
8. Review and **create**. 

## Deploy the configuration script

The [Update Compliance Configuration Script](update-compliance-configuration-script.md) is an important component of properly enrolling devices to Update Compliance, though is not strictly necessary. It checks to ensure devices have required services running and checks connectivity to the endpoints detaield in the section on [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md). Deploying the configuration script can be done by deploying the script as a Win32 app. Documentation for this can be found in the Intune documentation for [Win32 app management in Microsoft Intune](https://docs.microsoft.com/mem/intune/apps/apps-win32-app-management). 

When deploying the configuration script as a Win32 app, you will be unable to retrieve the results of logs on the device without having access to the device, or saving results of the logs to a shared filesystem. We recommend deploying the script in Pilot mode to a set of devices that you do have access to, or have a way to access the resultant log output the script provides, with as similar of a configuration profile as other devices which will be enrolled to Update Compliance, and analyzing the logs for any potential issues. Following this, you can deploy the configuration script in Deployment mode as a Win32 app to all Update Compliance devices. 