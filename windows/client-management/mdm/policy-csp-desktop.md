---
title: Policy CSP - Desktop
description: Policy CSP - Desktop
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 08/08/2018
---

# Policy CSP - Desktop



<hr/>

<!--Policies-->
## Desktop policies  

<dl>
  <dd>
    <a href="#desktop-preventuserredirectionofprofilefolders">Desktop/PreventUserRedirectionOfProfileFolders</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="desktop-preventuserredirectionofprofilefolders"></a>**Desktop/PreventUserRedirectionOfProfileFolders**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Prevents users from changing the path to their profile folders.

By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.

If you enable this setting, users are unable to type a new location in the Target box.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit User from manually redirecting Profile Folders*
-   GP name: *DisablePersonalDirChange*
-   GP path: *Desktop*
-   GP ADMX file name: *desktop.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Desktop policies supported by Microsoft Surface Hub  

-   [Desktop/PreventUserRedirectionOfProfileFolders](#desktop-preventuserredirectionofprofilefolders)  
<!--EndSurfaceHub-->

