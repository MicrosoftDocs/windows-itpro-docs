---
title: Create an Assigned Access configuration file
description: Learn how to create an XML file to configure Assigned Access.
ms.topic: how-to
zone_pivot_groups: windows-versions-11-10
ms.date: 03/04/2024
appliesto:
---

# Create an Assigned Access configuration XML file

To configure Assigned Access, you must create and apply a configuration XML file to your devices. The configuration file must conform to a *schema*, as defined in [Assigned Access XML Schema Definition (XSD)](xsd.md).

This article describes how to configure an Assigned Access configuration file, including practical examples.

Let's start by looking at the basic structure of the XML file. An Assigned Access configuration file contains:

- One or multiple `profiles`. Each `profile` defines a set of applications that are allowed to run
- One or multiple `configs`. Each `config` associates a user account or a group to a `profile`

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

## Versioning

The Assigned Access configuration XML is versioned. The version is defined in the XML root element, and it's used to determine which schema to use to validate the XML file. The version is also used to determine which features are available for the configuration. Here's a table of the versions, aliases used in the documentation examples, and namespaces:

| Version | Alias | Namespace |
|-|-|-|
|Windows 11, version 22H2|`v5`|`http://schemas.microsoft.com/AssignedAccess/2022/config`|
|Windows 11, version 21H2|`v4`|`http://schemas.microsoft.com/AssignedAccess/2021/config`|
|Windows 10|`v5`|`http://schemas.microsoft.com/AssignedAccess/202010/config`|
|Windows 10|`v3`|`http://schemas.microsoft.com/AssignedAccess/2020/config`|
|Windows 10|`rs5`|`http://schemas.microsoft.com/AssignedAccess/201810/config`|
|Windows 10|default|`http://schemas.microsoft.com/AssignedAccess/2017/config`|

To authorize a compatible configuration XML that includes version-specific elements and attributes, always include the namespace of the add-on schemas, and decorate the attributes and elements accordingly with the namespace alias. For example, to configure the `StartPins` feature that was added in Windows 11, version 22H2, use the below example. Note the alias `v5` associated to the `http://schemas.microsoft.com/AssignedAccess/2022/config` namespace for 22H2 release, and the alias is tagged on `StartPins` inline.

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config"
    xmlns:v5="http://schemas.microsoft.com/AssignedAccess/2022/config">
    <Profiles>
        <Profile Id="{GUID}">
            <!-- Add configuration here as needed -->
            <v5:StartPins>
              <!-- Add StartPins configuration here -->
            </v5:StartPins>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <!-- Add configuration here as needed -->
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

Here you can find the Assigned Access XML schema definitions: [Assigned Access XML Schema Definition (XSD)](xsd.md).

## Profiles

A configuration file can contain one or more profiles. Each profile is identified by a unique identifier `Profile Id` and, optionally, a `Name`. For example:

```xml
<Profiles>
  <Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}" Name="Microsoft Learn example">
    <!-- Add configuration here as needed -->
  </Profile>
</Profiles>
```

> [!TIP]
> The `Profile Id` must be unique within the XML file. You can generate a GUID with the PowerShell cmdlet `New-Guid`.

A profile can be one of two types:

- `KioskModeApp`: is used to configure a kiosk experience. Users assigned this profile don't access the desktop, but only the Universal Windows Platform (UWP) application or Microsoft Edge running in full-screen above the Lock screen
- `AllAppList` is used to configure a restricted user experience. Users assigned this profile, access the desktop with the specific apps on the Start menu

> [!IMPORTANT]
>
> - You can't set both `KioskModeApp` and `ShellLauncher` at the same time on the device
> - A configuration file can contain only one `KioskModeApp` profile, but it can contain multiple `AllAppList` profiles.

### KioskModeApp

The properties of a `KioskModeApp` profile are:

| Property| Description | Details |
|-|-|-|
|`AppUserModelId`|The Application User Model ID (AUMID) of the UWP app.|Learn how to [Find the Application User Model ID of an installed app](../store/find-aumid.md).|
|`v4:ClassicAppPath`|The full path to a desktop app executable.|This is the path to the desktop app used in kiosk mode. The path can contain system environment variables in the form of `%variableName%`.|
|`v4:ClassicAppArguments`|The arguments to be passed to the desktop app.|This property is optional.|

By default, you can use the <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>DEL</kbd> sequence to exit kiosk mode. You can define a `BreakoutSequence` element to change the default sequence. The `Key` attribute is a string that represents the key combination.

Example of two profiles, a desktop app and a UWP app:

```xml
<Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F78}">
  <KioskModeApp v4:ClassicAppPath="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" v4:ClassicAppArguments="--kiosk https://www.contoso.com/ --edge-kiosk-type=fullscreen --kiosk-idle-timeout-minutes=2" />
  <v4:BreakoutSequence Key="Ctrl+A"/>
</Profile>
<Profile Id="{EDB3036B-780D-487D-A375-69369D8A8F79}">
  <KioskModeApp AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
</Profile>
```

