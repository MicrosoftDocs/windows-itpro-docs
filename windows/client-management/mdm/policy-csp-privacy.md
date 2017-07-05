---
title: Policy CSP - Privacy
description: Policy CSP - Privacy
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - Privacy

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Privacy policies  

<!--StartPolicy-->
<a href="" id="privacy-allowautoacceptpairingandprivacyconsentprompts"></a>**Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows or disallows the automatic acceptance of the pairing and privacy user consent dialog when launching apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-allowinputpersonalization"></a>**Privacy/AllowInputPersonalization**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Updated in Windows 10, version 1709. Allows the usage of cloud based speech services for Cortana, dictation, or Store applications. Setting this policy to 1, lets Microsoft use the user's voice data to improve cloud speech services for all users.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.
 

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-disableadvertisingid"></a>**Privacy/DisableAdvertisingId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables or disables the Advertising ID.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 – Enabled.
-   65535 (default)- Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo"></a>**Privacy/LetAppsAccessAccountInfo**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access account information.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-forceallowtheseapps"></a>**Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-forcedenytheseapps"></a>**Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessaccountinfo-userincontroloftheseapps"></a>**Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the account information privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar"></a>**Privacy/LetAppsAccessCalendar**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the calendar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-forceallowtheseapps"></a>**Privacy/LetAppsAccessCalendar_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-forcedenytheseapps"></a>**Privacy/LetAppsAccessCalendar_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscalendar-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the calendar privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory"></a>**Privacy/LetAppsAccessCallHistory**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access call history.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-forceallowtheseapps"></a>**Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-forcedenytheseapps"></a>**Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscallhistory-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the call history privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera"></a>**Privacy/LetAppsAccessCamera**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-forceallowtheseapps"></a>**Privacy/LetAppsAccessCamera_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-forcedenytheseapps"></a>**Privacy/LetAppsAccessCamera_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscamera-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCamera_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the camera privacy setting for the listed apps. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts"></a>**Privacy/LetAppsAccessContacts**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access contacts.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-forceallowtheseapps"></a>**Privacy/LetAppsAccessContacts_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-forcedenytheseapps"></a>**Privacy/LetAppsAccessContacts_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesscontacts-userincontroloftheseapps"></a>**Privacy/LetAppsAccessContacts_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the contacts privacy setting for the listed apps. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail"></a>**Privacy/LetAppsAccessEmail**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-forceallowtheseapps"></a>**Privacy/LetAppsAccessEmail_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-forcedenytheseapps"></a>**Privacy/LetAppsAccessEmail_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessemail-userincontroloftheseapps"></a>**Privacy/LetAppsAccessEmail_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the email privacy setting for the listed apps. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation"></a>**Privacy/LetAppsAccessLocation**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access location.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-forceallowtheseapps"></a>**Privacy/LetAppsAccessLocation_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-forcedenytheseapps"></a>**Privacy/LetAppsAccessLocation_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesslocation-userincontroloftheseapps"></a>**Privacy/LetAppsAccessLocation_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the location privacy setting for the listed apps. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging"></a>**Privacy/LetAppsAccessMessaging**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can read or send messages (text or MMS).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-forceallowtheseapps"></a>**Privacy/LetAppsAccessMessaging_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-forcedenytheseapps"></a>**Privacy/LetAppsAccessMessaging_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmessaging-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the messaging privacy setting for the listed apps. This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone"></a>**Privacy/LetAppsAccessMicrophone**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the microphone.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-forceallowtheseapps"></a>**Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-forcedenytheseapps"></a>**Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmicrophone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the microphone privacy setting for the listed apps. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion"></a>**Privacy/LetAppsAccessMotion**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access motion data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-forceallowtheseapps"></a>**Privacy/LetAppsAccessMotion_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-forcedenytheseapps"></a>**Privacy/LetAppsAccessMotion_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessmotion-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMotion_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the motion privacy setting for the listed apps. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications"></a>**Privacy/LetAppsAccessNotifications**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access notifications.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-forceallowtheseapps"></a>**Privacy/LetAppsAccessNotifications_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-forcedenytheseapps"></a>**Privacy/LetAppsAccessNotifications_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessnotifications-userincontroloftheseapps"></a>**Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the notifications privacy setting for the listed apps. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone"></a>**Privacy/LetAppsAccessPhone**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can make phone calls.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-forceallowtheseapps"></a>**Privacy/LetAppsAccessPhone_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-forcedenytheseapps"></a>**Privacy/LetAppsAccessPhone_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessphone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessPhone_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the phone call privacy setting for the listed apps. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios"></a>**Privacy/LetAppsAccessRadios**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps have access to control radios.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-forceallowtheseapps"></a>**Privacy/LetAppsAccessRadios_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-forcedenytheseapps"></a>**Privacy/LetAppsAccessRadios_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccessradios-userincontroloftheseapps"></a>**Privacy/LetAppsAccessRadios_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the radios privacy setting for the listed apps. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks"></a>**Privacy/LetAppsAccessTasks**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Windows apps can access tasks.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-forceallowtheseapps"></a>**Privacy/LetAppsAccessTasks_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to tasks. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-forcedenytheseapps"></a>**Privacy/LetAppsAccessTasks_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to tasks. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstasks-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTasks_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the tasks privacy setting for the listed apps. This setting overrides the default LetAppsAccessTasks policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices"></a>**Privacy/LetAppsAccessTrustedDevices**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access trusted devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-forceallowtheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-forcedenytheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsaccesstrusteddevices-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'trusted devices' privacy setting for the listed apps. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo"></a>**Privacy/LetAppsGetDiagnosticInfo**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Force allow, force deny or give user control of apps that can get diagnostic information about other running apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-forceallowtheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-forcedenytheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsgetdiagnosticinfo-userincontroloftheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'get diagnostic info' privacy setting for the listed apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground"></a>**Privacy/LetAppsRunInBackground**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Windows apps can run in the background.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control (default).
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.
> [!WARNING]
> Be careful when determining which apps should have their background activity disabled. Communication apps normally update tiles and notifications through background processes. Turning off background activity for these types of apps could cause text message, email, and voicemail notifications to not function. This could also cause background email syncing to not function properly.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-forceallowtheseapps"></a>**Privacy/LetAppsRunInBackground_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are able to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-forcedenytheseapps"></a>**Privacy/LetAppsRunInBackground_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied the ability to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappsruninbackground-userincontroloftheseapps"></a>**Privacy/LetAppsRunInBackground_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the background apps privacy setting for the listed apps. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices"></a>**Privacy/LetAppsSyncWithDevices**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can sync with devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-forceallowtheseapps"></a>**Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-forcedenytheseapps"></a>**Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="privacy-letappssyncwithdevices-userincontroloftheseapps"></a>**Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'sync with devices' privacy setting for the listed apps. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Privacy policies supported by Windows Holographic for Business  

-   [Privacy/AllowInputPersonalization](#privacy-allowinputpersonalization)  
-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Privacy policies supported by IoT Core  

-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Privacy policies supported by Microsoft Surface Hub  

-   [Privacy/LetAppsGetDiagnosticInfo](#privacy-letappsgetdiagnosticinfo)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps](#privacy-letappsgetdiagnosticinfo-forceallowtheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps](#privacy-letappsgetdiagnosticinfo-forcedenytheseapps)  
-   [Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps](#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps)  
-   [Privacy/LetAppsRunInBackground](#privacy-letappsruninbackground)  
-   [Privacy/LetAppsRunInBackground_ForceAllowTheseApps](#privacy-letappsruninbackground-forceallowtheseapps)  
-   [Privacy/LetAppsRunInBackground_ForceDenyTheseApps](#privacy-letappsruninbackground-forcedenytheseapps)  
-   [Privacy/LetAppsRunInBackground_UserInControlOfTheseApps](#privacy-letappsruninbackground-userincontroloftheseapps)  
<!--EndSurfaceHub-->

