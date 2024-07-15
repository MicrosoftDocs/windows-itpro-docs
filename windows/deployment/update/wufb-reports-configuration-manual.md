---
title: Manually configure devices to send data
titleSuffix: Windows Update for Business reports
description: How to manually configure devices for Windows Update for Business reports using a PowerShell script.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 07/09/2024
---

# Manually configure devices for Windows Update for Business reports
<!--37063317, 30141258, 37063041-->

There are many requirements to consider when manually configuring devices for Windows Update for Business reports. These requirements can potentially change with later versions of Windows client. When any configuration requirements change, we'll update the [Windows Update for Business reports configuration script](wufb-reports-configuration-script.md). If that happens, you only need to redeploy the script.

The requirements are separated into different categories:

1. Ensuring the [**required policies**](#required-policies) for Windows Update for Business reports are correctly configured.
2. Devices in every network topography must send data to the [**required endpoints**](#required-endpoints) for Windows Update for Business reports. For example, devices in both main and satellite offices, which might have different network configurations, must be able to reach the endpoints.
3. Ensure [**Required Windows services**](#required-services) are running or are scheduled to run. For proper functionality, leave Windows services set to their out-of-box default configurations.

## Required policies

The Windows Update for Business reports service has several policies that you need to configure appropriately. These policies allow Microsoft to process your devices and show them in Windows Update for Business reports. The policies are listed in the following subsections, separated by [mobile device management](/windows/client-management/mdm/) (MDM) or group policy.

The following definitions apply for both tables:

- **Policy**: The location and name of the policy.
- **Value**: Set the policy to this value. Windows Update for Business reports requires at least *Required* (previously *Basic*) diagnostic data, but can function with *Enhanced* or *Optional* (previously *Full*).
- **Function**: Details for why the policy is required and what function it serves for Windows Update for Business reports. It also details a minimum version the policy requires, if any.

### MDM policies

Each MDM policy links to more detailed documentation in the configuration service provider (CSP) hierarchy.

| Policy | Data type | Value | Function | Required or recommended |
|---|---|---|---|---|
| **System/**[**AllowTelemetry**](/windows/client-management/mdm/policy-csp-system#allowtelemetry) | Integer | `1`: Basic (Required) | Configures the device to send the minimum required diagnostic data. | Required |
| **System/**[**ConfigureTelemetryOptInSettingsUx**](/windows/client-management/mdm/policy-csp-system#configuretelemetryoptinsettingsux) | Integer | `1`: Disable diagnostic data opt-in settings | Determines whether users of the device can adjust diagnostic data to levels lower than you define by the *AllowTelemetry* policy. Set the recommended value to disable opt-in settings, or users can change the effective diagnostic data level that might not be sufficient. | Recommended |
| **System/**[**AllowDeviceNameInDiagnosticData**](/windows/client-management/mdm/policy-csp-system#allowdevicenameindiagnosticdata) | Integer | `1`: Allowed | Allows the device to send its name with Windows diagnostic data. If you don't configure this policy or set it to `0`: Disabled, then the data doesn't include the device name. If the data doesn't include the device name, you can't see the device in Windows Update for Business reports. In this instance, the reports show `#` instead. | Recommended |
| **System/**[**ConfigureTelemetryOptInChangeNotification**](/windows/client-management/mdm/policy-csp-system#configuretelemetryoptinchangenotification) | Integer | `1`: Disabled |  Disables user notifications that appear for changes to the diagnostic data level. | Recommended |

### Group policies

All group policies that you need to configure for Windows Update for Business reports are under the following path: **Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds**. All of these policies must be in the *Enabled* state and set to the defined *Value*.

| Policy | Value | Function | Required or recommended|
|---|---|---|---|
| **Allow Diagnostic Data** | Send required diagnostic data | Configures the device to send the minimum required diagnostic data. | Required |
| **Configure diagnostic data opt-in setting user interface** | Disable diagnostic data opt-in settings | Determines whether users of the device can adjust diagnostic data to levels lower than you define by the *Allow Diagnostic Data* policy. Set the recommended value to disable opt-in settings, or users can change the effective diagnostic data level that might not be sufficient. | Recommended |
| **Allow device name to be sent in Windows diagnostic data** | Enabled | Allows the device to send its name with Windows diagnostic data. If you don't configure this policy or set it to *Disabled*, then the data doesn't include the device name. If the data doesn't include the device name, you can't see the device in Windows Update for Business reports. In this instance, the reports show `#` instead. | Recommended |
| **Configure diagnostic data opt-in change notifications** | Disable diagnostic data change notifications | Disables user notifications that appear for changes to the diagnostic data level. | Recommended |

## Required endpoints

<!--Using include for endpoint access requirements-->
[!INCLUDE [Endpoints for Windows Update for Business reports](./includes/wufb-reports-endpoints.md)]

## Required services

Many Windows services are required for Windows Update for Business reports to see device data. Allow all default services from the out-of-box experience to remain running. Use the [Windows Update for Business reports configuration script](wufb-reports-configuration-script.md) to check whether required services are running or are allowed to run automatically.

## Next steps

[Use Windows Update for Business reports](wufb-reports-use.md)
