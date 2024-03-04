---
title: Configure kiosks and restricted user experiences
description: Learn about the options available in Windows to configure kiosks and restricted user experiences.
ms.topic: overview
ms.date: 03/04/2024
---

# Configure kiosks and restricted user experiences

Organization may want to set up special purpose devices, such as a device in the lobby that customers can use to view product catalogs, or a device displaying visual content as a digital sign. Windows client offers two different experiences for public or specialized use:

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

This experience runs a single application in full screen, and people using the device can only use that app. When the designated kiosk account signs in, the kiosk app launches automatically. If the kiosk app is closed, it will automatically restart. This experience is sometimes referred to as *single-app kiosk*.

Windows offers two different features to configure a kiosk experience:

- **Assigned Access**: used to execute a single Universal Windows Platform (UWP) app or Microsoft Edge in full screen above the lock screen. When the kiosk account signs in, the kiosk app launches automatically. If the UWP app is closed, it will automatically restart
- **Shell Launcher**: used to configure a device to execure a Windows desktop application as the user interface. The application that you specify replaces the default Windows shell (`Explorer.exe`) that usually runs when a user signs in. This type of single-app kiosk doesn't run above the lock screen.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

This experience loads the Windows desktop, but it only allows to run a defined set of applications. When the designated user signs in, the user can only run the apps that are allowed. This experience is sometimes referred to as *multi-app kiosk*. The Start menu is customized to show only the apps that are allowed to execute. With this approach, you can configure a locked-down experience for different account types.

To configure a restricted user experience you use a feature called **Assgined Access**.

## Choose the right experience

Carefully evaluate all applications that users should use. If applications require user authentication, don't use a local or generic
user account. Rather, target the group of users within the Assigned Access configuration file.

A multi-app kiosk is appropriate for devices that are shared by multiple people. When you configure a multi-app kiosk, certain policy settings that affects **all** non-administrator users on the device. For a list of these policies, see [Assigned Access policy settings](policy-settings.md)

Kiosk configurations are based on **Assigned Access**, a feature in Windows client that allows an administrator to manage the user's experience by limiting the application entry points exposed to the user.

There are several kiosk configuration methods that you can choose from, depending on your answers to the following questions.

- **Which type of app will your kiosk run?**
  Your kiosk can run a Universal Windows Platform (UWP) app or a Windows desktop application
- **Which type of kiosk do you need?**
  If you want your kiosk to run a single app for anyone to see or use, consider a single-app kiosk that runs either a Universal Windows Platform (UWP) app or a Windows desktop application. For a kiosk that people can sign in to with their accounts or that runs more than one app, choose a multi-app kiosk
- **Which edition of Windows client will the kiosk run?**
  All of the configuration methods work for Windows client Enterprise and Education; some of the methods work for Windows Pro. Kiosk mode isn't available on Windows Home
- **Which type of user account will be the kiosk account?**
  The kiosk account can be a local standard user account, a local administrator account, a domain account, or a Microsoft Entra account, depending on the method that you use to configure the kiosk. If you want people to sign in and authenticate on the device, you should use a multi-app kiosk configuration. The single-app kiosk configuration doesn't require people to sign in to the device, although they can sign in to the kiosk app if you select an app that has a sign-in method

>[!IMPORTANT]
>Single-app kiosk mode isn't supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk.

## Summary of configuration methods

| Method | App type | Account type | Single-app kiosk | Multi-app kiosk |
|--|--|--|:-:|:-:|
| Assigned access in Settings | UWP | Local account | ✅ |
| Assigned access cmdlets | UWP | Local account | ✅ |
| The kiosk wizard in Windows Configuration Designer | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ |
| XML in a provisioning package | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ | ✅ |
| Microsoft Intune or other MDM | UWP, Windows desktop app | Local standard user, Microsoft Entra ID | ✅ | ✅ |
| Shell Launcher| UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ |
| MDM Bridge WMI Provider | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID |  | ✅ |

