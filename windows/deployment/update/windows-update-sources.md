---
title: Determining the Windows Update Service source
description: Determine the source that Windows Update service is currently using.
ms.prod: w10
ms.mktglfcycl: 
ms.sitesec: library
author: kaushika-msft
ms.localizationpriority: high
ms.author: kaushika
ms.date: 04/05/2018
---

# Determining the Windows Update Service source

Windows 10 devices can receive updates from a variety of sources, including Windows Update online, a Windows Server Update Services server, and others. To determine the source of Windows Updates currently being used on a device, follow these steps: 

1.  Start Windows PowerShell as an administrator
2.  Run  `\$MUSM = New-Object -ComObject   “Microsoft.Update.ServiceManager”`.
3.  Run `\$MUSM.Services`. Compare the resulting output to this table:

| Output | Interpretation |
|-----------------------------------------------|-----------------------------------|
| Name  : Microsoft Update<br>ContentValidationCert : {}<br>ExpirationDate        : <br>IsManaged             : False<br>IsRegisteredWithAU    : True<br>IssueDate             : 01-Jan-01 12:00:00 AM<br>OffersWindowsUpdates  : True<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 7971f918-a847-4430-9279-4a52d1efe18d<br>IsScanPackageService  : False<br>CanRegisterWithAU     : True<br>ServiceUrl            : https://fe2.update.microsoft.com/v6/<br>SetupPrefix           : mu<br>IsDefaultAUService    : False | - Name: **Microsoft Update** Indicates the source against which we will are checking the Client capability. Microsoft Updates indicates, updates for other Microsoft Products checkbox. <br>- OffersWindowsUpdates: **True** Indicates that the client is configured to receive updates for all Microsoft Products (Office, etc.)|
| Name                  : Microsoft Update<br>ContentValidationCert : {}<br>ExpirationDate        :<br>IsManaged             : False<br>IsRegisteredWithAU    : True<br>IssueDate             : 01-Jan-01 12:00:00 AM<br>OffersWindowsUpdates  : True<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 7971f918-a847-4430-9279-4a52d1efe18d<br>IsScanPackageService  : False<br>CanRegisterWithAU     : True<br>ServiceUrl            : https://fe2.update.microsoft.com/v6/<br>SetupPrefix           : mu<br>  IsDefaultAUService    : False |- Name: **DCat Flighting Prod** The update source is the Windows Insider Program.<br>- OffersWindowsUpdates: **False** Indicates that the client will not receive or is not configured to receive these updates.|
|Name                  : DCat Flighting Prod<br>ContentValidationCert : {}<br>ExpirationDate        :<br>IsManaged             : False<br>IsRegisteredWithAU    : False<br>IssueDate             : 01-Jan-01 12:00:00 AM<br>OffersWindowsUpdates  : False<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 8b24b027-1dee-babb-9a95-3517dfb9c552<br>IsScanPackageService  : False<br>CanRegisterWithAU     : False<br>ServiceUrl: https://fe3.delivery.mp.microsoft.com/<br>SetupPrefix           : wu<br>IsDefaultAUService    : False |  - Name: **DCat Flighting Prod** The update source is the Windows Insider Program.<br>-  OffersWindowsUpdates: **False**   Indicates that the client will not receive or is not configured to receive these updates. |
|Name                  : Windows Store (DCat Prod)<br>ContentValidationCert : {}<br>ExpirationDate        :<br>IsManaged             : False<br>IsRegisteredWithAU    : False<br>IssueDate             : 01-Jan-01 12:00:00 AM<br>OffersWindowsUpdates  : False<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 855e8a7c-ecb4-4ca3-b045-1dfa50104289<br>IsScanPackageService  : False<br>CanRegisterWithAU     : True<br>ServiceUrl            : https://fe3.delivery.mp.microsoft.com/<br>SetupPrefix           : ws<br>IsDefaultAUService    : False |  - Name: **Windows Store (DCat Prod)** The update source is Insider Updates for Store Apps.<br>- OffersWindowsUpdates: **False** Indicates that the client will not receive or is not configured to receive these updates. |
|  Name                  : Windows Server Update Service<br>ContentValidationCert : {}<br>ExpirationDate        : 18-Jun-54 9:21:00 PM<br>IsManaged             : True<br>IsRegisteredWithAU    : True<br>IssueDate             : 01-Jan-03 12:00:00 AM<br>OffersWindowsUpdates  : True<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 3da21691-e39d-4da6-8a4b-b43877bcb1b7<br>IsScanPackageService  : False<br>CanRegisterWithAU     : True<br>ServiceUrl            :<br>SetupPrefix           :<br>IsDefaultAUService    : True|-  Name: **Windows Server Update Service** The source is a Windows Server Updates Services server.<br>-   OffersWindowsUpdates: **True** The client is configured to receive updates from WSUS |
|  Name                  : Windows Update<br>ContentValidationCert : {}<br>ExpirationDate        :<br>IsManaged             : False<br>IsRegisteredWithAU    : False<br>IssueDate             : 01-Jan-01 12:00:00 AM<br>OffersWindowsUpdates  : True<br>RedirectUrls          : System.__ComObject<br>ServiceID             : 9482f4b4-e343-43b6-b170-9a65bc822c77<br>IsScanPackageService  : False<br>CanRegisterWithAU     : True<br>ServiceUrl            : https://fe2.update.microsoft.com/v6/<br>SetupPrefix           : wu<br>IsDefaultAUService    : False |- Name: **Windows Update** The source is Windows Update.<br>- OffersWindowsUpdates: **True** The client is configured to receive updates from Windows Update Online |


See also:

[Understanding the Windowsupdate.log file for advanced users](https://support.microsoft.com/help/4035760)

[You can't install updates on a Windows-based computer](https://support.microsoft.com/help/2509997/you-can-t-install-updates-on-a-windows-based-computer)

[How to read the Windowsupdate.log file on Windows 7 and earlier OS versions](https://support.microsoft.com/help/902093/how-to-read-the-windowsupdate-log-file)
