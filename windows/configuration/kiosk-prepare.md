---
title: Prepare a device for kiosk configuration on Windows 10/11 | Microsoft Docs
description: Learn how to prepare a device for kiosk configuration. Also, learn about the recommended kiosk configuration changes.
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
ms.reviewer: 
manager: dansimp
ms.author: greglin
keywords: ["assigned access", "kiosk", "lockdown", "digital sign", "digital signage"]
ms.prod: w10, w11
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Prepare a device for kiosk configuration


**Applies to**

- Windows 10 Pro, Enterprise, and Education
- Windows 11

> [!WARNING]
> For kiosks in public-facing environments with auto sign-in enabled, you should use a user account with the least privileges, such as a local standard user account.
>
> Assigned access can be configured via Windows Management Instrumentation (WMI) or configuration service provider (CSP) to run its applications under a domain user or service account, rather than a local account. However, use of domain user or service accounts introduces risks that might allow an attacker subverting the assigned access application to gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.

> [!IMPORTANT]
> [User account control (UAC)](/windows/security/identity-protection/user-account-control/user-account-control-overview) must be turned on to enable kiosk mode.
>
> Kiosk mode is not supported over a remote desktop connection. Your kiosk users must sign in on the physical device that is set up as a kiosk.

## Configuration recommendations

For a more secure kiosk experience, we recommend that you make the following configuration changes to the device before you configure it as a kiosk: 

