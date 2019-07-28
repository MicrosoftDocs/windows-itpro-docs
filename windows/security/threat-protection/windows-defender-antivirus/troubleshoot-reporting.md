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
author: dansimp
ms.author: dansimp
ms.reviewer: 
manager: dansimp
---

# Troubleshoot Windows Defender Antivirus reporting in Update Compliance

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use Windows Defender Antivirus with Update Compliance. You’ll see status for E3, B, F1, VL, and Pro licenses. However, for E5 licenses, you need to use the [Microsoft Defender ATP portal](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). To learn more about licensing options, see [Windows 10 product licensing options](https://www.microsoft.com/licensing/product-licensing/windows10.aspx).

When you use [Windows Analytics Update Compliance to obtain reporting into the protection status of devices or endpoints](/windows/deployment/update/update-compliance-using#wdav-assessment) in your network that are using Windows Defender Antivirus, you might encounter problems or issues.

Typically, the most common indicators of a problem are:
- You only see a small number or subset of all the devices you were expecting to see
- You do not see any devices at all
- The reports and information you do see is outdated (older than a few days)

For common error codes and event IDs related to the Windows Defender Antivirus service that are not related to Update Compliance, see [Windows Defender Antivirus events](troubleshoot-windows-defender-antivirus.md). 

There are three steps to troubleshooting these problems:

1. Confirm that you have met all pre-requisites
2. Check your connectivity to the Windows Defender cloud-based service
3. Submit support logs

>[!IMPORTANT]
>It typically takes 3 days for devices to start appearing in Update Compliance.


## Confirm pre-requisites

In order for devices to properly show up in Update Compliance, you have to meet certain pre-requisites for both the Update Compliance service and for Windows Defender Antivirus:

>[!div class="checklist"]
>- Endpoints are using Windows Defender Antivirus as the sole antivirus protection app. [Using any other antivirus app will cause Windows Defender AV to disable itself](windows-defender-antivirus-compatibility.md) and the endpoint will not be reported in Update Compliance.
> - [Cloud-delivered protection is enabled](enable-cloud-protection-windows-defender-antivirus.md).
> - Endpoints can [connect to the Windows Defender AV cloud](configure-network-connections-windows-defender-antivirus.md#validate-connections-between-your-network-and-the-cloud)
> - If the endpoint is running Windows 10 version 1607 or earlier, [Windows 10 diagnostic data must be set to the Enhanced level](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization#enhanced-level).
> - It has been 3 days since all requirements have been met

“You can use Windows Defender Antivirus with Update Compliance. You’ll see status for E3, B, F1, VL, and Pro licenses. However, for E5 licenses, you need to use the Microsoft Defender ATP portal (https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). To learn more about licensing options, see Windows 10 product licensing options"

If the above pre-requisites have all been met, you might need to proceed to the next step to collect diagnostic information and send it to us.

> [!div class="nextstepaction"]
> [Collect diagnostic data for Update Compliance troubleshooting](collect-diagnostic-data-update-compliance.md)






## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
