---
title: Policy CSP - ADMX_DiskQuota
description: Policy CSP - ADMX_DiskQuota
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 08/12/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DiskQuota


<hr/>

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

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
<a href="" id="admx-diskquota-dq_removablemedia"></a>**ADMX_DiskQuota/DQ_RemovableMedia**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting extends the disk quota policies in this folder to NTFS file system volumes on the removable media.  

If you disable or do not configure this policy setting, the disk quota policies established in this folder apply to fixed-media NTFS volumes only. 

When this policy setting is applied, the computer will apply the disk quota to both fixed and removable media.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Apply policy to removable media*
-   GP name: *DQ_RemovableMedia*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-diskquota-dq_enable"></a>**ADMX_DiskQuota/DQ_Enable**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting turns on and turns off disk quota management on all NTFS volumes of the computer, and prevents users from changing the setting.  

If you enable this policy setting, disk quota management is turned on, and users cannot turn it off.  

If you disable the policy setting, disk quota management is turned off, and users cannot turn it on. When this policy setting is not configured then the disk quota management is turned off by default, and the administrators can turn it on. 

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable quota management" option on the Quota tab of NTFS volumes.

This policy setting turns on disk quota management but does not establish or enforce a particular disk quota limit. 

To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit. 

To turn on or turn off disk quota management without specifying a setting, in My Computer, right-click the name of an NTFS volume, click Properties, click the Quota tab, and then click "Enable quota management."

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable disk quotas*
-   GP name: *DQ_Enable*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--Policy-->
<a href="" id="admx-diskquota-dq_enforce"></a>**ADMX_DiskQuota/DQ_Enforce**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting determines whether disk quota limits are enforced and prevents users from changing the setting.  

If you enable this policy setting, disk quota limits are enforced. 

If you disable this policy setting, disk quota limits are not enforced. When you enable or disable this policy setting, the system disables the "Deny disk space to users exceed quota limit" option on the Quota tab. Therefore, the administrators cannot make changes while the setting is in effect. 

If you do not configure this policy setting, the disk quota limit is not enforced by default, but administrators can change the setting. Enforcement is optional. When users reach an enforced disk quota limit, the system responds as though the physical space on the volume were exhausted. When users reach an unenforced limit, their status in the Quota Entries window changes. However, the users can continue to write to the volume as long as physical space is available. 

This policy setting overrides user settings that enable or disable quota enforcement on their volumes. 

To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enforce disk quota limit*
-   GP name: *DQ_Enforce*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-diskquota-dq_logeventoverlimit"></a>**ADMX_DiskQuota/DQ_LogEventOverLimit**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting determines whether the system records an event in the local Application log when users reach their disk quota limit on a volume, and prevents users from changing the logging setting.  

If you enable this policy setting, the system records an event when the user reaches their limit. 

If you disable this policy setting, no event is recorded. Also, when you enable or disable this policy setting, the system disables the "Log event when a user exceeds their quota limit" option on the Quota tab, so administrators cannot change the setting while a setting is in effect. If you do not configure this policy setting, no events are recorded, but administrators can use the Quota tab option to change the setting. 

This policy setting is independent of the enforcement policy settings for disk quotas. As a result, you can direct the system to log an event, regardless of whether or not you choose to enforce the disk quota limit. Also, this policy setting does not affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they have reached their limit, because their status in the Quota Entries window changes. 

To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Log event when quota limit is exceeded*
-   GP name: *DQ_LogEventOverLimit*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->

<a href="" id="admx-diskquota-dq_logeventoverthreshold"></a>**ADMX_DiskQuota/DQ_LogEventOverThreshold**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting determines whether the system records an event in the Application log when users reach their disk quota warning level on a volume.  

If you enable this policy setting, the system records an event.

If you disable this policy setting, no event is recorded. When you enable or disable this policy setting, the system disables the corresponding "Log event when a user exceeds their warning level" option on the Quota tab so that administrators cannot change logging while a policy setting is in effect.  

If you do not configure this policy setting, no event is recorded, but administrators can use the Quota tab option to change the logging setting. This policy setting does not affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they have reached their warning level because their status in the Quota Entries window changes. 

To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Log event when quota warning level is exceeded*
-   GP name: *DQ_LogEventOverThreshold*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-diskquota-dq_limit"></a>**ADMX_DiskQuota/DQ_Limit**  
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting specifies the default disk quota limit and warning level for new users of the volume.  
This policy setting determines how much disk space can be used by each user on each of the NTFS file system volumes on a computer. It also specifies the warning level, the point at which the user's status in the Quota Entries window changes to indicate that the user is approaching the disk quota limit. 

This setting overrides new users’ settings for the disk quota limit and warning level on their volumes, and it disables the corresponding options in the "Select the default quota limit for new users of this volume" section on the Quota tab. 
This policy setting applies to all new users as soon as they write to the volume. It does not affect disk quota limits for current users, or affect customized limits and warning levels set for particular users (on the Quota tab in Volume Properties).  

If you disable or do not configure this policy setting, the disk space available to users is not limited. The disk quota management feature uses the physical space on each volume as its quota limit and warning level. When you select a limit, remember that the same limit applies to all users on all volumes, regardless of actual volume size. Be sure to set the limit and warning level so that it is reasonable for the range of volumes in the group. 

This policy setting is effective only when disk quota management is enabled on the volume. Also, if disk quotas are not enforced, users can exceed the quota limit you set. When users reach the quota limit, their status in the Quota Entries window changes, but users can continue to write to the volume.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify default quota limit and warning level*
-   GP name: *DQ_Limit*
-   GP path: *System\Disk Quotas*
-   GP ADMX file name: *DiskQuota.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