> [!NOTE]
> You can only assign a `KioskModeApp` profile to users, not to groups.

### AllAppList

Based on the purpose of the kiosk device, define the list of applications that are allowed to run. This list can contain both UWP apps and desktop apps. When the mult-app kiosk configuration is applied to a device, AppLocker rules are generated to allow the apps that are listed in the configuration.

> [!NOTE]
> If an app has a dependency on another app, both must be included in the allowed apps list.

Within the `AllAppList` node, define a list of applications that are allowed execute. Each `App` element has the following properties:

| Property| Description | Details |
|-|-|-|
|`AppUserModelId`|The Application User Model ID (AUMID) of the UWP app.|Learn how to [Find the Application User Model ID of an installed app](../store/find-aumid.md).|
|`DesktopAppPath`|The full path to a desktop app executable.|This is the path to the desktop app that used in kiosk mode. The path can contain system environment variables in the form of `%variableName%`.|
|`rs5:AutoLaunch`|A Boolean attribute to indicate whether to launch the app (either desktop or UWP app) automatically when the user signs in.|This property is optional. Only one application can autolaunch.|
|`rs5:AutoLaunchArguments`|The arguments to be passed to the app that is configured with `AutoLaunch`.|AutoLaunchArguments are passed to the apps as is and the app needs to handle the arguments explicitly. This property is optional.|

Example:

```xml
<AllAppsList>
  <AllowedApps>
    <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
    <App DesktopAppPath="C:\Windows\system32\cmd.exe" />
    <App DesktopAppPath="%windir%\explorer.exe" />
    <App AppUserModelId="%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" />
    <App DesktopAppPath="C:\Windows\System32\notepad.exe" rs5:AutoLaunch="true" rs5:AutoLaunchArguments="%windir%\setuperr.log" />
  </AllowedApps>
</AllAppsList>
```

::: zone pivot="windows-10"

### File Explorer restrictions

In a restricted user experience (`AllAppList`), folder browsing is locked down by default. You can explicitly allow access to known folders by including the `FileExplorerNamespaceRestrictions` node.

You can specify user access to Downloads folder, Removable drives, or no restrictions at all. Downloads and Removable Drives can be allowed at the same time.

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
        <!-- Add configuration here as needed -->
    </Profile>
</Profiles>
```

Here are some practical examples.

#### Block everything

Either don't use the node or leave it empty.

```xml
<rs5:FileExplorerNamespaceRestrictions>
</rs5:FileExplorerNamespaceRestrictions>
```

#### Only allow downloads

```xml
<rs5:FileExplorerNamespaceRestrictions>
    <rs5:AllowedNamespace Name="Downloads"/>
</rs5:FileExplorerNamespaceRestrictions>
```

#### Only allow removable drives

```xml
<rs5:FileExplorerNamespaceRestrictions>
    <v3:AllowRemovableDrives />
</rs5:FileExplorerNamespaceRestrictions>
```

#### Allow both Downloads, and removable drives

```xml
<rs5:FileExplorerNamespaceRestrictions>
    <rs5:AllowedNamespace Name="Downloads"/>
    <v3:AllowRemovableDrives/>
</rs5:FileExplorerNamespaceRestrictions>
```

#### No restrictions, all locations are allowed

```xml
<rs5:FileExplorerNamespaceRestrictions>
    <v3:NoRestriction />
</rs5:FileExplorerNamespaceRestrictions>
```

> [!TIP]
> To grant access to File Explorer in a restricted user experience, add `Explorer.exe` to the list of allowed apps, and pin a shortcut to the Start menu.

::: zone-end

### Start menu customizations

For a restricted user experience profile (`AllAppList`), you must define the Start layout. The Start layout contains a list of applications that are pinned to the Start menu. You can choose to pin all the allowed applications to the Start menu, or a subset. The easiest way to create a customized Start layout is to configure the Start menu on a test device and then export the layout.

To learn how to customize and export a Start menu configuration, see [Customize the Start menu](../start/customize-and-export-start-layout.md).

::: zone pivot="windows-10"

With the exported Start menu configuration, use the `StartLayout` element and add the content of the XML file. For example:

```xml
<StartLayout>
  <![CDATA[
    <!-- Add your exported Start menu XML configuration file here -->
  ]]>
</StartLayout>
```

Example with some apps pinned:

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
              <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.  ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
              <start:Tile Size="2x2" Column="4" Row="2" AppUserModelID="Microsoft.  ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
            </start:Group>
            <start:Group Name="Group2">
              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0"   DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start   Menu\Programs\Accessories\Paint.lnk" />
              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0"   DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.  lnk" />
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

With the exported Start menu configuration, use the `v5:StartPins` element and add the content of the exported JSON file. For example:

```xml
<v5:StartPins>
  <![CDATA[
      <!-- Add your exported Start menu JSON configuration file here -->
  ]]>
