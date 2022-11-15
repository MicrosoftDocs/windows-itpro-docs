---
title: Policy CSP - ADMX_EnhancedStorage
description: Learn about the Policy CSP - ADMX_EnhancedStorage.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/23/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_EnhancedStorage

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_EnhancedStorage policies

<dl>
  <dd>
    <a href="#admx-enhancedstorage-approvedenstordevices">ADMX_EnhancedStorage/ApprovedEnStorDevices</a>
  </dd>
  <dd>
    <a href="#admx-enhancedstorage-approvedsilos">ADMX_EnhancedStorage/ApprovedSilos</a>
  </dd>
  <dd>
    <a href="#admx-enhancedstorage-disablepasswordauthentication">ADMX_EnhancedStorage/DisablePasswordAuthentication</a>
  </dd>
  <dd>
    <a href="#admx-enhancedstorage-disallowlegacydiskdevices">ADMX_EnhancedStorage/DisallowLegacyDiskDevices</a>
  </dd>
  <dd>
    <a href="#admx-enhancedstorage-lockdeviceonmachinelock">ADMX_EnhancedStorage/LockDeviceOnMachineLock</a>
  </dd>
  <dd>
    <a href="#admx-enhancedstorage-roothubconnectedenstordevices">ADMX_EnhancedStorage/RootHubConnectedEnStorDevices</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-approvedenstordevices"></a>**ADMX_EnhancedStorage/ApprovedEnStorDevices**

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
This policy setting allows you to configure a list of Enhanced Storage devices that contain a manufacturer and product ID that are usable on your computer.

If you enable this policy setting, only Enhanced Storage devices that contain a manufacturer and product ID specified in this policy are usable on your computer.

If you disable or don't configure this policy setting, all Enhanced Storage devices are usable on your computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure list of Enhanced Storage devices usable on your computer*
-   GP name: *ApprovedEnStorDevices*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-approvedsilos"></a>**ADMX_EnhancedStorage/ApprovedSilos**

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
This policy setting allows you to create a list of IEEE 1667 silos, compliant with the Institute of Electrical and Electronics Engineers, Inc. (IEEE) 1667 specification, that is usable on your computer.

If you enable this policy setting, only IEEE 1667 silos that match a silo type identifier specified in this policy are usable on your computer.

If you disable or don't configure this policy setting, all IEEE 1667 silos on Enhanced Storage devices are usable on your computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure list of IEEE 1667 silos usable on your computer*
-   GP name: *ApprovedSilos*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-disablepasswordauthentication"></a>**ADMX_EnhancedStorage/DisablePasswordAuthentication**

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
This policy setting configures whether or not a password can be used to unlock an Enhanced Storage device.

If you enable this policy setting, a password can't be used to unlock an Enhanced Storage device.

If you disable or don't configure this policy setting, a password can be used to unlock an Enhanced Storage device.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow password authentication of Enhanced Storage devices*
-   GP name: *DisablePasswordAuthentication*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-disallowlegacydiskdevices"></a>**ADMX_EnhancedStorage/DisallowLegacyDiskDevices**

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
This policy setting configures whether or not non-Enhanced Storage removable devices are allowed on your computer.

If you enable this policy setting, non-Enhanced Storage removable devices aren't allowed on your computer.

If you disable or don't configure this policy setting, non-Enhanced Storage removable devices are allowed on your computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow non-Enhanced Storage removable devices*
-   GP name: *DisallowLegacyDiskDevices*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-lockdeviceonmachinelock"></a>**ADMX_EnhancedStorage/LockDeviceOnMachineLock**

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
This policy setting locks Enhanced Storage devices when the computer is locked.

>[!Note]
>This policy setting is supported in Windows Server SKUs only.

If you enable this policy setting, the Enhanced Storage device remains locked when the computer is locked.

If you disable or don't configure this policy setting, the Enhanced Storage device state isn't changed when the computer is locked.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Lock Enhanced Storage when the computer is locked*
-   GP name: *LockDeviceOnMachineLock*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-enhancedstorage-roothubconnectedenstordevices"></a>**ADMX_EnhancedStorage/RootHubConnectedEnStorDevices**

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
This policy setting configures whether or not only USB root hub connected Enhanced Storage devices are allowed. Allowing only root hub connected Enhanced Storage devices minimizes the risk of an unauthorized USB device reading data on an Enhanced Storage device.

If you enable this policy setting, only USB root hub connected Enhanced Storage devices are allowed.

If you disable or don't configure this policy setting, USB Enhanced Storage devices connected to both USB root hubs and non-root hubs will be allowed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow only USB root hub connected Enhanced Storage devices*
-   GP name: *RootHubConnectedEnStorDevices*
-   GP path: *System\Enhanced Storage Access*
-   GP ADMX file name: *EnhancedStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)