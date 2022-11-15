---
title: Policy CSP - ADMX_Explorer
description: Learn about the Policy CSP - ADMX_Explorer.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/08/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Explorer

<hr/>

<!--Policies-->
## ADMX_Explorer policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-explorer-admininfourl">ADMX_Explorer/AdminInfoUrl</a>
  </dd>
  <dd>
    <a href="#admx-explorer-alwaysshowclassicmenu">ADMX_Explorer/AlwaysShowClassicMenu</a>
  </dd>
  <dd>
    <a href="#admx-explorer-disableroamedprofileinit">ADMX_Explorer/DisableRoamedProfileInit</a>
  </dd>
  <dd>
    <a href="#admx-explorer-preventitemcreationinusersfilesfolder">ADMX_Explorer/PreventItemCreationInUsersFilesFolder</a>
  </dd>
  <dd>
    <a href="#admx-explorer-turnoffspianimations">ADMX_Explorer/TurnOffSPIAnimations</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-explorer-admininfourl"></a>**ADMX_Explorer/AdminInfoUrl**

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
This policy setting sets the target of the More Information link that will be displayed when the user attempts to run a program that is blocked by policy.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set a support web page link*
-   GP name: *AdminInfoUrl*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-explorer-alwaysshowclassicmenu"></a>**ADMX_Explorer/AlwaysShowClassicMenu**

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
Available in the latest Windows 10 Insider Preview Build. This policy setting configures File Explorer to always display the menu bar.

> [!NOTE]
> By default, the menu bar is not displayed in File Explorer.

If you enable this policy setting, the menu bar will be displayed in File Explorer.

If you disable or don't configure this policy setting, the menu bar won't be displayed in File Explorer.

> [!NOTE]
> When the menu bar is not displayed, users can access the menu bar by pressing the 'ALT' key.

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Display the menu bar in File Explorer*
-   GP name: *AlwaysShowClassicMenu*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-explorer-disableroamedprofileinit"></a>**ADMX_Explorer/DisableRoamedProfileInit**

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
This policy setting allows administrators who have configured roaming profile with Delete Cached Roaming Profile Group Policy setting to ensure that Explorer won't reinitialize default program associations and other settings to default values.

If you enable this policy setting on a machine that doesn't contain all programs installed in the same manner as it was on the machine on which the user had last logged on, unexpected behavior could occur.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not reinitialize a pre-existing roamed user profile when it is loaded on a machine for the first time*
-   GP name: *DisableRoamedProfileInit*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-explorer-preventitemcreationinusersfilesfolder"></a>**ADMX_Explorer/PreventItemCreationInUsersFilesFolder**

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
This policy setting allows administrators to prevent users from adding new items, such as files or folders to the root of their Users Files folder in File Explorer.

If you enable this policy setting, users will no longer be able to add new items, such as files or folders to the root of their Users Files folder in File Explorer.

If you disable or don't configure this policy setting, users will be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.

> [!NOTE]
> Enabling this policy setting doesn't prevent the user from being able to add new items, such as files and folders to their actual file system profile folder at %userprofile%.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from adding files to the root of their Users Files folder.*
-   GP name: *PreventItemCreationInUsersFilesFolder*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-explorer-turnoffspianimations"></a>**ADMX_Explorer/TurnOffSPIAnimations**

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
This policy is similar to settings directly available to computer users.

Disabling animations can improve usability for users with some visual disabilities, and also improve performance and battery life in some scenarios.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off common control and window animations*
-   GP name: *TurnOffSPIAnimations*
-   GP path: *Windows Components\File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)