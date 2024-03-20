---
title: Customize the Start layout
description: Learn how to customize the Windows Start layout, export its configuration, and deploy the customization to other devices.
ms.topic: how-to
ms.date: 03/04/2024
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Customize the Start layout

Implementing a customized Start layout across your organization's devices empowers administrators with direct control over the Start menu configuration. With this capability you can specify a tailored set of pinned applications, arranged according to preference. Utilize this feature to strategically pin desired apps, eliminate default pins, and organize the application display to align with operational requirements.

This article describes how to customize the Start layout, export its configuration, and deploy the customization to other devices.

> [!NOTE]
> If you are looking for OEM information, see the article [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

## Customization process

To customize the Windows Start layout and deploy its configuration to other devices, follow these steps:

1. From a reference device, configure the Start layout to meet your requirements
1. Export the Start layout configuration to a configuration file
1. Deploy the configuration file using one of the available options

> [!TIP]
> While you can create your own configuration file, it's easier and faster to export the layout from an existing device.

### Export the Start layout configuration

Once the Start layout is configured with the pinned apps you require, use the Windows PowerShell [Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet to export the existing layout to a configuration file.

::: zone pivot="windows-10"
The exported customization consists of an XML file containing a list of tiles that define the Start layout. The XML file must adhere to an XML schema definition (XSD). Here's a link to the XSD: [Start XML Schema Definition (XSD)](xsd.md).
::: zone-end

::: zone pivot="windows-11"

1. Create a folder to save the `.json` file. For example, create the `C:\Layouts` folder
1. Open Windows PowerShell
1. Run the following cmdlet:

    ```powershell
    Export-StartLayout -Path "C:\Layouts\LayoutModification.json"
    ```

The exported customization consists of a JSON file containing a list of pins that define the Start layout.

1. Open the `LayoutModification.json` file in a JSON editor, such as Visual Studio Code or Notepad
1. The `pinnedList` section includes all of the pinned apps. Copy the `pinnedList` content in the JSON file

In your JSON file, you can add more apps to this section using the following keys:

| Key | Description |
|--|--|
| packagedAppID | Use this option for Universal Windows Platform apps. To pin a UWP app, use the app's AUMID. |
| desktopAppID | Use this option for unpackaged Win32 apps. To pin a Win32 app, use the app's AUMID. If the app doesn't have an AUMID, then enter the `desktopAppLink` instead. |
| desktopAppLink | Use this option for unpackaged Win32 apps that don't have an associated AUMID. To pin this type of app, use the path to the `.lnk` shortcut that points to the app. |

You can update the JSON file to:

- Change the order of existing apps. The apps in the JSON file are shown on Start in the same order
- Add more apps by entering the app ID

::: zone-end

#### Start layout example

Here you can find an example of Start layout that you can use as a reference:

[!INCLUDE [example-start-layout](includes/example-start-layout.md)]

::: zone pivot="windows-11"

### Deploy the configuration

> [!IMPORTANT]
> The JSON file can be applied to devices using the [Start layout policy CSP](policy-settings.md#start-layout) only. It's not possible to apply the JSON file using group policy.

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Start** | Configure Start Pins | Content of the JSON file|
| **Start** | Configure Start Pins (User) | Content of the JSON file|

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [File Explorer CSP][CSP-1].

| Setting |
|--|
| - **OMA-URI:** `./User/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start?WT.mc_id=Portal-Microsoft_Intune_Workflows#configurestartpins)<br>- **String:** <br>- **Value:** content of the JSON file |
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start?WT.mc_id=Portal-Microsoft_Intune_Workflows#configurestartpins)<br>- **Data type:** <br>- **Value:** content of the JSON file |

::: zone-end

::: zone pivot="windows-10"

The easiest method for creating a customized Start layout to apply to other Windows 10 devices is to set up the Start screen on a test computer and then export the layout.

After you export the layout, decide whether you want to apply a *full* Start layout or a *partial* Start layout.

When a full Start layout is applied, the users can't pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they can't pin any apps to Start.

When [a partial Start layout](#configure-a-partial-start-layout) is applied, the contents of the specified tile groups can't be changed, but users can move those groups, and can also create and customize their own groups.

## Customize the Start screen on your test computer

To prepare a Start layout for export, you simply customize the Start layout on a test computer.

To prepare a test computer:

1. Set up a test computer on which to customize the Start layout. Your test computer should have the operating system that is installed on the users' computers (Windows 10 Pro, Enterprise, or Education). Install all apps and services that the Start layout should display.
1. Create a new user account that you'll use to customize the Start layout.

To customize Start:

1. Sign in to your test computer with the user account that you created.
1. Customize the Start layout as you want users to see it by using the following techniques:

    - **Pin apps to Start**. From Start, type the name of the app. When the app appears in the search results, right-click the app, and then select **Pin to Start**.
        To view all apps, select **All apps** in the bottom-left corner of Start. Right-click any app, and pin or unpin it from Start.
    - **Unpin apps** that you don't want to display. To unpin an app, right-click the app, and then select **Unpin from Start**.
    - **Drag tiles** on Start to reorder or group apps.
    - **Resize tiles**. To resize tiles, right-click the tile and then select **Resize.**
    - **Create your own app groups**. Drag the apps to an empty area. To name a group, select above the group of tiles and then type the name in the **Name group** field that appears above the group.

> [!IMPORTANT]
> If the Start layout includes tiles for apps that are not installed on the device that the layout is later applied to, the tiles for those apps will be blank. The blank tiles will persist until the next time the user signs in, at which time the blank tiles are removed. Some system events may cause the blank tiles to be removed before the next sign-in.

### Export the Start layout

When you have the Start layout that you want your users to see, use the [Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet in Windows PowerShell to export the Start layout to an .xml file. Start layout is located by default at C:\Users\username\AppData\Local\Microsoft\Windows\Shell\

> [!IMPORTANT]
> If you include secondary Microsoft Edge tiles (tiles that link to specific websites in Microsoft Edge), see [Add custom images to Microsoft Edge secondary tiles](start-secondary-tiles.md) for instructions.

To export the Start layout to an .xml file:

1. While signed in with the same account that you used to customize Start, right-click Start, and select **Windows PowerShell**.
1. Run `Export-StartLayout` with the switch `-UseDesktopApplicationID`. For example:

    ```PowerShell
    Export-StartLayout -UseDesktopApplicationID -Path layout.xml
    ```

    In the previous command, `-path` is a required parameter that specifies the path and file name for the export file. You can specify a local path or a UNC path (for example, `\\FileServer01\StartLayouts\StartLayoutMarketing.xml`).

    Use a file name of your choice—for example, StartLayoutMarketing.xml. Include the .xml file name extension. The [Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet doesn't append the file name extension, and the policy settings require the extension.

1. (Optional) Edit the .xml file to add [a taskbar configuration](../taskbar/configure.md) or to [modify the exported layout](start-layout-xml-desktop.md). When you make changes to the exported layout, be aware that [the order of the elements in the .xml file is critical.](start-layout-xml-desktop.md#required-order)

> [!IMPORTANT]
> If the Start layout that you export contains tiles for desktop (Win32) apps or .url links, **Export-StartLayout** will use **DesktopApplicationLinkPath** in the resulting file. Use a text or XML editor to change **DesktopApplicationLinkPath** to **DesktopApplicationID**. See [Specify Start tiles](start-layout-xml-desktop.md#specify-start-tiles) for details on using the app ID in place of the link path.

> [!NOTE]
> All clients that the start layout applies to must have the apps and other shortcuts present on the local system in the same location as the source for the Start layout.
>
> For scripts and application tile pins to work correctly, follow these rules:
>
>- Executable files and scripts should be listed in \Program Files or wherever the installer of the app places them.
>- Shortcuts that will pinned to Start should be placed in \ProgramData\Microsoft\Windows\Start Menu\Programs.
>- If you place executable files or scripts in the \ProgramData\Microsoft\Windows\Start Menu\Programs folder, they will not pin to Start.
>- Start on Windows 10 does not support subfolders. We only support one folder. For example, \ProgramData\Microsoft\Windows\Start Menu\Programs\Folder. If you go any deeper than one folder, Start will compress the contents of all the subfolder to the top level.
>- Three additional shortcuts are pinned to the start menu after the export. These are shortcuts to %ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs, %APPDATA%\Microsoft\Windows\Start Menu\Programs, and %APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\.

### Configure a partial Start layout

A partial Start layout enables you to add one or more customized tile groups to users' Start screens or menus, while still allowing users to make changes to other parts of the Start layout. All groups that you add are *locked*, meaning users can't change the contents of those tile groups, however users can change the location of those groups. Locked groups are identified with an icon, as shown in the following image.

:::image type="content" source="images/windows-10-partial-layout.png" alt-text="Screenshot of the Windows 10 Start menu with partial layout.":::

When a partial Start layout is applied for the first time, the new groups are added to the users' existing Start layouts. If an app tile is in both an existing group and in a new locked group, the duplicate app tile is removed from the existing (unlocked) group.

When a partial Start layout is applied to a device that already has a StartLayout.xml applied, groups that were added previously are removed and the groups in the new layout are added.

> [!NOTE]
> If you remove the policy setting, the groups remain on the devices but become unlocked.

To configure a partial Start screen layout:

1. [Customize the Start layout](#customize-the-start-screen-on-your-test-computer).
1. [Export the Start layout](#export-the-start-layout).
1. Open the layout XML file. There is a `<DefaultLayoutOverride>` element. Add `LayoutCustomizationRestrictionType="OnlySpecifiedGroups"` to the **DefaultLayoutOverride** element as follows:

    ```xml
    <DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
    ```

1. Save the file and apply using any of the deployment methods.

You can deploy the resulting XML file to devices using one of the following methods:

- Configuration Service Provider (CSP)
- Group Policy
- Provisioning package

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

Two features enable Start layout control:

- The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format.

    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.

    >[!NOTE]
    >Don't include XML Prologs like \<?xml version="1.0" encoding="utf-8"?\> in the Start layout XML file. The settings may not be reflected correctly.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

You can use a provisioning package that you create with Windows Configuration Designer to deploy a customized Start and taskbar layout to users. No reimaging is required, and the Start and taskbar layout can be updated by overwriting the .xml file that contains the layout. The provisioning package can be applied to a running device. This enables you to customize Start and taskbar layouts for different departments or organizations, with minimal management overhead.

> [!IMPORTANT]
> If you use a provisioning package to configure the taskbar, your configuration will be reapplied each time the explorer.exe process restarts. If your configuration pins an app and the user unpins that app, the user's change will be overwritten the next time the configuration is applied. To apply a taskbar configuration and allow users to make changes that will persist, apply your configuration by using Group Policy.

Three features enable Start and taskbar layout control:

- The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format.

    > [!NOTE]
    > To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.

- [You can modify the Start .xml file](../taskbar/configure.md) to include  `<CustomTaskbarLayoutCollection>` or create an .xml file just for the taskbar configuration.

- In Windows Configuration Designer, you use the **Policies/Start/StartLayout** setting to provide the contents of the .xml file that defines the Start and taskbar layout.

### Prepare the Start layout XML file

The **Export-StartLayout** cmdlet produces an XML file. Because Windows Configuration Designer produces a customizations.xml file that contains the configuration settings, adding the Start layout section to the customizations.xml file directly would result in an XML file embedded in an XML file. Before you add the Start layout section to the customizations.xml file, you must replace the markup characters in your layout.xml with escape characters.

1. Copy the contents of layout.xml into an online tool that escapes characters
1. During the procedure to create a provisioning package, you will copy the text with the escape characters and paste it in the customizations.xml file for your project

## PPKG

1. Expand **Runtime settings** > **Policies** > **Start**, and click **StartLayout**.

#### [:::image type="icon" source="../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

You can use a Group Policy Object (GPO) to deploy a customized Start and taskbar layout to users in a domain. No reimaging is required, and the layout can be updated simply by overwriting the .xml file that contains the layout. This enables you to customize Start and taskbar layouts for different departments or organizations, with minimal management overhead.

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups. When you apply a taskbar layout, users will still be able to pin and unpin apps, and change the order of pinned apps.

Three features enable Start and taskbar layout control:

- The [Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format.
    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.
- [You can modify the Start .xml file](../taskbar/configure.md) to include  `<CustomTaskbarLayoutCollection>` or create an .xml file just for the taskbar configuration.

The GPO applies the Start and taskbar layout at the next user sign-in. Each time the user signs in, the timestamp of the .xml file with the Start and taskbar layout is checked and if a newer version of the file is available, the settings in the latest version of the file are applied.

> [!IMPORTANT]
> If you disable Start Layout policy settings that have been in effect and then re-enable the policy, users will not be able to make changes to Start, however the layout in the .xml file will not be reapplied unless the file has been updated. In Windows PowerShell, you can update the timestamp on a file by running the following command:
>
> `(ls <path>).LastWriteTime = Get-Date`

---

::: zone-end

## User experience

After the settings are applied, sign in to the device. You'll see the Start layout that you configured:

::: zone pivot="windows-11"
:::image type="content" source="images/windows-11.png" alt-text="Screenshot of the Windows 11 Start menu." border="false":::

When you customize the Start layout, you overwrite the entire layout. Users can pin and unpin apps, and uninstall apps from Start. When a user signs in again, the Start layout is reapplied, without retaining any user changes.
::: zone-end

::: zone pivot="windows-10"
:::image type="content" source="images/windows-10.png" alt-text="Screenshot of the Windows 10 Start menu." border="false":::

::: zone-end

## Start layout configuration errors

If your Start layout customization isn't applied as you expect, open the **Event Viewer**. Go to **Applications and Services Log** > **Microsoft** > **Windows** > **ShellCommon-StartLayoutPopulation** > **Operational**. Look for the following events:

- **Event 22**: The XML is malformed. The specified file isn't valid XML. This event can happen if the file has extra spaces or unexpected characters. Or, if the file isn't saved in the UTF8 format.
- **Event 64**: The XML is valid, and has unexpected values. This event can happen when the configuration isn't understood, elements aren't in [the required order](start-layout-xml-desktop.md#required-order), or source isn't found, such as a missing or misspelled `.lnk`.

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start


<!--

each single backslash character \ need to be escaped as \\ per JSON syntax>