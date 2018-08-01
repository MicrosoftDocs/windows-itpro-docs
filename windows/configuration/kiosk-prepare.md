---
title: Prepare a device for kiosk configuration (Windows 10)
description: Some tips for device settings on kiosks.
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
keywords: ["assigned access", "kiosk", "lockdown", "digital sign", "digital signage"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: high
ms.date: 07/30/2018
---

# Prepare a device for kiosk configuration


**Applies to**

-   Windows 10 Pro, Enterprise, and Education

>[!WARNING]
>For kiosks in public-facing environments with auto sign-in enabled, you should use a user account with least privilege, such as a local standard user account.
>
>Assigned access can be configured via Windows Management Instrumentation (WMI) or configuration service provider (CSP) to run its applications under a domain user or service account, rather than a local account. However, use of domain user or service accounts introduces risks that an attacker subverting the assigned access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.


For a more secure kiosk experience, we recommend that you make the following configuration changes to the device before you configure it as a kiosk:

Recommendation | How to
--- | ---
Replace "blue screen" with blank screen for OS errors   | Add the following registry key as DWORD (32-bit) type with a value of `1`:</br></br>`HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\DisplayDisabled`</br></br>[Learn how to modify the Windows registry](https://go.microsoft.com/fwlink/p/?LinkId=615002)</br></br>You must restart the device after changing the registry.
Put device in **Tablet mode**. | If you want users to be able to use the touch (on screen) keyboard, go to **Settings** &gt; **System** &gt; **Tablet mode** and choose **On.** Do not turn on this setting if users will not interact with the kiosk, such as for a digital sign.
Hide **Ease of access** feature on the sign-in screen. |     Go to **Control Panel** &gt; **Ease of Access** &gt; **Ease of Access Center**, and turn off all accessibility tools.
Disable the hardware power button. |     Go to **Power Options** &gt; **Choose what the power button does**, change the setting to **Do nothing**, and then **Save changes**.
Remove the power button from the sign-in screen. |     Go to **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Local Policies** &gt;**Security Options** &gt; **Shutdown: Allow system to be shut down without having to log on** and select **Disabled.**
Disable the camera. |     Go to **Settings** &gt; **Privacy** &gt; **Camera**, and turn off **Let apps use my camera**.
Turn off app notifications on the lock screen. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Logon\\Turn off app notifications on the lock screen**.
Disable removable media. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Device Installation\\Device Installation Restrictions**. Review the policy settings available in **Device Installation Restrictions** for the settings applicable to your situation.</br></br>**NOTE**: To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**.

In addition to the settings in the table, you may want to set up **automatic logon** for your kiosk device. When your kiosk device restarts, whether from an update or power outage, you can sign in the assigned access account manually or you can configure the device to sign in to the assigned access account automatically. Make sure that Group Policy settings applied to the device do not prevent automatic sign in.

>[!TIP]
>If you use the [kiosk wizard in Windows Configuration Designer](kiosk-single-app.md#wizard) or [XML in a provisioning package](lock-down-windows-10-to-specific-apps.md) to configure your kiosk, you can set an account to sign in automatically in the wizard or XML. 


**How to edit the registry to have an account sign in automatically**

1.  Open Registry Editor (regedit.exe).

    >[!NOTE]  
    >If you are not familiar with Registry Editor, [learn how to modify the Windows registry](https://go.microsoft.com/fwlink/p/?LinkId=615002).
  

2.  Go to

    **HKEY\_LOCAL\_MACHINE\SOFTWARE\\Microsoft\WindowsNT\CurrentVersion\Winlogon**

3.  Set the values for the following keys.

    -   *AutoAdminLogon*: set value as **1**.

    -   *DefaultUserName*: set value as the account that you want signed in.

    -   *DefaultPassword*: set value as the password for the account.

       > [!NOTE]
       > If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** &gt; **String Value**.

    -   *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, do not add this key.

4.  Close Registry Editor. The next time the computer restarts, the account will sign in automatically.

>[!TIP]
>You can also configure automatic sign-in [using the Autologon tool from Sysinternals](https://docs.microsoft.com/sysinternals/downloads/autologon).







