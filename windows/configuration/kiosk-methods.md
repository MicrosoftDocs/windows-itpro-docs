---
title: Configure kiosks and digital signs on Windows 10/11 desktop editions
ms.reviewer: sybruckm
manager: aaroncz
ms.author: lizlong
description: In this article, learn about the methods for configuring kiosks and digital signs on Windows 10 or Windows 11 desktop editions.
ms.prod: windows-client
ms.localizationpriority: medium
author: lizgt2000
ms.topic: article
ms.technology: itpro-configure
ms.date: 12/31/2017
---

# Configure kiosks and digital signs on Windows desktop editions

>[!WARNING]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

**Applies to**

- Windows 10
- Windows 11

Some desktop devices in an enterprise serve a special purpose. For example, a PC in the lobby that customers use to see your product catalog. Or, a PC displaying visual content as a digital sign. Windows client offers two different locked-down experiences for public or specialized use:

- **A single-app kiosk**: Runs a single Universal Windows Platform (UWP) app in full screen above the lock screen. People using the kiosk can see only that app. When the kiosk account (a local standard user account) signs in, the kiosk app will launch automatically, and you can configure the kiosk account to sign in automatically as well. If the kiosk app is closed, it will automatically restart. 
  
  A single-app kiosk is ideal for public use. Using [Shell Launcher](kiosk-shelllauncher.md), you can configure a kiosk device that runs a Windows desktop application as the user interface. The application that you specify replaces the default shell (explorer.exe) that usually runs when a user logs on. This type of single-app kiosk doesn't run above the lock screen. 

  ![Illustration of a full-screen kiosk experience that runs one app on a Windows client device.](images/kiosk-fullscreen.png)

- **A multi-app kiosk**: Runs one or more apps from the desktop. People using the kiosk see a customized Start that shows only the tiles for the apps that are allowed. With this approach, you can configure a locked-down experience for different account types. 

  A multi-app kiosk is appropriate for devices that are shared by multiple people. When you configure a multi-app kiosk, [specific policies are enforced](kiosk-policies.md) that will affect **all** non-administrator users on the device. 

  ![Illustration of a kiosk Start screen that runs multiple apps on a Windows client device.](images/kiosk-desktop.png)

Kiosk configurations are based on **Assigned Access**, a feature in Windows client that allows an administrator to manage the user's experience by limiting the application entry points exposed to the user. 

There are several kiosk configuration methods that you can choose from, depending on your answers to the following questions.

- **Which type of app will your kiosk run?**

    ![icon that represents apps.](images/office-logo.png) 

    Your kiosk can run a Universal Windows Platform (UWP) app or a Windows desktop application. For [digital signage](setup-digital-signage.md), select a digital sign player as your kiosk app. [Check out the guidelines for kiosk apps.](guidelines-for-assigned-access-app.md)

- **Which type of kiosk do you need?**

    ![icon that represents a kiosk.](images/kiosk.png)

    If you want your kiosk to run a single app for anyone to see or use, consider a single-app kiosk that runs either a [Universal Windows Platform (UWP) app](#methods-for-a-single-app-kiosk-running-a-uwp-app) or a [Windows desktop application](#classic). For a kiosk that people can sign in to with their accounts or that runs more than one app, choose [a multi-app kiosk](#desktop).

- **Which edition of Windows client will the kiosk run?**

    ![icon that represents Windows.](images/windows.png)

    All of the configuration methods work for Windows client Enterprise and Education; some of the methods work for Windows Pro. Kiosk mode isn't available on Windows Home.

- **Which type of user account will be the kiosk account?**

    ![icon that represents a user account.](images/user.png)

    The kiosk account can be a local standard user account, a local administrator account, a domain account, or a Microsoft Entra account, depending on the method that you use to configure the kiosk. If you want people to sign in and authenticate on the device, you should use a multi-app kiosk configuration. The single-app kiosk configuration doesn't require people to sign in to the device, although they can sign in to the kiosk app if you select an app that has a sign-in method.


>[!IMPORTANT]
>Single-app kiosk mode isn't supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk.

[!INCLUDE [assigned-access-kiosk-mode](../../includes/licensing/assigned-access-kiosk-mode.md)]

## Methods for a single-app kiosk running a UWP app

You can use this method | For this edition | For this kiosk account type 
--- | --- | ---
[Assigned access in Settings](kiosk-single-app.md#local) | Pro, Ent, Edu | Local standard user
[Assigned access cmdlets](kiosk-single-app.md#powershell)  | Pro, Ent, Edu | Local standard user
[The kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard)  | Pro (version 1709), Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID 
[Microsoft Intune or other mobile device management (MDM)](kiosk-single-app.md#mdm) | Pro (version 1709), Ent, Edu | Local standard user, Microsoft Entra ID
[Shell Launcher](kiosk-shelllauncher.md) v2 | Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID

<span id="classic" />

## Methods for a single-app kiosk running a Windows desktop application

You can use this method | For this edition | For this kiosk account type 
--- | --- | ---
[The kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard) | Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID 
[Microsoft Intune or other mobile device management (MDM)](kiosk-single-app.md#mdm) | Pro (version 1709), Ent, Edu | Local standard user, Microsoft Entra ID
[Shell Launcher](kiosk-shelllauncher.md) v1 and v2 | Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID

<span id="desktop" />

## Methods for a multi-app kiosk

You can use this method | For this edition | For this kiosk account type 
--- | --- | ---
[XML in a provisioning package](lock-down-windows-10-to-specific-apps.md) | Pro, Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID
[Microsoft Intune or other MDM](lock-down-windows-10-to-specific-apps.md) | Pro, Ent, Edu | Local standard user, Microsoft Entra ID
[MDM WMI Bridge Provider](kiosk-mdm-bridge.md) | Pro, Ent, Edu | Local standard user, Active Directory, Microsoft Entra ID  

## Summary of kiosk configuration methods

Method | App type | Account type | Single-app kiosk | Multi-app kiosk
--- | --- | --- | :---: | :---:
[Assigned access in Settings](kiosk-single-app.md#local) | UWP | Local account | ✔️  |
[Assigned access cmdlets](kiosk-single-app.md#powershell) | UWP | Local account | ✔️ |
[The kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✔️  |
[XML in a provisioning package](lock-down-windows-10-to-specific-apps.md)  | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✔️  | ✔️
Microsoft Intune or other MDM [for full-screen single-app kiosk](kiosk-single-app.md#mdm) or [for multi-app kiosk with desktop](lock-down-windows-10-to-specific-apps.md) | UWP, Windows desktop app | Local standard user, Microsoft Entra ID | ✔️ | ✔️
[Shell Launcher](kiosk-shelllauncher.md) |Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✔️ | 
[MDM Bridge WMI Provider](kiosk-mdm-bridge.md) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID |  | ✔️


>[!NOTE]
>For devices running Windows client Enterprise and Education, you can also use [Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control) or [AppLocker](lock-down-windows-10-applocker.md) to lock down a device to specific apps.
