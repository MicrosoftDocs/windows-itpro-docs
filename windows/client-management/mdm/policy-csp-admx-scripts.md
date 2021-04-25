---
title: Policy CSP - ADMX_Scripts
description: Policy CSP - ADMX_Scripts
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/17/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Scripts
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Scripts policies  

<dl>
  <dd>
    <a href="#admx-scripts-allow-logon-script-netbiosdisabled">ADMX_Scripts/Allow_Logon_Script_NetbiosDisabled</a>
  </dd>
  <dd>
    <a href="#admx-scripts-maxgposcriptwaitpolicy">ADMX_Scripts/MaxGPOScriptWaitPolicy</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-computer-ps-scripts-first">ADMX_Scripts/Run_Computer_PS_Scripts_First</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-legacy-logon-script-hidden">ADMX_Scripts/Run_Legacy_Logon_Script_Hidden</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-logoff-script-visible">ADMX_Scripts/Run_Logoff_Script_Visible</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-logon-script-sync-1">ADMX_Scripts/Run_Logon_Script_Sync_1</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-logon-script-sync-2">ADMX_Scripts/Run_Logon_Script_Sync_2</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-logon-script-visible">ADMX_Scripts/Run_Logon_Script_Visible</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-shutdown-script-visible">ADMX_Scripts/Run_Shutdown_Script_Visible</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-startup-script-sync">ADMX_Scripts/Run_Startup_Script_Sync</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-startup-script-visible">ADMX_Scripts/Run_Startup_Script_Visible</a>
  </dd>
  <dd>
    <a href="#admx-scripts-run-user-ps-scripts-first">ADMX_Scripts/Run_User_PS_Scripts_First</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-scripts-allow-logon-script-netbiosdisabled"></a>**ADMX_Scripts/Allow_Logon_Script_NetbiosDisabled**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows user logon scripts to run when the logon cross-forest, DNS suffixes are not configured, and NetBIOS or WINS is disabled. This policy setting affects all user accounts interactively logging on to the computer.

If you enable this policy setting, user logon scripts run if NetBIOS or WINS is disabled during cross-forest logons without the DNS suffixes being configured.

If you disable or do not configure this policy setting, user account cross-forest, interactive logging cannot run logon scripts if NetBIOS or WINS is disabled, and the DNS suffixes are not configured.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow logon scripts when NetBIOS or WINS is disabled*
-   GP name: *Allow_Logon_Script_NetbiosDisabled*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-maxgposcriptwaitpolicy"></a>**ADMX_Scripts/MaxGPOScriptWaitPolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how long the system waits for scripts applied by Group Policy to run. 

This setting limits the total time allowed for all logon, logoff, startup, and shutdown scripts applied by Group Policy to finish running. If the scripts have not finished running when the specified time expires, the system stops script processing and records an error event.

If you enable this setting, then, in the Seconds box, you can type a number from 1 to 32,000 for the number of seconds you want the system to wait for the set of scripts to finish. To direct the system to wait until the scripts have finished, no matter how long they take, type 0. 

This interval is particularly important when other system tasks must wait while the scripts complete. By default, each startup script must complete before the next one runs. Also, you can use the "Run logon scripts synchronously" setting to direct the system to wait for the logon scripts to complete before loading the desktop. 

An excessively long interval can delay the system and inconvenience users. However, if the interval is too short, prerequisite tasks might not be done, and the system can appear to be ready prematurely.

If you disable or do not configure this setting the system lets the combined set of scripts run for up to 600 seconds (10 minutes). This is the default.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify maximum wait time for Group Policy scripts*
-   GP name: *MaxGPOScriptWaitPolicy*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-computer-ps-scripts-first"></a>**ADMX_Scripts/Run_Computer_PS_Scripts_First**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows PowerShell scripts are run before non-Windows PowerShell scripts during computer startup and shutdown. By default, Windows PowerShell scripts run after non-Windows PowerShell scripts. 
 
If you enable this policy setting, within each applicable Group Policy Object (GPO), Windows PowerShell scripts are run before non-Windows PowerShell scripts during computer startup and shutdown. 

For example, assume the following scenario: 

There are three GPOs (GPO A, GPO B, and GPO C). This policy setting is enabled in GPO A. 

GPO B and GPO C include the following computer startup scripts:

GPO B: B.cmd, B.ps1
GPO C: C.cmd, C.ps1

Assume also that there are two computers, DesktopIT and DesktopSales. 
For DesktopIT, GPOs A, B, and C are applied. Therefore, the scripts for GPOs B and C run in the following order for DesktopIT:

Within GPO B: B.ps1, B.cmd
Within GPO C: C.ps1, C.cmd
 
For DesktopSales, GPOs B and C are applied, but not GPO A. Therefore, the scripts for GPOs B and C run in the following order for DesktopSales:

Within GPO B: B.cmd, B.ps1
Within GPO C: C.cmd, C.ps1

> [!NOTE]
> This policy setting determines the order in which computer startup and shutdown scripts are run within all applicable GPOs. You can override this policy setting for specific script types within a specific GPO by configuring the following policy settings for the GPO:
> - Computer Configuration\Policies\Windows Settings\Scripts (Startup/Shutdown)\Startup
> - Computer Configuration\Policies\Windows Settings\Scripts (Startup/Shutdown)\Shutdown

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run Windows PowerShell scripts first at computer startup, shutdown*
-   GP name: *Run_Computer_PS_Scripts_First*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-legacy-logon-script-hidden"></a>**ADMX_Scripts/Run_Legacy_Logon_Script_Hidden**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting hides the instructions in logon scripts written for Windows NT 4.0 and earlier. 

