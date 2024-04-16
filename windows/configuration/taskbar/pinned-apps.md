---
title: Configure the taskbar pinned applications
description: Learn how to configure the Windows taskbar pinned applications.
ms.topic: how-to
ms.date: 08/18/2023
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Customize the taskbar pinned applications

This article describes how to customize the Windows taskbar pinned elemnents, export its configuration, and deploy the customization to other devices.

> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

Your organization can deploy a customized taskbar to your Windows devices. Customizing the taskbar is common when your organization uses a common set of apps, or wants to bring attention to specific apps. You can also remove the default pinned apps.

For example, you can override the default set of apps with your own a set of pinned apps, and in the order you choose. As an administrator, use this feature to pin apps, remove default pinned apps, order the apps, and more on the taskbar.

To add apps you want pinned to the taskbar, you use an XML file. You can use an existing XML file, or create a new file. If you have an XML file that's used on Windows 10 devices, you can also use it on Windows 11 devices. You may have to update the App IDs.

This article shows you how to create the XML file, add apps to the XML, and deploy the XML file. To learn how to customize the taskbar buttons, see [CSP policies to customize Windows 11 taskbar buttons](supported-csp-taskbar-windows.md#csp-policies-to-customize-windows-11-taskbar-buttons).

## Before you begin

- There isn't a limit on the number of apps that you can pin. In the XML file, add apps using the [Application User Model ID (AUMID)](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) or Desktop Application Link Path (the local path to the app).
- There are some situations that an app pinned in your XML file won't be pinned in the taskbar. For example, if an app isn't approved or installed for a user, then the pinned icon won't show on the taskbar.
- The order of apps in the XML file dictates the order of pinned apps on the taskbar, from left to right, and to the right of any existing apps pinned by the user. If the OS is configured to use a right-to-left language, then the taskbar order is reversed.
- Some classic Windows applications are packaged differently than they were in previous versions of Windows, including Notepad and File Explorer. Be sure to enter the correct AppID. For more information, see [Application User Model ID (AUMID)](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) and [Get the AUMID and Desktop app link path](#get-the-aumid-and-desktop-app-link-path) (in this article).

## Configuration steps

To configure the taskbar:

1. Create the XML file
    - If you're also [customizing the Start layout](../start/layout.md), use `Export-StartLayout` to create the XML, and then add the `<CustomTaskbarLayoutCollection>` section from [the following sample](#sample-taskbar-configuration-added-to-start-layout-xml-file) to the file.
    - If you're only configuring the taskbar, use [the following sample](#sample-taskbar-configuration-xml-file) to create a layout modification XML file
1. Edit and save the XML file. You can use [AUMID](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) or Desktop Application Link Path to identify the apps to pin to the taskbar
    - Add `xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"` to the first line of the file, before the closing \>.
    - Use `<taskbar:UWA>` and [AUMID](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) to pin Universal Windows Platform apps
    - Use `<taskbar:DesktopApp>` and Desktop Application Link Path to pin desktop applications
1. Apply the layout modification XML file to devices

>[!IMPORTANT]
>If you use a provisioning package or import-startlayout to configure the taskbar, your configuration will be reapplied each time the explorer.exe process restarts. If your configuration pins an app and the user then unpins that app, the user's change will be overwritten the next time the configuration is applied. To apply a taskbar configuration that allows users to make changes that will persist, apply your configuration by using Group Policy.
>
>If you use Group Policy and your configuration only contains a taskbar layout, the default Windows tile layout will be applied and cannot be changed by users. If you use Group Policy and your configuration includes taskbar and a full Start layout, users can only make changes to the taskbar. If you use Group Policy and your configuration includes taskbar and a [partial Start layout](../start/layout.md), users can make changes to the taskbar and to tile groups not defined in the partial Start layout.

## XML example

In a text editor, such as Visual Studio Code, create a new XML file. To help you get started, you can copy and paste the following XML sample. The sample pins 2 apps to the taskbar - File Explorer and the Command Prompt:

[!INCLUDE [example](includes/example.md)]

You can pin apps to the taskbar and remove default pinned apps by adding a `<TaskbarLayout>` section to a layout modification XML file. This method never removes user-pinned apps from the taskbar.

You can specify different taskbar configurations based on device locale and region. There's no limit on the number of apps that you can pin. You specify apps using the [Application User Model ID (AUMID)](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) or Desktop Application Link Path (the local path to the application).

If you specify an app to be pinned that isn't provisioned for the user on the computer, the pinned icon won't appear on the taskbar.

The order of apps in the XML file dictates the order of pinned apps on the taskbar from left to right, starting to the right of any existing apps pinned by the user.

> [!NOTE]
> In operating systems configured to use a right-to-left language, the taskbar order will be reversed.

The following example shows how apps will be pinned: Windows default apps to the left (blue circle), apps pinned by the user in the center (orange triangle), and apps that you pin using the XML file to the right (green square).

::: zone pivot="windows-10"

:::image type="content" source="images/taskbar-10-layout.png" border="false" lightbox="images/taskbar-10-layout.png" alt-text="Screenshot of the taskbar with Windows default pinned apps, user pinned apps, and policy-pinned apps.":::

::: zone-end

::: zone pivot="windows-11"

:::image type="content" source="images/taskbar-11-layout.png" border="false" lightbox="images/taskbar-11-layout.png" alt-text="Screenshot of the taskbar with Windows default pinned apps, user pinned apps, and policy-pinned apps.":::

::: zone-end

---

1. In the `<taskbar:TaskbarPinList>` node, add (or remove) the apps you want pinned. You can pin Universal Windows Platform (UWP) apps and desktop apps:

    - `<taskbar:UWA>`: Select this option for UWP apps. Add the [AUMID](../kiosk/find-the-application-user-model-id-of-an-installed-app.md) of the UWP app.
    - `<taskbar:DesktopApp>`: Select this option for desktop apps. Add the Desktop Application Link Path of the desktop app.

    You can pin as many apps as you want.  Just keep adding them to the list. Remember, the app order in the list is the same order the apps are shown on the taskbar.

    For more information, see []().

1. In the `<CustomTaskbarLayoutCollection>` node, the apps you add are pinned after the default apps. If you want to remove the default apps, and only show the apps you add in the XML file, then add `PinListPlacement="Replace"`:

    - `<CustomTaskbarLayoutCollection>`: Keeps the default pinned apps. After the default apps, the apps you add are pinned.
    - `<CustomTaskbarLayoutCollection PinListPlacement="Replace">`: Unpins the default apps. Only the apps you add are pinned.

    If you want to remove some of the default pinned apps, then add `PinListPlacement="Replace"`. When you add your apps to `<taskbar:TaskbarPinList>`, include the default apps you still want pinned.

1. In the `<defaultlayout:TaskbarLayout>` node, use `region=" | "` to use different taskbar configurations based on the device locale and region.

1. Save the file, and name the file so you know what it is. For example, name the file something like `TaskbarLayoutModification.xml`. Once you have the file, it's ready to be deployed to your Windows devices.

## Pin order for all apps

Apps are pinned to the taskbar in the following order:

1. Windows default apps are pinned first
1. User-pinned apps are pinned after the Windows default apps
1. XML-pinned apps are pinned after the user-pinned apps

> [!NOTE]
> If the OS is configured to use a right-to-left language, then the taskbar order is reversed.

### Add pins

The `<CustomTaskbarLayoutCollection>` section will append listed apps to the taskbar by default. The following sample keeps the default apps pinned and adds pins for Paint, Microsoft Reader, and a command prompt.

[!INCLUDE [example-add-pins](includes/example-add-pins.md)]

::: zone pivot="windows-11"

:::row:::
  :::column span="1":::
        **Before:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-11.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pinned-elements-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pinned-elements-11.png":::

    :::column-end:::
:::row-end:::

::: zone-end

::: zone pivot="windows-10"

:::row:::
  :::column span="1":::
        **Before**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-10.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pin-add-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pin-add-10.png":::

    :::column-end:::
:::row-end:::

::: zone-end

### Remove default pins

To remove all default pins, add `PinListPlacement="Replace"` to `<CustomTaskbarLayoutCollection>`.

[!INCLUDE [example-remove-pins](includes/example-remove-pins.md)]

::: zone pivot="windows-11"

:::row:::
  :::column span="1":::
        **Before:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-11.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pinned-elements-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pinned-elements-11.png":::

    :::column-end:::
:::row-end:::

::: zone-end

::: zone pivot="windows-10"

:::row:::
  :::column span="1":::
        **Before**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-10.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pin-replace-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pin-replace-10.png":::

    :::column-end:::
:::row-end:::

::: zone-end

### Replace pins

To replace all default pins and add your own pins, add `PinListPlacement="Replace"` to `<CustomTaskbarLayoutCollection>`. Then, add the pins that you want to `TaskbarPinList`.

[!INCLUDE [example-replace-pins](includes/example-replace-pins.md)]

::: zone pivot="windows-11"

:::row:::
  :::column span="1":::
        **Before:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-11.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After:**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pinned-elements-11.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pinned-elements-11.png":::

    :::column-end:::
:::row-end:::

::: zone-end

::: zone pivot="windows-10"

:::row:::
  :::column span="1":::
        **Before**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/taskbar-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/taskbar-10.png":::

    :::column-end:::
:::row-end:::

:::row:::
  :::column span="1":::
        **After**
    :::column-end:::
  :::column span="3":::
        :::image type="content" source="images/pin-replace-10.png" alt-text="Sample Windows 11 taskbar." border="false" lightbox="./images/pin-replace-10.png":::

    :::column-end:::
:::row-end:::

::: zone-end

### Configuration by country or region

In the following XML example, two regions are added: `US|UK` and `DE|FR|IT`:

[!INCLUDE [example](includes/example-region.md)]

- If the `<TaskbarPinList>` node has region matching the one configured on the device, then the configuration applies
- If the `<TaskbarPinList>` node doesn't have a region matching the one configured on the device, then the first `<TaskbarPinList>` node without region applies

> [!NOTE]
> [Look up country and region codes (use the ISO Short column)](/previous-versions/commerce-server/ee799297(v=cs.20))

## Deploy the taskbar configuration

[!INCLUDE [tab-intro](../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

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

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../includes/configure/provisioning-package-1.md)]

- **Path:** `Policies/Start/StartLayout`
- **Value:** content of the XML file

> [!NOTE]
> The content of the file must be entered as a single line in the `Value` field. Use a text editor to remove any line breaks from the XML file, usually with a function called *join lines*.

[!INCLUDE [provisioning-package-2](../../../includes/configure/provisioning-package-2.md)]

#### [:::image type="icon" source="../images/icons/group-policy.svg"::: **GPO**](#tab/gpo)

To configure a device with group policy, use the [Local Group Policy Editor](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc731745(v=ws.10)). To configure multiple devices joined to Active Directory, [create or edit](/previous-versions/windows/it-pro/windows-server-2008-r2-and-2008/cc754740(v=ws.11)) a group policy object (GPO) and use one of the following settings:

| Group policy path | Group policy setting | Value |
| - | - | - |
|**Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**| Start Layout | Path to the XML file |
|**User Configuration** > **Administrative Templates** > **Start Menu and Taskbar**| Start Layout | Path to the XML file |

[!INCLUDE [gpo-settings-2](../../../includes/configure/gpo-settings-2.md)]

The GPO applies the Start and taskbar layout at the next user sign-in. Each time the user signs in, the timestamp of the .xml file with the Start and taskbar layout is checked and if a newer version of the file is available, the settings in the latest version of the file are applied.

---

## User experience

After the taskbar layout is applied, the users must sign out and sign in again to see the new layout. Unless prohibited via policy settings, users can pin more apps, change the order, and unpin apps from the taskbar.

### OS install and upgrade experience

On a clean install of Windows, if you apply a taskbar layout, the following apps are pinned to the taskbar:

- Any default apps you don't remove
- Apps that you specifically pin in the XML file

On a Windows OS upgrade, apps are already pinned to the taskbar. The apps may have been pinned by a user, by an image, or by using Windows unattended setup. For upgrades, the taskbar layout applies the following behavior:

- If users pinned apps to the taskbar, then those pinned apps remain. New apps are pinned after the existing user-pinned apps
- If the apps are pinned during the install or by a policy (not by a user), and the apps aren't pinned in an updated layout file, then the apps are unpinned
- If a user didn't pin an app, and the same app is pinned in the updated layout file, then the app is pinned after any existing pinned apps
- New apps in updated layout file are pinned after the user's pinned apps