| Recommendation | How to |
| --- | --- |
|Hide update notifications<br>(New starting in Windows 10, version 1809)   | Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\Windows Components\\Windows Update\\Display options for update notifications**<br>-or-<br>Use the MDM setting **Update/UpdateNotificationLevel** from the [**Policy/Update** configuration service provider](/windows/client-management/mdm/policy-csp-update#update-updatenotificationlevel)<br>-or-<br>Add the following registry keys as type DWORD (32-bit) in the path of **HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate**:<br>**\SetUpdateNotificationLevel** with a value of `1`, and **\UpdateNotificationLevel** with a value of `1` to hide all notifications except restart warnings, or value of `2` to hide all notifications, including restart warnings. |
| Enable and schedule automatic updates | Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\Windows Components\\Windows Update\\Configure Automatic Updates**, and select `option 4 (Auto download and schedule the install)`<br>-or-<br>Use the MDM setting **Update/AllowAutoUpdate** from the [**Policy/Update** configuration service provider](/windows/client-management/mdm/policy-csp-update#update-allowautoupdate), and select `option 3 (Auto install and restart at a specified time)`<br><br>**Note:** Installations can take from between 30 minutes and 2 hours, depending on the device, so you should schedule updates to occur when a block of 3-4 hours is available.<br><br>To schedule the automatic update, configure **Schedule Install Day**, **Schedule Install Time**, and **Schedule Install Week**. |
| Enable automatic restart at the scheduled time | Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\Windows Components\\Windows Update\\Always automatically restart at the scheduled time** |
| Replace "blue screen" with blank screen for OS errors   | Add the following registry key as DWORD (32-bit) type with a value of `1`:</br></br>**HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\DisplayDisabled** |
| Put device in **Tablet mode**. | If you want users to be able to use the touch (on screen) keyboard, go to **Settings** &gt; **System** &gt; **Tablet mode** and choose **On.** Don't turn on this setting if users will not interact with the kiosk, such as for a digital sign.
Hide **Ease of access** feature on the sign-in screen. |     See [how to disable the Ease of Access button in the registry.](/windows-hardware/customize/enterprise/complementary-features-to-custom-logon#welcome-screen)
| Disable the hardware power button. |     Go to **Power Options** &gt; **Choose what the power button does**, change the setting to **Do nothing**, and then **Save changes**. |
| Remove the power button from the sign-in screen. |     Go to **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Local Policies** &gt;**Security Options** &gt; **Shutdown: Allow system to be shut down without having to log on** and select **Disabled.** |
| Disable the camera. |     Go to **Settings** &gt; **Privacy** &gt; **Camera**, and turn off **Let apps use my camera**. |
| Turn off app notifications on the lock screen. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Logon\\Turn off app notifications on the lock screen**. |
| Disable removable media. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Device Installation\\Device Installation Restrictions**. Review the policy settings available in **Device Installation Restrictions** for the settings applicable to your situation.</br></br>**NOTE**: To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**. |


## Enable logging

Logs can help you [troubleshoot issues](./kiosk-troubleshoot.md) kiosk issues. Logs about configuration and runtime issues can be obtained by enabling the **Applications and Services Logs\Microsoft\Windows\AssignedAccess\Operational** channel, which is disabled by default.

:::image type="content" source="images/enable-assigned-access-log.png" alt-text="On Windows client, open Event Viewer, right-click Operational, select enable log to turn on logging to help troubleshoot.":::

## Automatic logon

You may also want to set up **automatic logon** for your kiosk device. When your kiosk device restarts, from an update or power outage, you can sign in the assigned access account manually. Or, you can configure the device to sign in to the assigned access account automatically. Make sure that Group Policy settings applied to the device don't prevent automatic sign in.

> [!NOTE]
> If you are using a Windows client device restriction CSP to set "Preferred Azure AD tenant domain", this will break the "User logon type" auto-login feature of the Kiosk profile.

> [!TIP]
> If you use the [kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard) or [XML in a provisioning package](lock-down-windows-10-to-specific-apps.md) to configure your kiosk, you can set an account to sign in automatically in the wizard or XML. 


**How to edit the registry to have an account sign in automatically**

1. Open Registry Editor (regedit.exe).

   > [!NOTE]
   > If you are not familiar with Registry Editor, [learn how to modify the Windows registry](/troubleshoot/windows-server/performance/windows-registry-advanced-users).
  
 
2. Go to

   **HKEY\_LOCAL\_MACHINE\SOFTWARE\\Microsoft\Windows NT\CurrentVersion\Winlogon**

3. Set the values for the following keys.

   - *AutoAdminLogon*: set value as **1**.

   - *DefaultUserName*: set value as the account that you want signed in.

   - *DefaultPassword*: set value as the password for the account.

     > [!NOTE]
     > If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** &gt; **String Value**.

   - *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, do not add this key.

4. Close Registry Editor. The next time the computer restarts, the account will sign in automatically.

> [!TIP]
> You can also configure automatic sign-in [using the Autologon tool from Sysinternals](/sysinternals/downloads/autologon).

> [!NOTE]
> If you are also using [Custom Logon](/windows-hardware/customize/enterprise/custom-logon) with **HideAutoLogonUI** enabled, you might experience a black screen after a password expires. We recommend that you consider [setting the password to never expire](/windows-hardware/customize/enterprise/troubleshooting-custom-logon#the-device-displays-a-black-screen-when-a-password-expiration-screen-is-displayed).

## Interactions and interoperability

The following table describes some features that have interoperability issues we recommend that you consider when running assigned access.

- **Accessibility**: Assigned access does not change Ease of Access settings. We recommend that you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block the following key combinations that bring up accessibility features:

  | Key combination | Blocked behavior |
  | --- | --- | 
  | Left Alt + Left Shift + Print Screen | Open High Contrast dialog box. |
  | Left Alt + Left Shift + Num Lock | Open Mouse Keys dialog box. |
  | Windows logo key + U | Open Ease of Access Center. | 

- **Assigned access Windows PowerShell cmdlets**: In addition to using the Windows UI, you can use the Windows PowerShell cmdlets to set or clear assigned access. For more information, see [Assigned access Windows PowerShell reference](/powershell/module/assignedaccess/)

- **Key sequences blocked by assigned access**: When in assigned access, some key combinations are blocked for assigned access users.

  Alt + F4, Alt + Shift + Tab, Alt + Tab are not blocked by Assigned Access, it's recommended you use [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) to block these key combinations.

  Ctrl + Alt + Delete is the key to break out of Assigned Access. If needed, you can use Keyboard Filter to configure a different key combination to break out of assigned access by setting BreakoutKeyScanCode as described in [WEKF_Settings](/windows-hardware/customize/enterprise/wekf-settings).

  | Key combination | Blocked behavior for assigned access users |
  | --- | --- | 
  | Alt + Esc | Cycle through items in the reverse order from which they were opened. |
  | Ctrl + Alt + Esc | Cycle through items in the reverse order from which they were opened. |
  | Ctrl + Esc | Open the Start screen. |
  | Ctrl + F4 | Close the window. |
  | Ctrl + Shift + Esc | Open Task Manager. |
  | Ctrl + Tab | Switch windows within the application currently open. |
  | LaunchApp1 | Open the app that is assigned to this key. |
  | LaunchApp2 | Open the app that is assigned to this key, which on many Microsoft keyboards is Calculator. |
  | LaunchMail | Open the default mail client. |
  | Windows logo key | Open the Start screen. |

  Keyboard Filter settings apply to other standard accounts.

- **Key sequences blocked by [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)**: If Keyboard Filter is turned ON, then some key combinations are blocked automatically without you having to explicitly block them. For more information, see the [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter).

  [Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter) is only available on Windows client Enterprise or Education.

- **Power button**: Customizations for the Power button complement assigned access, letting you implement features such as removing the power button from the Welcome screen. Removing the power button ensures the user cannot turn off the device when it's in assigned access.

  For more information on removing the power button or disabling the physical power button, see [Custom Logon](/windows-hardware/customize/enterprise/custom-logon).

- **Unified Write Filter (UWF)**: UWFsettings apply to all users, including users with assigned access.

  For more information, see [Unified Write Filter](/windows-hardware/customize/enterprise/unified-write-filter).

- **WEDL_AssignedAccess class**: You can use this class to configure and manage basic lockdown features for assigned access. It's recommended to you use the Windows PowerShell cmdlets instead.

  If you need to use assigned access API, see [WEDL_AssignedAccess](/windows-hardware/customize/enterprise/wedl-assignedaccess).

- **Welcome Screen**: Customizations for the Welcome screen let you personalize not only how the Welcome screen looks, but for how it functions. You can disable the power or language button, or remove all user interface elements. There are many options to make the Welcome screen your own.

  For more information, see [Custom Logon](/windows-hardware/customize/enterprise/custom-logon).

## Testing your kiosk in a virtual machine (VM)

Customers sometimes use virtual machines (VMs) to test configurations before deploying those configurations to physical devices. If you use a VM to test your single-app kiosk configuration, you need to know how to connect to the VM properly.

A single-app kiosk configuration runs an app above the lock screen. It doesn't work when it's accessed remotely, which includes *enhanced* sessions in Hyper-V. 

When you connect to a VM configured as a single-app kiosk, you need a *basic* session rather than an enhanced session. In the following image, notice that **Enhanced session** is not selected in the **View** menu; that means it's a basic session.

:::image type="content" source="images/vm-kiosk.png" alt-text="Use a basic session to connect a virtual machine. In the View menu, Extended session isn't selected, which means basic is used.":::

To connect to a VM in a basic session, don't select **Connect** in the connection dialog, as shown in the following image, but instead, select the **X** button in the upper-right corner to cancel the dialog:

:::image type="content" source="images/vm-kiosk-connect.png" alt-text="Don't select the connect button. Use the close X in the top corner to connect to a VM in basic session.":::
