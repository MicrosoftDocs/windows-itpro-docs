---
title: Create an Assigned Access configuration file
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
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config">
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
- For desktop apps, specify the AUMID or the full path of the executable, which can contain one or more system environment variables in the form of %variableName%. For example, `%systemroot%` or `%windir%`.
- If an app has a dependency on another app, both must be included in the allowed apps list. For example, Internet Explorer 64-bit has a dependency on Internet Explorer 32-bit, so you must allow both `"C:\Program Files\internet explorer\iexplore.exe"` and `"C:\Program Files (x86)\Internet Explorer\iexplore.exe"`
- To configure a single app to launch automatically when the user signs in, include `rs5:AutoLaunch="true"` after the AUMID or path. You can also include arguments to be passed to the app

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
    <App DesktopAppPath="C:\Windows\System32\notepad.exe" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="%windir%\setuperr.log" />
</AllowedApps>
```

::: zone pivot="windows-10"

### StartLayout node

After the definition of allowed applications, customize the Start layout for the kiosk experience. You can choose to pin all the allowed applications on the Start menu, or a subset.

The easiest way to create a customized Start layout is to configure the Start menu on a test device and then export the layout. For detailed steps, refer to Customize and export Start layout.

> [!NOTE]
> - The test device on which you customize the Start layout should have the same OS version that is installed on the device where you plan to deploy the Assigned Access configuration
> - There are no apps pinned on the taskbar in the multi-app mode, and it's not supported to configure Taskbar layout using the <CustomTaskbarLayoutCollection> tag in a layout modification XML as part of the Assigned Access configuration

The following example pins Calculator, Photos, Weather, Calculator, Command Prompt, and Windows PowerShell apps to the Start menu.


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

### StartPins node

After you define the list of allowed applications, you can customize the Start layout for your kiosk experience. The easiest way to create a customized Start layout to apply to other Windows client devices is to set up the Start screen on a test device and then export the layout. Once you've decided, you can get the JSON needed for your kiosk configuration by following the steps to [Get the pinnedList JSON](../start/customize-and-export-start-layout.md). If you opt to do this using the PowerShell command, make sure that the system you run the command on has the same file structure as the device on which you will apply the kiosk (the path to the allowed apps must be the same). At the end of this step, you should have a JSON pinnedList that looks something like the below.

Add your pinnedList JSON into the StartPins tag in your XML file.

```xml
<v5:StartPins>
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
</v5:StartPins>
```

> [!NOTE]
> If an app isn't installed for the user, but is included in the Start layout XML, the app isn't shown on the Start screen.

::: zone-end

### Taskbar

Define whether you want to have the taskbar present in the kiosk device. For tablet-based or touch-enabled All-In-One kiosks, when you don't attach a keyboard and mouse, you can hide the taskbar as part of the multi-app experience if you want.

The following example exposes the taskbar to the end user:

<Taskbar ShowTaskbar="true"/>

The following example hides the taskbar:

<Taskbar ShowTaskbar="false"/>

> [!NOTE]
> This is different from the **Automatically hide the taskbar** option in tablet mode, which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting **ShowTaskbar** as **false** will always keep the taskbar hidden.

## Configs

## Full XML example

::: zone pivot="windows-11"

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config">
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
            <v5:StartPins>
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
            </v5:StartPins>
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
::: zone-end










:::row:::
    :::column span="1":::
    **Scenario**
    :::column-end:::
    :::column span="3":::
    **Sample Xml**
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **Block everything**
    :::column-end:::
    :::column span="3":::
    Either don't use the node or leave it empty

    ```xml
    <rs5:FileExplorerNamespaceRestrictions>
    </rs5:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::
:::row:::
    :::column span="1":::
    **Only allow downloads**
    :::column-end:::
    :::column span="3":::
    ```xml
    <rs5:FileExplorerNamespaceRestrictions>
        <rs5:AllowedNamespace Name="Downloads"/>
    </rs5:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **Only allow removable drives**
    :::column-end:::
    :::column span="3":::
    ```xml
    <rs5:FileExplorerNamespaceRestrictions>
        <v3:AllowRemovableDrives />
    </rs5:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **Allow both Downloads, and removable drives**
    :::column-end:::
    :::column span="3":::
    ```xml
    <rs5:FileExplorerNamespaceRestrictions>
        <rs5:AllowedNamespace Name="Downloads"/>
        <v3:AllowRemovableDrives/>
    </rs5:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
    **No restrictions, all locations are allowed**
    :::column-end:::
    :::column span="3":::
    ```xml
    <rs5:FileExplorerNamespaceRestrictions>
        <v3:NoRestriction />
    </rs5:FileExplorerNamespaceRestrictions>
    ```
    :::column-end:::
:::row-end:::

<!--troubleshooting
Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging
<TBD>

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)
-->


## Assigned Access configuration XML examples

This article provides practical examples of Assigned Access XML configuration files.

For more details, review the Assigned Access XSD reference article.

## Kiosk example 1

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration

    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    >
    <Profiles>
        <Profile Id="{GUID}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="" />
                    <App DesktopAppPath="" rs5:AutoLaunch="" rs5:AutoLaunchArguments=""/>
                </AllowedApps>
            </AllAppsList>
            <StartLayout>
                ...
            </StartLayout>
            <Taskbar ShowTaskbar=""/>
        </Profile>
    </Profiles>

    <Configs>
        <Config>
            <Account>domain\account</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>AzureAD\john@contoso.onmicrosoft.com</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>localaccount</Account>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <AutoLogonAccount rs5:DisplayName="Hello World"/>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="LocalGroup" Name="mygroup" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="ActiveDirectoryGroup" Name="redmond\somegroup" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
        <Config>
            <UserGroup Type="AzureActiveDirectoryGroup" Name="a8d36e43-4180-4ac5-a627-fb8149bba1ac" />
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

## Kiosk only sample XML

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    >
    <Profiles>
        <Profile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}">
            <KioskModeApp AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account>singleappuser</Account>
            <DefaultProfile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

## Auto Launch Sample XML

This sample demonstrates that both UWP and Win32 apps can be configured to automatically launch, when assigned access account logs in. One profile can have at most one app configured for auto launch. AutoLaunchArguments are passed to the apps as is and the app needs to handle the arguments explicitly.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:r1809="http://schemas.microsoft.com/AssignedAccess/201810/config"
>
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" r1809:AutoLaunch="true"/>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" r1809:AutoLaunch="true" r1809:AutoLaunchArguments="1.txt"/>
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="false"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account>aauser1</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>aauser2</Account>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>

```

