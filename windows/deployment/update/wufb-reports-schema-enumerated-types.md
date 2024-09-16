---
title: Enumerated types
titleSuffix: Windows Update for Business reports
description: Enumerated types for Windows Update for Business reports.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 12/06/2023
---

# Enumerated types for Windows Update for Business reports
<!--8506381-->
The following enumerated types are used in Windows Update for Business reports:

## OSEdition

SKU of Windows the device is running.

|Value | Description |
|---|---|
| **Enterprise** | Windows Enterprise |
| **Professional** | Windows Professional |
| **ProfessionalWorkstation** | Windows Professional workstation |
| **ProfessionalN** | Similar to Windows Professional edition but doesn't include Windows media player. |
| **Education** | Windows Education |

## OSArchitecture 

Architecture of the OS running on the client.

|Value | Description |
|---|---|
| **amd64** | OS is 64-bit |
| **x86** | OS is 32-bit |
| **Unknown** | The OS architecture is unknown |

## OSFeatureUpdateStatus 

Feature updates status

|Value | Description |
|---|---|
| **Unknown** | Default, sent if client data unavailable. |
| **InService** | Client is on a version of Windows 10 that is serviced.  |
| **EndOfService** | Client is on a version of Windows 10 that is no longer serviced. |

## OSQualityUpdateStatus 

Quality updates status

|Value | Description |
|---|---|
| **Latest** | Client is on the latest quality update |
| **NotLatest** | Client isn't on the latest quality update |

## OSSecurityUpdateStatus

Security updates status

|Value | Description |
|---|---|
| **Latest** | Client is on the latest security update |
| **NotLatest** | Client isn't on the latest security update |
| **MultipleSecurityUpdatesMissing** | Client is missing multiple security updates |

## OSFeatureUpdateComplianceStatus, OSSecurityUpdateComplianceStatus, OSQualityUpdateComplianceStatus

Compliance status

|Value | Description |
|---|---|
| **Compliant** | The latest deployment from Windows Autopatch is installed on the client |
| **NotCompliant** |  The latest deployment from Windows Autopatch isn't installed on the client|
| **NotApplicable** | Client isn't part of any Windows Autopatch deployments |

## OSServicingChannel

Servicing channel of client

|Value | Description |
|---|---|
| **Unknown** | Default, release branch can't be defined. |
| **SAC** | Semi-annual release channel |
| **LTSC** | Long-term servicing channel |
| **WIP-S** | Windows Insider Preview - Slow ring |
| **WIP-F**| Windows Insider Preview - Fast ring |
| **Internal** | An identifiable, but internal release ring |

## ServiceState

High-level service state OSServicingChannel

|Value | Description |
|---|---|
| **Pending** | Windows Autopatch isn't targeting this update to this device because the update isn't ready. |
| **Offering** | Service is offering the update to the device. The update is available for the device to get if it scans Windows Update. |
| **OnHold** | Service is holding off on offering update to the device indefinitely. Until either the service or admin changes some condition, devices remain in this state. |
| **Canceled** | Service canceled offering update to the device, and the device is confirmed to not be installing the update. |

## ServiceSubstate

Lower-level service state

| Value | ServiceState |
|---|---|
| **Validation** | Update can't be offered to the device because a validation issue with the device and deployment service. |
| **Scheduled** | Update isn't ready to be offered to the device, but is scheduled for offering at a later date. |
| **OfferReady** | Update is currently being offered to the device from Windows Update. |
| **RemovedFromDeployment** | Update offering was canceled because it was removed from the deployment because of an explicit administrator action. |
| **AdminCancelled** | Update offering was canceled because of an explicit administrator action. |
| **ServiceCancelled** | Update offering was canceled because of an automatic action by the deployment service. |
| **AdminPaused** | Update is on hold because the deployment was paused with an explicit administrator action. |
| **ServicePaused** | Update is on hold because of an automatic action by the deployment service. |
| **SafeguardHold** | Update isn't offered because an existing safeguard hold on the device. |

## ClientState 

High-level client state

|Value | Description |
|---|---|
| **Unknown** | Default value, if ClientSubstate is unknown (in other words, no client data) |
| **Offering** | Update is being offered to device |
| **Installing** | Update is in progress on device |
| **Uninstalling** | Update is being uninstalled from device |
| **Installed** | Update has been installed to device |
| **Uninstalled** | Update has been uninstalled from device |
| **Canceled** | Update has been canceled from device |
| **OnHold** | Update has been on Hold |

## ClientSubstate

Lower-level client state 

|Value | Description |
|---|---|
| **Unknown** | Default value, if ClientSubstate is unknown (in other words, no client data) |
| **Offering** | Update is being offered to device |
| **Installing** | Update is in progress on device |
| **Uninstalling** | Update is being uninstalled from device |
| **Installed** | Update has been installed to device |
| **Uninstalled** | Update has been uninstalled from device |
| **Canceled** | Update has been canceled from device |
| **OnHold** | Update has been on Hold |

## UpdateCategory

Type of update.

|Value | Description |
|---|---|
| **WindowsQualityUpdate** | Windows feature update |
| **WindowsFeatureUpdate** | Windows quality update |
| **DriverUpdate** | Driver update  |

## UpdateClassification

Whether this update is an upgrade, security, nonsecurity, or driver

|Value | Description |
|---|---|
| **Security** | Update is a quality update containing security fixes |
| **NonSecurity** | Update is a quality update not containing security fixes |
| **Upgrade** | Update is a feature update |

## UpdateSource

Source of the update

|Value | Description |
|---|---|
| **Inferred** |  |
| **MuV6** | Update through old Windows Update, or via WSUS (uses old protocol) |
| **UUP** | Update through modern Windows Update |

## ReadinessStatus

