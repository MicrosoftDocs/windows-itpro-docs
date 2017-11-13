---
title: Policy CSP - WindowsDefenderSecurityCenter
description: Policy CSP - WindowsDefenderSecurityCenter
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - WindowsDefenderSecurityCenter



<hr/>

<!--StartPolicies-->
## WindowsDefenderSecurityCenter policies  

<dl>
  <dd>
    <a href="#windowsdefendersecuritycenter-companyname">WindowsDefenderSecurityCenter/CompanyName</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disableappbrowserui">WindowsDefenderSecurityCenter/DisableAppBrowserUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disableenhancednotifications">WindowsDefenderSecurityCenter/DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablefamilyui">WindowsDefenderSecurityCenter/DisableFamilyUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablehealthui">WindowsDefenderSecurityCenter/DisableHealthUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablenetworkui">WindowsDefenderSecurityCenter/DisableNetworkUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablenotifications">WindowsDefenderSecurityCenter/DisableNotifications</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablevirusui">WindowsDefenderSecurityCenter/DisableVirusUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disallowexploitprotectionoverride">WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-email">WindowsDefenderSecurityCenter/Email</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-enablecustomizedtoasts">WindowsDefenderSecurityCenter/EnableCustomizedToasts</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-enableinappcustomization">WindowsDefenderSecurityCenter/EnableInAppCustomization</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-phone">WindowsDefenderSecurityCenter/Phone</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-url">WindowsDefenderSecurityCenter/URL</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-companyname"></a>**WindowsDefenderSecurityCenter/CompanyName**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. The company name that is displayed to the users. CompanyName is required for both EnableCustomizedToasts and EnableInAppCustomization. If you disable or do not configure this setting, or do not have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices will not display the contact options.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Replace and Delete.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disableappbrowserui"></a>**WindowsDefenderSecurityCenter/DisableAppBrowserUI**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of the app and browser protection area in Windows Defender Security Center. If you disable or do not configure this setting, Windows defender Security Center will display this area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of the app and browser protection area in Windows Defender Security Center.
- 1 - (Enable) The users cannot see the display of the app and browser protection area in Windows Defender Security Center.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disableenhancednotifications"></a>**WindowsDefenderSecurityCenter/DisableEnhancedNotifications**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy if you want Windows Defender Security Center to only display notifications which are considered critical. If you disable or do not configure this setting, Windows Defender Security Center will display critical and non-critical notifications to users.

> [!Note]  
> If Suppress notification is enabled then users will not see critical or non-critical messages.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) Windows Defender Security Center will display critical and non-critical notifications to users..
- 1 - (Enable) Windows Defender Security Center only display notifications which are considered critical on clients.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disablefamilyui"></a>**WindowsDefenderSecurityCenter/DisableFamilyUI**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of the family options area in Windows Defender Security Center. If you disable or do not configure this setting, Windows defender Security Center will display this area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of the family options area in Windows Defender Security Center.
- 1 - (Enable) The users cannot see the display of the family options area in Windows Defender Security Center.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disablehealthui"></a>**WindowsDefenderSecurityCenter/DisableHealthUI**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of the device performance and health area in Windows Defender Security Center. If you disable or do not configure this setting, Windows defender Security Center will display this area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of the device performance and health area in Windows Defender Security Center.
- 1 - (Enable) The users cannot see the display of the device performance and health area in Windows Defender Security Center.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disablenetworkui"></a>**WindowsDefenderSecurityCenter/DisableNetworkUI**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of the firewall and network protection area in Windows Defender Security Center. If you disable or do not configure this setting, Windows defender Security Center will display this area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of the firewall and network protection area in Windows Defender Security Center.
- 1 - (Enable) The users cannot see the display of the firewall and network protection area in Windows Defender Security Center.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disablenotifications"></a>**WindowsDefenderSecurityCenter/DisableNotifications**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of Windows Defender Security Center notifications. If you disable or do not configure this setting, Windows Defender Security Center notifications will display on devices.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of Windows Defender Security Center notifications.
- 1 - (Enable) The users cannot see the display of Windows Defender Security Center notifications.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disablevirusui"></a>**WindowsDefenderSecurityCenter/DisableVirusUI**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Use this policy setting if you want to disable the display of the virus and threat protection area in Windows Defender Security Center. If you disable or do not configure this setting, Windows defender Security Center will display this area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete. Valid values:

- 0 - (Disable) The users can see the display of the virus and threat protection area in Windows Defender Security Center.
- 1 - (Enable) The users cannot see the display of the virus and threat protection area in Windows Defender Security Center.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-disallowexploitprotectionoverride"></a>**WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Prevent users from making changes to the exploit protection settings area in the Windows Defender Security Center. If you disable or do not configure this setting, local users can make changes in the exploit protection settings area.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace and Delete.Valid values:

- 0 - (Disable) Local users are allowed to make changes in the exploit protection settings area.
- 1 - (Enable) Local users cannot make changes in the exploit protection settings area.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-email"></a>**WindowsDefenderSecurityCenter/Email**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. The email address that is displayed to users.  The default mail application is used to initiate email actions. If you disable or do not configure this setting, or do not have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices will not display contact options.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Replace and Delete.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-enablecustomizedtoasts"></a>**WindowsDefenderSecurityCenter/EnableCustomizedToasts**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Enable this policy to display your company name and contact options in the notifications. If you disable or do not configure this setting, or do not provide CompanyName and a minimum of one contact method (Phone using Skype, Email, Help portal URL) Windows Defender Security Center will display a default notification text.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace, and Delete. Valid values:

- 0 - (Disable) Notifications contain a default notification text.
- 1 - (Enable) Notifications contain the company name and contact options.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-enableinappcustomization"></a>**WindowsDefenderSecurityCenter/EnableInAppCustomization**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709.Enable this policy to have your company name and contact options displayed in a contact card fly out in Windows Defender Security Center. If you disable or do not configure this setting, or do not provide CompanyName and a minimum of one contact method (Phone using Skype, Email, Help portal URL) Windows Defender Security Center will not display the contact card fly out notification.

<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Replace, and Delete. Valid values:

- 0 - (Disable) Do not display the company name and contact options in the card fly out notification.
- 1 - (Enable) Display the company name and contact options in the card fly out notification.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-phone"></a>**WindowsDefenderSecurityCenter/Phone**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. The phone number or Skype ID that is displayed to users.  Skype is used to initiate the call. If you disable or do not configure this setting, or do not have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices will not display contact options.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="windowsdefendersecuritycenter-url"></a>**WindowsDefenderSecurityCenter/URL**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. The help portal URL this is displayed to users. The default browser is used to initiate this action. If you disable or do not configure this setting, or do not have EnableCustomizedToasts or EnableInAppCustomization enabled, then the device will not display contact options.

<p style="margin-left: 20px">Value type is Value type is string. Supported operations are Add, Get, Replace, and Delete.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

