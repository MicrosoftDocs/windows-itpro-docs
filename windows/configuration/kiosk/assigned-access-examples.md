---
title: Assigned Access configuration XML examples
description: Practical examples of Assigned Access XML configuration files.
ms.topic: reference
ms.date: 02/15/2024
---

# Assigned Access configuration XML examples

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
