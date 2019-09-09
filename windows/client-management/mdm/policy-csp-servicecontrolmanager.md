---
title: Policy CSP - ServiceControlManager
description: Policy CSP - ServiceControlManager
ms.author: Heidi.Lohr
ms.topic: article
ms.prod: w10
ms.technology: windows
author: Heidilohr
ms.date: 05/21/2019
---

# Policy CSP - ServiceControlManager


<hr/>

<!--Policies-->
## ServiceControlManager policies  

<dl>
  <dd>
    <a href="#servicecontrolmanager-svchostprocessmitigation">ServiceControlManager/SvchostProcessMitigation</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="servicecontrolmanager-svchostprocessmitigation"></a>**ServiceControlManager/SvchostProcessMitigation**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting enables process mitigation options on svchost.exe processes.

If you enable this policy setting, built-in system services hosted in svchost.exe processes will have stricter security policies enabled on them.

This includes a policy requiring all binaries loaded in these processes to be signed by Microsoft, as well as a policy disallowing dynamically-generated code.  

If you disable or do not configure this policy setting, the stricter security settings will not be applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable svchost.exe mitigation options*
-   GP name: *SvchostProcessMitigationEnable*
-   GP path: *System/Service Control Manager Settings/Security Settings*
-   GP ADMX file name: *ServiceControlManager.admx*

<!--/ADMXBacked-->
<!--SupportedValues-->
Supported values:  
- disabled - Do not add ACG/CIG enforcement and other process mitigation/code integrity policies to SVCHOST processes.
- enabled - Add ACG/CIG enforcement and other process mitigation/code integrity policies to SVCHOST processes.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->

<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.