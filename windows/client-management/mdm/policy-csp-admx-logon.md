---
title: Policy CSP - ADMX_Logon
description: Policy CSP - ADMX_Logon
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 12/21/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Logon
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Logon policies  

<dl>
  <dd>
    <a href="#admx-logon-blockuserfromshowingaccountdetailsonsignin">ADMX_Logon/BlockUserFromShowingAccountDetailsOnSignin</a>
  </dd>
  <dd>
    <a href="#admx-logon-disableacrylicbackgroundonlogon">ADMX_Logon/DisableAcrylicBackgroundOnLogon</a>
  </dd>
  <dd>
    <a href="#admx-logon-disableexplorerrunlegacy-1">ADMX_Logon/DisableExplorerRunLegacy_1</a>
  </dd>
  <dd>
    <a href="#admx-logon-disableexplorerrunlegacy-2">ADMX_Logon/DisableExplorerRunLegacy_2</a>
  </dd>
  <dd>
    <a href="#admx-logon-disableexplorerrunoncelegacy-1">ADMX_Logon/DisableExplorerRunOnceLegacy_1</a>
  </dd>
  <dd>
    <a href="#admx-logon-disableexplorerrunoncelegacy-2">ADMX_Logon/DisableExplorerRunOnceLegacy_2</a>
  </dd>
  <dd>
    <a href="#admx-logon-disablestatusmessages">ADMX_Logon/DisableStatusMessages</a>
  </dd>
  <dd>
    <a href="#admx-logon-dontenumerateconnectedusers">ADMX_Logon/DontEnumerateConnectedUsers</a>
  </dd>
  <dd>
    <a href="#admx-logon-nowelcometips-1">ADMX_Logon/NoWelcomeTips_1</a>
  </dd>
  <dd>
    <a href="#admx-logon-nowelcometips-2">ADMX_Logon/NoWelcomeTips_2</a>
  </dd>
  <dd>
    <a href="#admx-logon-run-1">ADMX_Logon/Run_1</a>
  </dd>
  <dd>
    <a href="#admx-logon-run-2">ADMX_Logon/Run_2</a>
  </dd>
  <dd>
    <a href="#admx-logon-syncforegroundpolicy">ADMX_Logon/SyncForegroundPolicy</a>
  </dd>
  <dd>
    <a href="#admx-logon-useoembackground">ADMX_Logon/UseOEMBackground</a>
  </dd>
  <dd>
    <a href="#admx-logon-verbosestatus">ADMX_Logon/VerboseStatus</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-logon-blockuserfromshowingaccountdetailsonsignin"></a>**ADMX_Logon/BlockUserFromShowingAccountDetailsOnSignin**  

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
This policy prevents the user from showing account details (email address or user name) on the sign-in screen. 

If you enable this policy setting, the user can't choose to show account details on the sign-in screen.

If you disable or don't configure this policy setting, the user may choose to show account details on the sign-in screen.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Block user from showing account details on sign-in*
-   GP name: *BlockUserFromShowingAccountDetailsOnSignin*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disableacrylicbackgroundonlogon"></a>**ADMX_Logon/DisableAcrylicBackgroundOnLogon**  

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
This policy setting disables the acrylic blur effect on logon background image.

If you enable this policy, the logon background image shows without blur.

If you disable or don't configure this policy, the logon background image adopts the acrylic blur effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Show clear logon background*
-   GP name: *DisableAcrylicBackgroundOnLogon*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disableexplorerrunlegacy-1"></a>**ADMX_Logon/DisableExplorerRunLegacy_1**  

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
This policy setting ignores the customized run list.

These programs are added to the standard run list of programs and services that the system starts.

This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

> [!NOTE]
> To create a customized run list by using a policy setting, use the "Run these applications at startup" policy setting.  Also, see the "Do not process the run once list" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not process the legacy run list*
-   GP name: *DisableExplorerRunLegacy_1*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disableexplorerrunlegacy-2"></a>**ADMX_Logon/DisableExplorerRunLegacy_2**  

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
This policy setting ignores the customized run list.

These programs are added to the standard run list of programs and services that the system starts.

This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

> [!NOTE]
> To create a customized run list by using a policy setting, use the "Run these applications at startup" policy setting.  Also, see the "Do not process the run once list" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not process the legacy run list*
-   GP name: *DisableExplorerRunLegacy_2*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disableexplorerrunoncelegacy-1"></a>**ADMX_Logon/DisableExplorerRunOnceLegacy_1**  

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
This policy setting ignores customized run-once lists.

You can create a customized list of other programs and documents that are started automatically the next time the system starts (but not thereafter). These programs are added to the standard list of programs and services that the system starts.

