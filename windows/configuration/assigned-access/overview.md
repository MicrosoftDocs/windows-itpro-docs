---
title: What is Assigned Access?
description: Learn how to configure devices with Assigned Access.
ms.date: 03/04/2024
ms.topic: how-to
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or restricted user experience.

Multi-app kiosk mode allows an IT admin to pre-select the apps and functionality available to a user to create a tailored and immersive device experience. Ideal for shared devices, multi-app kiosk mode can create different configurations for different users, ensuring they have access to only what is needed to use the device as intended. The locked down configurations present users with the Windows desktop with which they are already familiar, while limiting their access to reduce distractions and potential for inadvertent uses.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

A single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it will utomatically restart. Practical examples include:

- Public browsing
- Interactive digital signage
This experience is sometimes referred to as *single-app kiosk*.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

Users can execute a defined list of applications, with a custom Start menu and Taskbar. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

When applying an Assigned Access configuration to a device, different policy settings are enforced, creating a locked down experience to the users.

> [!NOTE]
> Assigned Access profiles only apply to non-admin accounts. When an administrator signs in, the Assigned Access restrictions don't apply.


[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

When the multi-app kiosk configuration is applied to a device, AppLocker rules are generated to allow the apps that are listed in the configuration. Here are the predefined Assigned Access AppLocker rules

For UWP apps,

1. Default rule is to allow all users to launch the signed package apps
1. The package app deny list is generated at runtime when the Assigned Access user signs in. Based on the installed/provisioned package apps available for the user account, Assigned Access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed packages that enterprises
1.  defined in the Assigned Access configuration. If there are multiple apps within the same package, all these apps are excluded. This deny list is used to prevent the user from accessing the apps, which are currently available for the user but not in the allowed list.

> [!NOTE]
> Assigned access multi-app mode doesn't block the enterprises or the users from installing UWP apps. When a new UWP app is installed during the current Assigned Access user session, this app won't be in the deny list. When the user signs out and signs in back next time, it will be included in the deny list. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the Assigned Access configuration to include it in the allowed app list.

For desktop apps,

1. Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs. 2. There's a predefined inbox desktop app deny list for the Assigned Access user account, and this deny list is adjusted based on the desktop app allow list that you defined in the multi-app configuration.
1. Enterprise-defined allowed desktop apps are added in the AppLocker allow list.

## Guidelines for choosing an app for a kiosk experience

To create a kiosk experience, you can choose UWP apps or Microsoft Edge. However, some applications might not provide a good user experience when used as a kiosk.

The following guidelines help you choose an appropriate Windows app for a kiosk experience:

- Windows apps must be provisioned or installed for the Assigned Access account before they can be selected as the Assigned Access app. [Learn how to provision and install apps](/windows/client-management/mdm/enterprise-app-management#install_your_apps)
- Updating a UWP app can sometimes change the Application User Model ID (AUMID) of the app. In such scenario, you must update the Assigned Access settings to execute the updated app, because Assigned Access uses the AUMID to determine the app to launch
- The app must be able to run above the lock screen. If the app can't run above the lock screen, it can't be used as a kiosk app
- Some apps can launch other apps. Assigned Access in kiosk mode prevents Windows apps from launching other apps. Avoid selecting Windows apps that are designed to launch other apps as part of their core functionality
- Microsoft Edge includes support for kiosk mode. To learn more, see [Microsoft Edge kiosk mode](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy)
- Avoid selecting Windows apps that might expose the information you don't want to show in your kiosk, since kiosk usually means anonymous access and locates in a public setting. For example, an app that has a file picker allows the user to gain access to files and folders on the user's system, avoid selecting these types of apps if they provide unnecessary data access
- Some apps might require more configurations before they can be used appropriately in Assigned Access. For example, Microsoft OneNote requires you to set up a Microsoft account for the Assigned Access user account before OneNote opens
- The kiosk profile is designed for public-facing kiosk devices. Use a local, non-administrator account. If the device is connected to your organization network, using a domain or Microsoft Entra account could compromise confidential information

## Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

It's recommended to thoroughly test the Assigned Access kiosk configuration, ensuring that your devices provide a good user experience.

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, [certain policies](kiosk-policies.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.

## Troubleshooting

Event Viewer
Run "eventvwr.msc"
Navigate to "Applications and Services Logs"
There are 2 areas of your interests:
"Microsoft-Windows-AssignedAccess"
"Microsoft-Windows-AssignedAccessBroker"
Before any repro, it's recommended to enable "Operational" channel to get the most of logs.
TraceLogging

Registry Key
These locations contain the latest Assigned Access Configuration:

HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration
HKLM\SOFTWARE\Microsoft\Windows\AssignedAccessCsp
These locations contain the latest "evaluated" configuration for each sign-in user:

"HKCU\SOFTWARE\Microsoft\Windows\AssignedAccessConfiguration" (If it doesn't exist, it means no Assigned Access to be enforced for this user.)

> [!NOTE]
> If the application calls `KeyCredentialManager.IsSupportedAsync` when it is running in assigned access mode and it returns false on the first run, invoke the settings screen and select an appropriate PIN to use with Windows Hello. This is the settings screen that is hidden by the application running in assigned access mode. You can only use Windows Hello if you first leave assigned access mode, select your convenience pin, and then go back into assigned access mode again.

-->
