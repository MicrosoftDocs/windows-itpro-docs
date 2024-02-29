---
title: Create an Assigned Access configuration file
description: Learn how to create an XML file to configure Assigned Access.
ms.topic: how-to
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Create an Assigned Access configuration XML file

To configure Assigned Access, you must create and apply a configuration XML file to your devices. The configuration file must conform to a *schema*, as defined in [Assigned Access XML Schema Definition (XSD)](xsd.md).

This article describes how to configure an Assigned Access configuration file, including practical examples.

Let's start by looking at the basic structure of the XML file. An Assigned Access configuration file contains:

- One or multiple `profiles`. Each `profile` defines a set of applications that are allowed to run
- One or multiple `configs`. Each `config` associates a non-admin user account to a `profile`

> [!NOTE]
> A profile has no effect if it's not associated to a user account.

Here's a basic example of an Assigned Access configuration file, with one profile and one config:

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
    <Profiles>
        <Profile Id="{GUID}">
            <!-- Add configuration here as needed -->
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <!-- Add configuration here as needed -->
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

## Profiles

A configuration file can contain one or more profiles. Each profile is identified by a unique identified `Profile Id`, for example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
        <!-- Add configuration here as needed -->
    </Profile>
</Profiles>
```

> [!TIP]
> The `Profile Id` must be unique within the XML file. You can generate a GUID with the PowerShell cmdlet `New-Guid`.

A profile is also identified by a `Type` attribute, which can be `AllAppList` or `KioskModeApp`.

- `AllAppList` is used to configure a restricted user experience. Users assigned this profile access the desktop with the specific apps on the Start menu
- `KioskModeApp`: is used to configure a kiosk experience. Users assigned this profile don't access the desktop, but only the UWP application or Microsoft Edge running in full-screen above the Lock screen

The following table describes the profile types and their properties:

::: zone pivot="windows-11"

| Profile type | Properties|
|-|-|
|`AllAppList`| -`Id` (required)<br>- `Name` (optional)<br>- `AllowedApps`<br>- `StartPins`<br>- `TaskbarLayout`|
|`KioskModeApp`| -`Id` (required)<br>- `Name` (optional)<br>- `KioskModeApp` (required)|

::: zone-end

::: zone pivot="windows-10"

| Profile type | Properties|
|-|-|
|`AllAppList`| - `Id` (required)<br>- `Name` (optional)<br>- `AllowedApps`<br>- `StartLayout`<br>- `Taskbar`<br>-`FileExplorerNamespaceRestrictions`|
|`KioskModeApp`| -`Id` (required)<br>- `Name` (optional)<br>- `KioskModeApp` (required)|

::: zone-end

Kiosk example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Microsoft Learn example">
        <KioskModeApp ... />
    </Profile>
</Profiles>
```

::: zone pivot="windows-11"

Restricted user experience example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Microsoft Learn example">
        <AllAppsList>
            <AllowedApps>
                <!-- Add configuration here as needed -->
            </AllowedApps>
        </AllAppsList>
        <StartPins>
        </StartPins>
        <TaskbarLayout>
            <!-- Add configuration here as needed -->
        </TaskbarLayout>
    </Profile>
</Profiles>
```

::: zone-end

::: zone pivot="windows-10"

Restricted user experience example:

```xml
<Profiles>
    <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Microsoft Learn example">
        <AllAppsList>
            <AllowedApps>
                <!-- Add configuration here as needed -->
            </AllowedApps>
        </AllAppsList>
        <rs5:FileExplorerNamespaceRestrictions>
            <!-- Add configuration here as needed -->
        </rs5:FileExplorerNamespaceRestrictions>
        <StartLayout>
        </StartLayout>
        <Taskbar [...]/>
    </Profile>
