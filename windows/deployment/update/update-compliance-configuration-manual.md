---
title: Manually configuring devices for Update Compliance
ms.reviewer: 
manager: aczechowski
description: Manually configuring devices for Update Compliance
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-updates
---

# Manually Configuring Devices for Update Compliance

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]


There are a number of requirements to consider when manually configuring devices for Update Compliance. These can potentially change with newer versions of Windows client. The [Update Compliance Configuration Script](update-compliance-configuration-script.md) will be updated when any configuration requirements change so only a redeployment of the script will be required.

The requirements are separated into different categories:

1. Ensuring the [**required policies**](#required-policies) for Update Compliance are correctly configured.
2. Devices in every network topography must send data to the [**required endpoints**](#required-endpoints) for Update Compliance. For example, devices in both main and satellite offices, which might have different network configurations must be able to reach the endpoints.
3. Ensure [**Required Windows services**](#required-services) are running or are scheduled to run. It is recommended all Microsoft and Windows services are set to their out-of-box defaults to ensure proper functionality.


## Required policies

Update Compliance has a number of policies that must be appropriately configured in order for devices to be processed by Microsoft and visible in Update Compliance. They are enumerated below, separated by whether the policies will be configured via [Mobile Device Management](/windows/client-management/mdm/) (MDM) or Group Policy. For both tables:

- **Policy** corresponds to the location and name of the policy.
- **Value** Indicates what value the policy must be set to. Update Compliance requires *at least* Basic (or Required) diagnostic data, but can function off Enhanced or Full (or Optional).
- **Function** details why the policy is required and what function it serves for Update Compliance. It will also detail a minimum version the policy is required, if any.

### Mobile Device Management policies

Each MDM Policy links to its documentation in the CSP hierarchy, providing its exact location in the hierarchy and more details.

| Policy | Data type | Value | Function |
|--------------------------|-|-|------------------------------------------------------------|
|**Provider/*ProviderID*/**[**CommercialID**](/windows/client-management/mdm/dmclient-csp#provider-providerid-commercialid) |String |[Your CommercialID](update-compliance-get-started.md#get-your-commercialid) |Identifies the device as belonging to your organization. |
|**System/**[**AllowTelemetry**](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) |Integer | 1 - Basic |Sends basic device info, including quality-related data, app compatibility, and other similar data to keep the device secure and up-to-date. For more information, see [Configure Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization). |
|**System/**[**ConfigureTelemetryOptInSettingsUx**](/windows/client-management/mdm/policy-csp-system#system-configuretelemetryoptinsettingsux) |Integer |1 - Disable Telemetry opt-in Settings | (in Windows 10, version 1803 and later) Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy or the effective diagnostic data level on devices might not be sufficient. |
|**System/**[**AllowDeviceNameInDiagnosticData**](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata) |Integer | 1 - Allowed | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or set to 0 (Disabled), Device Name will not be sent and will not be visible in Update Compliance, showing `#` instead. |
| **System/**[**AllowUpdateComplianceProcessing**](/windows/client-management/mdm/policy-csp-system#system-allowUpdateComplianceProcessing) |Integer | 16 - Allowed | Enables data flow through Update Compliance's data processing system and indicates a device's explicit enrollment to the service. |
| **System/**[AllowCommercialDataPipeline](/windows/client-management/mdm/policy-csp-system#system-allowcommercialdatapipeline) | Integer | 1 - Enabled | Configures Microsoft to be the processor of the Windows diagnostic data collected from an Azure Active Directory-joined device. |
 
### Group policies

All Group policies that need to be configured for Update Compliance are under **Computer Configuration>Policies>Administrative Templates>Windows Components\Data Collection and Preview Builds**. All of these policies must be in the *Enabled* state and set to the defined *Value* below.  

| Policy | Value | Function |
|---------------------------|-|-----------------------------------------------------------|
|**Configure the Commercial ID** |[Your CommercialID](update-compliance-get-started.md#get-your-commercialid) | Identifies the device as belonging to your organization. |
|**Allow Telemetry** | 1 - Basic |Configures the maximum allowed diagnostic data to be sent to Microsoft. Individual users can still set this value lower than what the policy defines. See the following policy for more information. |
|**Configure telemetry opt-in setting user interface** | 1 - Disable diagnostic data opt-in Settings |(in Windows 10, version 1803 and later) Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy, otherwise the effective diagnostic data level on devices might not be sufficient. |
|**Allow device name to be sent in Windows diagnostic data** | 1 - Enabled | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or Disabled, Device Name will not be sent and will not be visible in Update Compliance, showing `#` instead. |
|**Allow Update Compliance processing** | 16 - Enabled | Enables data flow through Update Compliance's data processing system and indicates a device's explicit enrollment to the service. |
| **Allow commercial data pipeline** | 1 - Enabled | Configures Microsoft to be the processor of the Windows diagnostic data collected from an Azure Active Directory-joined device. |


## Required endpoints

To enable data sharing between devices, your network, and Microsoft's Diagnostic Data Service, configure your proxy to allow devices to contact the below endpoints.

<!--Using include for endpoint access requirements-->
[!INCLUDE [Endpoints for Update Compliance](./includes/wufb-reports-endpoints.md)]

## Required services

Many Windows and Microsoft services are required to ensure that not only the device can function, but Update Compliance can see device data. It is recommended that you allow all default services from the out-of-box experience to remain running. The [Update Compliance Configuration Script](update-compliance-configuration-script.md) checks whether the majority of these services are running or are allowed to run automatically.


