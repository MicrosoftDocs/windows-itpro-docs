---
title: Create an Assigned Access configuration XML file
description: Learn how to create an XML file to configure a kiosk device.
ms.date: 02/12/2024
ms.topic: how-to
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Create an Assigned Access configuration XML file

The multi-app kiosk experience is defined in an Assigned Access Configuration XML file. In this section, we will go through the process to create a XML file that contains all the lockdown entries available for customization.

Let's start by looking at the basic structure of the XML file.

- A configuration xml can define multiple `profiles`. Each profile has a *profile Id* and defines a set of applications that are allowed to run
- A configuration xml can have multiple `configs`. Each config associates a non-admin user account to a default profile Id
- A profile has no effect if it's not associated to a user account

You can start your file by pasting the following XML code into a text editor, and saving the file as `filename.xml`.

::: zone pivot="windows-11"

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v2="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="">
            <AllAppsList>
                <AllowedApps/>
            </AllAppsList>
            <StartLayout/>
            <Taskbar/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account/>
            <DefaultProfile Id=""/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

::: zone-end

::: zone pivot="windows-10"

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v2="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    <Profiles>
        <Profile Id="">
            <AllAppsList>
                <AllowedApps/>
            </AllAppsList>
            <StartLayout/>
            <Taskbar/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account/>
            <DefaultProfile Id=""/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

::: zone-end

## Profiles node

In the XML file, you define each profile with a globally unique identifier (GUID), which must be unique within the XML file.

> [!TIP]
> You can generate a GUID with the PowerShell cmdlet `New-Guid`.

```xml
<Profiles>
    <Profile Id="6954c40a-45dd-4176-a2e3-ecaf5c97f425">
        ...
    </Profile>
</Profiles>
```

A *profile node* contains the following properties:

|Property|Description|
|-|-|
|Id|a GUID attribute to uniquely identify the profile|
|AllowedApps|a node with a list of applications that are allowed to run. Apps can be Universal Windows Platform (UWP) apps or Classic Windows desktop apps|
|StartLayout|a node for startlayout policy xml|
|Taskbar|a node with a Boolean attribute ShowTaskbar to indicate whether to show the taskbar|

```xml
<Profile Id="6954c40a-45dd-4176-a2e3-ecaf5c97f425">
    <AllAppsList>
        <AllowedApps/>
    </AllAppsList>
    <StartLayout/>
    <Taskbar/>
</Profile>
```

### AllowedApps node

Based on the purpose of the kiosk device, define the list of applications that are allowed to run. This list can contain both UWP apps and desktop apps. When the mult-app kiosk configuration is applied to a device, AppLocker rules will be generated to allow the apps that are listed in the configuration.

- For UWP apps, you must provide the App User Model ID (AUMID)
  - [Learn how to get the AUMID]()
- For desktop apps, specify the AUMID or the full path of the executable, which can contain one or more system environment variables in the form of %variableName%

<!-->
Here are the predefined assigned access AppLocker rules:

For UWP apps,

1. Default rule is to allow all users to launch the signed package apps.

2. The package app deny list is generated at runtime when the assigned access user signs in. Based on the installed/provisioned package apps available for the user account, assigned access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed packages that enterprises defined in the assigned access configuration. If there are multiple apps within the same package, all these apps will be excluded. This deny list will be used to prevent the user from accessing the apps which are currently available for the user but not in the allowed list.

Note:

Assigned access multi-app mode doesn't block the enterprises or the users from installing UWP apps. When a new UWP app is installed during the current assigned access user session, this app will not be in the deny list. When the user signs out and signs in back next time, it will be included in the deny list. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the assigned access configuration to include it in the allowed app list.

For desktop apps,

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs. 2. There is a predefined inbox desktop app deny list for the assigned access user account, and this deny list is adjusted based on the desktop app allow list that you defined in the multi-app configuration.

3. Enterprise-defined allowed desktop apps are added in the AppLocker allow list.
-->

The following example allows Calculator, Photos, Weather, Calculator, Command Prompt, and Windows PowerShell apps to run on the device.

```xml
<AllowedApps>
    <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
    <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
    <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
    <App DesktopAppPath="%windir%\System32\WindowsPowerShell\v1.0\Powershell.exe" />
</AllowedApps>
```

### StartLayout node

After the definition of allowed applications, customize the Start layout for the kiosk experience. You can choose to pin all the allowed applications on the Start menu, or a subset.

The easiest way to create a customized Start layout is to configure the Start menu on a test device and then export the layout. For detailed steps, refer to Customize and export Start layout.

> [!NOTE]
> - The test device on which you customize the Start layout should have the same OS version that is installed on the device where you plan to deploy the Assigned Access configuration
> - There are no apps pinned on the taskbar in the multi-app mode, and it's not supported to configure Taskbar layout using the <CustomTaskbarLayoutCollection> tag in a layout modification XML as part of the Assigned Access configuration

The following example pins Calculator, Photos, Weather, Calculator, Command Prompt, and Windows PowerShell apps to the Start menu.

::: zone pivot="windows-10"

```xml
<StartLayout>
<![CDATA[
<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1"
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
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
```

::: zone-end

::: zone pivot="windows-11"

<win11:StartPins>
<![CDATA[
    {
        "pinnedList":[
            {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
            {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Command Prompt.lnk"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk"},
            {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
            {"packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"},
            {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"}
        ]
    }
]]>
</win11:StartPins>

::: zone-end



### Taskbar

Define whether you want to have the taskbar present in the kiosk device. For tablet-based or touch-enabled All-In-One kiosks, when you don't attach a keyboard and mouse, you can hide the taskbar as part of the multi-app experience if you want.

The following example exposes the taskbar to the end user:

<Taskbar ShowTaskbar="true"/>

The following example hides the taskbar:

<Taskbar ShowTaskbar="false"/>

This is different from the Automatically hide the taskbar option in tablet mode, which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting ShowTaskbar as false will always keep the taskbar hidden.

## Configs

## Full XML example

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v2="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config"
    xmlns:win11="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="{6954c40a-45dd-4176-a2e3-ecaf5c97f425}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
                    <App DesktopAppPath="%windir%\System32\WindowsPowerShell\v1.0\Powershell.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <rs5:AllowedNamespace Name="Downloads"/>
                <v3:AllowRemovableDrives/>
            </rs5:FileExplorerNamespaceRestrictions>
            <win11:StartPins>
                <![CDATA[{
                    "pinnedList":[
                        {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
                        {"packagedAppId":"Microsoft.Windows.Photos_8wekyb3d8bbwe!App"},
                        {"packagedAppId":"Microsoft.BingWeather_8wekyb3d8bbwe!App"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\System Tools\\Command Prompt.lnk"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\Windows PowerShell\\Windows PowerShell.lnk"},
                        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
                        {"packagedAppId": "windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"},
                        {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"}
                    ]
                }]]>
            </win11:StartPins>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Library Kiosk"/>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```