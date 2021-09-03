---
title: Use JSON to customize start menu layout on Windows 11 | Microsoft Docs
description: Export start layout to LayoutModification.json that includes pinned apps. Add or remove apps, and use the JSON syntax in an MDM policy to deploy a custom Start menu layout to Windows 11 devices.
ms.assetid: 
ms.reviewer: 
manager: dougeby
ms.author: mandia
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/02/2021
ms.localizationpriority: medium
---

# Customize the Start menu layout on Windows 11

**Applies to**:

- Windows 11

> **Looking for consumer information?** [See what's on the Start menu](https://support.microsoft.com/help/17195/windows-10-see-whats-on-the-menu)
>
> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

Your organization can deploy a customized Start layout to your Windows 11 devices. Customizing the Start layout is common when you have similar devices used by many users, and on devices that are locked down.

For example, you can create a pinned list that includes a common set of apps. As an administrator, you can use this feature to pin Win32 apps, remove default pinned apps, order the app list, and more. 

This article shows you how to export an existing Start menu layout, and use the syntax in a Microsoft Intune MDM policy.

## Before you begin

- Starting with Windows 11, IT administrators use JSON to customize the Start layout.

  In previous Windows versions, IT administrators used an XML file to customize the Start layout. The XML file isn't available on Windows 11 and later. OEMs can use XML and JSON files. If you're an OEM, see [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

- It's recommended to use a Mobile Device Management (MDM) provider. MDM providers help manage your devices, and help manage apps on your devices. For Microsoft, that includes using Microsoft Endpoint Manager. Endpoint Manager includes Microsoft Intune, which is a cloud service, and Configuration Manager, which is on-premises.

  In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

  - [Microsoft Endpoint Manager overview](/mem/endpoint-manager-overview)
  - [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
  - [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Start menu features and sections

Starting with Windows 11, the Start menu is updated. The apps are shown as a flat list, and users can scroll through multiple pages. There aren't any groups, folders, rows, or columns. It's a more simplified layout:

:::image type="content" source="./images/use-json-customize-start-menu-windows/start-menu-layout.png" alt-text="Sample start menu layout on Windows 11 devices that shows pinned apps, access to all apps, and shows recommended files.":::

The layout has the following areas:

- **Pinned**: This area shows some of the apps that are installed on the device. You can customize this section using the **ConfigureStartPins** policy, and create a pinned list of apps you want on the devices. You can also remove apps that are pinned by default.

  This article shows you how to use the **ConfigureStartPins** policy.

- **All apps**: Users can select this option to see a list of all the apps on the device. This section can't be customized.
- **Recommended**: This area shows recent files that have been opened. You can't hide this section, but you can prevent files from showing. The [Start/HideRecentJumplists CSP](../client-management/mdm/policy-csp-start.md#start-hiderecentjumplists) controls this setting, and can be set using an MDM provider, like Microsoft Intune.

  For more information on the Start menu settings you can configure in a Microsoft Intune policy, see [Windows 10 (and later) device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-windows-10#start).

### What you need to know

- When you customize the Start layout, you overwrite the entire full layout. Users can't pin, unpin, or uninstall apps from Start. Users can see and open all apps in the **All Apps** view, but they can't pin any apps to Start. A partial Start layout isn't available.
- On Windows 11 and later devices, you must create a new JSON file. You can't use a file from a previous OS, such as Windows 10.

## Create the JSON file

On an existing Windows 11 device, use the [Windows PowerShell Export-StartLayout](/powershell/module/startlayout/export-startlayout) cmdlet to export the existing layout to a `LayoutModification.json` file. You can also pin and unpin apps to get the layout you want, and then export the layout.

The JSON file controls the Start menu layout, and lists all the apps that are pinned. You can update the JSON file to:

- Change the order of existing apps. The apps in the JSON file are shown on Start in the same order.
- Add more apps by entering the app ID.

If you're familiar with creating JSON files, you can create your own `LayoutModification.json` file. But, it's easier and faster to export the layout from an existing device.

### Export an existing Start layout

1. Create a folder to save the `.json` file. For example, create the `C:\Layouts` folder.
2. On a Windows 11 device, open the Windows PowerShell app.
3. Run the following cmdlet:

    ```powershell
    Export-StartLayout -Path "C:\Layouts\LayoutModification.json" 
    ```

    Be sure to name the file `LayoutModification.json`.

### Get the pinnedList JSON syntax

1. Open the `LayoutModification.json` file in a JSON editor, such as Visual Studio Code. For more information, see [edit JSON with Visual Studio Code](https://code.visualstudio.com/docs/languages/json).
2. In the file, you see the `pinnedList` section. This section includes all the apps that are pinned. Copy the syntax. You'll use it in the next section.

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

3. Starting with Windows 11, the **ConfigureStartPins** policy is available. This policy is used by the LayoutModification.json file to add files to the Pinned section. In your JSON syntax, you can add more apps to this section using the following keys:

    ---
    | Key | Description |
    | --- | --- |
    | packagedAppID | Use this option for Universal Windows Platform apps. To pin a UWP app, use the app's AUMID.|
    | desktopAppID | Use this option for unpackaged Win32 apps. To pin a Win32 app, use the app's AUMID. If the app doesn't have an AUMID, then enter the `desktopAppLink` instead. |
    | desktopAppLink | Use this option for unpackaged Win32 apps that don't have an associated AUMID. To pin this type of app, use the path to the `.lnk` shortcut that points to the app. |

## Use MDM to create and deploy a pinned list policy

Now that you have the JSON syntax, you're ready to deploy your customized start layout to devices in your organization.

MDM providers can deploy policies to devices managed by the organization, including organization-owned devices, and personal or bring your own device (BYOD).  Using an MDM provider, such as Microsoft Intune, you can deploy a policy that configures the pinned list.

This section shows you how to create a pinned list policy in Microsoft Intune. There isn't a Group Policy to create a pinned list.

### Create a pinned list using a Microsoft Intune policy

To deploy this policy in Microsoft Intune, the devices must be enrolled in Microsoft Intune, and managed by your organization. For more information, see [What is device enrollment in Intune?](/mem/intune/enrollment/device-enrollment).

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** > **Configuration profiles** > **Create profile**.
3. Enter the following properties:

    - **Platform**: Select **Windows 10 and later**.
    - **Profile**: Select **Templates** > **Custom**.

4. Select **Create**.
5. In **Basics**, enter the following properties:

    - **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify them later. For example, a good profile name is **Win11: Custom start layout**.
    - **Description**: Enter a description for the profile. This setting is optional, and recommended.

6. Select **Next**.
7. In **Configuration settings** > **OMA-URI**, select **Add**. Add the following properties:

    - **Name**: Enter something like **Configure start pins**.
    - **Description**: Enter a description for the row. This setting is optional, and recommended.
    - **OMA-URI**: Enter `./Vendor/MSFT/Policy/Config/Start/ConfigureStartPins`.
    - **Data type**: Select **String**.
    - **Value**: Paste the JSON syntax you created or updated in the previous section. For example, enter the following syntax:

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

    :::image type="content" source="./images/use-json-customize-start-menu-windows/endpoint-manager-admin-center-custom-oma-uri-start-layout.png" alt-text="Custom OMA-URI settings to customize Start menu layout using pinnedList":::

8. Select **Save** > **Next** to save your changes.
9. Configure the rest of the policy settings. For more specific information, see [Create a profile with custom settings in Intune](/mem/intune/configuration/custom-settings-configure).

The Windows OS has many CSPs that apply to the Start menu layout. Using an MDM provider, like Intune, you can use these CSPs to customize the layout even more. For a list, see [Supported CSP policies for Windows 11 Start menu layout](supported-csp-start-menu-layout-windows.md).

### Deploy the policy using Microsoft Intune

When the policy is created, you can deploy it now, or deploy it later. Since this policy is a customized Start layout, the policy can be deployed before users sign in the first time. If you use [Windows Autopilot](/mem/autopilot/windows-autopilot) (opens another Microsoft web site), add the pinned list policy to your Windows Autopilot policy.

For more information on assigning policies using Microsoft Intune, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).