If you enable this policy setting, the system ignores the run-once list.

If you disable or don't configure this policy setting, the system runs the programs in the run-once list.

This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

> [!NOTE]
> Customized run-once lists are stored in the registry in HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce. Also, see the "Do not process the legacy run list" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not process the run once list*
-   GP name: *DisableExplorerRunOnceLegacy_1*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disableexplorerrunoncelegacy-2"></a>**ADMX_Logon/DisableExplorerRunOnceLegacy_2**  

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
This policy setting ignores customized run-once lists.

You can create a customized list of other programs and documents that are started automatically the next time the system starts (but not thereafter). These programs are added to the standard list of programs and services that the system starts.

If you enable this policy setting, the system ignores the run-once list.

If you disable or don't configure this policy setting, the system runs the programs in the run-once list.

This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.

> [!NOTE]
> Customized run-once lists are stored in the registry in HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce. Also, see the "Do not process the legacy run list" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not process the run once list*
-   GP name: *DisableExplorerRunOnceLegacy_2*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-disablestatusmessages"></a>**ADMX_Logon/DisableStatusMessages**  

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
This policy setting suppresses system status messages.

If you enable this setting, the system doesn't display a message reminding users to wait while their system starts or shuts down, or while users sign in or sign out.

If you disable or don't configure this policy setting, the system displays the message reminding users to wait while their system starts or shuts down, or while users sign in or sign out.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove Boot / Shutdown / Logon / Logoff status messages*
-   GP name: *DisableStatusMessages*
-   GP path: *System*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-dontenumerateconnectedusers"></a>**ADMX_Logon/DontEnumerateConnectedUsers**  

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
This policy setting prevents connected users from being enumerated on domain-joined computers.

If you enable this policy setting, the Logon UI won't enumerate any connected users on domain-joined computers.

If you disable or don't configure this policy setting, connected users will be enumerated on domain-joined computers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not enumerate connected users on domain-joined computers*
-   GP name: *DontEnumerateConnectedUsers*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-nowelcometips-1"></a>**ADMX_Logon/NoWelcomeTips_1**  

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
This policy setting hides the welcome screen that is displayed on Windows each time the user logs on.

If you enable this policy setting, the welcome screen is hidden from the user logging on to a computer where this policy is applied.

Users can still display the welcome screen by selecting it on the Start menu or by typing "Welcome" in the Run dialog box.

If you disable or don't configure this policy, the welcome screen is displayed each time a user signs in to the computer.

This setting applies only to Windows. It doesn't affect the "Configure Your Server on a Windows Server" screen on Windows Server.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display the welcome screen, click Start, point to Programs, point to Accessories, point to System Tools, and then click "Getting Started." To suppress the welcome screen without specifying a setting, clear the "Show this screen at startup" check box on the welcome screen.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display the Getting Started welcome screen at logon*
-   GP name: *NoWelcomeTips_1*
-   GP path: *System*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-logon-nowelcometips-2"></a>**ADMX_Logon/NoWelcomeTips_2**  

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
This policy setting hides the welcome screen that is displayed on Windows each time the user logs on.

If you enable this policy setting, the welcome screen is hidden from the user logging on to a computer where this policy is applied.

Users can still display the welcome screen by selecting it on the Start menu or by typing "Welcome" in the Run dialog box.

If you disable or don't configure this policy, the welcome screen is displayed each time a user signs in to the computer.  This setting applies only to Windows. It doesn't affect the "Configure Your Server on a Windows Server" screen on Windows Server.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.

> [!TIP]
> To display the welcome screen, click Start, point to Programs, point to Accessories, point to System Tools, and then click "Getting Started." To suppress the welcome screen without specifying a setting, clear the "Show this screen at startup" check box on the welcome screen.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not display the Getting Started welcome screen at logon*
-   GP name: *NoWelcomeTips_2*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-run-1"></a>**ADMX_Logon/Run_1**  

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
This policy setting specifies other programs or documents that Windows starts automatically when a user signs in to the system.

If you enable this policy setting, you can specify which programs can run at the time the user signs in to this computer that has this policy applied.

To specify values for this policy setting, click Show. In the Show Contents dialog box in the Value column, type the name of the executable program (.exe) file or document file. To specify another name, press ENTER, and type the name. Unless the file is located in the %Systemroot% directory, you must specify the fully qualified path to the file.

If you disable or don't configure this policy setting, the user will have to start the appropriate programs after signing in.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the system starts the programs specified in the Computer Configuration setting just before it starts the programs specified in the User Configuration setting.

