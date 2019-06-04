---
title: Windows Defender Application Control (WDAC) (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 01/08/2019
---

# Windows Defender Application Control 

**Applies to:**

-   Windows 10
-   Windows Server 2016
-   Windows Server 2019 

With thousands of new malicious files created every day, using traditional methods like antivirus solutions—signature-based detection to fight against malware—provides an inadequate defense against new attacks. 
In most organizations, information is the most valuable asset, and ensuring that only approved users have access to that information is imperative. 

However, when a user runs a process, that process has the same level of access to data that the user has. 
As a result, sensitive information could easily be deleted or transmitted out of the organization if a user knowingly or unknowingly runs malicious software. 

Application control is a crucial line of defense for protecting enterprises given today’s threat landscape, and it has an inherent advantage over traditional antivirus solutions. 
Specifically, application control moves away from the traditional application trust model where all applications are assumed trustworthy by default to one where applications must earn trust in order to run. 
Many organizations, like the Australian Signals Directorate, understand this and frequently cite application control as one of the most effective means for addressing the threat of executable file-based malware (.exe, .dll, etc.). 

Windows Defender Application Control (WDAC) can help mitigate these types of security threats by restricting the applications that users are allowed to run and the code that runs in the System Core (kernel). 
WDAC policies also block unsigned scripts and MSIs, and Windows PowerShell runs in [Constrained Language Mode](https://docs.microsoft.com/powershell/module/microsoft.powershell.core/about/about_language_modes?view=powershell-5.1). 

> [!NOTE]
> Prior to Windows 10, version 1709, Windows Defender Application Control was known as configurable code integrity policies.

## WDAC System Requirements

WDAC policies can only be created on computers beginning with Windows 10 Enterprise or Professional editions or Windows Server 2016. 
They can be applied to computers running any edition of Windows 10 or Windows Server 2016 and optionally managed via Mobile Device Management (MDM), such as Microsoft Intune. 
Group Policy or Intune can be used to distribute WDAC policies. 

## New and changed functionality

Prior to Windows 10, version 1709, Windows Defender Application Control was known as Windows Defender Device Guard configurable code integrity policies.  

Beginning with Windows 10, version 1703, you can use WDAC not only to control applications, but also to control whether specific plug-ins, add-ins, and modules can run from specific apps (such as a line-of-business application or a browser). 
For more information, see [Use a Windows Defender Application Control policy to control specific plug-ins, add-ins, and modules](use-windows-defender-application-control-policy-to-control-specific-plug-ins-add-ins-and-modules.md).  

## See also

- [WDAC design guide](windows-defender-application-control-design-guide.md)
- [WDAC deployment guide](windows-defender-application-control-deployment-guide.md)
