---
title: Threat & Vulnerability Management scenarios
description: Learn how Threat & Vulnerability Management can be used to help security admins, IT admins, and SecOps collaborate in defending against security threats.
keywords: mdatp-tvm scenarios, mdatp, tvm, tvm scenarios, reduce threat & vulnerability exposure, reduce threat and vulnerability, improve security configuration, increase Microsoft Secure Score for Devices, increase threat & vulnerability Microsoft Secure Score for Devices, Microsoft Secure Score for Devices, exposure score, security controls 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Threat & Vulnerability Management scenarios

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

## Use advanced hunting query to search for devices with High active alerts or critical CVE public exploit

1. Go to **Advanced hunting** from the left-hand navigation pane of the Microsoft Defender Security Center.

2. Scroll down to the TVM advanced hunting schemas to familiarize yourself with the column names.

3. Enter the following queries:

```kusto
// Search for devices with High active alerts or Critical CVE public exploit
DeviceTvmSoftwareInventoryVulnerabilities
| join kind=inner(DeviceTvmSoftwareVulnerabilitiesKB) on CveId
| where IsExploitAvailable == 1 and CvssScore >= 7
| summarize NumOfVulnerabilities=dcount(CveId),
DeviceName=any(DeviceName) by DeviceId
| join kind =inner(DeviceAlertEvents) on DeviceId  
| summarize NumOfVulnerabilities=any(NumOfVulnerabilities),
DeviceName=any(DeviceName) by DeviceId, AlertId
| project DeviceName, NumOfVulnerabilities, AlertId  
| order by NumOfVulnerabilities desc

```

## Define a device's value to the organization

Defining a device’s value helps you differentiate between asset priorities. The device value is used to incorporate the risk appetite of an individual asset into the threat and vulnerability management exposure score calculation, so devices marked as “high value” will receive more weight.

Device value options:

- Low
- Normal (Default)
- High

Examples of devices that should be marked as high value:

- Domain controllers, Active Directory
- Internet facing devices
- VIP devices
- Devices hosting internal/external production services

### Set device value

1. Navigate to any device page, the easiest place is from the device inventory.

2. Select **Device Value** from three dots next to the actions bar at the top of the page.
    ![Example of the device value dropdown.](images/tvm-device-value-dropdown.png)

<br><br>

3. A flyout will appear with the current device value and what it means. Review the value of the device and choose the one that best fits your device.
![Example of the device value flyout.](images/tvm-device-value-flyout.png)

## Related topics

- [Threat & Vulnerability Management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
- [Configure data access for Threat & Vulnerability Management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Advanced hunting overview](overview-hunting.md)
- [All advanced hunting tables](advanced-hunting-reference.md)
