---
title: Policy CSP - ErrorReporting
description: Policy CSP - ErrorReporting
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 03/12/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ErrorReporting



<hr/>

<!--Policies-->
## ErrorReporting policies  

<dl>
  <dd>
    <a href="#errorreporting-customizeconsentsettings">ErrorReporting/CustomizeConsentSettings</a>
  </dd>
  <dd>
    <a href="#errorreporting-disablewindowserrorreporting">ErrorReporting/DisableWindowsErrorReporting</a>
  </dd>
  <dd>
    <a href="#errorreporting-displayerrornotification">ErrorReporting/DisplayErrorNotification</a>
  </dd>
  <dd>
    <a href="#errorreporting-donotsendadditionaldata">ErrorReporting/DoNotSendAdditionalData</a>
  </dd>
  <dd>
    <a href="#errorreporting-preventcriticalerrordisplay">ErrorReporting/PreventCriticalErrorDisplay</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="errorreporting-customizeconsentsettings"></a>**ErrorReporting/CustomizeConsentSettings**  

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
This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.

- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Customize consent settings*
-   GP name: *WerConsentCustomize_2*
-   GP path: *Windows Components/Windows Error Reporting/Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-disablewindowserrorreporting"></a>**ErrorReporting/DisableWindowsErrorReporting**  

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
This policy setting turns off Windows Error Reporting, so that reports are not collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

If you enable this policy setting, Windows Error Reporting does not send any problem information to Microsoft. Additionally, solution information is not available in Security and Maintenance in Control Panel.

If you disable or do not configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Disable Windows Error Reporting*
-   GP name: *WerDisable_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-displayerrornotification"></a>**ErrorReporting/DisplayErrorNotification**  

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
This policy setting controls whether users are shown an error dialog box that lets them report an error.

If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.

If you disable this policy setting, users are not notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that do not have interactive users.

If you do not configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.

See also the Configure Error Reporting policy setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Display Error Notification*
-   GP name: *PCH_ShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-donotsendadditionaldata"></a>**ErrorReporting/DoNotSendAdditionalData**  

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
This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.

If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

If you disable or do not configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not send additional data*
-   GP name: *WerNoSecondLevelData_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-preventcriticalerrordisplay"></a>**ErrorReporting/PreventCriticalErrorDisplay**  

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
This policy setting prevents the display of the user interface for critical errors.

If you enable this policy setting, Windows Error Reporting does not display any GUI-based error messages or dialog boxes for critical errors.

If you disable or do not configure this policy setting, Windows Error Reporting displays the user interface for critical errors.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent display of the user interface for critical errors*
-   GP name: *WerDoNotShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

