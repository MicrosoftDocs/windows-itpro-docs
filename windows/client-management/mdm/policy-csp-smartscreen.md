---
title: Policy CSP - SmartScreen
description: Policy CSP - SmartScreen
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 03/12/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - SmartScreen



<hr/>

<!--Policies-->
## SmartScreen policies  

<dl>
  <dd>
    <a href="#smartscreen-enableappinstallcontrol">SmartScreen/EnableAppInstallControl</a>
  </dd>
  <dd>
    <a href="#smartscreen-enablesmartscreeninshell">SmartScreen/EnableSmartScreenInShell</a>
  </dd>
  <dd>
    <a href="#smartscreen-preventoverrideforfilesinshell">SmartScreen/PreventOverrideForFilesInShell</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="smartscreen-enableappinstallcontrol"></a>**SmartScreen/EnableAppInstallControl**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1703. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure App Install Control*
-   GP name: *ConfigureAppInstallControl*
-   GP path: *Windows Components/Windows Defender SmartScreen/Explorer*
-   GP ADMX file name: *SmartScreen.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Turns off Application Installation Control, allowing users to download and install files from anywhere on the web.
-   1 – Turns on Application Installation Control, allowing users to only install apps from the Store.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="smartscreen-enablesmartscreeninshell"></a>**SmartScreen/EnableSmartScreenInShell**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1703. Allows IT Admins to configure SmartScreen for Windows.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Windows Defender SmartScreen*
-   GP name: *ShellConfigureSmartScreen*
-   GP path: *Windows Components/Windows Defender SmartScreen/Explorer*
-   GP ADMX file name: *SmartScreen.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Turns off SmartScreen in Windows.
-   1 – Turns on SmartScreen in Windows.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="smartscreen-preventoverrideforfilesinshell"></a>**SmartScreen/PreventOverrideForFilesInShell**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows 10, version 1703. Allows IT Admins to control whether users can ignore SmartScreen warnings and run malicious files.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Windows Defender SmartScreen*
-   GP name: *ShellConfigureSmartScreen*
-   GP element: *ShellConfigureSmartScreen_Dropdown*
-   GP path: *Windows Components/Windows Defender SmartScreen/Explorer*
-   GP ADMX file name: *SmartScreen.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Employees can ignore SmartScreen warnings and run malicious files.
-   1 – Employees cannot ignore SmartScreen warnings and run malicious files.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

