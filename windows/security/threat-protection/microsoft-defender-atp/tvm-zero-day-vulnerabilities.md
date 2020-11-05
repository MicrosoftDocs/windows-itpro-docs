---
title: Mitigate zero-day vulnerabilities - threat and vulnerability management
description: Learn how to find and mitigate zero-day vulnerabilities in your environment.
keywords: mdatp-tvm vulnerable devices, mdatp, tvm, reduce threat & vulnerability exposure, reduce threat and vulnerability, monitor security configuration
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
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: article
---

# Mitigate zero-day vulnerabilities - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

A zero-day vulnerability is a publicly disclosed vulnerability for which no official patches or security updates have been released. Zero-day vulnerabilities often have high severity levels and are actively exploited.

Threat and vulnerability management will only display zero-day vulnerabilities it has information about.

## Find information about zero-day vulnerabilities

Once a zero-day vulnerability has been found, information about it will be conveyed through the following experiences in the Microsoft Defender Security Center.

### Threat and vulnerability management dashboard

Look for recommendations with a zero-day tag in the “Top security recommendation” card.

![Top recommendations with a zero-day tag.](images/tvm-zero-day-dashboard.png)

Find top software with the zero-day tag in the "Top vulnerable software" card.

![Top vulnerable software with a zero-day tag.](images/tvm-zero-day-top-vulnerable-software.png)

tvm-zero-day-top-vulnerable-software

### Weaknesses page

Look for the named zero-day vulnerability along with a description and details.

- If this vulnerability has a CVE-ID assigned, you’ll see the zero-day label next to the CVE name.

- If this vulnerability has no CVE-ID assigned, you will find it under an internal, temporary name that looks like “TVM-XXXX-XXXX”. The name will be updated once an official CVE-ID has been assigned, but the previous internal name will still be searchable and found in the side-panel.

![Zero day example for CVE-2020-17087 in weaknesses page.](images/tvm-zero-day-weakness-name.png)

### Software inventory page

Look for software with the zero-day tag. Filter by the "zero day" tag to only see software with zero-day vulnerabilities.

![Zero day example of Windows Server 2016 in the software inventory page.](images/tvm-zero-day-software-inventory.png)

### Software page

Look for a zero-day tag for each software that has been affected by the zero–day vulnerability.

![Zero day example for Windows Server 2016 software page.](images/tvm-zero-day-software-page.png)

### Security recommendations page

View clear suggestions regarding remediation and mitigation options, including workarounds if exist. Filter by the "zero day" tag to only see security recommendations addressing zero-day vulnerabilities.

When there is an application with associated zero-day vulnerability and additional vulnerabilities to address, you will get one recommendation regarding both.

![Zero day example of Windows Server 2016 in the security recommendations page.](images/tvm-zero-day-security-recommendation.png)

## Addressing the zero-day vulnerability

Go to the security recommendation page and select the zero-day recommendation. A flyout will open with information about the zero-day and other vulnerabilities for that software.

There will be a link to mitigation options and workarounds if they are available. Workarounds may help reduce the risk posed by this zero-day vulnerability until a patch or security update can be deployed.

Open remediation options and choose the attention type. An "attention required" remediation option is recommended for the zero-day vulnerabilities, since an update hasn't been released yet. If there are older vulnerabilities for this software you wish to remediation, you can override the "attention required" remediation option and choose “update.”

![Zero day flyout example of Windows Server 2016 in the security recommendations page.](images/tvm-zero-day-software-flyout-400.png)

## Patching the zero-day vulnerability

When a patch is released for the zero-day, the recommendation will be changed to “Update” and a blue label next to it that says “New security update for zero day.” It will no longer consider as a zero-day, the zero-day tag will be removed from all pages.

![Recommendation for "Update Microsoft Windows 10" with new patch label.](images/tvm-zero-day-patch.jpg)

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Security recommendations](tvm-security-recommendation.md)