</Profiles>
```

::: zone-end

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

Based on the purpose of the kiosk device, define the list of applications that are allowed to run. This list can contain both UWP apps and desktop apps. When the mult-app kiosk configuration is applied to a device, AppLocker rules are generated to allow the apps that are listed in the configuration.

- For UWP apps, you must provide the App User Model ID (AUMID). Learn how to [Find the Application User Model ID of an installed app](../store/find-aumid.md)
- For desktop apps, specify the AUMID or the full path of the executable, which can contain system environment variables in the form of %variableName%. For example, `%systemroot%` or `%windir%`.
- If an app has a dependency on another app, both must be included in the allowed apps list. For example, Internet Explorer 64-bit has a dependency on Internet Explorer 32-bit, so you must allow both `"C:\Program Files\internet explorer\iexplore.exe"` and `"C:\Program Files (x86)\Internet Explorer\iexplore.exe"`
- To configure a single app to launch automatically when the user signs in, include `rs5:AutoLaunch="true"` after the AUMID or path. You can also include arguments to be passed to the app

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

### Start menu customizations

After the definition of allowed applications, customize the Start layout for the kiosk experience. You can choose to pin all the allowed applications on the Start menu, or a subset. The easiest way to create a customized Start layout is to configure the Start menu on a test device and then export the layout.

::: zone pivot="windows-10"

To learn more, see [Customize the Start menu](../start/customize-and-export-start-layout.md)

The following example pins a few apps to the Start menu:

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

To learn more, see [Customize the Start menu](../start/customize-start-menu-layout-windows-11.md)

The following example pins a few apps to the Start menu:

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

Add your pinnedList JSON into the StartPins tag in your XML file.

::: zone-end

### Taskbar customizations

::: zone pivot="windows-10"

You can't pin apps on the taskbar in a restricted user experience, and it's not supported to configure a Taskbar layout using the `<CustomTaskbarLayoutCollection>` tag in a layout modification XML as part of the Assigned Access configuration.

The only Taskbar customization available in Windows 10 is the possiblity to show or hide it, using the `ShowTaskbar` boolean attribute.

The following example exposes the taskbar:

```xml
<Taskbar ShowTaskbar="true"/>
```

The following example hides the taskbar:

```xml
<Taskbar ShowTaskbar="false"/>
```

> [!NOTE]
> This is different from the **Automatically hide the taskbar** option in tablet mode, which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting `ShowTaskbar` as `false` hides the taskbar permanently.

::: zone-end

::: zone pivot="windows-11"

You can customize the Taskbar by creating a custom layout and adding it to your XML file. To learn more, see [Customize the Taskbar](../taskbar/customize-taskbar-windows-11.md).

> [!NOTE]
> In Windows 11, the `ShowTaskbar` attribute is no-op. Configure it with a value of `true`.

Here's an example of a custom Taskbar with a few apps pinned:

```xml
<Taskbar ShowTaskbar="true" />
<v5:TaskbarLayout><![CDATA[
  <?xml version="1.0" encoding="utf-8"?>
  <LayoutModificationTemplate
      xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
      xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
      xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
      xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
      Version="1">
  <CustomTaskbarLayoutCollection>
      <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
          <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer" />
          <taskbar:DesktopApp DesktopApplicationID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" />
          <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"/>
      </taskbar:TaskbarPinList>
      </defaultlayout:TaskbarLayout>
  </CustomTaskbarLayoutCollection>
  </LayoutModificationTemplate>
  ]]>
</v5:TaskbarLayout>
```

> [!NOTE]
> If an app isn't installed for the user, but is included in the Start layout XML, the app isn't shown on the Start screen.

::: zone-end

### KioskModeApp

**KioskModeApp** is used for a kiosk profile only. Enter the AUMID for a single app. You can only specify one kiosk profile in the XML.

```xml
<KioskModeApp AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
```

> [!IMPORTANT]
> The kiosk profile is designed for public-facing kiosk devices. We recommend that you use a local, non-administrator account. If the device is connected to your company network, using a domain or Microsoft Entra account could potentially compromise confidential information.

### Auto Launch

This sample demonstrates that both UWP and Win32 apps can be configured to automatically launch, when Assigned Access account logs in. One profile can have at most one app configured for auto launch. AutoLaunchArguments are passed to the apps as is and the app needs to handle the arguments explicitly.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:rs5="http://schemas.microsoft.com/AssignedAccess/201810/config">
    <Profiles>
        <Profile Id="{GUID}">
            <AllAppsList>
                <AllowedApps>
                    <App AppUserModelId="Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer" rs5:AutoLaunch="true"/>
                    <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                    <App AppUserModelId="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
                    <App DesktopAppPath="%SystemRoot%\system32\notepad.exe" />
                </AllowedApps>
            </AllAppsList>
            <Taskbar ShowTaskbar="true"/>
        </Profile>
        <Profile Id="{GUID}">
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
```