Also, see the "Do not process the legacy run list" and the "don't process the run once list" settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run these programs at user logon*
-   GP name: *Run_1*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-run-2"></a>**ADMX_Logon/Run_2**  

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
This policy setting specifies other programs or documents that Windows starts automatically when a user signs in to the system.

If you enable this policy setting, you can specify which programs can run at the time the user signs in to this computer that has this policy applied.

To specify values for this policy setting, click Show. In the Show Contents dialog box in the Value column, type the name of the executable program (.exe) file or document file. To specify another name, press ENTER, and type the name. Unless the file is located in the %Systemroot% directory, you must specify the fully qualified path to the file.

If you disable or don't configure this policy setting, the user will have to start the appropriate programs after signing in.

> [!NOTE]
> This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the system starts the programs specified in the Computer Configuration setting just before it starts the programs specified in the User Configuration setting.

Also, see the "Do not process the legacy run list" and the "don't process the run once list" settings.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Run these programs at user logon*
-   GP name: *Run_2*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-syncforegroundpolicy"></a>**ADMX_Logon/SyncForegroundPolicy**  

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
This policy setting determines whether Group Policy processing is synchronous (that is, whether computers wait for the network to be fully initialized during computer startup and user sign in). By default, on client computers, Group Policy processing isn't synchronous; client computers typically don't wait for the network to be fully initialized at startup and sign in. Existing users are signed in using cached credentials, which results in shorter sign-in times. Group Policy is applied in the background after the network becomes available.

Because this process (of applying Group Policy) is a background refresh, extensions such as Software Installation and Folder Redirection take two sign-ins to apply changes. To be able to operate safely, these extensions require that no users be signed in. Therefore, they must be processed in the foreground before users are actively using the computer. In addition, changes that are made to the user object, such as adding a roaming profile path, home directory, or user object logon script, may take up to two sign-ins to be detected.

If a user with a roaming profile, home directory, or user object logon script signs in to a computer, computers always wait for the network to be initialized before signing in the user. If a user has never signed in to this computer before, computers always wait for the network to be initialized.

If you enable this policy setting, computers wait for the network to be fully initialized before users are signed in. Group Policy is applied in the foreground, synchronously.

On servers running Windows Server 2008 or later, this policy setting is ignored during Group Policy processing at computer startup and Group Policy processing will be synchronous (these servers wait for the network to be initialized during computer startup).

If the server is configured as follows, this policy setting takes effect during Group Policy processing at user sign in:

- The server is configured as a terminal server (that is, the Terminal Server role service is installed and configured on the server); and
- The “Allow asynchronous user Group Policy processing when logging on through Terminal Services” policy setting is enabled. This policy setting is located under Computer Configuration\Policies\Administrative templates\System\Group Policy\\.

If this configuration isn't implemented on the server, this policy setting is ignored. In this case, Group Policy processing at user sign in is synchronous (these servers wait for the network to be initialized during user sign in).

If you disable or don't configure this policy setting and users sign in to a client computer or a server running Windows Server 2008 or later and that is configured as described earlier, the computer typically doesn't wait for the network to be fully initialized. In this case, users are logged on with cached credentials. Group Policy is applied asynchronously in the background.

> [!NOTE]
>
> - If you want to guarantee the application of Folder Redirection, Software Installation, or roaming user profile settings in just one sign in, enable this policy setting to ensure that Windows waits for the network to be available before applying policy. 
> - If Folder Redirection policy will apply during the next sign in, security policies will be applied asynchronously during the next update cycle, if network connectivity is available.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Always wait for the network at computer startup and logon*
-   GP name: *SyncForegroundPolicy*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-useoembackground"></a>**ADMX_Logon/UseOEMBackground**  

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
This policy setting ignores Windows Logon Background.

This policy setting may be used to make Windows give preference to a custom logon background. If you enable this policy setting, the sign-in screen always attempts to load a custom background instead of the Windows-branded logon background.

If you disable or don't configure this policy setting, Windows uses the default Windows logon background or custom background.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Always use custom logon background*
-   GP name: *UseOEMBackground*
-   GP path: *System\Logon*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-logon-verbosestatus"></a>**ADMX_Logon/VerboseStatus**  

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
This policy setting directs the system to display highly detailed status messages.

This policy setting is designed for advanced users who require this information.

If you enable this policy setting, the system displays status messages that reflect each step in the process of starting, shutting down, logging on, or logging off the system.

If you disable or don't configure this policy setting, only the default status messages are displayed to the user during these processes.

> [!NOTE]
> This policy setting is ignored if the "Remove Boot/Shutdown/Logon/Logoff status messages" policy setting is enabled.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Display highly detailed status messages*
-   GP name: *VerboseStatus*
-   GP path: *System*
-   GP ADMX file name: *Logon.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

