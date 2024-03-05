---
title: What is Assigned Access?
description: Learn about Assigned Access and how you can use it to configure a Windows device as a kiosk or restricted user experience.
ms.date: 03/04/2024
ms.topic: overview
---

# What is Assigned Access?

Assigned Access is a Windows feature that you can use to configure a device as a kiosk or with a restricted user experience.

:::row:::
    :::column span="1":::
    :::image type="content" source="images/kiosk.png" alt-text="Icon representing a kiosk." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Kiosk experience
    :::column-end:::
:::row-end:::

When you configure a kiosk experience, a single UWP application or Microsoft Edge is executed in full screen, above the lock screen. Users can only use that application. If the kiosk app is closed, it automatically restarts. Practical examples include:

- Public browsing
- Interactive digital signage

:::row:::
    :::column span="1":::
    :::image type="content" source="images/restricted-user-experience.png" alt-text="Icon representing a restricted user experience." border="false":::
    :::column-end:::
    :::column span="3":::
    #### Restricted user experience
    :::column-end:::
:::row-end:::

When you configure a restricted user experience, users can execute a defined list of applications, with a tailored Start menu and Taskbar. Ideal for shared devices, multi-app kiosk mode can create different configurations for different users, ensuring they have access to only what is needed to use the device as intended. The locked down configurations present users with a familiar Windows desktop, while limiting their access, reducing distractions, and potential for inadvertent uses. Practical examples include:

- Frontline worker devices
- Student devices
- Lab devices

[!INCLUDE [assigned-access](../../../includes/licensing/assigned-access.md)]

## Locked-down experience

When applying an Assigned Access configuration to a device, different policy settings and AppLocker rules are enforced, creating a locked down experience to the users.



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

When planning to deploy a kiosk or a restricted user experience, consider the following:

- Evaluate all applications that users should use. If applications require user authentication, don't use a local or generic
user account. Rather, target the group of users within the Assigned Access configuration file
- A multi-app kiosk is appropriate for devices that are shared by multiple people. When you configure a multi-app kiosk, certain policy settings that affects all non-administrator users on the device. For a list of these policies, see [Assigned Access policy settings](policy-settings.md)

## Develop your kiosk app

Assigned Access uses the *Lock framework*. When an Assigned Access user signs in, the selected kiosk app is launched above the lock screen. The kiosk app is running as an *above lock* screen app. To learn more, see [best practices guidance for developing a kiosk app for assigned access](/windows-hardware/drivers/partnerapps/create-a-kiosk-app-for-assigned-access).

## Test your Assigned Access experience

Thoroughly test the Assigned Access kiosk configuration, ensuring that your devices provide a good user experience.

> [!NOTE]
> The use of multiple monitors is supported for multi-app kiosk mode in Windows 11.

The Assigned Access feature is intended for dedicated devices, like kiosks. When the multi-app Assigned Access configuration is applied on the device, certain [policy settings](policy-settings.md) are enforced system-wide, impacting other users on the device. Deleting the kiosk configuration removes the Assigned Access lockdown profiles associated with the users, but it can't revert all the enforced policies (for example, the Start layout). To clear all the policy settings enforced by Assigned Access, you must reset Windows.

## User experience

To test the kiosk, sign in with the Assigned Access user account you specified in the configuration to check out the multi-app experience.

>[!NOTE]
>The kiosk configuration setting will take effect the next time the Assigned Access user signs in. If that user account is signed in when you apply the configuration, make sure the user signs out and signs back in to validate the experience.

When Assigned Access is configured, different policy settings are applied to the device to provide a secured, locked-down experience. For more information, see [policy-settings](policy-settings.md).

Optionally, run Event Viewer (eventvwr.exe) and look through logs under **Applications and Services Logs** > **Microsoft** > **Windows** > **Provisioning-Diagnostics-Provider** > **Admin**.

### App launching and switching experience

In the multi-app mode, to maximize the user productivity and streamline the experience, an app will be always launched in full screen when the users click the tile on the Start. The users can minimize and close the app, but cannot resize the app window.

The users can switch apps just as they do today in Windows. They can use the Task View button, Alt + Tab hotkey, and the swipe in from the left gesture to view all the open apps in task view. They can click the Windows button to show Start, from which they can open apps, and they can switch to an opened app by clicking it on the taskbar.

### Auto-trigger touch keyboard

The touch keyboard is automatically triggered when there's an input needed and no physical keyboard is attached on touch-enabled devices. You don't need to configure any other setting to enforce this behavior.

### Sign out of assigned access

To exit the Assigned Access (kiosk) app, press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd>, and then sign in using another account. When you press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the Assigned Access account or wait for the sign in screen timeout, the kiosk app relaunches. The Assigned Access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> and do not sign in to another account, after a set time, Assigned Access will resume. The default time is 30 seconds, but you can change that in the following registry key:

`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI`

To change the default time for Assigned Access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

> [!NOTE]
> **IdleTimeOut** doesn't apply to the new Microsoft Edge kiosk mode.

