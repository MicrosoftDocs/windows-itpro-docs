---
title: Microsoft Baseline Security Analyzer (MBSA) removal and guidance on alternative solutions
description: This article documents the removal of MBSA and alternative solutions
keywords: MBSA, security, removal
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: dansimp
author: dulcemontemayor
ms.date: 10/05/2018
ms.reviewer: 
manager: dansimp
---
 
# What is Microsoft Baseline Security Analyzer and its uses?
 
Microsoft Baseline Security Analyzer (MBSA) is used to verify patch compliance. MBSA also performed several other security checks for Windows, IIS, and SQL Server. Unfortunately, the logic behind these additional checks had not been actively maintained since Windows XP and Windows Server 2003. Changes in the products since then rendered many of these security checks obsolete and some of their recommendations counterproductive. 
 
MBSA was largely used in situations where neither Microsoft Update nor a local WSUS/SCCM server was available, or as a compliance tool to ensure that all security updates were deployed to a managed environment. While MBSA version 2.3 introduced support for Windows Server 2012 R2 and Windows 8.1, it has since been deprecated and no longer developed. MBSA 2.3 is not updated to fully support Windows 10 and Windows Server 2016.
 
## The Solution 
A script can help you with an alternative to MBSA’s patch-compliance checking:
 
- [Using WUA to Scan for Updates Offline](https://docs.microsoft.com/windows/desktop/wua_sdk/using-wua-to-scan-for-updates-offline), which includes a sample .vbs script. 
For a PowerShell alternative, see [Using WUA to Scan for Updates Offline with PowerShell](https://gallery.technet.microsoft.com/Using-WUA-to-Scan-for-f7e5e0be).
 
For example:
 
[![VBS script](images/vbs-example.png)](https://docs.microsoft.com/windows/desktop/wua_sdk/using-wua-to-scan-for-updates-offline) 
[![PowerShell script](images/powershell-example.png)](https://gallery.technet.microsoft.com/Using-WUA-to-Scan-for-f7e5e0be) 
  
The preceding scripts leverage the [WSUS offline scan file](https://support.microsoft.com/help/927745/detailed-information-for-developers-who-use-the-windows-update-offline) (wsusscn2.cab) to perform a scan and get the same information on missing updates as MBSA supplied. MBSA also relied on the wsusscn2.cab to determine which updates were missing from a given system without connecting to any online service or server. The wsusscn2.cab file is still available and there are currently no plans to remove or replace it.
The wsusscn2.cab file contains the metadata of only security updates, update rollups and service packs available from Microsoft Update; it does not contain any information on non-security updates, tools or drivers.
 
## More Information  

For security compliance and for desktop/server hardening, we recommend the Microsoft Security Baselines and the Security Compliance Toolkit.

- [Windows security baselines](windows-security-baselines.md) 
- [Download Microsoft Security Compliance Toolkit 1.0](https://www.microsoft.com/download/details.aspx?id=55319) 
- [Microsoft Security Guidance blog](https://blogs.technet.microsoft.com/secguide/)  
