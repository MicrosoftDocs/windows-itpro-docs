---
title: Policy CSP - WindowsLogon
description: Use the Policy CSP - WindowsLogon setting to control whether a device automatically signs in and locks the last interactive user after the system restarts.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - WindowsLogon

<hr/>

<!--Policies-->
## WindowsLogon policies

<dl>
  <dd>
    <a href="#windowslogon-allowautomaticrestartsignon">WindowsLogon/AllowAutomaticRestartSignOn</a>
  </dd>
  <dd>
    <a href="#windowslogon-configautomaticrestartsignon">WindowsLogon/ConfigAutomaticRestartSignOn</a>
  </dd>
  <dd>
    <a href="#windowslogon-disablelockscreenappnotifications">WindowsLogon/DisableLockScreenAppNotifications</a>
  </dd>
  <dd>
    <a href="#windowslogon-dontdisplaynetworkselectionui">WindowsLogon/DontDisplayNetworkSelectionUI</a>
  </dd>
  <dd>
    <a href="#windowslogon-enablefirstlogonanimation">WindowsLogon/EnableFirstLogonAnimation</a>
  </dd>
  <dd>
    <a href="#windowslogon-enablemprnotifications">WindowsLogon/EnableMPRNotifications</a>
  </dd>
  <dd>
    <a href="#windowslogon-enumeratelocalusersondomainjoinedcomputers">WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers</a>
  </dd>
  <dd>
    <a href="#windowslogon-hidefastuserswitching">WindowsLogon/HideFastUserSwitching</a>
  </dd>
</dl>

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="windowslogon-allowautomaticrestartsignon"></a>**WindowsLogon/AllowAutomaticRestartSignOn**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether a device automatically signs in and locks the last interactive user after the system restarts or after a shutdown and cold boot.

This scenario occurs only if the last interactive user didn't sign out before the restart or shutdown.​

If the device is joined to Active Directory or Azure Active Directory, this policy applies only to Windows Update restarts. Otherwise, this policy applies to both Windows Update restarts and user-initiated restarts and shutdowns.​

If you don't configure this policy setting, it's enabled by default. When the policy is enabled, the user is automatically signed in and the session is automatically locked with all lock screen apps configured for that user after the device boots.​

After enabling this policy, you can configure its settings through the [ConfigAutomaticRestartSignOn](#windowslogon-configautomaticrestartsignon) policy, which configures the mode of automatically signing in and locking the last interactive user after a restart or cold boot​.

If you disable this policy setting, the device doesn't configure automatic sign in. The user’s lock screen apps aren't restarted after the system restarts.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Sign-in and lock last interactive user automatically after a restart*
-   GP name: *AutomaticRestartSignOn*
-   GP path: *Windows Components/Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-configautomaticrestartsignon"></a>**WindowsLogon/ConfigAutomaticRestartSignOn**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the configuration under which an automatic restart, sign in, and lock occurs after a restart or cold boot. If you chose “Disabled” in the [AllowAutomaticRestartSignOn](#windowslogon-allowautomaticrestartsignon) policy, then automatic sign in doesn't occur and this policy need not be configured.

If you enable this policy setting, you can choose one of the following two options:

- Enabled if BitLocker is on and not suspended: Specifies that automatic sign in and lock occurs only if BitLocker is active and not suspended during the reboot or shutdown. Personal data can be accessed on the device’s hard drive at this time if BitLocker isn't on or suspended during an update. BitLocker suspension temporarily removes protection for system components and data but may be needed in certain circumstances to successfully update boot-critical components.
BitLocker is suspended during updates if:
    - The device doesn't have TPM 2.0 and PCR7
    - The device doesn't use a TPM-only protector
- Always Enabled: Specifies that automatic sign in happens even if BitLocker is off or suspended during reboot or shutdown. When BitLocker isn't enabled, personal data is accessible on the hard drive. Automatic restart and sign in should only be run under this condition if you're confident that the configured device is in a secure physical location.

If you disable or don't configure this setting, automatic sign in defaults to the “Enabled if BitLocker is on and not suspended” behavior.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot*
-   GP name: *ConfigAutomaticRestartSignOn*
-   GP path: *Windows Components/Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-disablelockscreenappnotifications"></a>**WindowsLogon/DisableLockScreenAppNotifications**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to prevent app notifications from appearing on the lock screen.

If you enable this policy setting, no app notifications are displayed on the lock screen.

If you disable or don't configure this policy setting, users can choose which apps display notifications on the lock screen.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off app notifications on the lock screen*
-   GP name: *DisableLockScreenAppNotifications*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to control whether anyone can interact with available networks UI on the sign-in screen.

If you enable this policy setting, the PC's network connectivity state can't be changed without signing into Windows.

If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.

Here's an example to enable this policy:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Atomic>
      <CmdID>300</CmdID>
      <Replace>
        <CmdID>301</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/Policy/Config/WindowsLogon/DontDisplayNetworkSelectionUI</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data><![CDATA[<enabled/>]]></Data>
        </Item>
      </Replace>
    </Atomic>
    <Final/>
  </SyncBody>
</SyncML>
```

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not display network selection UI*
-   GP name: *DontDisplayNetworkSelectionUI*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-enablefirstlogonanimation"></a>**WindowsLogon/EnableFirstLogonAnimation**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to control whether users see the first sign-in animation when signing in to the computer for the first time. This view applies to both the first user of the computer who completes the initial setup and users who are added to the computer later. It also controls if Microsoft account users are offered the opt-in prompt for services during their first sign-in.

If you enable this policy setting, Microsoft account users see the opt-in prompt for services, and users with other accounts see the sign-in animation.

If you disable this policy setting, users don't see the animation and Microsoft account users don't see the opt-in prompt for services.

If you don't configure this policy setting, the user who completes the initial Windows setup see the animation during their first sign-in. If the first user had already completed the initial setup and this policy setting isn't configured, users new to this computer don't see the animation.

> [!NOTE]
> The first sign-in animation isn't displayed on Server, so this policy has no effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Show first sign-in animation*
-   GP name: *EnableFirstLogonAnimation*
-   GP path: *System/Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:
-   0 - disabled
-   1 - enabled
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-enablemprnotifications"></a>**WindowsLogon/EnableMPRNotifications**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows winlogon to send MPR notifications in the system if a credential manager is configured.

If you disable (0), MPR notifications will not be sent by winlogon.

If you enable (1) or do not configure this policy setting this policy, MPR notifications will be sent by winlogon.

<!--/Description-->
<!--SupportedValues-->
Supported values:

-   0 - disabled
-   1 (default)- enabled
<!--/SupportedValues-->

<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-enumeratelocalusersondomainjoinedcomputers"></a>**WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows local users to be enumerated on domain-joined computers.

If you enable this policy setting, Logon UI will enumerate all local users on domain-joined computers.

If you disable or don't configure this policy setting, the Logon UI won't enumerate local users on domain-joined computers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enumerate local users on domain-joined computers*
-   GP name: *EnumerateLocalUsers*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-hidefastuserswitching"></a>**WindowsLogon/HideFastUserSwitching**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to hide the Switch account button on the sign-in screen, Start, and the Task Manager. If you enable this policy setting, the Switch account button is hidden from the user who is attempting to sign-in or is signed in to the computer that has this policy applied. If you disable or don't configure this policy setting, the Switch account button is accessible to the user in the three locations.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide entry points for Fast User Switching*
-   GP name: *HideFastUserSwitching*
-   GP path: *System/Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disabled (visible).
-   1 - Enabled (hidden).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Verify that the Switch account button in Start is hidden.

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)