## Configs

Under `Configs`, define one or more user accounts and their association with a profile.

When the user account signs in, the associated Assigned Access profile is enforced along with policy settings that are part of the restricted user experience.

You can assign:

- A standard user account, which can be local, domain, or Microsoft Entra ID
- A group account, which can be local, Active Directory (domain), or Microsoft Entra ID

Limitations:

- Configs that specify group accounts can't use a kiosk profile, only a restricted user experience profile
- Apply the restricted user experience to standard users only. It's not supported to associate an admin user with an Assigned Access profile

### AutoLogon account

With `<AutoLogonAccount>`, Assigned Access creates and manages an user account to automatically sign in after a device restarts. The account is a local standard user.

The following example shows how to specify an account to sign in automatically, and the optional display name for the account on the sign-in screen:

```xml
<Configs>
  <Config>
    <AutoLogonAccount rs5:DisplayName="Microsoft Learn example"/>
    <DefaultProfile Id="{GUID}"/>
  </Config>
</Configs>
```

>[!NOTE]
> On Microsoft Entra joined and domain joined devices, local user accounts aren't displayed on the sign-in screen by default. To display the local accounts on the sign-in screen, enable the policy setting:
>
>- GPO: **Computer Configuration** > **Administrative Templates** > **System** > **Logon** > **Enumerate local users on domain-joined computers**
>- CSP: `./Device/Vendor/MSFT/Policy/Config/WindowsLogon/`[EnumerateLocalUsersOnDomainJoinedComputers](/windows/client-management/mdm/policy-csp-windowslogon#enumeratelocalusersondomainjoinedcomputers)

>[!IMPORTANT]
>When Exchange Active Sync (EAS) password restrictions are active on the device, the autologon feature doesn't work. This behavior is by design. For more informations, see [How to turn on automatic logon in Windows](/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon).

### User accounts

Individual accounts are specified using `<Account>`.

> [!IMPORTANT]
> Before applying the Assigned Access configuration, make sure the specified user account is available on the device, otherwise it fails.
>
> For both domain and Microsoft Entra accounts, as long as the device is Active Directory joined or Microsoft Entra joined, the account can be discovered in the domain forest or tenant that the device is joined to. For local accounts, it is required that the account exist before you configure the account for assigned access.

#### Local user

Local account can be entered as `devicename\user`, `.\user`, or just `user`.

```xml
<Config>
  <Account>user</Account>
  <DefaultProfile Id="{GUID}"/>
</Config>
```

#### Active Directory user

Domain accounts must be entered using the format `domain\samAccountName`.

```xml
<Config>
  <Account>contoso\user</Account>
  <DefaultProfile Id="{GUID}"/>
</Config>
```

#### Microsoft Entra user

Microsoft Entra accounts must be specified with the format: `AzureAD\{UPN}`. `AzureAD` must be provided *as is*, then follow with the Microsoft Entra user principal name (UPN).

```xml
<Config>
  <Account>AzureAD\user@contoso.onmicrosoft.com</Account>
  <DefaultProfile Id="{GUID}"/>
</Config>
```

### Group accounts

Group accounts are specified using `<UserGroup>`. Nested groups aren't supported. For example, if *User A* is member of *Group A*, *Group A* is member of *Group B*, and *Group B* is used in `<Config/>`, *User A* doesn't have the kiosk experience.

#### Local group

Specify the group type as `LocalGroup` and add the group name in the `Name` attribute.

```xml
<Config>
  <UserGroup Type="LocalGroup" Name="groupname" />
  <DefaultProfile Id="{GUID}"/>
</Config>
```

#### Active Directory group

Both security and distribution groups are supported. Specify the group type as <strong>ActiveDirectoryGroup</strong>. Use the domain name as the prefix in the name attribute.

```xml
<Config>
  <UserGroup Type="ActiveDirectoryGroup" Name="contoso\groupname" />
  <DefaultProfile Id="{GUID}"/>
</Config>
```

#### Microsoft Entra group

Use the object ID of the Microsoft Entra group. You can find the object ID on the overview page for the group in **Users and groups** > **All groups**. Specify the group type as `AzureActiveDirectoryGroup`. The kiosk device must have internet connectivity when users that belong to the group sign-in.

```xml
<Config>
  <UserGroup Type="AzureActiveDirectoryGroup" Name="Group_GUID" />
  <DefaultProfile Id="{GUID}"/>
</Config>
```

### Global profile

With `GlobalProfile` you can define an Assigned Access profile that is applied to every non-admin account that signs in. This can be useful in scenarios like frontline workers or student devices, where you want to ensure that every user has a consistent experience.

```xml
<Configs>
  <v3:GlobalProfile Id="{GUID}"/>
</Configs>
```

> [!NOTE]
> You can combine a global profile with other profiles. If you assign a user a non-global profile, the global profile won't be applied to that user.

::: zone pivot="windows-10"

### File Explorer restrictions

When using Assigned Access, folder browsing is locked down. You can explicitly allow access to known folders when the user tries to open the file dialog box by including the `FileExplorerNamespaceRestrictions` node.

You can specify user access to Downloads folder, Removable drives, or no restrictions at all. Downloads and Removable Drives can be allowed at the same time.

| Property | XML namespace (alias) |
|-|-|
|`FileExplorerNamespaceRestrictions`|`https://schemas.microsoft.com/AssignedAccess/201810/config` (rs5)|
|`AllowedNamespace:Downloads`|`https://schemas.microsoft.com/AssignedAccess/201810/config` (rs5)|
|`AllowRemovableDrives`|`https://schemas.microsoft.com/AssignedAccess/2020/config` (v3)|
|`NoRestriction`|`https://schemas.microsoft.com/AssignedAccess/2020/config` (v3)|

:::row:::
:::column span="2":::
#### Scenario
:::column-end:::
:::column span="2":::
#### XML snippet
:::column-end:::
:::row-end:::
:::row:::
:::column span="2":::
**Block everything**

Either don't use the node or leave it empty
:::column-end:::
:::column span="2":::

```xml
<rs5:FileExplorerNamespaceRestrictions>
</rs5:FileExplorerNamespaceRestrictions>
```
:::column-end:::
:::row-end:::
:::row:::
:::column span="2":::
**Only allow downloads**
:::column-end:::
:::column span="2":::
```xml
<rs5:FileExplorerNamespaceRestrictions>
    <rs5:AllowedNamespace Name="Downloads"/>
</rs5:FileExplorerNamespaceRestrictions>
```
:::column-end:::
:::row-end:::
:::row:::
:::column span="2":::
**Only allow removable drives**
:::column-end:::
:::column span="2":::
```xml
<rs5:FileExplorerNamespaceRestrictions>
    <v3:AllowRemovableDrives />
</rs5:FileExplorerNamespaceRestrictions>
```
:::column-end:::
:::row-end:::
:::row:::
:::column span="2":::
**Allow both Downloads, and removable drives**
:::column-end:::
:::column span="2":::
```xml
<rs5:FileExplorerNamespaceRestrictions>
    <rs5:AllowedNamespace Name="Downloads"/>
    <v3:AllowRemovableDrives/>
</rs5:FileExplorerNamespaceRestrictions>
```
:::column-end:::
:::row-end:::
:::row:::
:::column span="2":::
**No restrictions, all locations are allowed**
:::column-end:::
:::column span="2":::
```xml
<rs5:FileExplorerNamespaceRestrictions>
    <v3:NoRestriction />
</rs5:FileExplorerNamespaceRestrictions>
```
:::column-end:::
:::row-end:::

> [!TIP]
> To grant access to File Explorer in a restricted user experience, add `Explorer.exe` to the list of allowed apps, and pin a shortcut to the Start menu.

::: zone-end

## Next steps

> [!div class="nextstepaction"]
> Review some practical examples of Assigned Access XML configurations:
>
> [Assigned Access examples](examples.md)