Logon scripts are batch files of instructions that run when the user logs on. By default, Windows 2000 displays the instructions in logon scripts written for Windows NT 4.0 and earlier in a command window as they run, although it does not display logon scripts written for Windows 2000.

If you enable this setting, Windows 2000 does not display logon scripts written for Windows NT 4.0 and earlier.

If you disable or do not configure this policy setting, Windows 2000 displays login scripts written for Windows NT 4.0 and earlier.

Also, see the "Run Logon Scripts Visible" setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run legacy logon scripts hidden*
-   GP name: *Run_Legacy_Logon_Script_Hidden*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-logoff-script-visible"></a>**ADMX_Scripts/Run_Logoff_Script_Visible**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting displays the instructions in logoff scripts as they run.

Logoff scripts are batch files of instructions that run when the user logs off. By default, the system does not display the instructions in the logoff script.

If you enable this policy setting, the system displays each instruction in the logoff script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.

If you disable or do not configure this policy setting, the instructions are suppressed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Display instructions in logoff scripts as they run*
-   GP name: *Run_Logoff_Script_Visible*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-logon-script-sync-1"></a>**ADMX_Scripts/Run_Logon_Script_Sync_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.

If you enable this policy setting, File Explorer does not start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.

If you disable or do not configure this policy setting, the logon scripts and File Explorer are not synchronized and can run simultaneously.

This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run logon scripts synchronously*
-   GP name: *Run_Logon_Script_Sync_1*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-logon-script-sync-2"></a>**ADMX_Scripts/Run_Logon_Script_Sync_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.

If you enable this policy setting, File Explorer does not start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.

If you disable or do not configure this policy setting, the logon scripts and File Explorer are not synchronized and can run simultaneously.

This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run logon scripts synchronously*
-   GP name: *Run_Logon_Script_Sync_2*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-logon-script-visible"></a>**ADMX_Scripts/Run_Logon_Script_Visible**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting displays the instructions in logon scripts as they run.

Logon scripts are batch files of instructions that run when the user logs on. By default, the system does not display the instructions in logon scripts.

If you enable this policy setting, the system displays each instruction in the logon script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.

If you disable or do not configure this policy setting, the instructions are suppressed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Display instructions in logon scripts as they run*
-   GP name: *Run_Logon_Script_Visible*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-shutdown-script-visible"></a>**ADMX_Scripts/Run_Shutdown_Script_Visible**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting displays the instructions in shutdown scripts as they run.

Shutdown scripts are batch files of instructions that run when the user restarts the system or shuts it down. By default, the system does not display the instructions in the shutdown script.

If you enable this policy setting, the system displays each instruction in the shutdown script as it runs. The instructions appear in a command window.

If you disable or do not configure this policy setting, the instructions are suppressed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Display instructions in shutdown scripts as they run*
-   GP name: *Run_Shutdown_Script_Visible*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-startup-script-sync"></a>**ADMX_Scripts/Run_Startup_Script_Sync**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting lets the system run startup scripts simultaneously.

Startup scripts are batch files that run before the user is invited to log on. By default, the system waits for each startup script to complete before it runs the next startup script.

If you enable this policy setting, the system does not coordinate the running of startup scripts. As a result, startup scripts can run simultaneously.

If you disable or do not configure this policy setting, a startup cannot run until the previous script is complete.

> [!NOTE]
> Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether the "Run startup scripts visible" policy setting is enabled or not.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run startup scripts asynchronously*
-   GP name: *Run_Startup_Script_Sync*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-startup-script-visible"></a>**ADMX_Scripts/Run_Startup_Script_Visible**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting displays the instructions in startup scripts as they run.

Startup scripts are batch files of instructions that run before the user is invited to log on. By default, the system does not display the instructions in the startup script.

If you enable this policy setting, the system displays each instruction in the startup script as it runs. Instructions appear in a command window. This policy setting is designed for advanced users.

If you disable or do not configure this policy setting, the instructions are suppressed.

> [!NOTE]
> Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether this policy setting is enabled or not.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Display instructions in startup scripts as they run*
-   GP name: *Run_Startup_Script_Visible*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-scripts-run-user-ps-scripts-first"></a>**ADMX_Scripts/Run_User_PS_Scripts_First**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows PowerShell scripts are run before non-Windows PowerShell scripts during user logon and logoff. By default, Windows PowerShell scripts run after non-Windows PowerShell scripts. 
 
If you enable this policy setting, within each applicable Group Policy Object (GPO), PowerShell scripts are run before non-PowerShell scripts during user logon and logoff. 

For example, assume the following scenario: 

There are three GPOs (GPO A, GPO B, and GPO C). This policy setting is enabled in GPO A. 

GPO B and GPO C include the following user logon scripts:

GPO B: B.cmd, B.ps1
GPO C: C.cmd, C.ps1

Assume also that there are two users, Qin Hong and Tamara Johnston. 
For Qin, GPOs A, B, and C are applied. Therefore, the scripts for GPOs B and C run in the following order for Qin:

Within GPO B: B.ps1, B.cmd
Within GPO C: C.ps1, C.cmd
 
For Tamara, GPOs B and C are applied, but not GPO A. Therefore, the scripts for GPOs B and C run in the following order for Tamara:

Within GPO B: B.cmd, B.ps1
Within GPO C: C.cmd, C.ps1

> [!NOTE]
> This policy setting determines the order in which user logon and logoff scripts are run within all applicable GPOs. You can override this policy setting for specific script types within a specific GPO by configuring the following policy settings for the GPO:
> - User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logon
> - User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logoff

This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the setting set in User Configuration.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Run Windows PowerShell scripts first at user logon, logoff*
-   GP name: *Run_User_PS_Scripts_First*
-   GP path: *System\Scripts*
-   GP ADMX file name: *Scripts.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

