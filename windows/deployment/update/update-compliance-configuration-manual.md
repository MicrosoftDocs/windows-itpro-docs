---
title: Manually configuring devices for Update Compliance
ms.reviewer: 
manager: laurawi
description: Manually configuring devices for Update Compliance
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
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

# Manually Configuring Devices for Update Compliance

There are a number of requirements to consider when manually configuring devices for Update Compliance. These can potentially change with newer versions of Windows 10. The [Update Compliance Configuration Script](update-compliance-configuration-script.md) will be updated when any configuration requirements change so only a redeployment of the script will be required.

The requirements are separated into different categories:

1. Ensuring the [**required policies**](#required-policies) for Update Compliance are correctly configured.
2. Devices in every network topography must send data to the [**required endpoints**](#required-endpoints) for Update Compliance. For example, devices in both main and satellite offices, which might have different network configurations must be able to reach the endpoints.
3. Ensure [**Required Windows services**](#required-services) are running or are scheduled to run. It is recommended all Microsoft and Windows services are set to their out-of-box defaults to ensure proper functionality.
4. [**Run a full Census sync**](#run-a-full-census-sync) on new devices to ensure that all necessary data points are collected.

## Required policies

> [!NOTE]
> Windows 10 MDM and Group Policies are backed by registry keys. It is not recommended you set these registry keys directly for configuration as it can lead to unexpected behavior, so the exact registry key locations are not provided, though they are referenced for troubleshooting configuration issues with the [Update Compliance Configuration Script](update-compliance-configuration-script.md).

Update Compliance has a number of policies that must be appropriately configured in order for devices to be processed by Microsoft and visible in Update Compliance. They are enumerated below, separated by whether the policies will be configured via [Mobile Device Management](/windows/client-management/mdm/) (MDM) or Group Policy. For both tables:

- **Policy** corresponds to the location and name of the policy.
- **Value** Indicates what value the policy must be set to. Update Compliance requires *at least* Basic (or Required) diagnostic data, but can function off Enhanced or Full (or Optional).
- **Function** details why the policy is required and what function it serves for Update Compliance. It will also detail a minimum version the policy is required, if any.

### Mobile Device Management policies

Each MDM Policy links to its documentation in the CSP hierarchy, providing its exact location in the hierarchy and more details.

| Policy | Value | Function |
|---------------------------|-|------------------------------------------------------------|
|**Provider/*ProviderID*/**[**CommercialID**](/windows/client-management/mdm/dmclient-csp#provider-providerid-commercialid) |[Your CommercialID](update-compliance-get-started.md#get-your-commercialid) |Identifies the device as belonging to your organization. |
|**System/**[**AllowTelemetry**](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) | 1- Basic |Configures the maximum allowed diagnostic data to be sent to Microsoft. Individual users can still set this value lower than what the policy defines. For more information, see the following policy. |
|**System/**[**ConfigureTelemetryOptInSettingsUx**](/windows/client-management/mdm/policy-csp-system#system-configuretelemetryoptinsettingsux) | 1 - Disable Telemetry opt-in Settings | (in Windows 10, version 1803 and later) Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy or the effective diagnostic data level on devices might not be sufficient. |
|**System/**[**AllowDeviceNameInDiagnosticData**](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata) | 1 - Allowed | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or set to 0 (Disabled), Device Name will not be sent and will not be visible in Update Compliance, showing `#` instead. |

> [!NOTE]
> If you use Microsoft Intune, set the **ProviderID** to *MS DM Server*. If you use another MDM product, check with its vendor. See also [DMClient CSP](/windows/client-management/mdm/dmclient-csp).

### Group Policies

All Group Policies that need to be configured for Update Compliance are under **Computer Configuration>Administrative Templates>Windows Components\Data Collection and Preview Builds**. All of these policies must be in the *Enabled* state and set to the defined *Value* below.  

| Policy | Value | Function |
|---------------------------|-|-----------------------------------------------------------|
|**Configure the Commercial ID** |[Your CommercialID](update-compliance-get-started.md#get-your-commercialid) | Identifies the device as belonging to your organization. |
|**Allow Telemetry** | 1 - Basic |Configures the maximum allowed diagnostic data to be sent to Microsoft. Individual users can still set this value lower than what the policy defines. See the following policy for more information. |
|**Configure telemetry opt-in setting user interface** | 1 - Disable diagnostic data opt-in Settings |(in Windows 10, version 1803 and later) Determines whether users of the device can adjust diagnostic data to levels lower than the level defined by AllowTelemetry. We recommend that you disable this policy, otherwise the effective diagnostic data level on devices might not be sufficient. |
|**Allow device name to be sent in Windows diagnostic data** | 1 - Enabled | Allows device name to be sent for Windows Diagnostic Data. If this policy is Not Configured or Disabled, Device Name will not be sent and will not be visible in Update Compliance, showing `#` instead. |

## Required endpoints

To enable data sharing between devices, your network, and Microsoft's Diagnostic Data Service, configure your proxy to allow devices to contact the below endpoints.

| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `https://v10c.events.data.microsoft.com` | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1803 and later. Census.exe must run on a regular cadence and contact this endpoint in order to receive the majority of [WaaSUpdateStatus](update-compliance-schema-waasupdatestatus.md) information for Update Compliance. |
| `https://v10.vortex-win.data.microsoft.com` | Connected User Experience and Diagnostic component endpoint for Windows 10, version 1709 or earlier. |
| `https://settings-win.data.microsoft.com` | Required for Windows Update functionality. |
| `http://adl.windows.com` | Required for Windows Update functionality. |
| `https://watson.telemetry.microsoft.com` | Windows Error Reporting (WER), used to provide more advanced error reporting if certain Feature Update deployment failures occur. |
| `https://oca.telemetry.microsoft.com`  | Online Crash Analysis, used to provide device-specific recommendations and detailed errors in the event of certain crashes. |
| `https://login.live.com` | This endpoint facilitates MSA access and is required to create the primary identifier we use for devices. Without this service, devices will not be visible in the solution. The Microsoft Account Sign-in Assistant service must also be running (wlidsvc). |

## Required services

Many Windows and Microsoft services are required to ensure that not only the device can function, but Update Compliance can see device data. It is recommended that you allow all default services from the out-of-box experience to remain running. The [Update Compliance Configuration Script](update-compliance-configuration-script.md) checks whether the majority of these services are running or are allowed to run automatically.


## Run a full Census sync

Census is a service that runs on a regular schedule on Windows devices. A number of key device attributes, like what operating system edition is installed on the device, are included in the Census payload. However, to save network load and system resources, data that tends to be more static (like edition) is sent approximately once per week rather than on every daily run. Because of this behavior, these attributes can take longer to appear in Update Compliance unless you start a full Census sync. The Update Compliance Configuration Script will do a full sync. 

A full Census sync adds a new registry value to Census's path. When this registry value is added, Census's configuration is overridden to force a full sync. For Census to work normally, this registry value should be enabled, Census should be started manually, and then the registry value should be disabled. Follow these steps:

1. For every device you are manually configuring for Update Compliance, add or modify the registry key located at **HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Census** to include a new **DWORD value** named **FullSync** and set to **1**. 
2. Run Devicecensus.exe with administrator privileges on every device. Devicecensus.exe is in the System32 folder. No additional run parameters are required. 
3. After Devicecensus.exe has run, the **FullSync** registry value can be removed or set to **0**.