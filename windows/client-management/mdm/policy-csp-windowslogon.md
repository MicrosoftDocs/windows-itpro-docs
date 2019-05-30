---
title: Policy CSP - WindowsLogon
description: Policy CSP - WindowsLogon
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 05/21/2019
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
    <a href="#windowslogon-enumeratelocalusersondomainjoinedcomputers">WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers</a>
  </dd>
  <dd>
    <a href="#windowslogon-hidefastuserswitching">WindowsLogon/HideFastUserSwitching</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="windowslogon-allowautomaticrestartsignon"></a>**WindowsLogon/AllowAutomaticRestartSignOn**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether a device automatically signs in and locks the last interactive user after the system restarts or after a shutdown and cold boot.

This occurs only if the last interactive user did not sign out before the restart or shutdown.​

If the device is joined to Active Directory or Azure Active Directory, this policy applies only to Windows Update restarts. Otherwise, this policy applies to both Windows Update restarts and user-initiated restarts and shutdowns.​

If you do not configure this policy setting, it is enabled by default. When the policy is enabled, the user is automatically signed in and the session is automatically locked with all lock screen apps configured for that user after the device boots.​

After enabling this policy, you can configure its settings through the [ConfigAutomaticRestartSignOn](#windowslogon-configautomaticrestartsignon) policy, which configures the mode of automatically signing in and locking the last interactive user after a restart or cold boot​.

If you disable this policy setting, the device does not configure automatic sign in. The user’s lock screen apps are not restarted after the system restarts.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Sign-in and lock last interactive user automatically after a restart*
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls the configuration under which an automatic restart, sign on, and lock occurs after a restart or cold boot. If you chose “Disabled” in the [AllowAutomaticRestartSignOn](#windowslogon-allowautomaticrestartsignon) policy, then automatic sign on does not occur and this policy need not be configured.

If you enable this policy setting, you can choose one of the following two options:

- Enabled if BitLocker is on and not suspended: Specifies that automatic sign on and lock occurs only if BitLocker is active and not suspended during the reboot or shutdown. Personal data can be accessed on the device’s hard drive at this time if BitLocker is not on or suspended during an update. BitLocker suspension temporarily removes protection for system components and data but may be needed in certain circumstances to successfully update boot-critical components.  
BitLocker is suspended during updates if:
    - The device does not have TPM 2.0 and PCR7
    - The device does not use a TPM-only protector
- Always Enabled: Specifies that automatic sign on happens even if BitLocker is off or suspended during reboot or shutdown. When BitLocker is not enabled, personal data is accessible on the hard drive. Automatic restart and sign on should only be run under this condition if you are confident that the configured device is in a secure physical location.

If you disable or do not configure this setting, automatic sign on defaults to the “Enabled if BitLocker is on and not suspended” behavior.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot*
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
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to prevent app notifications from appearing on the lock screen.

If you enable this policy setting, no app notifications are displayed on the lock screen.

If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off app notifications on the lock screen*
-   GP name: *DisableLockScreenAppNotifications*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.

If you enable this policy setting, the PC's network connectivity state cannot be changed without signing into Windows.

If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.

Here is an example to enable this policy:

``` syntax
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
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not display network selection UI*
-   GP name: *DontDisplayNetworkSelectionUI*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-enablefirstlogonanimation"></a>**WindowsLogon/EnableFirstLogonAnimation**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to control whether users see the first sign-in animation when signing in to the computer for the first time. This applies to both the first user of the computer who completes the initial setup and users who are added to the computer later. It also controls if Microsoft account users are offered the opt-in prompt for services during their first sign-in.

If you enable this policy setting, Microsoft account users see the opt-in prompt for services, and users with other accounts see the sign-in animation.

If you disable this policy setting, users do not see the animation and Microsoft account users do not see the opt-in prompt for services.

If you do not configure this policy setting, the user who completes the initial Windows setup see the animation during their first sign-in. If the first user had already completed the initial setup and this policy setting is not configured, users new to this computer do not see the animation.

> [!NOTE]
> The first sign-in animation is not displayed on Server, so this policy has no effect.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Show first sign-in animation*
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
<a href="" id="windowslogon-enumeratelocalusersondomainjoinedcomputers"></a>**WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows local users to be enumerated on domain-joined computers.  

If you enable this policy setting, Logon UI will enumerate all local users on domain-joined computers.

If you disable or do not configure this policy setting, the Logon UI will not enumerate local users on domain-joined computers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enumerate local users on domain-joined computers*
-   GP name: *EnumerateLocalUsers*
-   GP path: *System/Logon*
-   GP ADMX file name: *logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowslogon-hidefastuserswitching"></a>**WindowsLogon/HideFastUserSwitching**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. This policy setting allows you to hide the Switch account button on the sign-in screen, Start, and the Task Manager. If you enable this policy setting, the Switch account button is hidden from the user who is attempting to sign-in or is signed in to the computer that has this policy applied. If you disable or do not configure this policy setting, the Switch account button is accessible to the user in the three locations.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Hide entry points for Fast User Switching*
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
To validate on Desktop, do the following:

1.   Enable policy.
2.   Verify that the Switch account button in Start is hidden.

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->

<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.
