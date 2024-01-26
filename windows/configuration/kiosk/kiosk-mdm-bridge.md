---
title: Use MDM Bridge WMI Provider to create a Windows kiosk
description: Environments that use Windows Management Instrumentation (WMI) can use the MDM Bridge WMI Provider to configure the MDM_AssignedAccess class.
ms.topic: article
ms.date: 1/26/2024
zone_pivot_groups: windows-versions-11-10
---

# Use MDM Bridge WMI Provider to create a Windows client kiosk

Environments that use [Windows Management Instrumentation (WMI)](/windows/win32/wmisdk/wmi-start-page) can use the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal) to configure the MDM_AssignedAccess class. For more information about using a PowerShell script to configure AssignedAccess, see [PowerShell Scripting with WMI Bridge Provider](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider).

Here's an example to set AssignedAccess configuration:

1. Download the [psexec tool](/sysinternals/downloads/psexec).
1. Run `psexec.exe -i -s cmd.exe`.
1. In the command prompt launched by psexec.exe, enter `powershell.exe` to open PowerShell.
1. Execute the following script:

::: zone pivot="windows-10"

```PowerShell
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
Add-Type -AssemblyName System.Web

$obj.Configuration = [System.Web.HttpUtility]::HtmlEncode(@"
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
"@)

Set-CimInstance -CimInstance $obj
```

::: zone-end

::: zone pivot="windows-11"

 ```PowerShell
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
Add-Type -AssemblyName System.Web

$obj.Configuration = [System.Web.HttpUtility]::HtmlEncode(@"
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
  xmlns=http://schemas.microsoft.com/AssignedAccess/2017/config xmlns:win11=http://schemas.microsoft.com/AssignedAccess/2022/config>
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
      <win11:StartPins>
        <![CDATA[
          { "pinnedList":[
            {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic"},
            {"packagedAppId":"Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo"},
            {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
            {"desktopAppLink":"%ALLUSERSPROFILE%\\Microsoft\\Windows\\StartMenu\\Programs\\Accessories\\Paint.lnk"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\StartMenu\\Programs\\Accessories\\Notepad.lnk"}
          ] }
        ]]>
      </win11:StartPins>
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
"@)

Set-CimInstance -CimInstance $obj
```

::: zone-end
