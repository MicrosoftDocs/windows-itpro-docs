---
title: Policy CSP - FileExplorer
description: Use the Policy CSP - FileExplorer setting so you can allow certain legacy plug-in applications to function without terminating Explorer.
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

# Policy CSP - FileExplorer

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## FileExplorer policies

<dl>
  <dd>
    <a href="#fileexplorer-allowoptiontoshownetwork">FileExplorer/AllowOptionToShowNetwork</a>
  </dd>
  <dd>
    <a href="#fileexplorer-allowoptiontoshowthispc">FileExplorer/AllowOptionToShowThisPC</a>
  </dd>
  <dd>
    <a href="#fileexplorer-turnoffdataexecutionpreventionforexplorer">FileExplorer/TurnOffDataExecutionPreventionForExplorer</a>
  </dd>
  <dd>
    <a href="#fileexplorer-turnoffheapterminationoncorruption">FileExplorer/TurnOffHeapTerminationOnCorruption</a>
  </dd>
  <dd>
    <a href="#fileexplorer-setallowedfolderlocations">FileExplorer/SetAllowedFolderLocations</a>
  </dd>
  <dd>
    <a href="#fileexplorer-setallowedstoragelocations">FileExplorer/SetAllowedStorageLocations</a>
  </dd>
  <dd>
    <a href="#fileexplorer-disablegraphrecentitems">FileExplorer/DisableGraphRecentItems</a>
  </dd>
</dl>



<hr/>

<!--Policy-->
<a href="" id="fileexplorer-allowoptiontoshownetwork"></a>**FileExplorer/AllowOptionToShowNetwork**

<!--SupportedSKUs-->

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

This policy allows the user with an option to show the network folder when restricted.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disabled
- 1 (default) - Enabled

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow the user the option to show Network folder when restricted*
-   GP name: *AllowOptionToShowNetwork*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="fileexplorer-allowoptiontoshowthispc"></a>**FileExplorer/AllowOptionToShowThisPC**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->

This policy allows the user with an option to show this PC location when restricted.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0 - Disabled
- 1 (default) - Enabled

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow the user the option to show Network folder when restricted*
-   GP name: *AllowOptionToShowThisPC*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="fileexplorer-turnoffdataexecutionpreventionforexplorer"></a>**FileExplorer/TurnOffDataExecutionPreventionForExplorer**

<!--SupportedSKUs-->

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
Disabling data execution prevention can allow certain legacy plug-in applications to function without terminating Explorer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Data Execution Prevention for Explorer*
-   GP name: *NoDataExecutionPrevention*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="fileexplorer-turnoffheapterminationoncorruption"></a>**FileExplorer/TurnOffHeapTerminationOnCorruption**

<!--SupportedSKUs-->

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
Disabling heap termination on corruption can allow certain legacy plug-in applications to function without terminating Explorer immediately, although Explorer may still terminate unexpectedly later.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off heap termination on corruption*
-   GP name: *NoHeapTerminationOnCorruption*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="fileexplorer-setallowedfolderlocations"></a>**FileExplorer/SetAllowedFolderLocations**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->

<!--Description-->

This policy configures the folders that the user can enumerate and access in the File Explorer.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0: All folders
- 15: Desktop, Documents, Pictures, and Downloads
- 31: Desktop, Documents, Pictures, Downloads, and Network
- 47: This PC (local drive), [Desktop, Documents, Pictures], and Downloads
- 63: This PC, [Desktop, Documents, Pictures], Downloads, and Network

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure which folders the user can enumerate and access to in File Explorer*
-   GP name: *SetAllowedFolderLocations*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="fileexplorer-setallowedstoragelocations"></a>**FileExplorer/SetAllowedStorageLocations**

<!--SupportedSKUs-->

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
> * User

<hr/>

<!--/Scope-->

<!--Description-->

This policy configures the folders that the user can enumerate and access in the File Explorer.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0: All storage locations
- 1: Removable Drives
- 2: Sync roots
- 3: Removable Drives, Sync roots, local drive

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure which folders the user can enumerate and access to in File Explorer*
-   GP name: *SetAllowedStorageLocations*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="fileexplorer-disablegraphrecentitems"></a>**FileExplorer/DisableGraphRecentItems**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|Yes|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->

<!--Description-->

This policy changes whether files from Office.com will be shown in the Recents and Favorites sections on the Home node (previously known as Quick Access) in File Explorer.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

- 0: Files from Office.com will display in the Home node
- 1: No files from Office.com will be retrieved or displayed

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off files from Office.com in Quick access view*
-   GP name: *DisableGraphRecentItems*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->

<!--/Policy-->
<hr/>

<!--/Policies-->


## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
