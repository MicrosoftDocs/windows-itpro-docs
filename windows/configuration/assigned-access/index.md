---
title: Configure kiosks and restricted user experiences
description: Learn about the options available in Windows to configure kiosks and restricted user experiences.
ms.topic: overview
ms.date: 02/26/2024
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
  Your kiosk can run a Universal Windows Platform (UWP) app or a Windows desktop application. For [digital signage](setup-digital-signage.md), select a digital sign player as your kiosk app. [Check out the guidelines for kiosk apps.](guidelines-for-app.md)
- **Which type of kiosk do you need?**
  If you want your kiosk to run a single app for anyone to see or use, consider a single-app kiosk that runs either a [Universal Windows Platform (UWP) app](#methods-for-a-single-app-kiosk-running-a-uwp-app) or a Windows desktop application. For a kiosk that people can sign in to with their accounts or that runs more than one app, choose a multi-app kiosk
- **Which edition of Windows client will the kiosk run?**
  All of the configuration methods work for Windows client Enterprise and Education; some of the methods work for Windows Pro. Kiosk mode isn't available on Windows Home
- **Which type of user account will be the kiosk account?**
  The kiosk account can be a local standard user account, a local administrator account, a domain account, or a Microsoft Entra account, depending on the method that you use to configure the kiosk. If you want people to sign in and authenticate on the device, you should use a multi-app kiosk configuration. The single-app kiosk configuration doesn't require people to sign in to the device, although they can sign in to the kiosk app if you select an app that has a sign-in method

>[!IMPORTANT]
>Single-app kiosk mode isn't supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk.

[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

## Summary of configuration methods

| Method | App type | Account type | Single-app kiosk | Multi-app kiosk |
|--|--|--|:-:|:-:|
| [Assigned access in Settings](kiosk-single-app.md) | UWP | Local account | ✅ |
| [Assigned access cmdlets](kiosk-single-app.md) | UWP | Local account | ✅ |
| [The kiosk wizard in Windows Configuration Designer](kiosk-single-app.md) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ |
| [XML in a provisioning package](lock-down-windows-10-to-specific-apps.md) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ | ✅ |
| Microsoft Intune or other MDM [for full-screen single-app kiosk](kiosk-single-app.md) or [for multi-app kiosk with desktop](lock-down-windows-10-to-specific-apps.md) | UWP, Windows desktop app | Local standard user, Microsoft Entra ID | ✅ | ✅ |
| [Shell Launcher](kiosk-shelllauncher.md) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID | ✅ |
| [MDM Bridge WMI Provider](kiosk-mdm-bridge.md) | UWP, Windows desktop app | Local standard user, Active Directory, Microsoft Entra ID |  | ✅ |

>[!NOTE]
>For devices running Windows client Enterprise and Education, you can also use [Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control) or [AppLocker](lock-down-windows-10-applocker.md) to lock down a device to specific apps.


<!--

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.



A kiosk device typically runs a single application, and users are prevented from accessing any features or functions on the device outside of the app.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, [certain policies](kiosk-policies.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.

<!--troubleshooting
Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging
<TBD>

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)


> [!WARNING]
> You can only assign one single app kiosk profile to an individual user account on a device. The single app profile does not support domain groups.

> [!NOTE]
> If the application calls `KeyCredentialManager.IsSupportedAsync` when it is running in assigned access mode and it returns false on the first run, invoke the settings screen and select an appropriate PIN to use with Windows Hello. This is the settings screen that is hidden by the application running in assigned access mode. You can only use Windows Hello if you first leave assigned access mode, select your convenience pin, and then go back into assigned access mode again.




-->