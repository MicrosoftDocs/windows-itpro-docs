---
title: Customize and manage the Windows 10 Start and taskbar layout  (Windows 10) | Microsoft Docs
description: On Windows devices, customize the start menu layout and taskbar using XML, group policy, provisioning package, or MDM policy. You can add pinned folders, add a start menu size, pin apps to the taskbar, and more.
ms.assetid: 2E94743B-6A49-463C-9448-B7DD19D9CD6A
ms.reviewer: 
manager: dansimp
keywords: ["start screen", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.topic: article
ms.localizationpriority: medium
ms.date: 08/05/2021
---

# Customize the Start menu and taskbar layout on Windows 10 and later devices

**Applies to**:

- Windows 10 version 1607 and later
- Windows Server 2016 with Desktop Experience
- Windows Server 2019 with Desktop Experience

> **Looking for consumer information?** [See what's on the Start menu](https://support.microsoft.com/help/17195/windows-10-see-whats-on-the-menu)
>
> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

Your organization can deploy a customized Start and taskbar to Windows 10 Professional, Enterprise, or Education devices. Use a standard, customized Start layout on devices that are common to multiple users, and devices that are locked down. Configuring the taskbar allows you to pin useful apps for your users, and remove apps that are pinned by default.

>[!NOTE]
>Support for applying a customized taskbar using MDM is added in Windows 10, version 1703.

As administrator, you can use these features to customize Start and taskbar to meet your organization needs. This article describes the different ways you can customize Start and taskbar, and lists the Start policies. It also includes taskbar information on a clean operating system (OS) installation, and when an OS is upgraded.

>[!NOTE]
>For information on using the layout modification XML to configure Start with roaming user profiles, see [Deploy Roaming User Profiles](/windows-server/storage/folder-redirection/deploy-roaming-user-profiles#step-7-optionally-specify-a-start-layout-for-windows-10-pcs).
>
>Using CopyProfile for Start menu customization in Windows 10 isn't supported. For more information [Customize the Default User Profile by Using CopyProfile](/windows-hardware/manufacture/desktop/customize-the-default-user-profile-by-using-copyprofile)

## Use XML

On an existing Windows device, you can set up the **Start** screen, and then export the layout to an XML file. When you have the XML file, add this file to a group policy, a Windows Configuration Designer provisioning package, or a mobile device management (MDM) policy. Using these methods, you can deploy the XML file to your devices. When the devices receive your policy, they'll use the layout configured in the XML file.

For more information, see [Customize and export Start layout](customize-and-export-start-layout.md).

For the **taskbar**, you can use the same XML file as the start screen. Or, you can create a new XML file. When you have the XML file, add this file to a group policy or a provisioning package. Using these methods, you can deploy the XML file to your devices. When the devices receive your policy, they'll use the taskbar settings you configured in the XML file.

For more information, see [Configure Windows 10 taskbar](configure-windows-10-taskbar.md).

## Use group policy

Using group policy objects (GPO), you can manage different parts of the Start menu and taskbar. You don't need to reimage the devices. Using administrative templates, you configure settings in a policy, and then deploy this policy to your devices. [Start menu policy settings](#start-menu-policy-settings) (in this article) lists the policies you can configure.

For more information, see [Use group policy to customize Windows 10 Start and taskbar](customize-windows-10-start-screens-by-using-group-policy.md).

## Use provisioning packages

Provisioning packages are containers that include a set of configuration settings. They're designed to configure a device quickly, without installing a new image. For more information on what provisioning packages are, and what they do, see [Provisioning packages](./provisioning-packages/provisioning-packages.md).

Using a provisioning package, you can customize the Start and taskbar. For more information, see [Use provisioning packages to customize Windows 10 Start and taskbar](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md).

## Use a mobile device management (MDM) solution

Using an MDM solution, you add an XML file to a policy, and then deploy this policy to your devices.

If you use Microsoft Intune for your MDM solution, then you can use settings to configure Start and the taskbar. For more information on the settings you can configure, see [Start settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10#start).

For more information, see [Use MDM to customize Windows 10 Start and taskbar](customize-windows-10-start-screens-by-using-mobile-device-management.md).

## Start menu policy settings

![start layout sections](images/startannotated.png)

The following list includes the different Start options, and any policy or local settings. The settings in the list can also be used in a provisioning package. If you use a provisioning package, see the [Windows Configuration Designer reference](./wcd/wcd-policies.md#start).

- **User tile**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove Logoff on the Start menu`
  - **Local setting**: None
  - **MDM policy**:
    - Start/HideUserTile
    - Start/HideSwitchAccount
    - Start/HideSignOut
    - Start/HideLock
    - Start/HideChangeAccountSettings

- **Most used**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove frequent programs from the Start menu`
  - **Local setting**: Settings > Personalization > Start > Show most used apps
  - **MDM policy**: Start/HideFrequentlyUsedApps

- **Suggestions, Dynamically inserted app tile**
  - **Group policy**: `Computer Configuration\Administrative Templates\Windows Components\Cloud Content\Turn off Microsoft consumer experiences`

    This policy also enables or disables notifications for:

    - A user's Microsoft account
    - App tiles that Microsoft dynamically adds to the default Start menu

  - **Local setting**: Settings > Personalization > Start > Occasionally show suggestions in Start
  - **MDM policy**: Allow Windows Consumer Features

- **Recently added**
  - **Group policy**: `Computer configuration\Administrative Template\Start Menu and Taskbar\Remove "Recently Added" list from Start Menu`

    This policy applies to:

    - Windows 10 version 1803 and later

  - **Local setting**: Settings > Personalization > Start > Show recently added apps
  - **MDM policy**: Start/HideRecentlyAddedApps

- **Pinned folders**
  - **Local setting**: Settings > Personalization > Start > Choose which folders appear on Start
  - **MDM policy**: AllowPinnedFolder

- **Power**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands`
  - **Local setting**: None
  - **MDM policy**:
    - Start/HidePowerButton
    - Start/HideHibernate
    - Start/HideRestart
    - Start/HideShutDown
    - Start/HideSleep

- **Start layout**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from customizing their Start screen`

    When a full Start screen layout is imported with Group Policy or MDM, users can't pin, unpin, or uninstall apps from the Start screen. Users can see and open all apps in the **All Apps** view, but they can't pin any apps to the Start screen. When a partial Start screen layout is imported, users can't change the tile groups applied by the partial layout. They can change other tile groups, and create their own tile groups.

    **Start layout** policy can be used to pin apps to the taskbar based on an XML File you provide. Users can change the order of pinned apps, unpin apps, and pin more apps to the taskbar.

  - **Local setting**: None
  - **MDM policy**:
    - Start layout
    - ImportEdgeAssets

- **Jump lists**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not keep history of recently opened documents`
  - **Local setting**: Settings > Personalization > Start > Show recently opened items in Jump Lists on Start or the taskbar
  - **MDM policy**: Start/HideRecentJumplists

- **Start size**
  - **Group policy**: `User Configuration\Administrative Templates\Start Menu and Taskbar\Force Start to be either full screen size or menu size`
  - **Local setting**: Settings > Personalization > Start > Use Start full screen
  - **MDM policy**: Force Start size

- **App list**
  - **Local setting**: Settings > Personalization > Start > Show app list in Start menu
  - **MDM policy**: Start/HideAppList

- **All settings**
  - **Group policy**: `User Configuration\Administrative Templates\Prevent changes to Taskbar and Start Menu Settings`
  - **Local setting**: None

- **Taskbar**
  - **Local setting**: None
  - **MDM policy**: Start/NoPinningToTaskbar

> [!NOTE]
> In the **Settings** app > **Personalization** > **Start**, there is a **Show more tiles on Start** option. The default tile layout for Start tiles is 3 columns of medium sized tiles. **Show more tiles on Start** enables 4 columns. To configure the 4-column layout when you [customize and export a Start layout](customize-and-export-start-layout.md), turn on the **Show more tiles** setting, and then arrange your tiles.

## Taskbar options

Starting in Windows 10 version 1607, you can pin more apps to the taskbar, and remove default pinned apps from the taskbar. You can select different taskbar configurations based on device locale or region.

There are three app categories that could be pinned to a taskbar:

- Apps pinned by the user
- Default Windows apps pinned during the OS installation, such as Microsoft Edge, File Explorer, and Store
- Apps pinned by your organization, such as in an unattended Windows setup

  In an unattended Windows setup file, it's recommended to use the [layoutmodification.xml method](configure-windows-10-taskbar.md) to configure the taskbar options. It's not recommended to use [TaskbarLinks](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-taskbarlinks).

The following example shows how apps are pinned. In OS configured to use a right-to-left language, the taskbar order is reversed:

- Windows default apps to the left (blue circle)
- Apps pinned by the user in the center (orange triangle)
- Apps that you pin using XML to the right (green square)

![Windows left, user center, enterprise to the right](images/taskbar-generic.png)

If you apply the taskbar configuration to a clean install or an update, users can still:

- Pin more apps
- Change the order of pinned apps
- Unpin any app

> [!TIP]
> In Windows 10 version 1703, you can apply the `Start/NoPinningToTaskbar` MDM policy. This policy prevents users from pinning and unpinning apps on the taskbar.

### Taskbar configuration applied to clean install of Windows 10

In a clean install, if you apply a taskbar layout, only the following apps are pinned to the taskbar:

- Apps you specifically add
- Any default apps you don't remove

After the layout is applied, users can pin more apps to the taskbar.

### Taskbar configuration applied to Windows 10 upgrades

When a device is upgraded to Windows 10, apps are already pinned to the taskbar. Some apps may have been pinned to the taskbar by a user, by a customized base image, or by using Windows unattended setup.

On Windows 10 version 1607 and later, the new taskbar layout for upgrades apply the following behavior:

- If users pinned apps to the taskbar, then those pinned apps remain. New apps are added to the right.
- If users didn't pin any apps (they're pinned during installation or by policy), and the apps aren't in an updated layout file, then the apps are unpinned.
- If a user didn't pin the app, and the app is in the updated layout file, then the app is pinned to the right.
- New apps specified in updated layout file are pinned to right of user's pinned apps.

[Learn how to configure Windows 10 taskbar](configure-windows-10-taskbar.md).

## Start layout configuration errors

If your Start layout customization isn't applied as you expect, open the **Event Viewer**. Go to **Applications and Services Log** > **Microsoft** > **Windows** > **ShellCommon-StartLayoutPopulation** > **Operational**. Look for the following events:

- **Event 22**: The XML is malformed. The specified file isn’t valid XML. This event can happen if the file has extra spaces or unexpected characters. Or, if the file isn't saved in the UTF8 format.
- **Event 64**: The XML is valid, and has unexpected values. This event can happen when the configuration isn't understood, elements aren't in [the required order](start-layout-xml-desktop.md#required-order), or source isn't found, such as a missing or misspelled `.lnk`.

## Next steps

- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Customize Windows 10 Start and taskbar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)
