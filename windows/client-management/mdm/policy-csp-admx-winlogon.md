---
title: Policy CSP - ADMX_WinLogon
description: Policy CSP - ADMX_WinLogon
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 11/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WinLogon
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WinLogon policies  

<dl>
  <dd>
    <a href="#admx-winlogon-customshell">ADMX_WinLogon/CustomShell</a>
  </dd>
  <dd>
    <a href="#admx-winlogon-displaylastlogoninfodescription">ADMX_WinLogon/DisplayLastLogonInfoDescription</a>
  </dd>
  <dd>
    <a href="#admx-winlogon-logonhoursnotificationpolicydescription">ADMX_WinLogon/LogonHoursNotificationPolicyDescription</a>
  </dd>
  <dd>
    <a href="#admx-winlogon-logonhourspolicydescription">ADMX_WinLogon/LogonHoursPolicyDescription</a>
  </dd>
  <dd>
    <a href="#admx-winlogon-reportcachedlogonpolicydescription">ADMX_WinLogon/ReportCachedLogonPolicyDescription</a>
  </dd>
  <dd>
    <a href="#admx-winlogon-softwaresasgeneration">ADMX_WinLogon/SoftwareSASGeneration</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-winlogon-customshell"></a>**ADMX_WinLogon/CustomShell**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies an alternate user interface.  The Explorer program (%windir%\explorer.exe) creates the familiar Windows interface, but you can use this setting to specify an alternate interface.

If you enable this setting, the system starts the interface you specify instead of Explorer.exe.  To use this setting, copy your interface program to a network share or to your system drive. Then, enable this setting, and type the name of the interface program, including the file name extension, in the Shell name text box. If the interface program file isn't located in a folder specified in the Path environment variable for your system, enter the fully qualified path to the file.

If you disable this setting or don't configure it, the setting is ignored and the system displays the Explorer interface.

> [!TIP]
> To find the folders indicated by the Path environment variable, click System Properties in Control Panel, click the Advanced tab, click the Environment Variables button, and then, in the System variables box, click Path.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Custom User Interface*
-   GP name: *CustomShell*
-   GP path: *System*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-winlogon-displaylastlogoninfodescription"></a>**ADMX_WinLogon/DisplayLastLogonInfoDescription**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting controls whether or not the system displays information about previous sign-ins and sign-in failures to the user.

For local user accounts and domain user accounts in domains of at least a Windows Server 2008 functional level, if you enable this setting, a message appears after the user logs on that displays the date and time of the last successful sign in by that user, the date and time of the last unsuccessful sign in attempted with that user name, and the number of unsuccessful logons since the last successful sign in by that user. This message must be acknowledged by the user before the user is presented with the Microsoft Windows desktop.

For domain user accounts in Windows Server 2003, Windows 2000 native, or Windows 2000 mixed functional level domains, if you enable this setting, a warning message will appear that Windows couldn't retrieve the information and the user won't be able to sign in. Therefore, you shouldn't enable this policy setting if the domain isn't at the Windows Server 2008 domain functional level.

If you disable or don't configure this setting, messages about the previous sign in or sign-in failures aren't displayed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Display information about previous logons during user logon*
-   GP name: *DisplayLastLogonInfoDescription*
-   GP path: *Windows Components\Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-winlogon-logonhoursnotificationpolicydescription"></a>**ADMX_WinLogon/LogonHoursNotificationPolicyDescription**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls whether the signed-in user should be notified when their sign-in hours are about to expire. By default, a user is notified before sign-in hours expire, if actions have been set to occur when the sign-in hours expire.

If you enable this setting, warnings aren't displayed to the user before the sign-in hours expire.

If you disable or don't configure this setting, users receive warnings before the sign-in hours expire, if actions have been set to occur when the sign-in hours expire.

> [!NOTE]
> If you configure this setting, you might want to examine and appropriately configure the “Set action to take when logon hours expire” setting. If “Set action to take when logon hours expire” is disabled or not configured, the “Remove logon hours expiration warnings” setting will have no effect, and users receive no warnings about logon hour expiration

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove logon hours expiration warnings*
-   GP name: *LogonHoursNotificationPolicyDescription*
-   GP path: *Windows Components\Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-winlogon-logonhourspolicydescription"></a>**ADMX_WinLogon/LogonHoursPolicyDescription**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls which action will be taken when the sign-in hours expire for the logged on user. The actions include lock the workstation, disconnect the user, or log the user off completely.

If you choose to lock or disconnect a session, the user can't unlock the session or reconnect except during permitted sign-in hours.

If you choose to sign out a user, the user can't sign in again except during permitted sign-in hours. If you choose to sign out a user, the user might lose unsaved data.  If you enable this setting, the system will perform the action you specify when the user’s sign-in hours expire.

If you disable or don't configure this setting, the system takes no action when the user’s sign-in hours expire. The user can continue the existing session, but can't sign in to a new session.

> [!NOTE]
> If you configure this setting, you might want to examine and appropriately configure the “Remove logon hours expiration warnings” setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set action to take when logon hours expire*
-   GP name: *LogonHoursPolicyDescription*
-   GP path: *Windows Components\Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-winlogon-reportcachedlogonpolicydescription"></a>**ADMX_WinLogon/ReportCachedLogonPolicyDescription**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls whether the signed-in user should be notified if the sign-in server couldn't be contacted during sign in and if they've been signed in using previously stored account information.

If enabled, a notification popup will be displayed to the user when the user logs on with cached credentials.

If disabled or not configured, no popup will be displayed to the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Report when logon server was not available during user logon*
-   GP name: *ReportCachedLogonPolicyDescription*
-   GP path: *Windows Components\Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-winlogon-softwaresasgeneration"></a>**ADMX_WinLogon/SoftwareSASGeneration**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting controls whether or not software can simulate the Secure Attention Sequence (SAS).

If you enable this policy setting, you have one of four options:  

- If you set this policy setting to "None," user mode software can't simulate the SAS.
- If you set this policy setting to "Services," services can simulate the SAS.
- If you set this policy setting to "Ease of Access applications," Ease of Access applications can simulate the SAS.
- If you set this policy setting to "Services and Ease of Access applications," both services and Ease of Access applications can simulate the SAS.

If you disable or don't configure this setting, only Ease of Access applications running on the secure desktop can simulate the SAS.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disable or enable software Secure Attention Sequence*
-   GP name: *SoftwareSASGeneration*
-   GP path: *Windows Components\Windows Logon Options*
-   GP ADMX file name: *WinLogon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->