## Microsoft Edge Kiosk XML Sample

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
  xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
  xmlns:v4="http://schemas.microsoft.com/AssignedAccess/2021/config"
  >
  <Profiles>
    <Profile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}">

        <KioskModeApp v4:ClassicAppPath="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" v4:ClassicAppArguments="--no-first-run --kiosk-idle-timeout-minutes=5 --kiosk www.bing.com" />
        <v4:BreakoutSequence Key="Ctrl+A"/>
    </Profile>
  </Profiles>
  <Configs>
    <Config>
      <Account>EdgeKioskUser</Account>
      <DefaultProfile Id="{AFF9DA33-AE89-4039-B646-3A5706E92957}"/>
    </Config>
  </Configs>
</AssignedAccessConfiguration>
```

## Global Profile Sample XML

Global Profile is supported on:

- Windows 11
- Windows 10, version 2004 and later

Global Profile is designed for scenarios where a user doesn't have a designated profile, yet you still want the user to run in lockdown mode. It's also used as mitigation when a profile can't be determined for a user.

This sample demonstrates that only a global profile is used, with no active user configured. Global Profile will be applied when every non-admin account signs in.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
>
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="123"/>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
    </Profiles>
    <Configs>
        <v3:GlobalProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
    </Configs>
</AssignedAccessConfiguration>
```

Below sample shows dedicated profile and global profile mixed usage, a user would use one profile, everyone else that's non-admin will use another profile.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
>
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="123"/>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="1.txt"/>
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="false"/>
        </Profile>
    </Profiles>
    <Configs>
        <v3:GlobalProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        <Config>
            <Account>aauser</Account>
            <DefaultProfile Id="{5B328104-BD89-4863-AB27-4ED6EE355485}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>

```

## Folder Access sample xml

Starting with Windows 10 version 1809 +, folder access is locked down so that when common file dialog is opened, IT Admin can specify if the user has access to the Downloads folder, or no access to any folder at all. This restriction has been redesigned for finer granularity and easier use, and is available in Windows 10 version 2009+.

IT Admin now can specify user access to Downloads folder, Removable drives, or no restrictions at all. Downloads and Removable Drives can be allowed at the same time.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration
    xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config"
    xmlns:v3="http://schemas.microsoft.com/AssignedAccess/2020/config"
>
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C24}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
            </rs5:FileExplorerNamespaceRestrictions>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C25}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <rs5:AllowedNamespace Name="Downloads"/>
            </rs5:FileExplorerNamespaceRestrictions>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C26}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <v3:AllowRemovableDrives />
            </rs5:FileExplorerNamespaceRestrictions>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C27}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <rs5:AllowedNamespace Name="Downloads"/>
                <v3:AllowRemovableDrives/>
            </rs5:FileExplorerNamespaceRestrictions>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C28}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" />
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <rs5:FileExplorerNamespaceRestrictions>
                <v3:NoRestriction />
            </rs5:FileExplorerNamespaceRestrictions>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account>multi1</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
        <Config>
            <Account>multi2</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C24}"/>
        </Config>
        <Config>
            <Account>multi3</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C25}"/>
        </Config>
        <Config>
            <Account>multi4</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C26}"/>
        </Config>
        <Config>
            <Account>multi5</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C27}"/>
        </Config>
        <Config>
            <Account>multi6</Account>
            <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C28}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>

```

To authorize a compatible configuration XML that includes elements and attributes from Windows 10 version 1809 or newer / Windows 11, always include the namespace of these add-on schemas, and decorate the attributes and elements accordingly with the namespace alias.

For example, to configure the autolaunch feature that was added in Windows 10 version 1809 / Windows 11, use the following sample. Notice an alias r1809 is given to the 201810 namespace for Windows 10 version 1809 / Windows 11, and the alias is tagged on AutoLaunch and AutoLaunchArguments inline.
