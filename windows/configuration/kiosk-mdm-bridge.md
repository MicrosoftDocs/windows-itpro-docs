---
title: Use MDM Bridge WMI Provider to create a Windows 10 kiosk (Windows 10)
description: Environments that use Windows Management Instrumentation (WMI)can use the MDM Bridge WMI Provider to configure the MDM_AssignedAccess class.
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
ms.reviewer: 
manager: dansimp
ms.author: dansimp
keywords: ["assigned access", "kiosk", "lockdown", "digital sign", "digital signage"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.date: 11/07/2018
ms.topic: article
---

# Use MDM Bridge WMI Provider to create a Windows 10 kiosk


**Applies to**

-   Windows 10 Pro, Enterprise, and Education

Environments that use [Windows Management Instrumentation (WMI)](https://msdn.microsoft.com/library/aa394582.aspx) can use the [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/desktop/dn905224.aspx) to configure the MDM_AssignedAccess class. See [PowerShell Scripting with WMI Bridge Provider](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/using-powershell-scripting-with-the-wmi-bridge-provider) for more details about using a PowerShell script to configure AssignedAccess. 

Here’s an example to set AssignedAccess configuration:

1. Download the [psexec tool](https://technet.microsoft.com/sysinternals/bb897553.aspx).  
2. Run `psexec.exe -i -s cmd.exe`.
3. In the command prompt launched by psexec.exe, enter `powershell.exe` to open PowerShell. 
4. Execute the following script:

```ps
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = @"
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;AssignedAccessConfiguration xmlns=&quot;http://schemas.microsoft.com/AssignedAccess/2017/config&quot;&gt;
  &lt;Profiles&gt;
    &lt;Profile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;&gt;
      &lt;AllAppsList&gt;
        &lt;AllowedApps&gt;
          &lt;App AppUserModelId=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App DesktopAppPath=&quot;%windir%\system32\mspaint.exe&quot; /&gt;
          &lt;App DesktopAppPath=&quot;C:\Windows\System32\notepad.exe&quot; /&gt;
        &lt;/AllowedApps&gt;
      &lt;/AllAppsList&gt;
      &lt;StartLayout&gt;
        &lt;![CDATA[&lt;LayoutModificationTemplate xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot; Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt;
                      &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; /&gt;
                      &lt;DefaultLayoutOverride&gt;
                        &lt;StartLayoutCollection&gt;
                          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot;&gt;
                            &lt;start:Group Name=&quot;Group1&quot;&gt;
                              &lt;start:Tile Size=&quot;4x4&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;2&quot; AppUserModelID=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
                              &lt;start:Tile Size=&quot;4x2&quot; Column=&quot;0&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
                            &lt;/start:Group&gt;
                            &lt;start:Group Name=&quot;Group2&quot;&gt;
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; DesktopApplicationLinkPath=&quot;%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk&quot; /&gt;
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; DesktopApplicationLinkPath=&quot;%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk&quot; /&gt;
                            &lt;/start:Group&gt;
                          &lt;/defaultlayout:StartLayout&gt;
                        &lt;/StartLayoutCollection&gt;
                      &lt;/DefaultLayoutOverride&gt;
                    &lt;/LayoutModificationTemplate&gt;
                ]]&gt;
      &lt;/StartLayout&gt;
      &lt;Taskbar ShowTaskbar=&quot;true&quot;/&gt;
    &lt;/Profile&gt;
  &lt;/Profiles&gt;
  &lt;Configs&gt;
    &lt;Config&gt;
      &lt;Account&gt;MultiAppKioskUser&lt;/Account&gt;
      &lt;DefaultProfile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;/&gt;
    &lt;/Config&gt;
  &lt;/Configs&gt;
&lt;/AssignedAccessConfiguration&gt;
"@

Set-CimInstance -CimInstance $obj
```
