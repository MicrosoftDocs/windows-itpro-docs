---
title: Start layout XML for desktop editions of Windows 10 (Windows 10)
description: This topic describes the options for customizing Start layout in LayoutModification.xml for Windows 10 desktop editions.
keywords: ["start screen"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Start layout XML for desktop editions of Windows 10 (reference)


**Applies to**

-   Windows 10

>**Looking for consumer information?** See [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)

On Windows 10 for desktop editions, the customized Start works by:

- Windows 10 checks the chosen base default layout, such as the desktop edition and whether Cortana is supported for the country/region.

- Windows 10 reads the LayoutModification.xml file and allows groups to be appended to Start. The groups have the following constraints:
    - 2 groups that are 6 columns wide, or equivalent to the width of 3 medium tiles.
    - 2 medium-sized tile rows in height. Windows 10 ignores any tiles that are pinned beyond the second row. 
    - No limit to the number of apps that can be pinned. There is a theoretical limit of 24 tiles per group (4 small tiles per medium square x 3 columns x 2 rows). 
    
>[!NOTE]
>Using the layout modification XML to configure Start is not supported with roaming user profiles. For more information, see [Deploy Roaming User Profiles](https://technet.microsoft.com/en-US/library/jj649079.aspx).

>[!NOTE]
>Using the layout modification XML to configure Start is not supported with roaming user profiles. For more information, see [Deploy Roaming User Profiles](https://technet.microsoft.com/library/jj649079.aspx).

## LayoutModification XML

IT admins can provision the Start layout using a LayoutModification.xml file. This file supports several mechanisms to modify or replace the default Start layout and its tiles. The easiest method for creating a LayoutModification.xml file is by using the Export-StartLayout cmdlet; see [Customize and export Start layout](customize-and-export-start-layout.md) for instructions.

>[!NOTE]  
>To make sure the Start layout XML parser processes your file correctly, follow these guidelines when working with your LayoutModification.xml file:
>- Do not leave spaces or white lines in between each element.
>- Do not add comments inside the StartLayout node or any of its children elements.
>- Do not add multiple rows of comments.

The following table lists the supported elements and attributes for the LayoutModification.xml file.

| Element | Attributes | Description |
| --- | --- | --- |
| LayoutModificationTemplate | xmlns</br>xmlns:defaultlayout</br>xmlns:start</br>Version | Use to describe the changes to the default Start layout |
| [LayoutOptions](#layoutoptions)</br></br>Parent:</br>LayoutModificationTemplate | StartTileGroupsColumnCount</br>FullScreenStart | Use to specify:</br>- Whether to use full screen Start on the desktop</br>- The number of tile columns in the Start menu |
| RequiredStartGroupsCollection</br></br>Parent:</br>LayoutModificationTemplate | n/a | Use to contain collection of RequiredStartGroups |
| [RequiredStartGroups](#requiredstartgroups)</br></br>Parent:</br>RequiredStartGroupsCollection | Region | Use to contain the AppendGroup tags, which represent groups that can be appended to the default Start layout |
| [AppendGroup](#appendgroup)</br></br>Parent:</br>RequiredStartGroups | Name | Use to specify the tiles that need to be appended to the default Start layout |
| [start:Tile](#specify-start-tiles)</br></br>Parent:</br>AppendGroup | AppUserModelID</br>Size</br>Row</br>Column | Use to specify any of the following:</br>- A Universal Windows app</br>- A Windows 8 or Windows 8.1 app |
| start:DesktopApplicationTile</br></br>Parent:</br>AppendGroup | DesktopApplicationID</br>DesktopApplicationLinkPath</br>Size</br>Row</br>Column | Use to specify any of the following:</br>- A Windows desktop application with a known AppUserModelID</br>- An application in a known folder with a link in a legacy Start Menu folder</br>- A Windows desktop application link in a legacy Start Menu folder</br>- A Web link tile with an associated .url file that is in a legacy Start Menu folder |
| start:SecondaryTile</br></br>Parent:</br>AppendGroup | AppUserModelID</br>TileID</br>Arguments</br>DisplayName</br>Square150x150LogoUri</br>ShowNameOnSquare150x150Logo</br>ShowNameOnWide310x150Logo</br>Wide310x150LogoUri</br>BackgroundColor</br>ForegroundText</br>IsSuggestedApp</br>Size</br>Row</br>Column | Use to pin a Web link through a Microsoft Edge secondary tile |
| TopMFUApps</br></br>Parent:</br>LayoutModificationTemplate | n/a | Use to add up to 3 default apps to the frequently used apps section in the system area |
| Tile</br></br>Parent:</br>TopMFUApps | AppUserModelID | Use with the TopMFUApps tags to specify an app with a known AppUserModelID |
| DesktopApplicationTile</br></br>Parent:</br>TopMFUApps | LinkFilePath | Use with the TopMFUApps tags to specify an app without a known AppUserModelID |
| AppendOfficeSuite</br></br>Parent:</br>LayoutModificationTemplate | n/a | Use to add the in-box installed Office suite to Start</br></br>Do not use this tag with AppendDownloadOfficeTile |
| AppendDownloadOfficeTile</br></br>Parent:</br>LayoutModificationTemplate | n/a | Use to add a specific **Download Office** tile to a specific location in Start</br></br>Do not use this tag with AppendOfficeSuite |

### LayoutOptions

New devices running Windows 10 for desktop editions will default to a Start menu with 2 columns of tiles unless boot to tablet mode is enabled. Devices with screens that are under 10" have boot to tablet mode enabled by default. For these devices, users see the full screen Start on the desktop. You can adjust the following features:

- Boot to tablet mode can be set on or off. 
- Set full screen Start on desktop to on or off. 
    To do this, add the LayoutOptions element in your LayoutModification.xml file and set the FullScreenStart attribute to true or false. 
- Specify the number of columns in the Start menu to 1 or 2. 
    To do this, add the LayoutOptions element in your LayoutModification.xml file and set the StartTileGroupsColumnCount attribute to 1 or 2. 

The following example shows how to use the LayoutOptions element to specify full screen Start on the desktop and to use 1 column in the Start menu:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <LayoutOptions
        StartTileGroupsColumnCount="1"
        FullScreenStart="true"
    />
</LayoutModificationTemplate>
```

For devices being upgraded to Windows 10 for desktop editions:

- Devices being upgraded from Windows 7 will default to a Start menu with 1 column.
- Devices being upgraded from Windows 8.1 or Windows 8.1 Upgrade will default to a Start menu with 2 columns.

### RequiredStartGroups

The **RequiredStartGroups** tag contains **AppendGroup** tags that represent groups that you can append to the default Start layout. 

>[!IMPORTANT]
>For Windows 10 for desktop editions, you can add a maximum of two (2) **AppendGroup** tags per **RequiredStartGroups** tag. 

You can also assign regions to the append groups in the **RequiredStartGroups** tag's using the optional **Region** attribute or you can use the multivariant capabilities in Windows provisioning. If you are using the **Region** attribute, you must use a two-letter country code to specify the country/region that the append group(s) apply to. To specify more than one country/region, use a pipe ("|") delimiter as shown in the following example: 

```XML
<RequiredStartGroups
      Region="DE|ES|FR|GB|IT|US">
```

If the country/region setting for the Windows device matches a **RequiredStartGroups**, then the tiles laid out within the **RequiredStartGroups** is applied to Start. 

If you specify a region-agnostic **RequiredStartGroups** (or one without the optional Region attribute) then the region-agnostic **RequiredStartGroups** is applied to Start.

### AppendGroup

**AppendGroup** tags specify a group of tiles that will be appended to Start. There is a maximum of two **AppendGroup** tags allowed per **RequiredStartGroups** tag. 

For Windows 10 for desktop editions, AppendGroup tags contain start:Tile, start:DesktopApplicationTile, or start:SecondaryTile tags. 

You can specify any number of tiles in an **AppendGroup**, but you cannot specify a tile with a **Row** attribute greater than 4. The Start layout does not support overlapping tiles. 

### Specify Start tiles

To pin tiles to Start, partners must use the right kind of tile depending on what you want to pin. 

#### Tile size and coordinates

All tile types require a size (**Size**) and coordinates (**Row** and **Column**) attributes regardless of the tile type that you use when prepinning items to Start.

The following table describes the attributes that you must use to specify the size and location for the tile.

| Attribute | Description |
| --- | --- |
| Size | Determines how large the tile will be.</br></br>- 1x1 - small tile</br>- 2x2 - medium tile</br>- 4x2 - wide tile</br>- 4x4 - large tile |
| Row | Specifies the row where the tile will appear. |
| Column | Specifies the column where the tile will appear. |

For example, a tile with Size="2x2", Row="2", and Column="2" results in a tile located at (2,2) where (0,0) is the top-left corner of a group.

#### start:Tile

You can use the **start:Tile** tag to pin any of the following apps to Start:

- A Universal Windows app
- A Windows 8 app or Windows 8.1 app 

To specify any one of these apps, you must set the **AppUserModelID** attribute to the application user model ID that's associated with the corresponding app. 

The following example shows how to pin the Microsoft Edge Universal Windows app:

 ```XML
 <start:Tile
          AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
          Size="2x2"
          Row="0"
          Column="0"/>
 ```

#### start:DesktopApplicationTile

You can use the **start:DesktopApplicationTile** tag to pin a Windows desktop application to Start. There are two ways you can specify a Windows desktop application: 

- By using a path to a shortcut link (.lnk file) to a Windows desktop application.

    To pin a Windows desktop application through this method, you must first add the .lnk file in the specified location when the device first boots. 

    The following example shows how to pin the Command Prompt:

    ```XML
    <start:DesktopApplicationTile
          DesktopApplicationLinkPath="%appdata%\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk"
          Size="2x2"
          Row="0"
          Column="4"/>
    ```
    
    You must set the **DesktopApplicationLinkPath** attribute to the .lnk file that points to the Windows desktop application. The path also supports environment variables.

    If you are pointing to a third-party Windows desktop application, you must put the .lnk file in a legacy Start Menu directory before first boot; for example, "%APPDATA%\Microsoft\Windows\Start Menu\Programs\" or the all users profile "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\".

- By using the application's application user model ID, if this is known. If the Windows desktop application doesn't have one, use the shortcut link option.

    To pin a Windows desktop application through this method, you must set the **DesktopApplicationID** attribute to the application user model ID that's associated with the corresponding app. 

    The following example shows how to pin the Internet Explorer Windows desktop application:

    ```XML
    <start:DesktopApplicationTile
          DesktopApplicationID="Microsoft.Windows.Explorer"
          Size="2x2"
          Row="0"
          Column="2"/>
    ```
    

You can also use the **start:DesktopApplicationTile** tag as one of the methods for pinning a Web link to Start. The other method is to use a Microsoft Edge secondary tile.

To pin a legacy .url shortcut to Start, you must create .url file (right-click on the desktop, select **New** > **Shortcut**, and then type a Web URL). You must add this .url file in a legacy Start Menu directory before first boot; for example, `%APPDATA%\Microsoft\Windows\Start Menu\Programs\` or the all users profile `%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\`.

The following example shows how to create a tile of the Web site's URL, which you can treat similarly to a Windows desktop application tile:

```XML
<start:DesktopApplicationTile
          DesktopApplicationID="http://www.contoso.com/"
          Size="2x2"
          Row="0"
          Column="2"/>
```

#### start:SecondaryTile

You can use the **start:SecondaryTile** tag to pin a Web link through a Microsoft Edge secondary tile. This method doesn't require any additional action compared to the method of using legacy .url shortcuts (through the start:DesktopApplicationTile tag).

The following example shows how to create a tile of the Web site's URL using the Microsoft Edge secondary tile:

```XML
<start:SecondaryTile
          AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
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
          Column="4"/>
```

The following table describes the other attributes that you can use with the **start:SecondaryTile** tag in addition to *8Size**, **Row**, and *8Column**.

| Attribute | Required/optional | Description |
| --- | --- | --- |
| AppUserModelID | Required | Must point to Microsoft Edge. |
| TileID | Required | Must uniquely identify your Web site tile. |
| Arguments | Required | Must contain the URL of your Web site. |
| DisplayName | Required | Must specify the text that you want users to see. |
| Square150x150LogoUri | Required | Specifies the logo to use on the 2x2 tile. |
| Wide310x150LogoUri | Optional | Specifies the logo to use on the 4x2 tile. |
| ShowNameOnSquare150x150Logo | Optional | Specifies whether the display name is shown on the 2x2 tile. The values you can use for this attribute are true or false. |
| ShowNameOnWide310x150Logo | Optional | Specifies whether the display name is shown on the 4x2 tile. The values you can use for this attribute are true or false. |
| BackgroundColor | Optional | Specifies the color of the tile. You can specify the value in ARGB hexadecimal (for example, #FF112233) or specify "transparent". |
| ForegroundText | Optional | Specifies the color of the foreground text. Set the value to either "light" or "dark". |

Secondary Microsoft Edge tiles have the same size and location behavior as a Universal Windows app, Windows 8 app, or Windows 8.1 app.

#### TopMFUApps

You can use the **TopMFUApps** tag to add up to 3 default apps to the frequently used apps section in the system area, which delivers system-driven lists to the user including important or frequently accessed system locations and recently installed apps. 

You can use this tag to add:

- Apps with an **AppUserModelID** attribute - This includes Windows desktop applications that have a known application user model ID. Use a **Tile** tag with the **AppUserModelID** attribute set to the app's application user model ID.
- Apps without a **AppUserModelID** attribute - For these apps, you must create a .lnk file that points to the installed app and place the .lnk file in the `%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs` directory. Use a **DesktopApplicationTile** tag with the **LinkFilePath** attribute set to the .lnk file name and path.

The following example shows how to modify your LayoutModification.xml file to add both kinds of apps to the system area in Start:

 ```XML
 <LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <TopMFUApps>
        <Tile AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
        <Tile AppUserModelID="Microsoft.Getstarted_8wekyb3d8bbwe!App" />
        <DesktopApplicationTile LinkFilePath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Win32App.lnk" />
  </TopMFUApps>
</LayoutModificationTemplate>
```

#### AppendOfficeSuite

You can use the **AppendOfficeSuite** tag to add the in-box installed Office suite of apps to Start.

The following example shows how to add the **AppendOfficeSuite** tag to your LayoutModification.xml file to append the full Universal Office suite to Start:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <AppendOfficeSuite/>
</LayoutModificationTemplate>
```

#### AppendDownloadOfficeTile

You can use the **AppendDownloadOfficeTile** tag to append the Office trial installer to Start. This tag adds the Download Office tile to Start and the download tile will appear at the bottom right-hand side of the second group.

The following example shows how to add the **AppendDownloadOfficeTile** tag to your LayoutModification.xml file:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
    <AppendDownloadOfficeTile/>
</LayoutModificationTemplate>
```

## Sample LayoutModification.xml

The following sample LayoutModification.xml shows how you can configure the Start layout for devices running Windows 10 for desktop editions:

```XML
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
  <RequiredStartGroupsCollection>
    <RequiredStartGroups
      Region="DE|ES|FR|GB|IT|US">
	  <AppendGroup
        Name="Fabrikam Group 1">
        <start:Tile
          AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word"
          Size="2x2"
          Row="0"
          Column="0"/>
        <start:DesktopApplicationTile
          DesktopApplicationID="Microsoft.Windows.Explorer"
          Size="2x2"
          Row="0"
          Column="2"/>
        <start:Tile
          AppUserModelID="Microsoft.Office.Excel_8wekyb3d8bbwe!microsoft.excel"
          Size="2x2"
          Row="0"
          Column="4"/>
      </AppendGroup>	  
      <AppendGroup
        Name="Fabrikam Group 2">
        <start:Tile
          AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader"
          Size="2x2"
          Row="0"
          Column="0"/>
        <start:DesktopApplicationTile
          DesktopApplicationID="http://www.bing.com/"
          Size="2x2"
          Row="0"
          Column="2"/>
        <start:DesktopApplicationTile
          DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk"
          Size="2x2"
          Row="0"
          Column="4"/>
      </AppendGroup>
    </RequiredStartGroups>
    <RequiredStartGroups>
      <AppendGroup
        Name="Fabrikam Group 1">
        <start:Tile
          AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word"
          Size="2x2"
          Row="0"
          Column="0"/>
		<start:SecondaryTile
          AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge"
          TileID="FabrikamWeblinkTile"
          Arguments="http://www.fabrikam.com"
          DisplayName="Fabrikam"
          Square150x150LogoUri="ms-appx:///Assets/MicrosoftEdgeSquare150x150.png"
          ShowNameOnSquare150x150Logo="true"
		  BackgroundColor="#FF112233"
		  Size="2x2"
          Row="0"
          Column="2"/>
      </AppendGroup>	  
    </RequiredStartGroups>
  </RequiredStartGroupsCollection> 
  <TopMFUApps>
    <Tile AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
  </TopMFUApps>  
</LayoutModificationTemplate>
```

## Use Windows Provisioning multivariant support

The Windows Provisioning multivariant capability allows you to declare target conditions that, when met, supply specific customizations for each variant condition. For Start customization, you can create specific layouts for each variant that you have. To do this, you must create a separate LayoutModification.xml file for each variant that you want to support and then include these in your provisioning package. For more information on how to do this, see [Create a provisioning package with multivariant settings](https://msdn.microsoft.com/library/windows/hardware/dn916108.aspx).

The provisioning engine chooses the right customization file based on the target conditions that were met, adds the file in the location that's specified for the setting, and then uses the specific file to customize Start. To differentiate between layouts, you can add modifiers to the LayoutModification.xml filename such as "LayoutCustomization1". Regardless of the modifier that you use, the provsioning engine will always output "LayoutCustomization.xml" so that the operating system has a consistent file name to query against.

For example, if you want to ensure that there's a specific layout for a certain condition, you can:
1. Create a specific layout customization file and then name it LayoutCustomization1.xml.
2. Include the file as part of your provisioning package.
3. Create your multivariant target and reference the XML file within the target condition in the main customization XML file.

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

You must repeat this process for all variants that you want to support so that each variant can have a distinct layout for each of the conditions and targets that need to be supported. For example, if you add a **Language** condition, you can create a Start layout that has its own localized group.

## Add the LayoutModification.xml file to the device

Once you have created your LayoutModification.xml file to customize devices that will run Windows 10 for desktop editions, you can use Windows ICD methods to add the XML file to the device. 

1. In the **Available customizations** pane, expand **Runtime settings**, select **Start** and then click the **StartLayout** setting.
2. In the middle pane, click **Browse** to open File Explorer.
3. In the File Explorer window, navigate to the location where you saved your LayoutModification.xml file. 
4. Select the file and then click **Open**. 

This should set the value of **StartLayout**. The setting appears in the **Selected customizations** pane.

>[!NOTE]
>There is currently no way to add the .url and .lnk files through Windows ICD. 

Once you have created the LayoutModification.xml file and it is present in the device, the system overrides the base default layout and any Unattend settings used to customize Start. 












## Related topics


[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)

[Configure Windows 10 taskbar](configure-windows-10-taskbar.md)

[Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)

[Customize Windows 10 Start and taskbar with ICD and provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)

[Customize Windows 10 Start with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)

[Changes to Group Policy settings for Windows 10 Start](changes-to-start-policies-in-windows-10.md)

 

 





