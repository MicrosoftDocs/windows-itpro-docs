---
title: Policy CSP - Desktop
description: Policy CSP - Desktop
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - Desktop

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Desktop policies  

<!--StartPolicy-->
<a href="" id="desktop-preventuserredirectionofprofilefolders"></a>**Desktop/PreventUserRedirectionOfProfileFolders**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Prevents users from changing the path to their profile folders.

By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.

If you enable this setting, users are unable to type a new location in the Target box.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Prohibit User from manually redirecting Profile Folders*
-   GP name: *DisablePersonalDirChange*
-   GP ADMX file name: *desktop.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Desktop policies supported by Microsoft Surface Hub  

-   [Desktop/PreventUserRedirectionOfProfileFolders](#desktop-preventuserredirectionofprofilefolders)  
<!--EndSurfaceHub-->

