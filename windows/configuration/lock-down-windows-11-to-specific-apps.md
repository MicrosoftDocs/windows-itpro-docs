---
title: Set up a multi-app kiosk on Windows 11
description: Learn how to configure a kiosk device running Windows 11 so that users can only run a few specific apps.
ms.prod: w11
ms.technology: windows
author: lizgt2000
ms.author: lizlong
ms.date: 09/21/2021
manager: aaroncz
ms.reviewer: sybruckm
ms.localizationpriority: medium
ms.topic: how-to
ms.collection: highpri
---

# Set up a multi-app kiosk on Windows 11 devices

**Applies to**

- Windows 11 Pro, Enterprise, and Education

> The use of multiple monitors isn't supported for multi-app kiosk mode.

A [kiosk device](./kiosk-single-app.md) typically runs a single app, and users are prevented from accessing any features or functions on the device outside of the kiosk app.

>[!WARNING]
>The assigned access feature is intended for corporate-owned fixed-purpose devices, like kiosks. When the multi-app assigned access configuration is applied on the device, [certain policies](kiosk-policies.md) are enforced system-wide, and will impact other users on the device. Deleting the kiosk configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all the enforced policies (such as Start layout). A factory reset is needed to clear all the policies enforced via assigned access.

>[!TIP]
>Be sure to check the [configuration recommendations](kiosk-prepare.md) before you set up your kiosk.

# Multi-App Kiosk Mode on Windows 11 Setup Instructions

Currently, the only supported method to configure a multi-app kiosk in Windows 11 is through WMI Bridge (Intune and CSP/PPKG methods coming soon). You can follow the instructions for Windows 10, except for the differences for Windows 11 outlined below.  

1. Use the guidance on the multi-app kiosk page to create your XML configuration. When configuring ONLY for Windows 11, you can ignore the Start Layout (<StartLayout>) section. If you'd like to use one configuration for both Windows 10 and 11 devices, include the Start Layout section as planned in the Windows 10 instructions.  

2. Use the Start Pins instructions to generate your Windows 11 start menu layout JSON. If you opt to do this using the PowerShell command, make sure that the system you run the command on has the same file structure as the device on which you will apply the kiosk (the path to the allowed apps must be the same). At the end of this step, you should have a JSON pinnedList that looks something like the below.

```xml
{ "pinnedList":[ 
    {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}, 
    {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"}, 
    {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"}, 
    {"desktopAppLink":"%ALLUSERSPROFILE%\\Programs\\Accessories\\Paint.lnk"},     {"desktopAppLink":"%APPDATA%\\Programs\\Accessories\\Notepad.lnk"} 
 ] }  
```

3. In your XML file, after (or in place of) the Start Layout tag, add a StartPins tag that includes the JSON that you generated in Step 2.

```xml
<win11:StartPins> <![CDATA[ Your JSON pinnedList here ]]> </win11:StartPins>
```

4. Once your XML is complete, follow the WMI Bridge instructions to create a script by replacing the XML in the sample code with the XML you generated in Steps 1-3. The final script should look similar to the sample code below.

```xml
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
Add-Type -AssemblyName System.Web
$obj.Configuration = [System.Web.HttpUtility]::HtmlEncode(@"
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration  
  xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"   xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config"
>
  <Profiles>
    <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">       <AllAppsList>

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
        <![CDATA[<LayoutModificationTemplate 
xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">                       <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Group1">
                              <start:Tile Size="4x4" Column="0" Row="0"
AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />                               <start:Tile Size="2x2" Column="4" Row="2"
AppUserModelID="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
                              <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                              <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                              <start:Tile Size="4x2" Column="0" Row="4"
AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                            </start:Group>
                            <start:Group Name="Group2">
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0"
DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start
Menu\Programs\Accessories\Paint.lnk" />
                              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0"
DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start
Menu\Programs\Accessories\Notepad.lnk" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
      </StartLayout>
      <win11:StartPins>
        <![CDATA[  
          { "pinnedList":[
            {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic"},
            {"packagedAppId":"Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo"},
            {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
            {"desktopAppLink":"%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start
Menu\\Programs\\Accessories\\Paint.lnk"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start
Menu\\Programs\\Accessories\\Notepad.lnk"}
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