The Breakout Sequence of <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Del</kbd> is the default, but this sequence can be configured to be a different sequence of keys. The breakout sequence uses the format **modifiers + keys**. An example breakout sequence would look something like **Shift + Alt + a**, where **Shift** and **Alt** are the modifiers and **a** is the key value. For more information, see [Microsoft Edge kiosk XML sample](/windows/configuration/kiosk-xml#microsoft-edge-kiosk-xml-sample).

## Interactions and interoperability

The following table describes some features that have interoperability issues we recommend that you consider when running assigned access.

### Accessibility

Assigned access doesn't change accessibility settings. We recommend that you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the following key combinations that open accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Print Screen</kbd> | Open High Contrast dialog box |
  | <kbd>Left Alt</kbd> + <kbd>Left Shift</kbd> + <kbd>Num Lock</kbd> | Open Mouse Keys dialog box |
  | <kbd>WIN</kbd> + <kbd>U</kbd> | Open the Settings app accessibility panel |

### Keyboard shortcuts

The following keyboard shortcuts are blocked for any user account with Assigned Access:

| Keyboard shortcut | Action |
|--|--|
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd>  + <kbd>Esc</kbd>  | Open Task Manager |
| <kbd>WIN</kbd> + <kbd>, (comma)</kbd> | Temporarily peek at the desktop |
| <kbd>WIN</kbd> + <kbd>A</kbd> | Open Action center |
| <kbd>WIN</kbd> + <kbd>Alt</kbd>  + <kbd> D</kbd> | Display and hide the date and time on the desktop |
| <kbd>WIN</kbd> + <kbd>Ctrl</kbd>  + <kbd> F</kbd> | Find computer objects in Active Directory |
| <kbd>WIN</kbd> + <kbd>D</kbd> | Display and hide the desktop |
| <kbd>WIN</kbd> + <kbd>E</kbd> | Open File Explorer |
| <kbd>WIN</kbd> + <kbd>F</kbd> | Open Feedback Hub |
| <kbd>WIN</kbd> + <kbd>G</kbd> | Open Game bar when a game is open |
| <kbd>WIN</kbd> + <kbd>I</kbd> | Open Settings |
| <kbd>WIN</kbd> + <kbd>J</kbd> | Set focus to a Windows tip when one is available |
| <kbd>WIN</kbd> + <kbd>O</kbd> | Lock device orientation |
| <kbd>WIN</kbd> + <kbd>Q</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>R</kbd> | Open the Run dialog box |
| <kbd>WIN</kbd> + <kbd>S</kbd> | Open search |
| <kbd>WIN</kbd> + <kbd>Shift</kbd>  + <kbd> C</kbd> | Open Cortana in listening mode |
| <kbd>WIN</kbd> + <kbd>X</kbd> | Open the Quick Link menu |
| LaunchApp1 | Open the app that is assigned to this key |
| LaunchApp2 | Open the app that is assigned to this key. On many Microsoft keyboards, the app is Calculator |
| LaunchMail | Open the default mail client |

The following keyboard shortcuts are't blocked for any user account with Assigned Access. You can use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block these key combinations:

| Keyboard shortcut | Action |
|--|--|
|<kbd>Alt</kbd> + <kbd>F4</kbd>||
|<kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd>||
|<kbd>Alt</kbd> + <kbd>Tab</kbd>||

> [!NOTE]
> <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Delete</kbd> is the default keyboard shortcut to break out of Assigned Access. You can use *Keyboard Filter* to configure a different key combination to break out of Assigned Access by setting *BreakoutKeyScanCode* as described in [WEKF_Settings](/windows-hardware/customize/enterprise/wekf-settings).

> [!CAUTION]
> Keyboard Filter settings apply to other standard accounts.

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter).
  [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) is only available on Windows client Enterprise or Education
- **Power button**: Customizations for the Power button complement assigned access, letting you implement features such as removing the power button from the Welcome screen. Removing the power button ensures the user can't turn off the device when it's in assigned access
  For more information on removing the power button or disabling the physical power button, see [Custom Logon][WHW-1]
- **Unified Write Filter (UWF)**: UWFsettings apply to all users, including users with assigned access
  For more information, see [Unified Write Filter][WHW-2]
- **WEDL_AssignedAccess class**: You can use this class to configure and manage basic lockdown features for assigned access. It's recommended to you use the Windows PowerShell cmdlets instead.
  If you need to use Assigned Access API, see [WEDL_AssignedAccess][WHW-3]
- **Welcome Screen**: Customizations for the Welcome screen let you personalize not only how the Welcome screen looks, but for how it functions. You can disable the power or language button, or remove all user interface elements. There are many options to make the Welcome screen your own

For more information, see [Custom Logon][WHW-1].



<!--links-->

[WHW-1]: /windows-hardware/customize/enterprise/custom-logon
[WHW-2]: /windows-hardware/customize/enterprise/unified-write-filter
[WHW-3]: /windows-hardware/customize/enterprise/wedl-assignedaccess
