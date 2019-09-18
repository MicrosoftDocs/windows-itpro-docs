---
title: Windows error reporting - Windows IT Pro
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Resolve Windows 10 upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Windows Error Reporting

**Applies to**
-   Windows 10

>[!NOTE]
> This is a 300 level topic (moderately advanced).  
> See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.


When Windows Setup fails, the result and extend code are recorded as an informational event in the Application log by Windows Error Reporting as event 1001. The event name is **WinSetupDiag02**.  You can use Event Viewer to review this event, or you can use Windows PowerShell.

To use Windows PowerShell, type the following commands from an elevated Windows PowerShell prompt:

>[!IMPORTANT]
>}The following source will be available only if you have updated from a previous version of Windows 10 to a new version. If you installed the current version and have not updated, the source named **WinSetupDiag02** will be unavailable.

```Powershell
$events = Get-WinEvent -FilterHashtable @{LogName="Application";ID="1001";Data="WinSetupDiag02"}
$event = [xml]$events[0].ToXml()
$event.Event.EventData.Data
```

To use Event Viewer: 
1. Open Event Viewer and navigate to **Windows Logs\Application**.
2. Click **Find**, and then search for **winsetupdiag02**.
3. Double-click the event that is highlighted.

Note: For legacy operating systems, the Event Name was WinSetupDiag01. 

Ten parameters are listed in the event:

| Parameters  | 
| ------------- | 
|P1: The Setup Scenario (1=Media,5=WindowsUpdate,7=Media Creation Tool)   | 
|P2: Setup Mode (x=default,1=Downlevel,5=Rollback)   | 
|P3: New OS Architecture (x=default,0=X86,9=AMD64)   | 
|P4: Install Result (x=default,0=Success,1=Failure,2=Cancel,3=Blocked)   | 
|**P5: Result Error Code**  (Ex: 0xc1900101)   | 
|**P6: Extend Error Code**  (Ex: 0x20017)   | 
|P7: Source OS build (Ex: 9600)   | 
|P8: Source OS branch (not typically available)   | 
|P9: New OS build (Ex: 16299}   | 
|P10: New OS branch (Ex: rs3_release}   | 


The event will also contain links to log files that can be used to perform a detailed diagnosis of the error.  An example of this event from a successful upgrade is shown below.

![Windows Error Reporting](../images/event.png)

## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/windows/dn798755.aspx)  
[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)  
[Windows 10 Specifications](https://www.microsoft.com/windows/Windows-10-specifications)  
[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)  
[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)  
