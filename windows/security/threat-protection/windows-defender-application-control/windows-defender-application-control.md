---
title: Application Control for Windows
description: Application Control restricts which applications users are allowed to run and the code that runs in the system core.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: denisebmsft
ms.reviewer: isbrahm
ms.author: deniseb
manager: dansimp
ms.date: 04/15/2020
ms.custom: asr
---

# Application Control for Windows

**Applies to:**

- Windows 10
- Windows Server 2016 and above

With thousands of new malicious files created every day, using traditional methods like antivirus solutions—signature-based detection to fight against malware—provides an inadequate defense against new attacks.

In most organizations, information is the most valuable asset, and ensuring that only approved users have access to that information is imperative. However, when a user runs a process, that process has the same level of access to data that the user has. As a result, sensitive information could easily be deleted or transmitted out of the organization if a user knowingly or unknowingly runs malicious software.

Application control can help mitigate these types of security threats by restricting the applications that users are allowed to run and the code that runs in the System Core (kernel). Application control policies can also block unsigned scripts and MSIs, and restrict Windows PowerShell to run in [Constrained Language Mode](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_language_modes).

Application control is a crucial line of defense for protecting enterprises given today’s threat landscape, and it has an inherent advantage over traditional antivirus solutions. Specifically, application control moves away from an application trust model where all applications are assumed trustworthy to one where applications must earn trust in order to run. Many organizations, like the Australian Signals Directorate, understand this and frequently cite application control as one of the most effective means for addressing the threat of executable file-based malware (.exe, .dll, etc.).

> [!NOTE]
> Although application control can significantly harden your computers against malicious code, we recommend that you continue to maintain an enterprise antivirus solution for a well-rounded enterprise security portfolio.

Windows 10 includes two technologies that can be used for application control depending on your organization's specific scenarios and requirements:

- **Windows Defender Application Control**; and
- **AppLocker**

## In this section

| Topic | Description |
| - | - |
| [WDAC and AppLocker Overview](wdac-and-applocker-overview.md) | This topic describes the decisions you need to make to establish the processes for managing and maintaining WDAC policies. |
| [WDAC and AppLocker Feature Availability](feature-availability.md) | This topic lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies. |

## See also

- [WDAC design guide](windows-defender-application-control-design-guide.md)
- [WDAC deployment guide](windows-defender-application-control-deployment-guide.md)
- [AppLocker overview](applocker/applocker-overview.md)
