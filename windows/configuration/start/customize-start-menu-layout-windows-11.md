---
title: Add or remove pinned apps on the Start menu in Windows 11
description: Export Start layout to LayoutModification.json with pinned apps, and add or remove pinned apps. Use the JSON text in an MDM policy to deploy a custom Start menu layout to Windows 11 devices.
ms.date: 01/10/2023
ms.topic: article
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
---

# Customize the Start menu layout on Windows 11

> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

Your organization can deploy a customized Start layout to your Windows 11 devices. Customizing the Start layout is common when you have similar devices used by many users, or you want to pin specific apps.

For example, you can override the default set of apps with your own a set of pinned apps, and in the order you choose. As an administrator, use this feature to pin apps, remove default pinned apps, order the apps, and more.

To add apps you want pinned to the Start menu, you use a JSON file. In previous Windows versions, IT administrators used an XML file to customize the Start menu. The XML file isn't available on Windows 11 and later ***unless*** [you're an OEM](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

This article shows you how to export an existing Start menu layout, and use the JSON in a Microsoft Intune policy.

## Before you begin

- When you customize the Start layout, you overwrite the entire full layout. A partial Start layout isn't available. Users can pin and unpin apps, and uninstall apps from Start. When a user signs in or Explorer restarts, Windows reapplies the MDM policy. This action restores the specified layout and doesn't retain any user changes.

  To prevent users from making any changes to the Start menu layout, see the [NoChangeStartMenu](/windows/client-management/mdm/policy-csp-admx-startmenu#admx-startmenu-nochangestartmenu) policy.

- It's recommended to use a mobile device management (MDM) provider. MDM providers help manage your devices, and help manage apps on your devices. You can use Microsoft Intune. Intune is a family of products that include Microsoft Intune, which is a cloud service, and Configuration Manager, which is on-premises.

  In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

  - [Endpoint Management at Microsoft](/mem/endpoint-manager-overview)
  - [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
  - [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Start menu features and areas

In Windows 11, the Start menu is redesigned with a simplified set of apps that are arranged in a grid of pages. There aren't folders, groups, or different-sized app icons:

:::image type="content" source="./images/customize-start-menu-layout-windows-11/start-menu-layout.png" alt-text="Sample start menu layout on Windows 11 devices that shows pinned apps, access to all apps, and shows recommended files.":::

Start has the following areas:

- **Pinned**: Shows pinned apps, or a subset of all of the apps installed on the device. You can create a list of pinned apps you want on the devices using the **ConfigureStartPins** policy. **ConfigureStartPins** overrides the entire layout, which also removes apps that are pinned by default.

  This article shows you [how to use the **ConfigureStartPins** policy](#get-the-pinnedlist-json).

- **All apps**: Users select this option to see an alphabetical list of all the apps on the device. This section can't be customized using the JSON file.

  The [Start/HideFrequentlyUsedApps CSP](/windows/client-management/mdm/policy-csp-start#start-hidefrequentlyusedapps) exposes settings that configure the "Most used" section, which is at the top of the all apps list.

  In **Intune**, you can configure this Start menu layout feature, and more. For more information on the Start menu settings you can configure in an Intune policy, see [Windows 10/11 device settings to allow or restrict features](/mem/intune/configuration/device-restrictions-windows-10#start).

  In **Group Policy**, there are policies that include settings that control the Start menu layout. Some policies may not work as expected. Be sure to test your policies before broadly deploying them across your devices:

  - `Computer Configuration\Administrative Templates\Start Menu and Taskbar`
  - `User Configuration\Administrative Templates\Start Menu and Taskbar`

- **Recommended**: Shows recently opened files and recently installed apps. This section can only be customized in Windows 11 SE using the following policy.

  - `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Remove Recommended section from Start Menu`

## Create the JSON file

On an existing Windows 11 device, set up your own Start layout with the pinned apps you want users to see. Then, use the [Windows PowerShell Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet to export the existing layout to a `LayoutModification.json` file.

The JSON file controls the Start menu layout, and lists all the apps that are pinned. You can update the JSON file to:

- Change the order of existing apps. The apps in the JSON file are shown on Start in the same order.
- Add more apps by entering the app ID. For more information, see [Get the pinnedList JSON](#get-the-pinnedlist-json) (in this article).

If you're familiar with creating JSON files, you can create your own `LayoutModification.json` file. But, it's easier and faster to export the layout from an existing device.

### Export an existing Start layout

1. Create a folder to save the `.json` file. For example, create the `C:\Layouts` folder.
1. On a Windows 11 device, open the Windows PowerShell app.
1. Run the following cmdlet. Name the file `LayoutModification.json`.

    ```powershell
    Export-StartLayout -Path "C:\Layouts\LayoutModification.json"

    ```

### Get the pinnedList JSON

1. Open the `LayoutModification.json` file in a JSON editor, such as Visual Studio Code or Notepad. For more information, see [edit JSON with Visual Studio Code](https://code.visualstudio.com/docs/languages/json).
1. In the file, you see the `pinnedList` section. This section includes all of the pinned apps. Copy the `pinnedList` content in the JSON file. You'll use it in the next section.

    In the following example, you see that Microsoft Edge, Microsoft Word, the Microsoft Store app, and Notepad are pinned:

    ```json
    {

      "pinnedList": [

        { "desktopAppId": "MSEdge" },

        { "desktopAppId": "Microsoft.Office.WINWORD.EXE.15" },

        { "packagedAppId": "Microsoft.WindowsStore_8wekyb3d8bbwe!App" },

        { "packagedAppId": "Microsoft.WindowsNotepad_8wekyb3d8bbwe!App" }

      ]

    }

    ```

1. Starting with Windows 11, the **ConfigureStartPins** policy is available. This policy uses the `LayoutModification.json` file to add apps to the Pinned section. In your JSON file, you can add more apps to this section using the following keys:

    ---
    | Key | Description |
    | --- | --- |
    | packagedAppID | Use this option for Universal Windows Platform apps. To pin a UWP app, use the app's AUMID.|
    | desktopAppID | Use this option for unpackaged Win32 apps. To pin a Win32 app, use the app's AUMID. If the app doesn't have an AUMID, then enter the `desktopAppLink` instead. |
    | desktopAppLink | Use this option for unpackaged Win32 apps that don't have an associated AUMID. To pin this type of app, use the path to the `.lnk` shortcut that points to the app. |

## Use MDM to create and deploy a pinned list policy

Now that you have the JSON syntax, you're ready to deploy your customized Start layout to devices in your organization.

MDM providers can deploy policies to devices managed by the organization, including organization-owned devices, and personal or bring your own device (BYOD).  Using an MDM provider, such as Microsoft Intune, you can deploy a policy that configures the pinned list.

This section shows you how to create a pinned list policy in Intune. There isn't a Group Policy to create a pinned list.

### Create a pinned list using an Intune policy

To deploy this policy, the devices must be enrolled, and managed by your organization. For more information, see [What is device enrollment?](/mem/intune/enrollment/device-enrollment).

1. Sign in to the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** > **Configuration profiles** > **Create profile**.
1. Enter the following properties:

    - **Platform**: Select **Windows 10 and later**.
    - **Profile**: Select **Templates** > **Custom**.

1. Select **Create**.
1. In **Basics**, enter the following properties:

    - **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify them later. For example, a good profile name is **Win11: Custom Start layout**.
    - **Description**: Enter a description for the profile. This setting is optional, and recommended.

1. Select **Next**.
1. In **Configuration settings** > **OMA-URI**, select **Add**. Add the following properties:

    - **Name**: Enter something like **Configure Start pins**.
    - **Description**: Enter a description for the row. This setting is optional, and recommended.
    - **OMA-URI**: Enter `./Vendor/MSFT/Policy/Config/Start/ConfigureStartPins`.
    - **Data type**: Select **String**.
    - **Value**: Paste the JSON you created or updated in the previous section. For example, enter the following text:

      ```json
      {

        "pinnedList": [

          { "desktopAppId": "MSEdge" },

          { "desktopAppId": "Microsoft.Office.WINWORD.EXE.15" },

          { "packagedAppId": "Microsoft.WindowsStore_8wekyb3d8bbwe!App" },

          { "packagedAppId": "Microsoft.WindowsNotepad_8wekyb3d8bbwe!App" }

        ]

      }

      ```

    Your settings look similar to the following settings:

    :::image type="content" source="./images/customize-start-menu-layout-windows-11/endpoint-manager-admin-center-custom-oma-uri-start-layout.png" alt-text="Custom OMA-URI settings to customize Start menu layout using pinnedList":::

1. Select **Save** > **Next** to save your changes.
1. Configure the rest of the policy settings. For more specific information, see [Create a profile with custom settings](/mem/intune/configuration/custom-settings-configure).

The Windows OS exposes many CSPs that apply to the Start menu. For a list, see [Supported CSP policies for Windows 11 Start menu](supported-csp-start-menu-layout-windows.md).

### Deploy the policy using Intune

When the policy is created, you can deploy it now, or deploy it later. Since this policy is a customized Start layout, the policy can be deployed anytime, including before users sign in the first time.

For more information and guidance on assigning policies to devices in your organization, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).
