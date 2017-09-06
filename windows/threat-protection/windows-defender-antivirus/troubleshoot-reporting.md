---
title: Troubleshoot problems with reporting tools for Windows Defender AV
description: Identify and solve common problems when attempting to report in Windows Defender AV protection status in Update Compliance
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, windows defender av
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 09/06/2017
---

# Troublehsoot Windows Defender Antivirus reporting

**Applies to:**

- Windows 10

**Audience**

- IT administrators

When you use [Update Compliance to obtain reporting into the protection status of machines or endpoints](/windows/deployment/update/update-compliance-using#wdav-assessment) in your network that are using Windows Defender Antivirus, you may encounter problems or issues.

Typically, the most common indicators of a problem are:
- You only see a small number or subset of all the devices you were expecting to see
- You do not see any devices at all
- The reports and information you do see is outdated (older than a few days)

For common error codes and event IDs related to the Windows Defender AV service that are not related to Update Compliance, see the [Windows Defender Antivirus events](troubleshoot-windows-defender-antivirus.md) topic. 

There are three steps to troubleshooting these problems:

1. Confirm that you have met all pre-requisites
2. Check your connectivity to the Windows Defender cloud-based service
3. Submit support logs


## Confirm pre-requisites

In order for devices to properly show up in Update Compliance, you have to meet certain pre-requisites for both the Update Compliance service and for Windows Defender Antivirus protection:

>[!div class="checklist]
>- Endpoints are using Windows Defender Antivirus as the sole antivirus protection app. Using any other antivirus app will cause Windows Defender AV to disable itself and the endpoint will not be reported in Update Compliance.






## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
