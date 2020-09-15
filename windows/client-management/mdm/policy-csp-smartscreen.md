---
title: Policy CSP - SmartScreen
description: Use the Policy CSP - SmartScreen setting to allow IT Admins to control whether users are allowed to install apps from places other than the Store.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
Added in Windows 10, version 1703. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.

> [!Note]
> This policy will block installation only while the device is online. To block offline installation too, **SmartScreen/PreventOverrideForFilesInShell** and **SmartScreen/EnableSmartScreenInShell** policies should also be enabled.<p>This policy setting is intended to prevent malicious content from affecting your user's devices when downloading executable content from the internet.

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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

