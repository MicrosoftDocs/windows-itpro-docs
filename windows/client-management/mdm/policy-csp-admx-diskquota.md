---
title: Policy CSP - ADMX_DiskQuota
description: Policy CSP - ADMX_DiskQuota
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/12/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DiskQuota

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_DiskQuota policies  

<dl>
  <dd>
    <a href="#admx-diskquota-dq_removablemedia">ADMX_DiskQuota/DQ_RemovableMedia</a>
  </dd>
  <dd>
    <a href="#admx-diskquota-dq_enable">ADMX_DiskQuota/DQ_Enable</a>
  </dd>
  <dd>
    <a href="#admx-diskquota-dq_enforce">ADMX_DiskQuota/DQ_Enforce</a>
  </dd>
  <dd>
    <a href="#admx-diskquota-dq_logeventoverlimit">ADMX_DiskQuota/DQ_LogEventOverLimit</a>
  </dd>
  <dd>
    <a href="#admx-diskquota-dq_logeventoverthreshold">ADMX_DiskQuota/DQ_LogEventOverThreshold</a>
  </dd>
  <dd>
    <a href="#admx-diskquota-dq_limit">ADMX_DiskQuota/DQ_Limit</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-diskquota-dq_removablemedia"></a>**ADMX_diskquota/DQ_RemovableMedia**  

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
This policy setting extends the disk quota policies in this folder to NTFS file system volumes on removable media.  

If you disable or do not configure this policy setting, the disk quota policies established in this folder apply to fixed-media NTFS volumes only. 

> [!NOTE]
> When this policy setting is applied, the computer will apply the disk quota to both fixed and removable media.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Apply policy to removable media*
-   GP name: *DQ_RemovableMedia*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-diskquota-dq_enable"></a>**ADMX_DiskQuota/DQ_Enable**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns on and turns off disk quota management on all NTFS volumes of the computer, and prevents users from changing the setting.  

- If you enable this policy setting, disk quota management is turned on, and users cannot turn it off.  

- If you disable the policy setting, disk quota management is turned off, and users cannot turn it on.  

If this policy setting is not configured, disk quota management is turned off by default, but administrators can turn it on.  

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable quota management" option on the Quota tab of NTFS volumes.  

> [!NOTE]
> This policy setting turns on disk quota management but does not establish or enforce a particular disk quota limit. 

To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.  

> [!NOTE]
> To turn on or turn off disk quota management without specifying a setting, in My Computer, right-click the name of an NTFS volume, click **Properties**, click the **Quota** tab, and then click **Enable quota management**.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable disk quotas*
-   GP name: *DQ_Enable*
-   GP path: *Windows NT\DiskQuota!Enable*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-diskquota-dq_enforce"></a>**ADMX_DiskQuota/DQ_Enforce**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the default disk quota limit and warning level for new users of the volume.  

This policy setting determines how much disk space can be used by each user on each of the NTFS file system volumes on a computer. 
It also specifies the warning level, the point at which the user's status in the Quota Entries window changes to indicate that the user is approaching the disk quota limit. 

This setting overrides new users’ settings for the disk quota limit and warning level on their volumes, and it disables the corresponding options in the "Select the default quota limit for new users of this volume" section on the Quota tab. 

This policy setting applies to all new users as soon as they write to the volume. It does not affect disk quota limits for current users, or affect customized limits and warning levels set for particular users (on the Quota tab in Volume Properties).  

If you disable or do not configure this policy setting, the disk space available to users is not limited. The disk quota management feature uses the physical space on each volume as its quota limit and warning level. When you select a limit, remember that the same limit applies to all users on all volumes, regardless of actual volume size. Ensure to set the limit and warning level so that it is reasonable for the range of volumes in the group. 
 
This policy setting is effective only when disk quota management is enabled on the volume. Also, if disk quotas are not enforced, users can exceed the quota limit you set. When users reach the quota limit, their status in the Quota Entries window changes, but users can continue to write to the volume.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify default quota limit and warning level*
-   GP name: *DQ_Enforce*
-   GP path: *Windows NT\DiskQuota!Limit*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-diskquota-dq_enforce"></a>**ADMX_DiskQuota/DQ_Enforce**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies the default disk quota limit and warning level for new users of the volume.  

This policy setting determines how much disk space can be used by each user on each of the NTFS file system volumes on a computer. 
It also specifies the warning level, the point at which the user's status in the Quota Entries window changes to indicate that the user is approaching the disk quota limit. 

This setting overrides new users’ settings for the disk quota limit and warning level on their volumes, and it disables the corresponding options in the "Select the default quota limit for new users of this volume" section on the Quota tab. 

This policy setting applies to all new users as soon as they write to the volume. It does not affect disk quota limits for current users, or affect customized limits and warning levels set for particular users (on the Quota tab in Volume Properties).  

If you disable or do not configure this policy setting, the disk space available to users is not limited. The disk quota management feature uses the physical space on each volume as its quota limit and warning level. When you select a limit, remember that the same limit applies to all users on all volumes, regardless of actual volume size. Ensure to set the limit and warning level so that it is reasonable for the range of volumes in the group. 
 
This policy setting is effective only when disk quota management is enabled on the volume. Also, if disk quotas are not enforced, users can exceed the quota limit you set. When users reach the quota limit, their status in the Quota Entries window changes, but users can continue to write to the volume.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify default quota limit and warning level*
-   GP name: *DQ_LogEventOverLimit*
-   GP path: *Windows NT\DiskQuota!Limit*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->