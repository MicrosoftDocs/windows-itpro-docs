---
title: Policy CSP - ADMX_RemovableStorage
description: Learn about Policy CSP - ADMX_RemovableStorage.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/10/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_RemovableStorage
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_RemovableStorage policies

<dl>
  <dd>
    <a href="#admx-removablestorage-accessrights-reboottime-1">ADMX_RemovableStorage/AccessRights_RebootTime_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-accessrights-reboottime-2">ADMX_RemovableStorage/AccessRights_RebootTime_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-cdanddvd-denyexecute-access-2">ADMX_RemovableStorage/CDandDVD_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-cdanddvd-denyread-access-1">ADMX_RemovableStorage/CDandDVD_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-cdanddvd-denyread-access-2">ADMX_RemovableStorage/CDandDVD_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-cdanddvd-denywrite-access-1">ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-cdanddvd-denywrite-access-2">ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-customclasses-denyread-access-1">ADMX_RemovableStorage/CustomClasses_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-customclasses-denyread-access-2">ADMX_RemovableStorage/CustomClasses_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-customclasses-denywrite-access-1">ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-customclasses-denywrite-access-2">ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-floppydrives-denyexecute-access-2">ADMX_RemovableStorage/FloppyDrives_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-floppydrives-denyread-access-1">ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-floppydrives-denyread-access-2">ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-floppydrives-denywrite-access-1">ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-floppydrives-denywrite-access-2">ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removabledisks-denyexecute-access-2">ADMX_RemovableStorage/RemovableDisks_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removabledisks-denyread-access-1">ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removabledisks-denyread-access-2">ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removabledisks-denywrite-access-1">ADMX_RemovableStorage/RemovableDisks_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removablestorageclasses-denyall-access-1">ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removablestorageclasses-denyall-access-2">ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-removable-remote-allow-access">ADMX_RemovableStorage/Removable_Remote_Allow_Access</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-tapedrives-denyexecute-access-2">ADMX_RemovableStorage/TapeDrives_DenyExecute_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-tapedrives-denyread-access-1">ADMX_RemovableStorage/TapeDrives_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-tapedrives-denyread-access-2">ADMX_RemovableStorage/TapeDrives_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-tapedrives-denywrite-access-1">ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-tapedrives-denywrite-access-2">ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-wpddevices-denyread-access-1">ADMX_RemovableStorage/WPDDevices_DenyRead_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-wpddevices-denyread-access-2">ADMX_RemovableStorage/WPDDevices_DenyRead_Access_2</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-wpddevices-denywrite-access-1">ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_1</a>
  </dd>
  <dd>
    <a href="#admx-removablestorage-wpddevices-denywrite-access-2">ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-accessrights-reboottime-1"></a>**ADMX_RemovableStorage/AccessRights_RebootTime_1**

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
This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.

If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.

If you disable or don't configure this setting, the operating system does not force a reboot.

> [!NOTE]
> If no reboot is forced, the access right does not take effect until the operating system is restarted.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set time (in seconds) to force reboot*
-   GP name: *AccessRights_RebootTime_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-accessrights-reboottime-2"></a>**ADMX_RemovableStorage/AccessRights_RebootTime_2**

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
This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.

If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.

If you disable or don't configure this setting, the operating system does not force a reboot

> [!NOTE]
> If no reboot is forced, the access right does not take effect until the operating system is restarted.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set time (in seconds) to force reboot*
-   GP name: *AccessRights_RebootTime_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-cdanddvd-denyexecute-access-2"></a>**ADMX_RemovableStorage/CDandDVD_DenyExecute_Access_2**

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
This policy setting denies execute access to the CD and DVD removable storage class.

If you enable this policy setting, execute access is denied to this removable storage class.

