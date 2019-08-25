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

```xml
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = @"
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
  <Profiles>
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
      <AllAppsList>
        <AllowedApps>
          <App AppUserModelId="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
          <App AppUserModelId="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
          <App DesktopAppPath="%windir%\system32\mspaint.exe" />
          <App DesktopAppPath="C:\Windows\System32\notepad.exe" />
        </AllowedApps>
      </AllAppsList>
      <StartLayout>
        <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Group1">
                              <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
                              <start:Tile Size="2x2" Column="4" Row="2" AppUserModelID="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
                              <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                              <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                            </start:Group>
                            <start:Group Name="Group2">
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk" />
                              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
      </StartLayout>
      <Taskbar ShowTaskbar="true"/>
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <Account>MultiAppKioskUser</Account>
      <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
    </Config>
  </Configs>
</AssignedAccessConfiguration>
"@

Set-CimInstance -CimInstance $obj
```
