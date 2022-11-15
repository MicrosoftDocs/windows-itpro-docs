---
title: Policy CSP - ADMX_Help
description: Learn about the Policy CSP - ADMX_Help.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/03/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Help
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Help policies

<dl>
  <dd>
    <a href="#admx-help-disablehhdep">ADMX_Help/DisableHHDEP</a>
  </dd>
  <dd>
    <a href="#admx-help-helpqualifiedrootdir-comp">ADMX_Help/HelpQualifiedRootDir_Comp</a>
  </dd>
  <dd>
    <a href="#admx-help-restrictrunfromhelp">ADMX_Help/RestrictRunFromHelp</a>
  </dd>
  <dd>
    <a href="#admx-help-restrictrunfromhelp-comp">ADMX_Help/RestrictRunFromHelp_Comp</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-help-disablehhdep"></a>**ADMX_Help/DisableHHDEP**

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

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to exclude HTML Help Executable from being monitored by software-enforced Data Execution Prevention.

Data Execution Prevention (DEP) is designed to block malicious code that takes advantage of exception-handling mechanisms in Windows by monitoring your programs to make sure that they use system memory safely.

If you enable this policy setting, DEP for HTML Help Executable is turned off. This turn off will allow certain legacy ActiveX controls to function without DEP shutting down HTML Help Executable.

If you disable or don't configure this policy setting, DEP is turned on for HTML Help Executable. This turn on provides one more security benefit, but HTML Help stops if DEP detects system memory abnormalities.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Data Execution Prevention for HTML Help Executable*
-   GP name: *DisableHHDEP*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-helpqualifiedrootdir-comp"></a>**ADMX_Help/HelpQualifiedRootDir_Comp**

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

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to restrict certain HTML Help commands to function only in HTML Help (.chm) files within specified folders and their subfolders. Alternatively, you can disable these commands on the entire system. It's recommended that only folders requiring administrative privileges be added to this policy setting.

If you enable this policy setting, the commands function only for .chm files in the specified folders and their subfolders.

To restrict the commands to one or more folders, enable the policy setting and enter the desired folders in the text box on the Settings tab of the Policy Properties dialog box. Use a semicolon to separate folders. For example, to restrict the commands to only .chm files in the %windir%\help folder and D:\somefolder, add the following string to the edit box: "%windir%\help;D:\somefolder".

> [!NOTE]
> An environment variable may be used, (for example, %windir%), as long as it's defined on the system. For example, %programfiles% is not defined on some early versions of Windows.

The "Shortcut" command is used to add a link to a Help topic, and runs executables that are external to the Help file. The "WinHelp" command is used to add a link to a Help topic, and runs a WinHLP32.exe Help (.hlp) file.

To disallow the "Shortcut" and "WinHelp" commands on the entire local system, enable the policy setting and leave the text box on the Settings tab of the Policy Properties dialog box blank.

If you disable or don't configure this policy setting, these commands are fully functional for all Help files.

> [!NOTE]
> Only folders on the local computer can be specified in this policy setting. You cannot use this policy setting to enable the "Shortcut" and "WinHelp" commands for .chm files that are stored on mapped drives or accessed using UNC paths.

For more options, see the "Restrict these programs from being launched from Help" policy.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict potentially unsafe HTML Help functions to specified folders*
-   GP name: *HelpQualifiedRootDir_Comp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-restrictrunfromhelp"></a>**ADMX_Help/RestrictRunFromHelp**

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
This policy setting allows you to restrict programs from being run from online Help.

If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names of the programs you want to restrict, separated by commas.

If you disable or don't configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
>
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict these programs from being launched from Help*
-   GP name: *RestrictRunFromHelp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-restrictrunfromhelp-comp"></a>**ADMX_Help/RestrictRunFromHelp_Comp**

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

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to restrict programs from being run from online Help.

If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names of the programs you want to restrict, separated by commas.

If you disable or don't configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
>
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict these programs from being launched from Help*
-   GP name: *RestrictRunFromHelp_Comp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)