If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *CD and DVD: Deny execute access*
-   GP name: *CDandDVD_DenyExecute_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-cdanddvd-denyread-access-1"></a>**ADMX_RemovableStorage/CDandDVD_DenyRead_Access_1**

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
This policy setting denies read access to the CD and DVD removable storage class.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *CD and DVD: Deny read access*
-   GP name: *CDandDVD_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-cdanddvd-denyread-access-2"></a>**ADMX_RemovableStorage/CDandDVD_DenyRead_Access_2**

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
This policy setting denies read access to the CD and DVD removable storage class.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *CD and DVD: Deny read access*
-   GP name: *CDandDVD_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-cdanddvd-denywrite-access-1"></a>**ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_1**

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
This policy setting denies write access to the CD and DVD removable storage class.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *CD and DVD: Deny write access*
-   GP name: *CDandDVD_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-cdanddvd-denywrite-access-2"></a>**ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_2**

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
This policy setting denies write access to the CD and DVD removable storage class.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *CD and DVD: Deny write access*
-   GP name: *CDandDVD_DenyWrite_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-customclasses-denyread-access-1"></a>**ADMX_RemovableStorage/CustomClasses_DenyRead_Access_1**

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
This policy setting denies read access to custom removable storage classes.

If you enable this policy setting, read access is denied to these removable storage classes.

If you disable or don't configure this policy setting, read access is allowed to these removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom Classes: Deny read access*
-   GP name: *CustomClasses_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-customclasses-denyread-access-2"></a>**ADMX_RemovableStorage/CustomClasses_DenyRead_Access_2**

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
This policy setting denies read access to custom removable storage classes.

If you enable this policy setting, read access is denied to these removable storage classes.

If you disable or don't configure this policy setting, read access is allowed to these removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom Classes: Deny read access*
-   GP name: *CustomClasses_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-customclasses-denywrite-access-1"></a>**ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_1**

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
This policy setting denies write access to custom removable storage classes.

If you enable this policy setting, write access is denied to these removable storage classes.

If you disable or don't configure this policy setting, write access is allowed to these removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom Classes: Deny write access*
-   GP name: *CustomClasses_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-customclasses-denywrite-access-2"></a>**ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_2**

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
This policy setting denies write access to custom removable storage classes.

If you enable this policy setting, write access is denied to these removable storage classes.

If you disable or don't configure this policy setting, write access is allowed to these removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Custom Classes: Deny write access*
-   GP name: *CustomClasses_DenyWrite_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-floppydrives-denyexecute-access-2"></a>**ADMX_RemovableStorage/FloppyDrives_DenyExecute_Access_2**

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
This policy setting denies execute access to the Floppy Drives removable storage class, including USB Floppy Drives.

If you enable this policy setting, execute access is denied to this removable storage class.

If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Floppy Drives: Deny execute access*
-   GP name: *FloppyDrives_DenyExecute_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-floppydrives-denyread-access-1"></a>**ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_1**

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
This policy setting denies read access to the Floppy Drives removable storage class, including USB Floppy Drives.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Floppy Drives: Deny read access*
-   GP name: *FloppyDrives_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-floppydrives-denyread-access-2"></a>**ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_2**

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
This policy setting denies read access to the Floppy Drives removable storage class, including USB Floppy Drives.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Floppy Drives: Deny read access*
-   GP name: *FloppyDrives_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-floppydrives-denywrite-access-1"></a>**ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_1**

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
This policy setting denies write access to the Floppy Drives removable storage class, including USB Floppy Drives.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Floppy Drives: Deny write access*
-   GP name: *FloppyDrives_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-floppydrives-denywrite-access-2"></a>**ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_2**

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
This policy setting denies write access to the Floppy Drives removable storage class, including USB Floppy Drives.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Floppy Drives: Deny write access*
-   GP name: *FloppyDrives_DenyWrite_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removabledisks-denyexecute-access-2"></a>**ADMX_RemovableStorage/RemovableDisks_DenyExecute_Access_2**

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
This policy setting denies execute access to removable disks.

If you enable this policy setting, execute access is denied to this removable storage class.

If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Disks: Deny execute access*
-   GP name: *RemovableDisks_DenyExecute_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removabledisks-denyread-access-1"></a>**ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_1**

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
This policy setting denies read access to removable disks.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Disks: Deny read access*
-   GP name: *RemovableDisks_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removabledisks-denyread-access-2"></a>**ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_2**

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
This policy setting denies read access to removable disks.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Disks: Deny read access*
-   GP name: *RemovableDisks_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removabledisks-denywrite-access-1"></a>**ADMX_RemovableStorage/RemovableDisks_DenyWrite_Access_1**

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
This policy setting denies write access to removable disks.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

