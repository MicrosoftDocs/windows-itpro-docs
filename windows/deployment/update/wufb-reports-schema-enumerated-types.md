---
title: Enumerated types
titleSuffix: Windows Update for Business reports
description: Enumerated types for Windows Update for Business reports.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 11/10/2023
---

# Enumerated types for Windows Update for Business reports
<!--8506381-->
The following enumerated types are used in Windows Update for Business reports:

## OSEdition

SKU of Windows the device is running.

|Value | Description |
|---|---|
| Enterprise | Win10 Enterprise |
| Professional | Win10 Professional |
| ProfessionalWorkstation | Win10 Professional workstation |
| ProfessionalN | Similar to Win 10 Professional edition but does not include Windows media player. |
| Education | Win10 Education |

## OSArchitecture 

Architecture of the OS running on the client.

|Value | Description |
|---|---|
| amd64 | OS is 64-bit |
| x86 | OS is 32-bit |
| Unknown | The OS architecture is unknown |

## OSFeatureUpdateStatus 

Feature updates status

|Value | Description |
|---|---|
| Unknown | Default, sent if client data unavailable. |
| InService | Client is on a version of Windows 10 that is serviced.  |
| EndOfService | Client is on a version of Windows 10 that is no longer serviced. |

## OSQualityUpdateStatus 

Quality updates status

|Value | Description |
|---|---|
| Latest | Client is on the latest Quality Update |
| NotLatest | Client is not on the latest Quality Update |

## OSQuaOSSecurityUpdateStatus

Security updates status

|Value | Description |
|---|---|
| Latest | Client is on the latest Security Update |
| NotLatest | Client is not on the latest Security Update |
| MultipleSecurityUpdatesMissing | Client is missing multiple Security Updates |

## OSFeatureUpdateComplianceStatus, OSSecurityUpdateComplianceStatus, OSQualityUpdateComplianceStatus

Compliance status

|Value | Description |
|---|---|
| Compliant | Client has installed the latest Windows Update for Business deployment service deployment |
| NotCompliant | Client has not installed the latest Windows Update for Business deployment service deployment |
| NotApplicable | Client is not part of any Windows Update for Business deployment service deployments |

## OSServicingChannel

Servicing channel of client

|Value | Description |
|---|---|
| Unknown | Default, release branch cannot be defined. |
| SAC | Semi-annual release channel |
| LTSC | Long-term servicing channel |
| WIP-S | Windows Insider Preview - Slow ring |
| WIP-F | Windows Insider Preview - Fast ring |
| Internal | An identifiable, but internal release ring |

## ServiceState

High-level service state OSServicingChannel

|Value | Description |
|---|---|
| Pending | Windows Update for Business deployment service is not targeting this update to this device because the update isn't ready. |
| Offering | Service is offering update to device; update is available for device to get if it scans Windows Update. |
| OnHold | Service has held offering update to device indefinitely, until either the service or admin changes some condition, devices will remain in this state. |
| Cancelled | Service has cancelled offering update to device, and device is confirmed to not be installing the update. |

## ServiceSubstate

Lower-level service state

| Value | ServiceState |
|---|---|
| Validation | Update cannot be offered to the device because a validation issue with the device and Deployment Service. |
| Scheduled | Update is not ready to be offered to the device, but is scheduled for offering at a later date. |
| OfferReady | Update is currently being offered to the device by Windows Update. |
| RemovedFromDeployment | Update offering was cancelled because it was removed from the Deployment by explicit Administrator action. |
| AdminCancelled | Update offering was cancelled by explicit Administrator action. |
| ServiceCancelled | Update offering was cancelled due to an automatic action by the Deployment Service. |
| AdminPaused | Update is on hold due to the Deployment being paused by explicit Administrator action. |
| ServicePaused | Update is on hold due to an automatic action by the Deployment Service. |
| SafeguardHold | Update is not Offered due an existing Safeguard hold on the device. |

## ClientState 

High-level client state

|Value | Description |
|---|---|
| Unknown | Default value, if ClientSubstate is unknown (in other words, no client data) |
| Offering | Update is being offered to device |
| Installing | Update is in progress on device |
| Uninstalling | Update is being uninstalled from device |
| Installed | Update has been installed to device |
| Uninstalled | Update has been uninstalled from device |
| Cancelled | Update has been cancelled from device |
| OnHold | Update has been on Hold |

## ClientSubstate

Lower-level client state 

|Value | Description |
|---|---|
| Unknown | Default value, if ClientSubstate is unknown (in other words, no client data) |
| Offering | Update is being offered to device |
| Installing | Update is in progress on device |
| Uninstalling | Update is being uninstalled from device |
| Installed | Update has been installed to device |
| Uninstalled | Update has been uninstalled from device |
| Cancelled | Update has been cancelled from device |
| OnHold | Update has been on Hold |

## UpdateCategory

Type of update.

|Value | Description |
|---|---|
| WindowsQualityUpdate | Windows feature update |
| WindowsFeatureUpdate | Windows quality update |
| DriverUpdate | Driver update  |

## UpdateClassification

Whether this update is an upgrade, security, non-security, or driver

|Value | Description |
|---|---|
| Security | Update is a quality update containing security fixes |
| NonSecurity | Update is a quality update not containing security fixes |
| Upgrade | Update is a feature update |

## UpdateSource

Source of the update

|Value | Description |
|---|---|
| Inferred |  |
| MuV6 | Update through old Windows Update, or via WSUS (uses old protocol) |
| UUP | Update through modern Windows Update |

## ReadinessStatus

Whether the device is capable of taking target OS and version.

|Value | Description |
|---|---|
| Capable | The device meets all requirements to upgrade to Windows 11. |
| Not Capable | The device does not meet the requirements to upgrade to Windows 11. Check Readiness Reason for the reason. |
| Unknown | Microsoft does not have enough datapoints to determine the eligibility status. |

## ReadinessReason

Reason why the device is not capable of updating to target OS and version.

|Value | Description |
|---|---|
| tpm | [Trusted Platform Module](/windows/security/hardware-security/tpm/trusted-platform-module-overview) (TPM) version 2.0. If your device does not meet the minimum requirements because of TPM, see [Enable TPM 2.0 on your PC](https://support.microsoft.com/windows/enable-tpm-2-0-on-your-pc-1fd5a332-360d-4f46-a1e7-ae6b0c90645c) to see if there are any remediation steps you can take. |
| cpufms | Not supported CPUs per doc: Windows Processor Requirements  |
| sysdrivesize | 64 GB or larger storage device. If your PC does not have a large enough storage drive, there are sometimes options for upgrading the drive. You may want to consult your PC manufacturer's website or with a retailer to see if there are easy and affordable options to meet the minimum requirements for Windows 11.     |
| UefiSecureBoot | UEFI (for Unified Extensible Firmware Interface, a modern version of the PC BIOS) and Secure Boot capable. If your device does not meet the minimum requirements because it is not Secure Boot capable, you may want to [read this article](https://support.microsoft.com/topic/a8ff1202-c0d9-42f5-940f-843abef64fad) to see if there are steps you can take to enable this. Secure Boot can only be enabled with UEFI and this article helps you understand potential options to change settings to make this possible. |