Whether the device is capable of taking target OS and version.

|Value | Description |
|---|---|
| **Capable** | The device meets all requirements to upgrade to Windows 11. |
| **Not Capable** | The device doesn't meet the requirements to upgrade to Windows 11. Check Readiness Reason for the reason. |
| **Unknown** | Microsoft doesn't have enough data points to determine the eligibility status. |

## ReadinessReason

Reason why the device isn't capable of updating to target OS and version.

|Value | Description |
|---|---|
| **tpm** | [Trusted Platform Module](/windows/security/hardware-security/tpm/trusted-platform-module-overview) (TPM) version 2.0 is required. If your device doesn't meet the minimum requirements because of TPM, see [Enable TPM 2.0 on your PC](https://support.microsoft.com/windows/enable-tpm-2-0-on-your-pc-1fd5a332-360d-4f46-a1e7-ae6b0c90645c) to see if there are any remediation steps you can take. |
| **cpufms** | CPU not supported. For more information, see [Windows Processor Requirements](/windows-hardware/design/minimum/windows-processor-requirements)  |
| **sysdrivesize** | 64 GB or larger storage device required. If your PC doesn't have a large enough storage drive, sometimes  there are options for upgrading the drive. Consult your PC manufacturer's website or with a retailer to see if there are options to meet the minimum requirements for Windows 11.  |
| **UefiSecureBoot** | UEFI (Unified Extensible Firmware Interface) and Secure Boot capability. If your device doesn't meet the minimum requirements because it's not Secure Boot capable. For more information, see [Windows 11 and Secure Boot](https://support.microsoft.com/topic/a8ff1202-c0d9-42f5-940f-843abef64fad) to see if you're able to enable Secure Boot. Secure Boot can only be enabled with UEFI. |


## AlertType

Type of alert.

|Value | Description |
|---|---|
| **ServiceUpdateAlert** | Alert is relevant to Windows Autopatch's offering of the content to the client. |
| **ClientUpdateAlert** | Alert is relevant to client's ability to progress through the installation of the update content. |
| **ServiceDeviceAlert** | Alert is relevant to device's status within Windows Autopatch |
| **ClientDeviceAlert** | Alert is relevant to device's state |
| **DeploymentAlert** | Alert is relevant to an entire deployment, or a significant number of devices in the deployment. |

## AlertSubtype

Subtype of alert.

| Value | Description |
|---|---|
| **CancelledByUser** | The user canceled the update. |
| **CertificateIssue** | An expired certificate was encountered. |
| **DamagedMedia** | The update file appears to be damaged. |
| **DeviceRegistrationInvalidAzureADJoin** | Device isn't able to register or authenticate properly with the deployment service due to not being device-level Entra ID joined. Devices that are workplace-joined aren't compatible with the deployment service. |
| **DiskFull** | An operation couldn't be completed because the disk is full. |
| **DiskIssue** | Windows Update has found disk corruption. |
| **DownloadCancelled** | The download was  canceled. |
| **DownloadCredentialsIssue** | A proxy server or firewall on your network might require credentials. |
| **DownloadIssue** | There was a download issue. |
| **DownloadIssueServiceDisabled** | The service the download depends on is disabled. |
| **DownloadTimeout** | A timeout occurred. |
| **EndOfService** | Client OS is no longer being serviced |
| **EndOfServiceApproaching** | Client OS servicing period completes in less than 60 days |
| **FileNotFound** | The installer couldn't find a Windows component that it needs. |
| **InstallAccessDenied** | Access denied. |
| **InstallCancelled** | Install canceled. |
| **InstallFileLocked** | Couldn't access the file because it's already in use. |
| **InstallIssue** | There was an installation issue. |
| **InstallSetupBlock** | There's an application or driver blocking the upgrade. |
| **InstallSetupError** | Encountered an error while installing the new version of Windows. |
| **InstallSetupRestartRequired** | A restart is required. |
| **InstallSharingViolation** | An application is likely interfering with Windows Update. |
| **InstallSystemError** | A system error occurred while installing the new version of Windows. |
| **InsufficientUpdateConnectivity** | Device hasn't had sufficient connectivity to Windows Update to progress through the update process and will experience delays. |
| **MultipleSecurityUpdatesMissing** | Client is missing multiple security updates |
| **NetworkIssue** | The server timed out waiting for the requested. |
| **PathNotFound** | The specified path can't be found. |
| **RestartIssue** | The restart to apply updates is being blocked by one or more applications. |
| **SafeguardHold** | Update can't be installed due to a known Safeguard Hold. |
| **UnexpectedShutdown** | The installation stopped because Windows was shutting down or restarting. |
| **WindowsComponentCorruption** | This device has a corrupted Windows component |
| **WUBusy** | Windows Update tried to install an update while another installation process was already running. |
| **WUComponentMissing** | Windows Update might be missing a component or the update file might be damaged. |
| **WUDamaged** | The update file might be damaged. |
| **WUFileCorruption** | Windows Update encountered corrupted files. |
| **WUIssue** | An unexpected issue was encountered during the installation. |
| **WUSetupError** | The setup process was suspended. |


## AlertStatus

Status of alert

|Value | Description |
|---|---|
| **Active** | Alert is active, still requires attention. |
| **Resolved** | Alert is resolved and no longer requires attention. |
| **Deleted** | Alert was deleted from the backend system. |

### AlertClassification

Whether this alert is an error, a warning, or informational.

| **Value** | Description |
|---|---|
| **Informational** | Alert is informational in nature. |
| **Warning** | Alert is a warning |
| **Error** | Alert is an error, or is related to an error. There should be an error code that maps to either something from the client or from the service. |
| **Recommendation** | Alert is a recommendation, something to optimize. |