> [!NOTE]
> To require that users write data to BitLocker-protected storage, enable the policy setting "Deny write access to drives not protected by BitLocker," which is located in "Computer Configuration\Administrative Templates\Windows Components\BitLocker Drive Encryption\Removable Data Drives."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Removable Disks: Deny write access*
-   GP name: *RemovableDisks_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removablestorageclasses-denyall-access-1"></a>**ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_1**

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
Configure access to all removable storage classes.

This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.

If you enable this policy setting, no access is allowed to any removable storage class.

If you disable or don't configure this policy setting, write and read accesses are allowed to all removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *All Removable Storage classes: Deny all access*
-   GP name: *RemovableStorageClasses_DenyAll_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removablestorageclasses-denyall-access-2"></a>**ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_2**

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
Configure access to all removable storage classes.

This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.

If you enable this policy setting, no access is allowed to any removable storage class.

If you disable or don't configure this policy setting, write and read accesses are allowed to all removable storage classes.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *All Removable Storage classes: Deny all access*
-   GP name: *RemovableStorageClasses_DenyAll_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-removable-remote-allow-access"></a>**ADMX_RemovableStorage/Removable_Remote_Allow_Access**

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
This policy setting grants normal users direct access to removable storage devices in remote sessions.

If you enable this policy setting, remote users can open direct handles to removable storage devices in remote sessions.

If you disable or don't configure this policy setting, remote users cannot open direct handles to removable storage devices in remote sessions.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *All Removable Storage: Allow direct access in remote sessions*
-   GP name: *Removable_Remote_Allow_Access*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-tapedrives-denyexecute-access-2"></a>**ADMX_RemovableStorage/TapeDrives_DenyExecute_Access_2**

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
This policy setting denies execute access to the Tape Drive removable storage class.

If you enable this policy setting, execute access is denied to this removable storage class.

If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Tape Drives: Deny execute access*
-   GP name: *TapeDrives_DenyExecute_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-tapedrives-denyread-access-1"></a>**ADMX_RemovableStorage/TapeDrives_DenyRead_Access_1**

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
This policy setting denies read access to the Tape Drive removable storage class.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Tape Drives: Deny read access*
-   GP name: *TapeDrives_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-tapedrives-denyread-access-2"></a>**ADMX_RemovableStorage/TapeDrives_DenyRead_Access_2**

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
This policy setting denies read access to the Tape Drive removable storage class.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Tape Drives: Deny read access*
-   GP name: *TapeDrives_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-tapedrives-denywrite-access-1"></a>**ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_1**

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
This policy setting denies write access to the Tape Drive removable storage class.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Tape Drives: Deny write access*
-   GP name: *TapeDrives_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-tapedrives-denywrite-access-2"></a>**ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_2**

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
This policy setting denies write access to the Tape Drive removable storage class.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Tape Drives: Deny write access*
-   GP name: *TapeDrives_DenyWrite_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-wpddevices-denyread-access-1"></a>**ADMX_RemovableStorage/WPDDevices_DenyRead_Access_1**

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
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny read access*
-   GP name: *WPDDevices_DenyRead_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-wpddevices-denyread-access-2"></a>**ADMX_RemovableStorage/WPDDevices_DenyRead_Access_2**

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
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

If you enable this policy setting, read access is denied to this removable storage class.

If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny read access*
-   GP name: *WPDDevices_DenyRead_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-wpddevices-denywrite-access-1"></a>**ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_1**

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
This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny write access*
-   GP name: *WPDDevices_DenyWrite_Access_1*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-removablestorage-wpddevices-denywrite-access-2"></a>**ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_2**

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
This policy setting denies write access to removable disks that may include media players, cellular phones, auxiliary displays, and CE devices.

If you enable this policy setting, write access is denied to this removable storage class.

If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny write access*
-   GP name: *WPDDevices_DenyWrite_Access_2*
-   GP path: *System\Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
