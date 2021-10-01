---
title: Policy CSP - ADMX_PreviousVersions
description: Policy CSP - ADMX_PreviousVersions
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/01/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_PreviousVersions

<hr/>

<!--Policies-->
## ADMX_PreviousVersions policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-previousversions-disablelocalpage_1">ADMX_PreviousVersions/DisableLocalPage_1</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-disablelocalpage_2">ADMX_PreviousVersions/DisableLocalPage_2</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-disableremotepage_1">ADMX_PreviousVersions/DisableRemotePage_1</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-disableremotepage_2">ADMX_PreviousVersions/DisableRemotePage_2</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-hidebackupentries_1">ADMX_PreviousVersions/HideBackupEntries_1</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-hidebackupentries_2">ADMX_PreviousVersions/HideBackupEntries_2</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-disablelocalrestore_1">ADMX_PreviousVersions/DisableLocalRestore_1</a>
  </dd>
  <dd>
    <a href="#admx-previousversions-disablelocalrestore_2">ADMX_PreviousVersions/DisableLocalRestore_2</a>
  </dd> 
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-disablelocalpage_1"></a>**ADMX_PreviousVersions/DisableLocalPage_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a local file.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a local file. 

- If the user clicks the Restore button, Windows attempts to restore the file from the local disk.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a local file.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring local previous versions*
-   GP name: *DisableLocalPage_1*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-disablelocalpage_2"></a>**ADMX_PreviousVersions/DisableLocalPage_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a local file.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a local file. 

- If the user clicks the Restore button, Windows attempts to restore the file from the local disk.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a local file.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring local previous versions*
-   GP name: *DisableLocalPage_2*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-disableremotepage_1"></a>**ADMX_PreviousVersions/DisableRemotePage_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. 

- If the user clicks the Restore button, Windows attempts to restore the file from the file share.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring remote previous versions*
-   GP name: *DisableRemotePage_1*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-disableremotepage_2"></a>**ADMX_PreviousVersions/DisableRemotePage_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. 

- If the user clicks the Restore button, Windows attempts to restore the file from the file share.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring remote previous versions*
-   GP name: *DisableRemotePage_1*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*


<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-hidebackupentries_1"></a>**ADMX_PreviousVersions/HideBackupEntries_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.  

- If you enable this policy setting, users cannot see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.  

- If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points. 

If you do not configure this policy setting, it is disabled by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Hide previous versions of files on backup location*
-   GP name: *HideBackupEntries_1*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-hidebackupentries_2"></a>**ADMX_PreviousVersions/HideBackupEntries_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.  

- If you enable this policy setting, users cannot see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.  

- If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points. 

If you do not configure this policy setting, it is disabled by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Hide previous versions of files on backup location*
-   GP name: *HideBackupEntries_2*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-previousversions-disablelocalrestore_1"></a>**ADMX_PreviousVersions/DisableLocalRestore_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. 

- If the user clicks the Restore button, Windows attempts to restore the file from the file share.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring remote previous versions*
-   GP name: *DisableLocalRestore_1*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>
<!--Policy-->
<a href="" id="admx-previousversions-disablelocalrestore_2"></a>**ADMX_PreviousVersions/DisableLocalRestore_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.  

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.  

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. 

- If the user clicks the Restore button, Windows attempts to restore the file from the file share.  

- If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent restoring remote previous versions*
-   GP name: *DisableLocalRestore_2*
-   GP path: *Windows Components\File Explorer\Previous Versions*
-   GP ADMX file name: *PreviousVersions.admx*
<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

