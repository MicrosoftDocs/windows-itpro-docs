---
title: Windows Update - Additional resources 
description: Additional resources for Windows Update
ms.prod: w10
ms.mktglfcycl: 
ms.sitesec: library
author: lomayor
ms.localizationpriority: medium
ms.author: lomayor
ms.date: 09/18/2018
ms.reviewer: 
manager: dansimp
ms.topic: article
---

# Windows Update - additional resources

>Applies to: Windows 10

The following resources provide additional information about using Windows Update.

## WSUS Troubleshooting 
 
[Troubleshooting issues with WSUS client agents](https://support.microsoft.com/help/10132/) 
 
[How to troubleshoot WSUS](https://support.microsoft.com/help/4025764/) 
 
[Error 80244007 when WSUS client scans for updates](https://support.microsoft.com/help/4096317/) 
 
[Updates may not be installed with Fast Startup in Windows 10](https://support.microsoft.com/help/4011287/) 
 
 
## How do I reset Windows Update components? 
 
[This script](https://gallery.technet.microsoft.com/scriptcenter/Reset-WindowsUpdateps1-e0c5eb78) will completely reset the Windows Update client settings. It has been tested on Windows 7, 8, 10, and Windows Server 2012 R2. It will configure the services and registry keys related to Windows Update for default settings. It will also clean up files related to Windows Update, in addition to BITS related data.  

 
[This script](https://gallery.technet.microsoft.com/scriptcenter/Reset-Windows-Update-Agent-d824badc) allow reset the Windows Update Agent resolving issues with Windows Update. 
 
 
## Reset Windows Update components manually 
1. Open a Windows command prompt. To open a command prompt, click **Start > Run**. Copy and paste (or type) the following command and then press ENTER: 
   ```
   cmd
   ```  
2. Stop the BITS service and the Windows Update service. To do this, type the following commands at a command prompt. Press ENTER after you type each command.  
   ```
   net stop bits  
   net stop wuauserv 
   ```
3. Delete the qmgr\*.dat files. To do this, type the following command at a command prompt, and then press ENTER:  
   ```
   Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" 
   ```
4. If this is your first attempt at resolving your Windows Update issues by using the steps in this article, go to step 5 without carrying out the steps in step 4. The steps in step 4 should only be performed at this point in the troubleshooting if you cannot resolve your Windows Update issues after following all steps but step 4. The steps in step 4 are also performed by the "Aggressive" mode of the Fix it Solution above.  
   1. Rename the following folders to *.BAK:  
      - %systemroot%\SoftwareDistribution\DataStore  
      - %systemroot%\SoftwareDistribution\Download  
      - %systemroot%\system32\catroot2 
      
      To do this, type the following commands at a command prompt. Press ENTER after you type each command.  
      - Ren %systemroot%\SoftwareDistribution\DataStore *.bak  
      - Ren %systemroot%\SoftwareDistribution\Download *.bak  
      - Ren %systemroot%\system32\catroot2 *.bak 
   2. Reset the BITS service and the Windows Update service to the default security descriptor. To do this, type the following commands at a command prompt. Press ENTER after you type each command.  
      - sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)  
      - sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU) 
5. Type the following command at a command prompt, and then press ENTER:  
   ```
   cd /d %windir%\system32 
   ```
6. Reregister the BITS files and the Windows Update files. To do this, type the following commands at a command prompt. Press ENTER after you type each command.  
   - regsvr32.exe atl.dll  
   - regsvr32.exe urlmon.dll  
   - regsvr32.exe mshtml.dll  
   - regsvr32.exe shdocvw.dll  
   - regsvr32.exe browseui.dll  
   - regsvr32.exe jscript.dll  
   - regsvr32.exe vbscript.dll  
   - regsvr32.exe scrrun.dll  
   - regsvr32.exe msxml.dll  
   - regsvr32.exe msxml3.dll  
   - regsvr32.exe msxml6.dll  
   - regsvr32.exe actxprxy.dll  
   - regsvr32.exe softpub.dll  
   - regsvr32.exe wintrust.dll  
   - regsvr32.exe dssenh.dll  
   - regsvr32.exe rsaenh.dll  
   - regsvr32.exe gpkcsp.dll  
   - regsvr32.exe sccbase.dll  
   - regsvr32.exe slbcsp.dll  
   - regsvr32.exe cryptdlg.dll  
   - regsvr32.exe oleaut32.dll  
   - regsvr32.exe ole32.dll  
   - regsvr32.exe shell32.dll  
   - regsvr32.exe initpki.dll  
   - regsvr32.exe wuapi.dll  
   - regsvr32.exe wuaueng.dll  
   - regsvr32.exe wuaueng1.dll  
   - regsvr32.exe wucltui.dll  
   - regsvr32.exe wups.dll  
   - regsvr32.exe wups2.dll  
   - regsvr32.exe wuweb.dll  
   - regsvr32.exe qmgr.dll  
   - regsvr32.exe qmgrprxy.dll  
   - regsvr32.exe wucltux.dll  
   - regsvr32.exe muweb.dll  
   - regsvr32.exe wuwebv.dll 
7. Reset Winsock. To do this, type the following command at a command prompt, and then press ENTER:  
   ```
   netsh winsock reset 
   ```
8. If you are running Windows XP or Windows Server 2003, you have to set the proxy settings. To do this, type the following command at a command prompt, and then press ENTER:  
   ```
   proxycfg.exe -d 
   ```
9. Restart the BITS service and the Windows Update service. To do this, type the following commands at a command prompt. Press ENTER after you type each command.  
   ```
   net start bits  
   
   net start wuauserv 
   ```
10. If you are running Windows Vista or Windows Server 2008, clear the BITS queue. To do this, type the following command at a command prompt, and then press ENTER:
    ```
    bitsadmin.exe /reset /allusers
    ```
