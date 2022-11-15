---
title: Policy CSP - ADMX_FileSys
description: Learn about the Policy CSP - ADMX_FileSys.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/02/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_FileSys

<hr/>

<!--Policies-->
## ADMX_FileSys policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-filesys-disablecompression">ADMX_FileSys/DisableCompression</a>
  </dd>
  <dd>
    <a href="#admx-filesys-disabledeletenotification">ADMX_FileSys/DisableDeleteNotification</a>
  </dd>
  <dd>
    <a href="#admx-filesys-disableencryption">ADMX_FileSys/DisableEncryption</a>
  </dd>
  <dd>
    <a href="#admx-filesys-enablepagefileencryption">ADMX_FileSys/EnablePagefileEncryption</a>
  </dd>
  <dd>
    <a href="#admx-filesys-longpathsenabled">ADMX_FileSys/LongPathsEnabled</a>
  </dd>
  <dd>
    <a href="#admx-filesys-shortnamecreationsettings">ADMX_FileSys/ShortNameCreationSettings</a>
  </dd>
  <dd>
    <a href="#admx-filesys-symlinkevaluation">ADMX_FileSys/SymlinkEvaluation</a>
  </dd>
  <dd>
    <a href="#admx-filesys-txfdeprecatedfunctionality">ADMX_FileSys/TxfDeprecatedFunctionality</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-filesys-disablecompression"></a>**ADMX_FileSys/DisableCompression**

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
Compression can add to the processing overhead of filesystem operations. Enabling this setting will prevent access to and creation of compressed files.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow compression on all NTFS volumes*
-   GP name: *DisableCompression*
-   GP path: *System/Filesystem/NTFS*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-disabledeletenotification"></a>**ADMX_FileSys/DisableDeleteNotification**

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
Delete notification is a feature that notifies the underlying storage device of clusters that are freed due to a file delete operation.

A value of 0, the default, will enable delete notifications for all volumes.

A value of 1 will disable delete notifications for all volumes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable delete notifications on all volumes*
-   GP name: *DisableDeleteNotification*
-   GP path: *System/Filesystem*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-disableencryption"></a>**ADMX_FileSys/DisableEncryption**

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
Encryption can add to the processing overhead of filesystem operations.

Enabling this setting will prevent access to and creation of encrypted files.

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow encryption on all NTFS volumes*
-   GP name: *DisableEncryption*
-   GP path: *System/Filesystem/NTFS*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-enablepagefileencryption"></a>**ADMX_FileSys/EnablePagefileEncryption**

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
Encrypting the page file prevents malicious users from reading data that has been paged to disk, but also adds processing overhead for filesystem operations.

Enabling this setting will cause the page files to be encrypted.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable NTFS pagefile encryption*
-   GP name: *EnablePagefileEncryption*
-   GP path: *System/Filesystem/NTFS*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-longpathsenabled"></a>**ADMX_FileSys/LongPathsEnabled**

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
Enabling Win32 long paths will allow manifested win32 applications and Windows Store applications to access paths beyond the normal 260 character limit per node on file systems that support it.

Enabling this setting will cause the long paths to be accessible within the process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Win32 long paths*
-   GP name: *LongPathsEnabled*
-   GP path: *System/Filesystem*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-shortnamecreationsettings"></a>**ADMX_FileSys/ShortNameCreationSettings**

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
This policy setting provides control over whether or not short names are generated during file creation. Some applications require short names for compatibility, but short names have a negative performance impact on the system.

If you enable short names on all volumes, then short names will always be generated. If you disable them on all volumes, then they'll never be generated. If you set short name creation to be configurable on a per volume basis, then an on-disk flag will determine whether or not short names are created on a given volume.

If you disable short name creation on all data volumes, then short names will only be generated for files created on the system volume.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Short name creation options*
-   GP name: *ShortNameCreationSettings*
-   GP path: *System/Filesystem/NTFS*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-symlinkevaluation"></a>**ADMX_FileSys/SymlinkEvaluation**


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
Symbolic links can introduce vulnerabilities in certain applications. To mitigate this issue, you can selectively enable or disable the evaluation of these types of symbolic links:

- Local Link to a Local Target
- Local Link to a Remote Target
- Remote Link to Remote Target
- Remote Link to Local Target

For more information, see the Windows Help section.

> [!NOTE]
> If this policy is disabled or not configured, local administrators may select the types of symbolic links to be evaluated.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Selectively allow the evaluation of a symbolic link*
-   GP name: *SymlinkEvaluation*
-   GP path: *System/Filesystem*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-filesys-txfdeprecatedfunctionality"></a>**ADMX_FileSys/TxfDeprecatedFunctionality**

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
TXF deprecated features included savepoints, secondary RM, miniversion and roll forward. Enable it if you want to use the APIs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable / disable TXF deprecated features*
-   GP name: *TxfDeprecatedFunctionality*
-   GP path: *System/Filesystem/NTFS*
-   GP ADMX file name: *FileSys.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)