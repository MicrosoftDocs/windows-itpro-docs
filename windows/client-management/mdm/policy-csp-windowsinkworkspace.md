---
title: Policy CSP - WindowsInkWorkspace
description: Policy CSP - WindowsInkWorkspace
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/14/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - WindowsInkWorkspace



<hr/>

<!--Policies-->
## WindowsInkWorkspace policies  

<dl>
  <dd>
    <a href="#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace">WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace</a>
  </dd>
  <dd>
    <a href="#windowsinkworkspace-allowwindowsinkworkspace">WindowsInkWorkspace/AllowWindowsInkWorkspace</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Show recommended app suggestions in the ink workspace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow suggested apps in Windows Ink Workspace*
-   GP name: *AllowSuggestedAppsInWindowsInkWorkspace*
-   GP path: *Windows Components/Windows Ink Workspace*
-   GP ADMX file name: *WindowsInkWorkspace.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - app suggestions are not allowed.
-   1 (default) -allow app suggestions.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsinkworkspace-allowwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowWindowsInkWorkspace**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Added in Windows 10, version 1607. Specifies whether to allow the user to access the ink workspace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Windows Ink Workspace*
-   GP name: *AllowWindowsInkWorkspace*
-   GP element: *AllowWindowsInkWorkspaceDropdown*
-   GP path: *Windows Components/Windows Ink Workspace*
-   GP ADMX file name: *WindowsInkWorkspace.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Value type is int. The following list shows the supported values:

-   0 - access to ink workspace is disabled. The feature is turned off.
-   1 - ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.
-   2 (default) - ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

