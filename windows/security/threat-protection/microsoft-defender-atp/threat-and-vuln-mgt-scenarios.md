---
title: Scenarios - threat and vulnerability management
description: Learn how threat and vulnerability management can be used to help security admins, IT admins, and SecOps collaborate.
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

# Scenarios - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


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

Defining a device’s value helps you differentiate between asset priorities. The device value is used to incorporate the risk appetite of an individual asset into the threat and vulnerability management exposure score calculation. Devices marked as “high value” will receive more weight.

You can also use the [set device value API](set-device-value.md).

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

## Vulnerable devices report

The report shows graphs and bar charts with vulnerable device trends and current statistics. The goal is for you to understand the breath and scope of your device exposure.

Access the report by going to **Reports > Vulnerable devices**

There are two columns:
- Trends (over time)
- Today (current information)

You can filter the data by vulnerability severity levels, exploit availability, vulnerability age, operating system platform, Windows 10 version, or device group.

### Severity levels

Each device is counted only once according to the most severe vulnerability found on that device.

![One graph of current device vulnerability severity levels, and one graph showing levels over time](images/tvm-report-severity.png)

### Exploit availability

Each device is counted only once based on the highest level of known exploit.

![One graph of current device exploit availability, and one graph showing availability over time](images/tvm-report-exploit-availability.png)

### Vulnerability age

Each device is counted only once under the oldest vulnerability publication date. Older vulnerabilities have a higher chance of being exploited.

![One graph of current device vulnerability age, and one graph showing age over time.](images/tvm-report-age.png)

### Vulnerable devices by operating system platform

The number of devices on each operating system that are exposed due to software vulnerabilities.

![One graph of current vulnerable devices by operating system platform, and one graph showing vulnerable devices by OS platforms over time.](images/tvm-report-os.png)

### Vulnerable devices by Windows 10 version

The number of devices on each Windows 10 version that are exposed due to vulnerable applications or OS.

![One graph of current vulnerable devices by Windows 10 version, and one graph showing vulnerable devices by Windows 10 version over time.](images/tvm-report-version.png)

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
- [Configure data access for threat and vulnerability management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Advanced hunting overview](overview-hunting.md)
- [All advanced hunting tables](advanced-hunting-reference.md)
