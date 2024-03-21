---
title: Customize the Start layout
description: Learn how to customize the Windows Start layout, export its configuration, and deploy the customization to other devices.
ms.topic: how-to
ms.date: 03/04/2024
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

1. From a reference device, configure the Start layout to meet your requirements
1. Export the Start layout configuration to a configuration file
1. Deploy the configuration file using one of the available options

> [!TIP]
> While you can create your own configuration file, it's easier and faster to export the layout from an existing device.

### Customize the Start layout on a reference device

To prepare a Start layout for export, customize the Start layout on a reference device. To prepare a reference device:

1. Set up a device on which to customize the Start layout, which should have the operating system that is installed on the users' devices
1. Install all apps and services that the Start layout should display
1. Create a new user account that you'll use to customize the Start layout

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
> The Start layout is located by default at `C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Shell\`.

To export the Start layout to an XML file:

1. While signed in with the same account that you used to customize Start, create a folder to save the `.json` file. For example, create the `C:\Layouts` folder
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

### Start layout example

Here you can find an example of Start layout that you can use as a reference:

[!INCLUDE [example-start-layout](includes/example-start-layout.md)]

::: zone pivot="windows-10"

### Change the Start layout XML file

> [!CAUTION]
> When you make changes to the exported layout, be aware that the XML file must adhere to an [XML schema definition (XSD)](xsd.md).

If the Start layout that you export contains tiles for desktop apps or URL links, `Export-StartLayout` uses `DesktopApplicationLinkPath` in the resulting file. Use a text or XML editor to change `DesktopApplicationLinkPath` to `DesktopApplicationID`. See [Specify Start tiles](start-layout-xml-desktop.md#specify-start-tiles) for details on using the app ID in place of the link path.

All clients that the Start layout applies to must have the apps and other shortcuts present on the local system in the same location as the source for the Start layout.

For scripts and application tile pins to work correctly, follow these rules:

- Executable files and scripts should be listed in `%ProgramFiles%` or wherever the installer of the app places them
- Shortcuts that pin to Start should be placed in `%ProgramData%\Microsoft\Windows\Start Menu\Programs`
- If you place executable files or scripts in the `%ProgramData%\Microsoft\Windows\Start Menu\Programs` folder, they won't pin to Start

After you export the layout, decide whether you want to apply a *full* Start layout or a *partial* Start layout:

- When a full Start layout is applied, the users can't pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they can't pin any apps to Start
- When a partial Start layout is applied, the contents of the specified tile groups can't be changed, but users can move those groups, and can also create and customize their own groups

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

When a partial Start layout is applied to a device that already has a Start layout applied, groups that were added previously are removed and the groups in the new layout are added.

> [!NOTE]
> If you remove the policy setting, the groups remain on the devices but become unlocked.

To configure a partial Start screen layout:

Open the layout XML file and find the `<DefaultLayoutOverride>` element. Add `LayoutCustomizationRestrictionType="OnlySpecifiedGroups"` to the element. For example:

```xml
<DefaultLayoutOverride LayoutCustomizationRestrictionType="OnlySpecifiedGroups">
```

::: zone-end

### Deploy the Start layout configuration

::: zone pivot="windows-10"

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune-10)

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

Two features enable Start layout control:

- The `Export-StartLayout` cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format.

    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.

    >[!NOTE]
    >Don't include XML Prologs like \<?xml version="1.0" encoding="utf-8"?\> in the Start layout XML file. The settings may not be reflected correctly.

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg-10)

You can use a provisioning package that you create with Windows Configuration Designer to deploy a customized Start and taskbar layout to users. No reimaging is required, and the Start and taskbar layout can be updated by overwriting the .xml file that contains the layout. The provisioning package can be applied to a running device. This enables you to customize Start and taskbar layouts for different departments or organizations, with minimal management overhead.

> [!IMPORTANT]
> If you use a provisioning package to configure the taskbar, your configuration will be reapplied each time the explorer.exe process restarts. If your configuration pins an app and the user unpins that app, the user's change will be overwritten the next time the configuration is applied. To apply a taskbar configuration and allow users to make changes that will persist, apply your configuration by using Group Policy.

Three features enable Start and taskbar layout control:

- The `Export-StartLayout` cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format.

    > [!NOTE]
    > To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.

### Prepare the Start layout XML file

The `Export-StartLayout` cmdlet produces an XML file. Because Windows Configuration Designer produces a customizations.xml file that contains the configuration settings, adding the Start layout section to the customizations.xml file directly would result in an XML file embedded in an XML file. Before you add the Start layout section to the customizations.xml file, you must replace the markup characters in your layout.xml with escape characters.

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

::: zone-end

::: zone pivot="windows-11"

> [!IMPORTANT]
> The JSON file can be applied to devices using the [Start layout policy CSP](policy-settings.md#start-layout) only. It's not possible to apply the JSON file using group policy.

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune-11)

To configure devices with Microsoft Intune, [create a Settings catalog policy](/mem/intune/configuration/settings-catalog) and use one of the following settings:

| Category | Setting name | Value |
|--|--|--|
| **Start** | Configure Start Pins | Content of the JSON file|
| **Start** | Configure Start Pins (User) | Content of the JSON file|

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [Start CSP][CSP-1]. Use one of the following settings:

| Setting |
|--|
| - **OMA-URI:** `./User/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start?WT.mc_id=Portal-Microsoft_Intune_Workflows#configurestartpins)<br>- **String:** <br>- **Value:** content of the JSON file |
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Start/`[ConfigureStartPins](/windows/client-management/mdm/policy-csp-Start?WT.mc_id=Portal-Microsoft_Intune_Workflows#configurestartpins)<br>- **Data type:** <br>- **Value:** content of the JSON file |

[!INCLUDE [intune-custom-settings-2](../../../includes/configure/intune-custom-settings-2.md)]

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg-11)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `Policies/Start/ConfigureStartPins`
- **Value:** content of the JSON file

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

::: zone-end

---

## User experience

:::row:::
:::column span="2":::

After the settings are applied, sign in to the device. You'll see the Start layout that you configured:

> [!NOTE]
> When you configure the Start layout with policy settings, you overwrite the entire layout. Users can change the order of the pinned elements, pin, or unpin itmes. When a user signs in again, the Start layout specified in the policy setting is reapplied, without retaining any user changes.

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

[WIN-1]: /windows/client-management/mdm/policy-csp-start
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[PS-1]: /powershell/module/startlayout/export-startlayout
