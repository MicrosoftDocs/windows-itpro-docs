---
title: Policy CSP - ADMX_WindowsRemoteManagement
description: Policy CSP - ADMX_WindowsRemoteManagement
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: dansimp
ms.date: 12/16/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WindowsRemoteManagement
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WindowsRemoteManagement policies  

<dl>
  <dd>
    <a href="#admx-windowsremotemanagement-disallowkerberos-1">ADMX_WindowsRemoteManagement/DisallowKerberos_1</a>
  </dd>
  <dd>
    <a href="#admx-windowsremotemanagement-disallowkerberos-2">ADMX_WindowsRemoteManagement/DisallowKerberos_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsremotemanagement-disallowkerberos-1"></a>**ADMX_WindowsRemoteManagement/DisallowKerberos_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Kerberos credentials over the network.

If you enable this policy setting, the WinRM service does not accept Kerberos credentials over the network.  If you disable or do not configure this policy setting, the WinRM service accepts Kerberos authentication from a remote client.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disallow Kerberos authentication*
-   GP name: *DisallowKerberos_1*
-   GP path: *Windows Components\Windows Remote Management (WinRM)\WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-windowsremotemanagement-disallowkerberos-2"></a>**ADMX_WindowsRemoteManagement/DisallowKerberos_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th> 
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Kerberos authentication directly.

If you enable this policy setting, the Windows Remote Management (WinRM) client does not use Kerberos authentication directly. Kerberos can still be used if the WinRM client is using the Negotiate authentication and Kerberos is selected.

If you disable or do not configure this policy setting, the WinRM client uses the Kerberos authentication directly.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Disallow Kerberos authentication*
-   GP name: *DisallowKerberos_2*
-   GP path: *Windows Components\Windows Remote Management (WinRM)\WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->