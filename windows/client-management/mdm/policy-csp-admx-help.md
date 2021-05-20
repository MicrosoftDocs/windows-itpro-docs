---
title: Policy CSP - ADMX_Help
description: Policy CSP - ADMX_Help
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/03/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Help
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies--
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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to exclude HTML Help Executable from being monitored by software-enforced Data Execution Prevention.

Data Execution Prevention (DEP) is designed to block malicious code that takes advantage of exception-handling mechanisms in Windows by monitoring your programs to make sure that they use system memory safely.

If you enable this policy setting, DEP for HTML Help Executable is turned off. This will allow certain legacy ActiveX controls to function without DEP shutting down HTML Help Executable.

If you disable or do not configure this policy setting, DEP is turned on for HTML Help Executable. This provides an additional security benefit, but HTML Help stops if DEP detects system memory abnormalities.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off Data Execution Prevention for HTML Help Executible*
-   GP name: *DisableHHDEP*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-helpqualifiedrootdir-comp"></a>**ADMX_Help/HelpQualifiedRootDir_Comp**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to restrict certain HTML Help commands to function only in HTML Help (.chm) files within specified folders and their subfolders. Alternatively, you can disable these commands on the entire system. It is strongly recommended that only folders requiring administrative privileges be added to this policy setting.

If you enable this policy setting, the commands function only for .chm files in the specified folders and their subfolders.

To restrict the commands to one or more folders, enable the policy setting and enter the desired folders in the text box on the Settings tab of the Policy Properties dialog box. Use a semicolon to separate folders. For example, to restrict the commands to only .chm files in the %windir%\help folder and D:\somefolder, add the following string to the edit box: "%windir%\help;D:\somefolder".

> [!NOTE]
> An environment variable may be used, (for example, %windir%), as long as it is defined on the system. For example, %programfiles% is not defined on some early versions of Windows.

The "Shortcut" command is used to add a link to a Help topic, and runs executables that are external to the Help file. The "WinHelp" command is used to add a link to a Help topic, and runs a WinHLP32.exe Help (.hlp) file.

To disallow the "Shortcut" and "WinHelp" commands on the entire local system, enable the policy setting and leave the text box on the Settings tab of the Policy Properties dialog box blank.

If you disable or do not configure this policy setting, these commands are fully functional for all Help files.

> [!NOTE]
> Only folders on the local computer can be specified in this policy setting. You cannot use this policy setting to enable the "Shortcut" and "WinHelp" commands for .chm files that are stored on mapped drives or accessed using UNC paths.

For additional options, see the "Restrict these programs from being launched from Help" policy.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Restrict potentially unsafe HTML Help functions to specified folders*
-   GP name: *HelpQualifiedRootDir_Comp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-restrictrunfromhelp"></a>**ADMX_Help/RestrictRunFromHelp**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to restrict programs from being run from online Help.

If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.

If you disable or do not configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
> 
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Restrict these programs from being launched from Help*
-   GP name: *RestrictRunFromHelp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-help-restrictrunfromhelp-comp"></a>**ADMX_Help/RestrictRunFromHelp_Comp**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to restrict programs from being run from online Help.

If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.

If you disable or do not configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.
> 
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations cannot launched from Help.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Restrict these programs from being launched from Help*
-   GP name: *RestrictRunFromHelp_Comp*
-   GP path: *System*
-   GP ADMX file name: *Help.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

