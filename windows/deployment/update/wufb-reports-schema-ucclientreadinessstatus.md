---
title: Windows Update for Business reports Data Schema - UCClientReadinessStatus
ms.reviewer: 
manager: dougeby
description: UCClientReadinessStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: reference
ms.date: 06/06/2022
ms.technology: itpro-updates
---

# UCClientReadinessStatus
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 10)***

UCClientReadinessStatus is an individual device's record about its readiness for updating to Windows 11. If the device isn't capable of running Windows 11, the record includes which Windows 11 [hardware requirements](/windows/whats-new/windows-11-requirements#hardware-requirements) the device doesn't meet.

|Field |Type |Example |Description |
|---|---|---|---|
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | Client-provided device name |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | The global device identifier. |
| **SCCMClientId** |  [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager Client ID, if available. |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD Tenant ID |
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Azure AD Device ID |
| **OSName** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows 10` | The operating system name. |
| **OSVersion** | [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Win10 OS Version (such as 19H2, 20H1, 20H2) currently installed on the device. |
| **OSBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full OS build installed on this device, such as Major.Minor.Build.Revision  |
| **TargetOSName** | [string](/azure/kusto/query/scalar-data-types/string) | `Windows 11` | The name of the operating system being targeted to the device for this readiness record.|
| **TargetOSVersion** |  [string](/azure/kusto/query/scalar-data-types/string)  | `21H2` | The operating system version being targeted to the device for this readiness record.|
| **TargetOSBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.22000.1` | The full operating system build number that's being targeted to the device for this readiness record.|
| **ReadinessStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `Not capable` | The readiness status of the device is either capable, not capable, or unknown. This status is determined by Windows Update.|
| **ReadinessReason** | [string](/azure/kusto/query/scalar-data-types/string) | `CPU;TPM` | Lists which [hardware requirements](/windows/whats-new/windows-11-requirements#hardware-requirements) are blocking the device from being capable of installing Windows 11. Field is null if the device is capable. This status is determined by the Windows Update applicability. |
| **ReadinessScanTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The date and time when readiness was assessed and the assessment was sent.|
| **ReadinessExpiryTime**| [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The date and time when the  readiness assessment will expire.|
| **SetupReadinessStatus**| [string](/azure/kusto/query/scalar-data-types/string) | `Not capable` | The readiness status of the device is either capable, not capable, or unknown. This status is determined by Windows setup.|
| **SetupReadinessReason** | [string](/azure/kusto/query/scalar-data-types/string) | `CPU;TPM` | Lists which [hardware requirements](/windows/whats-new/windows-11-requirements#hardware-requirements) are blocking the device from being capable of installing Windows 11. Field is null if the device is capable. This status is determined by Windows setup. |
| **SetupReadinessTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The date and time when readiness was assessed by setup and the assessment was sent.|
| **SetupReadinessExpiryTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The date and time when the setup readiness assessment will expire.|
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 10:26:03.478039` | The date and time when Azure Monitor Logs ingested this record for your Log Analytics workspace.|
