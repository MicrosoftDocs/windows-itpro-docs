
---
title: Determining the Windows Update Service source
description: Determine the source that Windows Update service is currently using.
ms.prod: w10
ms.mktglfcycl: 
ms.sitesec: library
author: kaushika-msft
ms.localizationpriority: high
ms.author: kaushika
ms.date: 04/03/2018
---

# Determining the Windows Update Service source

Windows 10 devices can receive updates from a variety of sources, including Windows Update online, a Windows Server Update Services server, and others. To determine the source of Windows Updates currently being used on a device, follow these steps: 

1.  Start Windows PowerShell as an administrator
2.  Run  `\$MUSM = New-Object -ComObject   “Microsoft.Update.ServiceManager”`.
3.  Run `\$MUSM.Services`. The resulting output should be similar to the following:

```
Name                  : Microsoft Update
ContentValidationCert : {}
ExpirationDate        :
IsManaged             : False
IsRegisteredWithAU    : True
IssueDate             : 01-Jan-01 12:00:00 AM
OffersWindowsUpdates  : True
RedirectUrls          : System.__ComObject
ServiceID             : 7971f918-a847-4430-9279-4a52d1efe18d
IsScanPackageService  : False
CanRegisterWithAU     : True
ServiceUrl            : https://fe2.update.microsoft.com/v6/
SetupPrefix           : mu
IsDefaultAUService    : False

Name                  : DCat Flighting Prod
ContentValidationCert : {}
ExpirationDate        :
IsManaged             : False
IsRegisteredWithAU    : False
IssueDate             : 01-Jan-01 12:00:00 AM
OffersWindowsUpdates  : False
RedirectUrls          : System.__ComObject
ServiceID             : 8b24b027-1dee-babb-9a95-3517dfb9c552
IsScanPackageService  : False
CanRegisterWithAU     : False
ServiceUrl            : https://fe3.delivery.mp.microsoft.com/
SetupPrefix           : wu
IsDefaultAUService    : False

Name                  : Windows Store (DCat Prod)
ContentValidationCert : {}
ExpirationDate        :
IsManaged             : False
IsRegisteredWithAU    : False
IssueDate             : 01-Jan-01 12:00:00 AM
OffersWindowsUpdates  : False
RedirectUrls          : System.__ComObject
ServiceID             : 855e8a7c-ecb4-4ca3-b045-1dfa50104289
IsScanPackageService  : False
CanRegisterWithAU     : True
ServiceUrl            : https://fe3.delivery.mp.microsoft.com/
SetupPrefix           : ws
IsDefaultAUService    : False

Name                  : Windows Server Update Service
ContentValidationCert : {}
ExpirationDate        : 18-Jun-54 9:21:00 PM
IsManaged             : True
IsRegisteredWithAU    : True
IssueDate             : 01-Jan-03 12:00:00 AM
OffersWindowsUpdates  : True
RedirectUrls          : System.__ComObject
ServiceID             : 3da21691-e39d-4da6-8a4b-b43877bcb1b7
IsScanPackageService  : False
CanRegisterWithAU     : True
ServiceUrl            :
SetupPrefix           :
IsDefaultAUService    : True

Name                  : Windows Update
ContentValidationCert : {}
ExpirationDate        :
IsManaged             : False
IsRegisteredWithAU    : False
IssueDate             : 01-Jan-01 12:00:00 AM
OffersWindowsUpdates  : True
RedirectUrls          : System.__ComObject
ServiceID             : 9482f4b4-e343-43b6-b170-9a65bc822c77
IsScanPackageService  : False
CanRegisterWithAU     : True
ServiceUrl            : https://fe2.update.microsoft.com/v6/
SetupPrefix           : wu
IsDefaultAUService    : False
```


4. Check the category **Name** and **OffersWindowsUpdates**: 

Name: **Microsoft Update**

Indicates the source against which we will are checking the Client capability. Microsoft Updates indicates, updates for other Microsoft Products checkbox.

OffersWindowsUpdates: **True**

Indicates that the client is configured to receive updates for all Microsoft Products (Office, etc.)

---

Name: **DCat Flighting Prod**

The update source is the Windows Insider Program.

OffersWindowsUpdates: **False**

Indicates that the client will not receive or is not configured to receive these updates.

---

Name: **Windows Store (DCat Prod)**

The update source is Insider Updates for Store Apps.

OffersWindowsUpdates: **False**

Indicates that the client will not receive or is not configured to receive these updates.

---

Name: **Windows Server Update Service**

The source is a Windows Server Updates Services server.

OffersWindowsUpdates: **True**

The client is configured to receive updates from WSUS

---
 
Name: **Windows Update**

The source is Windows Update.

OffersWindowsUpdates: **True**

The client is configured to receive updates from Windows Update Online

---
 

See also:

[Understanding the Windowsupdate.log file for advanced users](https://support.microsoft.com/help/4035760)

[You can't install updates on a Windows-based computer](https://support.microsoft.com/help/2509997/you-can-t-install-updates-on-a-windows-based-computer)

[How to read the Windowsupdate.log file on Windows 7 and earlier OS versions](https://support.microsoft.com/help/902093/how-to-read-the-windowsupdate-log-file)
