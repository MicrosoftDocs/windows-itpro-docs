---
title: Create indicators 
ms.reviewer: 
description: Create indicators for a file hash, IP address, URLs, or domains that define the detection, prevention, and exclusion of entities.
keywords: manage, allowed, blocked, whitelist, blacklist, block, clean, malicious, file hash, ip address, urls, domain
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Create indicators 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationexclusionlist-abovefoldlink)

Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability gives SecOps the ability to set a list of indicators for detection and for blocking (prevention and response).

Create indicators that define the detection, prevention, and exclusion of entities. You can define the action to be taken as well as the duration for when to apply the action as well as the scope of the machine group to apply it to.

Currently supported sources are the cloud detection engine of Microsoft Defender ATP, the automated investigation and remediation engine, and the endpoint prevention engine (Windows Defender AV).

**Cloud detection engine**<br>
The cloud detection engine of Microsoft Defender ATP regularly scans collected data and tries to match the indicators you set. When there is a match, action will be taken according to the settings you specified for the IoC.

**Endpoint prevention engine**<br>
The same list of indicators is honored by the prevention agent. Meaning, if Windows Defender AV is the primary AV configured, the matched indicators will be treated according to the settings. For example, if the action is "Alert and Block", Windows Defender AV will prevent file executions (block and remediate) and a corresponding alert will be raised. On the other hand, if the Action is set to "Allow", Windows Defender AV  will not detect nor block the file from being run.

**Automated investigation and remediation engine**<BR>
The automated investigation and remediation behave the same. If an indicator is set to "Allow", Automated investigation and remediation will ignore a "bad" verdict for it. If set to "Block", Automated investigation and remediation will treat it as "bad".
 

The current supported actions are:
- Allow 
- Alert only
- Alert and block


You can create an indicator for:
- [Files](indicator-file.md)
- [IP addresses, URLs/domains](indicator-ip-domain.md)
- [Certificates (preview)](indicator-certificates.md)


>[!NOTE]
>There is a limit of 15,000 indicators per tenant. 


## Related topics

- [Create contextual IoC](respond-file-alerts.md#add-indicator-to-block-or-allow-a-file)
- [Use the Microsoft Defender ATP indicators API](ti-indicator.md)
- [Use partner integrated solutions](partner-applications.md)
