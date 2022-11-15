---
title: Policy CSP - ADMX_ShellCommandPromptRegEditTools
description: Learn about Policy CSP - ADMX_ShellCommandPromptRegEditTools.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_ShellCommandPromptRegEditTools

<hr/>

<!--Policies-->
## ADMX_ShellCommandPromptRegEditTools policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-shellcommandpromptregedittools-disallowapps">ADMX_ShellCommandPromptRegEditTools/DisallowApps</a>
  </dd>
  <dd>
    <a href="#admx-shellcommandpromptregedittools-disableregedit">ADMX_ShellCommandPromptRegEditTools/DisableRegedit</a>
  </dd>
  <dd>
    <a href="#admx-shellcommandpromptregedittools-disablecmd">ADMX_ShellCommandPromptRegEditTools/DisableCMD</a>
  </dd>
  <dd>
    <a href="#admx-shellcommandpromptregedittools-restrictapps">ADMX_ShellCommandPromptRegEditTools/RestrictApps</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-shellcommandpromptregedittools-disallowapps"></a>**ADMX_ShellCommandPromptRegEditTools/DisallowApps**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from running the interactive command prompt `Cmd.exe`.

This policy setting also determines whether batch files (.cmd and .bat) can run on the computer.

If you enable this policy setting and the user tries to open a command window, the system displays a message explaining that a setting prevents the action. .

If you disable this policy setting or don't configure it, users can run Cmd.exe and batch files normally.

> [!NOTE]
> Don't prevent the computer from running batch files if the computer uses logon, logoff, startup, or shutdown batch file scripts, or for users that use Remote Desktop Services.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent access to the command prompt*
-   GP name: *DisallowApps*
-   GP path: *System*
-   GP ADMX file name: *ShellCommandPromptRegEditTools.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-shellcommandpromptregedittools-disableregedit"></a>**ADMX_ShellCommandPromptRegEditTools/DisableRegedit**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting disables the Windows registry editor `Regedit.exe`.

If you enable this policy setting and the user tries to start `Regedit.exe`, a message appears explaining that a policy setting prevents the action.

If you disable this policy setting or don't configure it, users can run `Regedit.exe` normally.

To prevent users from using other administrative tools, use the "Run only specified Windows applications" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent access to registry editing tools*
-   GP name: *DisableRegedit*
-   GP path: *System\Server Manager*
-   GP ADMX file name: *ShellCommandPromptRegEditTools.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-shellcommandpromptregedittools-disablecmd"></a>**ADMX_ShellCommandPromptRegEditTools/DisableCMD**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting limits the Windows programs that users have permission to run on the computer.

If you enable this policy setting, users can only run programs that you add to the list of allowed applications.

If you disable this policy setting or don't configure it, users can run all applications.  This policy setting only prevents users from running programs that are started by the File Explorer process.

It doesn't prevent users from running programs such as Task Manager, which is started by the system process or by other processes.  Also, if users have access to the command prompt `Cmd.exe`, this policy setting doesn't prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.

Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.

To create a list of allowed applications, click Show.  In the Show Contents dialog box, in the Value column, type the application executable name (for example, Winword.exe, Poledit.exe, Powerpnt.exe).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Run only specified Windows applications*
-   GP name: *DisableCMD*
-   GP path: *System*
-   GP ADMX file name: *ShellCommandPromptRegEditTools.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-shellcommandpromptregedittools-restrictapps"></a>**ADMX_ShellCommandPromptRegEditTools/RestrictApps**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents Windows from running the programs you specify in this policy setting.

If you enable this policy setting, users can't run programs that you add to the list of disallowed applications.

If you disable this policy setting or don't configure it, users can run any programs.

This policy setting only prevents users from running programs that are started by the File Explorer process. It doesn't prevent users from running programs, such as Task Manager, which are started by the system process or by other processes.  Also, if users have access to the command prompt (Cmd.exe), this policy setting doesn't prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.

Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.

To create a list of allowed applications, click Show. In the Show Contents dialog box, in the Value column, type the application executable name (for example, Winword.exe, Poledit.exe, Powerpnt.exe).


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Don't run specified Windows applications*
-   GP name: *RestrictApps*
-   GP path: *System*
-   GP ADMX file name: *ShellCommandPromptRegEditTools.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
