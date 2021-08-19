---
title: Policy CSP - ADMX_sdiageng
description: Policy CSP - ADMX_sdiageng
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_sdiageng
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_sdiageng policies  

<dl>
  <dd>
    <a href="#admx-sdiageng-betterwhenconnected">ADMX_sdiageng/BetterWhenConnected</a>
  </dd>
  <dd>
    <a href="#admx-sdiageng-scripteddiagnosticsexecutionpolicy">ADMX_sdiageng/ScriptedDiagnosticsExecutionPolicy</a>
  </dd>
  <dd>
    <a href="#admx-sdiageng-scripteddiagnosticssecuritypolicy">ADMX_sdiageng/ScriptedDiagnosticsSecurityPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-sdiageng-betterwhenconnected"></a>**ADMX_sdiageng/BetterWhenConnected**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows users who are connected to the Internet to access and search troubleshooting content that is hosted on Microsoft content servers. Users can access online troubleshooting content from within the Troubleshooting Control Panel UI by clicking "Yes" when they are prompted by a message that states, "Do you want the most up-to-date troubleshooting content?"

If you enable or do not configure this policy setting, users who are connected to the Internet can access and search troubleshooting content that is hosted on Microsoft content servers from within the Troubleshooting Control Panel user interface.

If you disable this policy setting, users can only access and search troubleshooting content that is available locally on their computers, even if they are connected to the Internet. They are prevented from connecting to the Microsoft servers that host the Windows Online Troubleshooting Service.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Troubleshooting: Allow users to access online troubleshooting content on Microsoft servers from the Troubleshooting Control Panel (via the Windows Online Troubleshooting Service - WOTS)*
-   GP name: *BetterWhenConnected*
-   GP path: *System\Troubleshooting and Diagnostics\Scripted Diagnostics*
-   GP ADMX file name: *sdiageng.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sdiageng-scripteddiagnosticsexecutionpolicy"></a>**ADMX_sdiageng/ScriptedDiagnosticsExecutionPolicy**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows users to access and run the troubleshooting tools that are available in the Troubleshooting Control Panel and to run the troubleshooting wizard to troubleshoot problems on their computers.

If you enable or do not configure this policy setting, users can access and run the troubleshooting tools from the Troubleshooting Control Panel.

If you disable this policy setting, users cannot access or run the troubleshooting tools from the Control Panel.

Note that this setting also controls a user's ability to launch standalone troubleshooting packs such as those found in .diagcab files.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Troubleshooting: Allow users to access and run Troubleshooting Wizards*
-   GP name: *ScriptedDiagnosticsExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Scripted Diagnostics*
-   GP ADMX file name: *sdiageng.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-sdiageng-scripteddiagnosticssecuritypolicy"></a>**ADMX_sdiageng/ScriptedDiagnosticsSecurityPolicy**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether scripted diagnostics will execute diagnostic packages that are signed by untrusted publishers.

If you enable this policy setting, the scripted diagnostics execution engine validates the signer of any diagnostic package and runs only those signed by trusted publishers.

If you disable or do not configure this policy setting, the scripted diagnostics execution engine runs all digitally signed packages.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure Security Policy for Scripted Diagnostics*
-   GP name: *ScriptedDiagnosticsSecurityPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\Scripted Diagnostics*
-   GP ADMX file name: *sdiageng.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

