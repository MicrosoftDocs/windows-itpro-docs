---
title: Policy CSP - ErrorReporting
description: Learn how to use the Policy CSP - ErrorReporting setting to determine the consent behavior of Windows Error Reporting for specific event types.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ErrorReporting

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those even types for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any extra data requested by Microsoft.

- 3 (Send parameters and safe extra data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and data which Windows has determined (within a high probability) doesn't contain personally identifiable data, and prompts the user for consent to send any extra data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

If you disable or don't configure this policy setting, then the default consent settings that are applied are those settings specified by the user in Control Panel, or in the Configure Default Consent policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Customize consent settings*
-   GP name: *WerConsentCustomize_2*
-   GP path: *Windows Components/Windows Error Reporting/Consent*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-disablewindowserrorreporting"></a>**ErrorReporting/DisableWindowsErrorReporting**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting turns off Windows Error Reporting, so that reports aren't collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

If you enable this policy setting, Windows Error Reporting doesn't send any problem information to Microsoft. Additionally, solution information isn't available in Security and Maintenance in Control Panel.

If you disable or don't configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable Windows Error Reporting*
-   GP name: *WerDisable_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-displayerrornotification"></a>**ErrorReporting/DisplayErrorNotification**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting controls whether users are shown an error dialog box that lets them report an error.

If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.

If you disable this policy setting, users aren't notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that don't have interactive users.

If you don't configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.

See also the Configure Error Reporting policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Display Error Notification*
-   GP name: *PCH_ShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-donotsendadditionaldata"></a>**ErrorReporting/DoNotSendAdditionalData**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting controls whether extra data in support of error reports can be sent to Microsoft automatically.

If you enable this policy setting, any extra data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

If you disable or don't configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not send additional data*
-   GP name: *WerNoSecondLevelData_2*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="errorreporting-preventcriticalerrordisplay"></a>**ErrorReporting/PreventCriticalErrorDisplay**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting prevents the display of the user interface for critical errors.

If you enable this policy setting, Windows Error Reporting doesn't display any GUI-based error messages or dialog boxes for critical errors.

If you disable or don't configure this policy setting, Windows Error Reporting displays the user interface for critical errors.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent display of the user interface for critical errors*
-   GP name: *WerDoNotShowUI*
-   GP path: *Windows Components/Windows Error Reporting*
-   GP ADMX file name: *ErrorReporting.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

