---
title: Policy CSP - WindowsInkWorkspace
description: Learn to use the Policy CSP - WindowsInkWorkspace setting to specify whether to allow the user to access the ink workspace.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
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
The table below shows the applicability of Windows:

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
Show recommended app suggestions in the ink workspace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow suggested apps in Windows Ink Workspace*
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
The table below shows the applicability of Windows:

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
Specifies whether to allow the user to access the ink workspace.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Windows Ink Workspace*
-   GP name: *AllowWindowsInkWorkspace*
-   GP element: *AllowWindowsInkWorkspaceDropdown*
-   GP path: *Windows Components/Windows Ink Workspace*
-   GP ADMX file name: *WindowsInkWorkspace.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported value type is int. The following list shows the supported values:

-   0 - access to ink workspace is disabled. The feature is turned off.
-   1 - ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.
-   2 (default) - ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)