---
title: Customize the Start layout
description: Learn how to customize the Windows Start layout, export its configuration, and deploy the customization to other devices.
ms.topic: how-to
ms.date: 04/10/2024
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Customize the Start layout

Implementing a customized Start layout across your organization's devices empowers administrators with direct control over the Start menu configuration. With this capability, you can specify a tailored set of pinned applications, arranged according to preference. Utilize this feature to strategically pin desired apps, eliminate default pinned apps, and organize the application display to align with operational requirements.

This article describes how to customize the Start layout, export its configuration, and deploy the customization to other devices.

> [!NOTE]
> If you are looking for OEM information, see the article [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

## Customization process

To customize the Windows Start layout and deploy its configuration to other devices, follow these steps:

1. Configure the Start layout to meet your requirements from a reference device
1. Export the Start layout configuration to a configuration file
1. Deploy the configuration file using one of the available options

> [!TIP]
> While you can create your own configuration file, it's easier and faster to export the layout from an existing device.

### Customize the Start layout on a reference device

To prepare a Start layout for export, customize the Start layout on a reference device. To prepare a reference device:

1. Set up a device on which to customize the Start layout, which should have the operating system that is installed on the users' devices
1. Install all apps and services that the Start layout should display
1. Create a new user account that you use to customize the Start layout

To customize Start:

::: zone pivot="windows-10"

1. Sign in to the reference device with the user account that you created
1. Customize the Start layout as you want users to see it by using the following techniques:

    - **Pin apps to Start**. From Start, type the name of the app. When the app appears in the search results, right-click the app and select **Pin to Start**
      To view all apps, select **All apps**. Right-click any app, and pin or unpin it from Start
    - **Unpin apps** that you don't want to display. To unpin an app, right-click the app, and then select **Unpin from Start**
    - **Drag existing apps** on Start to reorder or group them
    - **Resize tiles**. To resize tiles, right-click the tile and then select **Resize**
    - **Create your own app groups**. Drag the apps to an empty area. To name a group, select above the group of tiles and then type the name in the **Name group** field that appears above the group

> [!IMPORTANT]
> If the Start layout includes tiles for apps that are not installed on the target device, the tiles for those apps will be blank. The blank tiles persist until the next time the user signs in, at which time the blank tiles are removed.

::: zone-end

::: zone pivot="windows-11"

1. Sign in to the reference device with the user account that you created
1. Customize the **Pinned** section of the Start layout as you want users to see it by using the following techniques:

    - **Pin apps to Start**. From Start, type the name of the app. When the app appears in the search results, right-click the app and select **Pin to Start**
        To view all apps, select **All apps**. Right-click any app, and pin or unpin it from Start
    - **Unpin apps** that you don't want to display. To unpin an app, right-click the app, and then select **Unpin from Start**
    - **Drag existing apps** on Start to reorder them

> [!IMPORTANT]
> If the Start layout includes pins for apps that aren't installed on the target device, the pins for those apps aren't created until the apps are installed.

::: zone-end

### Export the Start layout configuration

Once the Start layout is configured to meet your requirements, use the Windows PowerShell [Export-StartLayout][PS-1] cmdlet to export the existing layout to a configuration file.

::: zone pivot="windows-10"
The exported customization consists of an XML file containing a list of tiles that define the Start layout.

> [!NOTE]
> You can find the default Start layout template in `%LOCALAPPDATA%\Microsoft\windows\Shell\DefaultLayouts.xml`.

To export the Start layout to an XML file:

1. While signed in with the same account that you used to customize Start, create a folder to save the `.xml` file. For example, create the `C:\Layouts` folder
1. Open Windows PowerShell
1. Run the following cmdlet:

    ```powershell
    Export-StartLayout -UseDesktopApplicationID -Path "C:\Layouts\LayoutModification.xml"
    ```

1. (Optional) Edit the XML file to add [a taskbar configuration](../taskbar/configure.md) or to make any modifications to the Start layout

::: zone-end

::: zone pivot="windows-11"

The exported customization consists of a JSON file containing a list of pins that define the Start layout.

To export the Start layout to a JSON file:

1. While signed in with the same account that you used to customize Start, create a folder to save the `.json` file. For example, create the `C:\Layouts` folder
1. Open Windows PowerShell
1. Run the following cmdlet:

    ```powershell
    Export-StartLayout -Path "C:\Layouts\LayoutModification.json"
    ```

::: zone-end

### Start layout example

Here you can find an example of Start layout that you can use as a reference:

[!INCLUDE [example-start-layout](includes/example-start-layout.md)]

### Change the configuration file

::: zone pivot="windows-10"

> [!CAUTION]
> When you make changes to the exported layout, be aware that the XML file must adhere to an [XML schema definition (XSD)](xsd.md).
>
> The XML file requires the following order for tags directly under the `LayoutModificationTemplate` node:
>
> 1. `LayoutOptions`
> 1. `DefaultLayoutOverride`
> 1. `RequiredStartGroupsCollection`
> 1. `AppendDownloadOfficeTile` - OR - `AppendOfficeSuite` (only one Office option can be used at a time)
> 1. `AppendOfficeSuiteChoice`
> 1. `TopMFUApps`
> 1. `CustomTaskbarLayoutCollection`
> 1. `InkWorkspaceTopApps`
> 1. `StartLayoutCollection`
>
> Comments are not supported in the `LayoutModification.xml` file.

> [!NOTE]
> `RequiredStartGroupsCollection` and `AppendGroup` syntax only apply when the `Import-StartLayout` method is used for building and deploying Windows images.

You can edit the XML file to make any modifications to the Start layout. For example, you can include  `<CustomTaskbarLayoutCollection>` to include the Taskbar customization.

If the Start layout that you export contains tiles for desktop apps or URL links, `Export-StartLayout` uses `DesktopApplicationLinkPath` in the resulting file. Use a text or XML editor to change `DesktopApplicationLinkPath` to `DesktopApplicationID`.

For scripts and application tile pins to work correctly, follow these rules:

- Executable files and scripts should be listed in `%ProgramFiles%` or wherever the installer of the app places them
- Shortcuts that pin to Start should be placed in `%ProgramData%\Microsoft\Windows\Start Menu\Programs`
- If you place executable files or scripts in the `%ProgramData%\Microsoft\Windows\Start Menu\Programs` folder, they don't pin to Start

> [!NOTE]
> All devices that you apply the Start layout to, must have the apps and other shortcuts present on the local system in the same location as the source for the Start layout.

After you export the layout, decide whether you want to apply a *full* Start layout or a *partial* Start layout:

- When a full Start layout is applied, the users can't pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they can't pin any apps to Start
- When a partial Start layout is applied, the contents of the specified tile groups can't be changed, but users can move those groups, and can also create and customize their own groups

### Supported elements and attributes

| Element | Description |
|--|--|
| `LayoutModificationTemplate` | Use to describe the changes to the default Start layout |
| [LayoutOptions](#layoutoptions) | Use to specify:</br>- Whether to use full screen Start on the desktop</br>- The number of tile columns in the Start menu |
| `RequiredStartGroupsCollection` | Use to contain collection of `RequiredStartGroups` |
| [RequiredStartGroups](#requiredstartgroups) | Use to contain the `AppendGroup` tags, which represent groups that can be appended to the default Start layout |
| [AppendGroup](#appendgroup) | Use to specify the tiles that need to be appended to the default Start layout |
| [start:Tile](#specify-start-tiles) | Use to specify a UWP app |
| `start:Folder`| Use to specify a folder of icons; can include [Tile](#starttile), [SecondaryTile](#startsecondarytile), and [DesktopApplicationTile](#startdesktopapplicationtile) |
| [start:DesktopApplicationTile](#startdesktopapplicationtile) | Use to specify any of the following:</br>- A Windows desktop application with a known AppUserModelID</br>- An application in a known folder with a link in a legacy Start Menu folder</br>- A Windows desktop application link in a legacy Start Menu folder</br>- A Web link tile with an associated `.url` file that is in a legacy Start Menu folder |
| [start:SecondaryTile](#startsecondarytile) | Use to pin a Web link through a Microsoft Edge secondary tile |
| [AppendOfficeSuite](#appendofficesuite) | Use to add the in-box installed Office suite to Start. For more information, see [Customize the Office suite of tiles](/windows-hardware/customize/desktop/customize-start-layout#customize-the-office-suite-of-tiles).</br></br>Don't use this tag with `AppendDownloadOfficeTile` |
| [AppendDownloadOfficeTile](#appenddownloadofficetile) | Use to add a specific **Download Office** tile to a specific location in Start</br></br>Do not use this tag with `AppendOfficeSuite` |

#### LayoutOptions

New devices running Windows 10 for desktop editions default to a Start menu with two columns of tiles unless boot to tablet mode is enabled. Devices with screens that are under 10" have boot to tablet mode enabled by default. For these devices, users see the full screen Start on the desktop. You can adjust the following features:

- Boot to tablet mode can be set on or off
- Set full screen Start on desktop to on or off
  To do this, add the `LayoutOptions` element in your LayoutModification.xml file and set the FullScreenStart attribute to true or false
- Specify the number of columns in the Start menu to 1 or 2
  To do this, add the `LayoutOptions` element in your LayoutModification.xml file and set the StartTileGroupsColumnCount attribute to 1 or 2

The following example shows how to use the `LayoutOptions` element to specify full screen Start on the desktop and to use one column in the Start menu:

```xml
<LayoutOptions
    StartTileGroupsColumnCount="1"
    FullScreenStart="true"
/>
```

#### RequiredStartGroups

The `RequiredStartGroups` tag contains `AppendGroup` tags that represent groups that you can append to the default Start layout.

The groups have the following constraints:

- Two groups that are six columns wide, or equivalent to the width of three medium tiles
- Two medium-sized tile rows in height. Windows ignores any tiles that are pinned beyond the second row
- No limit to the number of apps that can be pinned. There's a theoretical limit of 24 tiles per group (four small tiles per medium square x three columns x two rows)

>[!IMPORTANT]
>You can add a maximum of two `AppendGroup` tags per `RequiredStartGroups` tag.

You can also assign regions to the append groups in the `RequiredStartGroups` tag's using the optional `Region` attribute or you can use the multivariant capabilities in Windows provisioning. If you're using the `Region` attribute, you must use a two-letter country code to specify the country/region that the append group(s) apply to. To specify more than one country/region, use a pipe (`|`) delimiter as shown in the following example:

```XML
<RequiredStartGroups
      Region="DE|ES|FR|GB|IT|US">
```

- If the country/region setting for the Windows device matches a `RequiredStartGroups`, then the tiles laid out within the `RequiredStartGroups` is applied to Start
- If you specify a region-agnostic `RequiredStartGroups` (or one without the optional Region attribute), then the region-agnostic `RequiredStartGroups` is applied to Start

#### AppendGroup

`AppendGroup` tags specify a group of tiles to append to Start. There's a maximum of two `AppendGroup` tags allowed per `RequiredStartGroups` tag.

For Windows 10 for desktop editions, AppendGroup tags contain `start:Tile`, `start:DesktopApplicationTile`, or `start:SecondaryTile` tags.

You can specify any number of tiles in an `AppendGroup`, but you can't specify a tile with a `Row` attribute greater than one. The Start layout doesn't support overlapping tiles.

#### Specify Start tiles

To pin tiles to Start, partners must use the right tile depending on what you want to pin.

#### Tile size and coordinates

All tile types require a size (`Size`) and coordinates (`Row` and `Column`) attributes, regardless of the tile type that you use when prepinning items to Start.

The following table describes the attributes that you must use to specify the size and location for the tile.

| Attribute | Description |
| --- | --- |
| `Size` | Determines how large the tile is.</br></br>- 1x1 - small tile</br>- 2x2 - medium tile</br>- 4x2 - wide tile</br>- 4x4 - large tile |
| `Row` | Specifies the row where the tile appears. |
| `Column` | Specifies the column where the tile appears. |

For example, a tile with `Size="2x2"`, `Row="2"`, and `Column="2"` results in a tile located at (2,2) where (0,0) is the top-left corner of a group.

#### start:Tile

You can use the `start:Tile` tag to pin a UWP app to Start. You must set the `AppUserModelID` attribute to the application user model ID (AUMID) of the corresponding app.

#### start:DesktopApplicationTile

You can use the `start:DesktopApplicationTile` tag to pin a Windows desktop application to Start. There are two ways you can specify a Windows desktop application:

- Use a path to a shortcut link (.lnk file) to a Windows desktop application.

  >[!NOTE]
  >Use `DesktopApplicationID` rather than `DesktopApplicationLinkPath` if the application is installed after the user's first sign-in.

  To pin a Windows desktop application through this method, you must first add the `.lnk` file in the specified location when the device first boots.

  The following example shows how to pin the Command Prompt:

  ```XML
  <start:DesktopApplicationTile
          DesktopApplicationLinkPath="%appdata%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"
          Size="2x2"
          Row="0"
          Column="4"/>
  ```

  You must set the `DesktopApplicationLinkPath` attribute to the .lnk file that points to the Windows desktop application. The path also supports environment variables.

  If you're pointing to a third-party Windows desktop application and the layout is being applied before the first boot, you must put the `.lnk` file in a legacy Start Menu directory before first boot. For example, `%APPDATA%\Microsoft\Windows\Start Menu\Programs\` or the all users profile `%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\`.

- Use the AUMID, if this is known. If the Windows desktop application doesn't have one, use the shortcut link option.

Learn how to [Find the Application User Model ID of an installed app](../store/find-aumid.md).

  The following example shows how to pin the File Explorer Windows desktop application:

  ```XML
    <start:DesktopApplicationTile
          DesktopApplicationID="Microsoft.Windows.Explorer"
          Size="2x2"
          Row="0"
          Column="2"/>
  ```

You can also use the `start:DesktopApplicationTile` tag as one of the methods for pinning a Web link to Start. The other method is to use a Microsoft Edge secondary tile.

To pin a legacy `.url` shortcut to Start, you must create a `.url` file (right-click on the desktop, select **New** > **Shortcut**, and then type a Web URL). You must add this `.url` file in a legacy Start Menu directory before first boot; for example, `%APPDATA%\Microsoft\Windows\Start Menu\Programs\` or the all users profile `%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\`.

The following example shows how to create a tile of the Web site's URL, which you can treat similarly to a Windows desktop application tile:

```XML
<start:DesktopApplicationTile DesktopApplicationID="http://www.contoso.com/"
Size="2x2"
Row="0"
Column="2"/>
```

>[!NOTE]
>`Export-StartLayout` uses `DesktopApplicationLinkPath` for the .url shortcut. You must change `DesktopApplicationLinkPath` to `DesktopApplicationID` and provide the URL.

#### start:SecondaryTile

You can use the `start:SecondaryTile` tag to pin a web link through a Microsoft Edge secondary tile. This method doesn't require more actions compared to the method of using legacy `.url` shortcuts (through the `start:DesktopApplicationTile` tag).

The following example shows how to create a tile of the Web site's URL using the Microsoft Edge secondary tile:

```XML
<start:SecondaryTile AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
TileID="MyWeblinkTile"
Arguments="http://msn.com"
DisplayName="MySite"
Square150x150LogoUri="ms-appx:///Assets/MicrosoftEdgeSquare150x150.png"

Wide310x150LogoUri="ms-appx:///Assets/MicrosoftEdgeWide310x150.png"
ShowNameOnSquare150x150Logo="true"
ShowNameOnWide310x150Logo="false"
BackgroundColor="#FF112233"
Size="2x2"
Row="0"
Column="4" />
```

The following table describes the other attributes that you can use with the `start:SecondaryTile` tag in addition to `Size`, `Row`, and `Column`.

| Attribute | Required/optional | Description |
| --- | --- | --- |
| `AppUserModelID` | Required | Must point to Microsoft Edge. |
| `TileID` | Required | Must uniquely identify your Web site tile. |
| `Arguments` | Required | Must contain the URL of your Web site. |
| `DisplayName` | Required | Must specify the text that you want users to see. |
| `Square150x150LogoUri` | Required | Specifies the logo to use on the 2x2 tile. |
| `Wide310x150LogoUri` | Optional | Specifies the logo to use on the 4x2 tile. |
| `ShowNameOnSquare150x150Logo` | Optional | Specifies whether the display name is shown on the 2x2 tile. The values you can use for this attribute are true or false. |
| `ShowNameOnWide310x150Logo` | Optional | Specifies whether the display name is shown on the 4x2 tile. The values you can use for this attribute are true or false. |
| `BackgroundColor` | Optional | Specifies the color of the tile. You can specify the value in ARGB hexadecimal (for example, `#FF112233`) or specify `transparent`. |
| `ForegroundText` | Optional | Specifies the color of the foreground text. Set the value to either `light` or `dark`. |

Secondary Microsoft Edge tiles have the same size and location behavior as a Universal Windows app, Windows 8 app, or Windows 8.1 app.

#### AppendOfficeSuite

You can use the `AppendOfficeSuite` tag to add the in-box installed Office suite of apps to Start.

>[!NOTE]
>The OEM must have installed Office for this tag to work.

The following example shows how to add the `AppendOfficeSuite` tag to your `LayoutModification.xml` file to append the Office suite to Start:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <AppendOfficeSuite/>
</LayoutModificationTemplate>
```

#### AppendOfficeSuiteChoice

You have two options in this tag:

- `<AppendOfficeSuiteChoice Choice="DesktopBridgeSubscription"/>`
- `<AppendOfficeSuiteChoice Choice="DesktopBridge"/>`

Use `Choice=DesktopBridgeSubscription` on devices that have Office 365 preinstalled. This sets the heading of the Office suite of tiles to `Office 365`, to highlight the Office 365 apps that you've made available on the device.

Use `Choice=DesktopBridge` on devices shipping with [perpetual licenses for Office](/archive/blogs/ausoemteam/choosing-the-right-office-version-for-your-customers). This sets the heading of the Office suite of tiles to **Create**.

For more information, see [Customize the Office suite of tiles](/windows-hardware/customize/desktop/customize-start-layout#customize-the-office-suite-of-tiles).

#### AppendDownloadOfficeTile

You can use the `AppendDownloadOfficeTile` tag to append the Office trial installer to Start. This tag adds the **Download Office** tile to Start and the download tile will appear at the bottom right-hand side of the second group.

>[!NOTE]
>The OEM must have installed the Office trial installer for this tag to work.

The following example shows how to add the `AppendDownloadOfficeTile` tag to your LayoutModification.xml file:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <AppendDownloadOfficeTile/>
</LayoutModificationTemplate>
```

#### Configure a partial Start layout

:::row:::
:::column span="2":::

A partial Start layout enables you to add one or more customized tile groups to users' Start screens or menus, while still allowing users to make changes to other parts of the Start layout. All groups that you add are *locked*, meaning users can't change the contents of those tile groups, however users can change the location of those groups. Locked groups are identified with an icon, as shown in the following image.

:::column-end:::
:::column span="2":::

:::image type="content" source="images/windows-10-partial-layout.png" alt-text="Screenshot of the Windows 10 Start menu with partial layout." lightbox="images/windows-10-partial-layout.png":::

:::column-end:::
:::row-end:::

When a partial Start layout is applied for the first time, the new groups are added to the users' existing Start layouts. If an app tile is in both an existing group and in a new locked group, the duplicate app tile is removed from the existing (unlocked) group.

If you apply a partial Start layout to a device with an existing Start layout applied, groups that were added previously are removed, and the groups in the new layout are added.

> [!NOTE]
> If you remove the policy setting, the groups remain on the devices but become unlocked.

To configure a partial Start screen layout, modify the `<DefaultLayoutOverride>` element as follows:

```xml
<DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
```

::: zone-end

::: zone pivot="windows-11"

You can edit the JSON file to make any modifications to the **Pinned** section of the Start layout. For example, you can change the order of the pinned elements, or add new apps.

1. Open the `LayoutModification.json` file in a JSON editor, such as Visual Studio Code or Notepad
1. The `pinnedList` section includes all the pins that are applied to the Start layout

You can add more apps to the section using the following keys:

| Key | Description |
|--|--|
| `packagedAppID` | Used for Universal Windows Platform (UWP) apps. To pin a UWP app, use the app's AUMID. |
| `desktopAppID` | Used for desktop apps. To pin a desktop app, use the app's AUMID. If the app doesn't have an AUMID, use the `desktopAppLink` instead. |
| `desktopAppLink` | Used for desktop apps that don't have an associated AUMID. To pin this type of app, use the path to the `.lnk` shortcut that points to the app. |

::: zone-end

Learn how to [Find the Application User Model ID of an installed app](../store/find-aumid.md).

### Deploy the Start layout configuration

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

::: zone pivot="windows-10"

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune-10)

To configure devices with Microsoft Intune, [create a Settings catalog policy](/mem/intune/configuration/settings-catalog) and use one of the following settings:

| Category | Setting name | Value |
|--|--|--|
| **Start** | Start Layout | Content of the XML file|
| **Start** | Start Layout (User) | Content of the XML file|

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [Start CSP][WIN-1]. Use one of the following settings:

| Setting |
|--|
| - **OMA-URI:** `./User/Vendor/MSFT/Policy/Config/Start/`[StartLayout](/windows/client-management/mdm/policy-csp-Start#startlayout)<br>- **String:** <br>- **Value:** content of the XML file |
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Start/`[StartLayout](/windows/client-management/mdm/policy-csp-Start#startlayout)<br>- **Data type:** <br>- **Value:** content of the XML file |

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg-10)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `Policies/Start/StartLayout`
- **Value:** content of the XML file

> [!NOTE]
> The content of the file must be entered as a single line in the `Value` field. Use a text editor to remove any line breaks from the XML file, usually with a function called *join lines*.

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

### Use Windows Provisioning multivariant support

The Windows Provisioning multivariant capability allows you to declare target conditions that, when met, supply specific customizations for each variant condition. For Start customization, you can create specific layouts for each variant that you have. To do this, you must create a separate LayoutModification.xml file for each variant that you want to support and then include these in your provisioning package. For more information on how to do this, see [Create a provisioning package with multivariant settings](../provisioning-packages/provisioning-multivariant.md).

The provisioning engine chooses the right customization file based on the target conditions that were met, adds the file in the location that's specified for the setting, and then uses the specific file to customize Start. To differentiate between layouts, you can add modifiers to the LayoutModification.xml filename such as "LayoutCustomization1". Regardless of the modifier that you use, the provisioning engine will always output "LayoutCustomization.xml" so that the operating system has a consistent file name to query against.

For example, if you want to ensure that there's a specific layout for a certain condition, you can:

1. Create a specific layout customization file and then name it LayoutCustomization1.xml
1. Include the file as part of your provisioning package
1. Create your multivariant target and reference the XML file within the target condition in the main customization XML file

The following example shows what the overall customization file might look like with multivariant support for Start:

```XML
<?xml version="1.0" encoding="utf-8"?>
<WindowsCustomizatons>
  <PackageConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Package-Config.v1.0">
    <ID>{6aaa4dfa-00d7-4aaa-8adf-73c6a7e2501e}</ID>
    <Name>My Provisioning Package</Name>
    <Version>1.0</Version>
    <OwnerType>OEM</OwnerType>
    <Rank>50</Rank>
  </PackageConfig>
  <Settings xmlns="urn:schemas-microsoft-com:windows-provisioning">
    <Customizations>
      <Targets>
        <Target Id="Processor ABC">
          <TargetState>
          <TargetState>
            <Condition Name="ProcessorName" Value="Pattern:.*Celeron.*" />
            <Condition Name="ProcessorType" Value="Pattern:.*I|intel.*" />
          </TargetState>
          </TargetState>
        </Target>
      </Targets>
      <Common>
        <Settings>
          <Policies>
            <AllowBrowser>1</AllowBrowser>
            <AllowCamera>1</AllowCamera>
            <AllowBluetooth>1</AllowBluetooth>
          </Policies>
          <HotSpot>
            <Enabled>1</Enabled>
          </HotSpot>
        </Settings>
      </Common>
      <Variant>
        <TargetRefs>
          <TargetRef Id="Processor ABC" />
        </TargetRefs>
        <Settings>
          <StartLayout>c:\users\<userprofile>\appdata\local\Microsoft\Windows\Shell\LayoutCustomization1.XML</StartLayout>
          <HotSpot>
            <Enabled>1</Enabled>
          </HotSpot>
        </Settings>
      </Variant>
    </Customizations>
  </Settings>
</WindowsCustomizatons>
```

When the condition is met, the provisioning engine takes the XML file and places it in the location that the operating system has set and then the Start subsystem reads the file and applies the specific customized layout.

You must repeat this process for all variants that you want to support so that each variant can have a distinct layout for each of the conditions and targets that need to be supported. For example, if you add a `Language` condition, you can create a Start layout that has its own localized group.

#### [:::image type="icon" source="../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

To configure a device with group policy, use the [Local Group Policy Editor](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc731745(v=ws.10)). To configure multiple devices joined to Active Directory, [create or edit](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc754740(v=ws.11)) a group policy object (GPO) and use one of the following settings:

| Group policy path | Group policy setting | Value |
| - | - | - |
|**Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**| Start Layout | Path to the XML file |
|**User Configuration** > **Administrative Templates** > **Start Menu and Taskbar**| Start Layout | Path to the XML file |

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

The GPO applies the Start and taskbar layout at the next user sign-in. Each time the user signs in, the timestamp of the .xml file with the Start and taskbar layout is checked and if a newer version of the file is available, the settings in the latest version of the file are applied.

---

>[!NOTE]
>You can apply a Start layout to a mounted Windows image, with the PowerShell [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.
>Don't include XML Prologs like \<?xml version="1.0" encoding="utf-8"?\> in the Start layout XML file.

::: zone-end

::: zone pivot="windows-11"

> [!IMPORTANT]
> The JSON file can be applied to devices using the [Start policy CSP][WIN-1] only. It's not possible to apply the JSON file using group policy.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune-11)

To configure devices with Microsoft Intune, [create a Settings catalog policy](/mem/intune/configuration/settings-catalog) and use one of the following settings:

| Category | Setting name | Value |
|--|--|--|
| **Start** | Configure Start Pins | Content of the JSON file|
| **Start** | Configure Start Pins (User) | Content of the JSON file|

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [Start CSP][WIN-1]. Use one of the following settings:

| Setting |
|--|
| - **OMA-URI:** `./User/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start#configurestartpins)<br>- **String:** <br>- **Value:** content of the JSON file |
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start#configurestartpins)<br>- **Data type:** <br>- **Value:** content of the JSON file |

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg-11)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `Policies/Start/ConfigureStartPins`
- **Value:** content of the JSON file

> [!NOTE]
> The content of the file must be entered as a single line in the `Value` field. Use a text editor to remove any line breaks from the JSON file, usually with a function called *join lines*.

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

---

::: zone-end

## User experience

:::row:::
:::column span="2":::

After the settings are applied, sign in to the device. The Start layout that you configured is applied to the Start menu.

::: zone pivot="windows-10"

When a full Start layout is applied with policy settings, users can't pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they can't change the Start layout. When you apply a partial Start layout, the content of the specified tile groups can't be changed, but users can move the groups, and can create and customize their own groups.

::: zone-end

::: zone pivot="windows-11"

When you configure the Start layout with policy settings, you overwrite the entire layout. Users can change the order of the pinned elements, pin, or unpin items. When a user signs in again, the Start layout specified in the policy setting is reapplied, without retaining any user changes.

::: zone-end

:::column-end:::
:::column span="2":::
::: zone pivot="windows-10"
    :::image type="content" source="images/windows-10.png" alt-text="Screenshot of the Windows 10 Start menu." border="false" lightbox="images/windows-10.png":::
::: zone-end

::: zone pivot="windows-11"
    :::image type="content" source="images/windows-11.png" alt-text="Screenshot of the Windows 11 Start menu." border="false" lightbox="images/windows-11.png":::
::: zone-end

:::column-end:::
:::row-end:::

## Next steps

- To learn more about the policy settings available to configure the Start menu using the Configuration Service Provider (CSP) and Group Policy (GPO), see [Start menu policy settings](policy-settings.md).
- To learn how to configure the taskbar, see [Configure the Windows taskbar](../taskbar/index.md).

<!--links-->

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[PS-1]: /powershell/module/startlayout/export-startlayout
[WIN-1]: /windows/client-management/mdm/policy-csp-start
