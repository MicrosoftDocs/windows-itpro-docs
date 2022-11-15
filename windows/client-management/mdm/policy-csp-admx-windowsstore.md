---
title: Policy CSP - ADMX_WindowsStore
description: Policy CSP - ADMX_WindowsStore
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/26/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WindowsStore
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).




<hr/>

<!--Policies-->
## ADMX_WindowsStore policies

<dl>
  <dd>
    <a href="#admx-windowsstore-disableautodownloadwin8">ADMX_WindowsStore/DisableAutoDownloadWin8</a>
  </dd>
  <dd>
    <a href="#admx-windowsstore-disableosupgrade-1">ADMX_WindowsStore/DisableOSUpgrade_1</a>
  </dd>
  <dd>
    <a href="#admx-windowsstore-disableosupgrade-2">ADMX_WindowsStore/DisableOSUpgrade_2</a>
  </dd>
  <dd>
    <a href="#admx-windowsstore-removewindowsstore-1">ADMX_WindowsStore/RemoveWindowsStore_1</a>
  </dd>
  <dd>
    <a href="#admx-windowsstore-removewindowsstore-2">ADMX_WindowsStore/RemoveWindowsStore_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsstore-disableautodownloadwin8"></a>**ADMX_WindowsStore/DisableAutoDownloadWin8**

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
This policy setting enables or disables the automatic download of app updates on PCs running Windows 8.

If you enable this setting, the automatic download of app updates is turned off.  If you disable this setting, the automatic download of app updates is turned on.

If you don't configure this setting, the automatic download of app updates is determined by a registry setting that the user can change using Settings in the Windows Store.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Automatic Download of updates on Win8 machines*
-   GP name: *DisableAutoDownloadWin8*
-   GP path: *Windows Components\Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-windowsstore-disableosupgrade-1"></a>**ADMX_WindowsStore/DisableOSUpgrade_1**

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
This policy setting enables or disables the Store offer to update to the latest version of Windows.

If you enable this setting, the Store application will not offer updates to the latest version of Windows.

If you disable or do not configure this setting the Store application will offer updates to the latest version of Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the offer to update to the latest version of Windows*
-   GP name: *DisableOSUpgrade_1*
-   GP path: *Windows Components\Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-windowsstore-disableosupgrade-2"></a>**ADMX_WindowsStore/DisableOSUpgrade_2**

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
This policy setting enables or disables the Store offer to update to the latest version of Windows.

If you enable this setting, the Store application will not offer updates to the latest version of Windows.

If you disable or do not configure this setting the Store application will offer updates to the latest version of Windows.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the offer to update to the latest version of Windows*
-   GP name: *DisableOSUpgrade_2*
-   GP path: *Windows Components\Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-windowsstore-removewindowsstore-1"></a>**ADMX_WindowsStore/RemoveWindowsStore_1**

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
This policy setting denies or allows access to the Store application.

If you enable this setting, access to the Store application is denied. Access to the Store is required for installing app updates.

If you disable or don't configure this setting, access to the Store application is allowed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the Store application*
-   GP name: *RemoveWindowsStore_1*
-   GP path: *Windows Components\Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-windowsstore-removewindowsstore-2"></a>**ADMX_WindowsStore/RemoveWindowsStore_2**

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
This policy setting denies or allows access to the Store application.

If you enable this setting, access to the Store application is denied. Access to the Store is required for installing app updates.

If you disable or don't configure this setting, access to the Store application is allowed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off the Store application*
-   GP name: *RemoveWindowsStore_2*
-   GP path: *Windows Components\Store*
-   GP ADMX file name: *WindowsStore.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->