</v5:StartPins>
```

Example with some apps pinned:

<v5:StartPins>
  <![CDATA[
    {
      "pinnedList":[
        {"packagedAppId":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"},
        {"desktopAppLink":"%APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\File Explorer.lnk"},
        {"desktopAppLink": "%ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\Microsoft Edge.lnk"}
      ]
    }
  ]]>
</v5:StartPins>

::: zone-end

> [!NOTE]
> If an app isn't installed for the user, but is included in the Start layout XML, the app isn't shown on the Start screen.

### Taskbar customizations

::: zone pivot="windows-10"

You can't pin apps on the taskbar in a restricted user experience. It's not supported to configure a Taskbar layout using the `<CustomTaskbarLayoutCollection>` tag in a layout modification XML, as part of the Assigned Access configuration.

The only Taskbar customization available is the option to show or hide it, using the `ShowTaskbar` boolean attribute.

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

You can customize the Taskbar by creating a custom layout and adding it to your XML file. To learn how to customize and export the Taskbar configuration, see [Customize the Taskbar](../taskbar/configure.md).

> [!NOTE]
> In Windows 11, the `ShowTaskbar` attribute is no-op. Configure it with a value of `true`.

With the exported Taskbar configuration, use the `v5:TaskbarLayout` element and add the content of the XML file. For example:

```xml
<Taskbar ShowTaskbar="true" />
<v5:TaskbarLayout><![CDATA[
  <!-- Add your exported Taskbar XML configuration file here -->
  ]]>
</v5:TaskbarLayout>
```

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

::: zone-end

<!--here-->

## Configs

Under `Configs`, define one or more user accounts, or groups, and their association with a profile.

When the user account signs in, the associated Assigned Access profile is enforced along with policy settings that are part of the restricted user experience.

You can assign:

- A standard user account, which can be local, domain, or Microsoft Entra ID
- A group account, which can be local, Active Directory (domain), or Microsoft Entra ID

Limitations:

- Configs that specify group accounts can't use a kiosk profile, only a restricted user experience profile
- Apply the restricted user experience to standard users only. It's not supported to associate an admin user with an Assigned Access profile
- Don't apply the profile to users or groups that are targeted by conditional access policies that require user interaction. For example, multi-factor authentication (MFA), or Terms of Use (TOU). For more information, see [Users can't log on to Windows if a multi-app kiosk profile is assigned](/troubleshoot/mem/intune/device-configuration/users-cannot-logon-windows-multi-app-kiosk)

>[!NOTE]
> On Microsoft Entra joined and domain joined devices, local user accounts aren't displayed on the sign-in screen by default. To display the local accounts on the sign-in screen, enable the policy setting:
>
>- GPO: **Computer Configuration** > **Administrative Templates** > **System** > **Logon** > **Enumerate local users on domain-joined computers**
>- CSP: `./Device/Vendor/MSFT/Policy/Config/WindowsLogon/`[EnumerateLocalUsersOnDomainJoinedComputers](/windows/client-management/mdm/policy-csp-windowslogon#enumeratelocalusersondomainjoinedcomputers)

### AutoLogon account

With `<AutoLogonAccount>`, Assigned Access creates and manages a user account to automatically sign in after a device restarts. The account is a local standard user.

The following example shows how to specify an account to sign in automatically, and the optional display name for the account on the sign-in screen:

```xml
<Configs>
  <Config>
    <AutoLogonAccount rs5:DisplayName="Microsoft Learn example"/>
    <DefaultProfile Id="{GUID}"/>
  </Config>
</Configs>
```

>[!IMPORTANT]
>When Exchange Active Sync (EAS) password restrictions are active on the device, the autologon feature doesn't work. This behavior is by design. For more informations, see [How to turn on automatic logon in Windows](/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon).

### Global profile

With `GlobalProfile`, you can define an Assigned Access profile that is applied to every non-admin account that signs in. `GlobalProfile` is useful in scenarios like frontline workers or student devices, where you want to ensure that every user has a consistent experience.

```xml
<Configs>
  <v3:GlobalProfile Id="{GUID}"/>
</Configs>
```

> [!NOTE]
> You can combine a global profile with other profiles. If you assign a user a non-global profile, the global profile won't be applied to that user.

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

Both security and distribution groups are supported. Specify the group type as `ActiveDirectoryGroup`. Use the domain name as the prefix in the name attribute.

```xml
<Config>
  <UserGroup Type="ActiveDirectoryGroup" Name="contoso\groupname" />
  <DefaultProfile Id="{GUID}"/>
</Config>
```

#### Microsoft Entra group

Use the object ID of the Microsoft Entra group. You can find the object ID on the overview page for the group by signing in to the Microsoft Entra admin center and browsing to **Identity** > **Groups** > **All groups**. Specify the group type as `AzureActiveDirectoryGroup`. The kiosk device must have internet connectivity when users that belong to the group sign-in.

```xml
<Config>
  <UserGroup Type="AzureActiveDirectoryGroup" Name="Group_GUID" />
  <DefaultProfile Id="{GUID}"/>
</Config>
```

## Next steps

> [!div class="nextstepaction"]
> Review some practical examples of Assigned Access XML configurations:
>
> [Assigned Access examples](examples.md)
