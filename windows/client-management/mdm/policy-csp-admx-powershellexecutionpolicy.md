---
title: Policy CSP - ADMX_PowerShellExecutionPolicy
description: Learn about Policy CSP - ADMX_PowerShellExecutionPolicy.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/26/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_PowerShellExecutionPolicy

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_PowerShellExecutionPolicy policies

<dl>
  <dd>
    <a href="#admx-powershellexecutionpolicy-enablemodulelogging">ADMX_PowerShellExecutionPolicy/EnableModuleLogging</a>
  </dd>
  <dd>
    <a href="#admx-powershellexecutionpolicy-enablescripts">ADMX_PowerShellExecutionPolicy/EnableScripts</a>
  </dd>
  <dd>
    <a href="#admx-powershellexecutionpolicy-enabletranscripting">ADMX_PowerShellExecutionPolicy/EnableTranscripting</a>
  </dd>
  <dd>
    <a href="#admx-powershellexecutionpolicy-enableupdatehelpdefaultsourcepath">ADMX_PowerShellExecutionPolicy/EnableUpdateHelpDefaultSourcePath</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-powershellexecutionpolicy-enablemodulelogging"></a>**ADMX_PowerShellExecutionPolicy/EnableModuleLogging**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to turn on logging for Windows PowerShell modules.

If you enable this policy setting, pipeline execution events for members of the specified modules are recorded in the Windows PowerShell login Event Viewer. Enabling this policy setting for a module is equivalent to setting the LogPipelineExecutionDetails property of the module to True.

If you disable this policy setting, logging of execution events is disabled for all Windows PowerShell modules. Disabling this policy setting for a module is equivalent to setting the LogPipelineExecutionDetails property of the module to False.  If this policy setting isn't configured, the LogPipelineExecutionDetails property of a module or snap-in determines whether the execution events of a module or snap-in are logged. By default, the LogPipelineExecutionDetails property of all modules and snap-ins is set to False.

To add modules and snap-ins to the policy setting list, click Show, and then type the module names in the list. The modules and snap-ins in the list must be installed on the computer.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on Module Logging*
-   GP name: *EnableModuleLogging*
-   GP path: *Windows Components\Windows PowerShell*
-   GP ADMX file name: *PowerShellExecutionPolicy.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-powershellexecutionpolicy-enablescripts"></a>**ADMX_PowerShellExecutionPolicy/EnableScripts**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you configure the script execution policy, controlling which scripts are allowed to run.

If you enable this policy setting, the scripts selected in the drop-down list are allowed to run.  The "Allow only signed scripts" policy setting allows scripts to execute only if they're signed by a trusted publisher.

The "Allow local scripts and remote signed scripts" policy setting allows any local scripts to run. And, the scripts that originate from the Internet must be signed by a trusted publisher.  The "Allow all scripts" policy setting allows all scripts to run.

If you disable this policy setting, no scripts are allowed to run.

> [!NOTE]
> This policy setting exists under both "Computer Configuration" and "User Configuration" in the Local Group Policy Editor. The "Computer Configuration" has precedence over "User Configuration."  If you disable or do not configure this policy setting, it reverts to a per-machine preference setting; the default if that isn't configured is "No scripts allowed."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on Script Execution*
-   GP name: *EnableScripts*
-   GP path: *Windows Components\Windows PowerShell*
-   GP ADMX file name: *PowerShellExecutionPolicy.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-powershellexecutionpolicy-enabletranscripting"></a>**ADMX_PowerShellExecutionPolicy/EnableTranscripting**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you capture the input and output of Windows PowerShell commands into text-based transcripts.

If you enable this policy setting, Windows PowerShell will enable transcription for Windows PowerShell, the Windows PowerShell ISE, and any other  applications that use the Windows PowerShell engine. By default, Windows PowerShell will record transcript output to each users' My Documents directory, with a file name that includes 'PowerShell_transcript', along with the computer name and time started. Enabling this policy is equivalent  to calling the Start-Transcript cmdlet on each Windows PowerShell session.

If you disable this policy setting, transcription of PowerShell-based applications is disabled by default, although transcription can still be enabled  through the Start-Transcript cmdlet.

If you use the OutputDirectory setting to enable transcript logging to a shared location, be sure to limit access to that directory to prevent users  from viewing the transcripts of other users or computers.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on PowerShell Transcription*
-   GP name: *EnableTranscripting*
-   GP path: *Windows Components\Windows PowerShell*
-   GP ADMX file name: *PowerShellExecutionPolicy.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-powershellexecutionpolicy-enableupdatehelpdefaultsourcepath"></a>**ADMX_PowerShellExecutionPolicy/EnableUpdateHelpDefaultSourcePath**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to set the default value of the SourcePath parameter on the Update-Help cmdlet.

If you enable this policy setting, the Update-Help cmdlet will use the specified value as the default value for the SourcePath parameter. This default value can be overridden by specifying a different value with the SourcePath parameter on the Update-Help cmdlet.

If this policy setting is disabled or not configured, this policy setting doesn't set a default value for the SourcePath parameter of the Update-Help cmdlet.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set the default source path for Update-Help*
-   GP name: *EnableUpdateHelpDefaultSourcePath*
-   GP path: *Windows Components\Windows PowerShell*
-   GP ADMX file name: *PowerShellExecutionPolicy.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)