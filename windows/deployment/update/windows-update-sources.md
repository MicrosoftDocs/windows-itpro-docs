---
title: Determining the source of Windows updates
description: Determine the source that Windows Update service is currently using.
ms.prod: w10
ms.mktglfcycl: 
ms.sitesec: library
author: kaushika-msft
ms.localizationpriority: high
ms.author: jaimeo
ms.date: 04/05/2018
---

# Determining the source of Windows updates

Windows 10 devices can receive updates from a variety of sources, including Windows Update online, a Windows Server Update Services server, and others. To determine the source of Windows Updates currently being used on a device, follow these steps: 

1.  Start Windows PowerShell as an administrator
2.  Run  `\$MUSM = New-Object -ComObject   “Microsoft.Update.ServiceManager”`.
3.  Run `\$MUSM.Services`. Check the resulting output for the **Name** and **OffersWindowsUPdates** parameters, which you can intepret according to this table:

| Output          | Interpretation |
|-----------------------------------------------------|-----------------------------------|
| - Name: **Microsoft Update**<br>-OffersWindowsUpdates: **True** | - The update source is Microsoft Update, which means that updates for other Microsoft products besides the operating system could also be delivered.<br>-  Indicates that the client is configured to receive updates for all Microsoft Products (Office, etc.)|
|- Name: **DCat Flighting Prod** <br>-  OffersWindowsUpdates: **False**|- The update source is the Windows Insider Program.<br>- Indicates that the client will not receive or is not configured to receive these updates. |
| - Name: **Windows Store (DCat Prod)**<br>- OffersWindowsUpdates: **False** |-The update source is Insider Updates for Store Apps.<br>- Indicates that the client will not receive or is not configured to receive these updates.| 
|-  Name: **Windows Server Update Service**<br>-  OffersWindowsUpdates: **True**  |- The source is a Windows Server Updates Services server.<br>- The client is configured to receive updates from WSUS.|
|- Name: **Windows Update**<br>- OffersWindowsUpdates: **True** |- The source is Windows Update.<br>- The client is configured to receive updates from Windows Update Online.|



See also:

[Understanding the Windowsupdate.log file for advanced users](https://support.microsoft.com/help/4035760)

[You can't install updates on a Windows-based computer](https://support.microsoft.com/help/2509997/you-can-t-install-updates-on-a-windows-based-computer)

[How to read the Windowsupdate.log file on Windows 7 and earlier OS versions](https://support.microsoft.com/help/902093/how-to-read-the-windowsupdate-log-file)
