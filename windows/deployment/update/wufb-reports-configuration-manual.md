---
title: Manually configure devices to send data
titleSuffix: Windows Update for Business reports
description: How to manually configure devices for Windows Update for Business reports using a PowerShell script.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
ms.topic: article
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 11/15/2022
---

# Manually configuring devices for Windows Update for Business reports
<!--37063317, 30141258, 37063041-->

There are a number of requirements to consider when manually configuring devices for Windows Update for Business reports. These requirements can potentially change with newer versions of Windows client. The [Windows Update for Business reports configuration script](wufb-reports-configuration-script.md) will be updated when any configuration requirements change so only a redeployment of the script will be required.

The requirements are separated into different categories:

1. Ensuring the [**required policies**](#required-policies) for Windows Update for Business reports are correctly configured.
2. Devices in every network topography must send data to the [**required endpoints**](#required-endpoints) for Windows Update for Business reports. For example, devices in both main and satellite offices, which might have different network configurations, must be able to reach the endpoints.
3. Ensure [**Required Windows services**](#required-services) are running or are scheduled to run. It's recommended all Microsoft and Windows services are set to their out-of-box defaults to ensure proper functionality.


## Required policies

Windows Update for Business reports has a number of policies that must be appropriately configured in order for devices to be processed by Microsoft and visible in Windows Update for Business reports. Thee policies are listed below, separated by whether the policies will be configured via [Mobile Device Management](/windows/client-management/mdm/) (MDM) or Group Policy. For both tables:

- **Policy** corresponds to the location and name of the policy.
- **Value** Indicates what value the policy must be set to. Windows Update for Business reports requires *at least* Basic (or Required) diagnostic data, but can function off Enhanced or Full (or Optional).
- **Function** details why the policy is required and what function it serves for Windows Update for Business reports. It will also detail a minimum version the policy is required, if any.

### Mobile Device Management policies

Each MDM Policy links to its documentation in the configuration service provider (CSP) hierarchy, providing its exact location in the hierarchy and more details.

| Policy | Data type | Value | Function | Required or recommended|
|---|---|---|---|---|
|**System/**[**AllowTelemetry**](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) |Integer | 1 - Basic |Configures the maximum allowed diagnostic data to be sent to Microsoft. Individual users can still set this value lower than what the policy defines. For more information, see the following policy. | Required |
|**System/**[**ConfigureTelemetryOptInSettingsUx**](/windows/client-management/mdm/policy-csp-system#system-configuretelemetryoptinsettingsux) |Integer |1 - Disable Telemetry opt-in Settings | Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy or the effective diagnostic data level on devices might not be sufficient. | Recommended |
|**System/**[**AllowDeviceNameInDiagnosticData**](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata) |Integer | 1 - Allowed | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or set to 0 (Disabled), Device Name won't be sent and won't be visible in Windows Update for Business reports, showing `#` instead. | Recommended |
| **System/**[**ConfigureTelemetryOptInChangeNotification**](/windows/client-management/mdm/policy-csp-system#configuretelemetryoptinchangenotification) | Integer | 1 - Disabled |  Disables user notifications that appear for changes to the diagnostic data level. | Recommended |

### Group policies

All Group policies that need to be configured for Windows Update for Business reports are under **Computer Configuration>Administrative Templates>Windows Components\Data Collection and Preview Builds**. All of these policies must be in the *Enabled* state and set to the defined *Value* below.  

| Policy | Value | Function | Required or recommended|
|---|---|---|---|
|**Allow Diagnostic Data** | Send required diagnostic data (minimum)  | Configures the maximum allowed diagnostic data to be sent to Microsoft. Individual users can still set this value lower than what the policy defines. For more information, see the **Configure diagnostic data opt-in setting user interface**. | Required |
|**Configure diagnostic data opt-in setting user interface** |  Disable diagnostic data opt in settings | Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy, otherwise the effective diagnostic data level on devices might not be sufficient. | Recommended |
|**Allow device name to be sent in Windows diagnostic data** | Enabled | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or Disabled, Device Name won't be sent and won't be visible in Windows Update for Business reports, showing `#` instead. | Recommended |
|**Configure diagnostic data opt-in change notifications** |  Disable diagnostic data change notifications |  Disables user notifications that appear for changes to the diagnostic data level. | Recommended |

## Required endpoints

To enable data sharing between devices, your network, and Microsoft's Diagnostic Data Service, configure your proxy to allow devices to contact the below endpoints.

<!--Using include for endpoint access requirements-->
[!INCLUDE [Endpoints for Windows Update for Business reports](./includes/wufb-reports-endpoints.md)]

## Required services

Many Windows and Microsoft services are required to ensure that not only the device can function, but Windows Update for Business reports can see device data. It's recommended that you allow all default services from the out-of-box experience to remain running. The [Windows Update for Business reports Configuration Script](wufb-reports-configuration-script.md) checks whether the majority of these services are running or are allowed to run automatically.

## Next steps

[Use Windows Update for Business reports](wufb-reports-use.md)
