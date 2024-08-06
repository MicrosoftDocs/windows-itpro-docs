---
title: ADMX_DiskQuota Policy CSP
description: Learn more about the ADMX_DiskQuota Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DiskQuota-Begin -->
# Policy CSP - ADMX_DiskQuota

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DiskQuota-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskQuota-Editable-End -->

<!-- DQ_Enable-Begin -->
## DQ_Enable

<!-- DQ_Enable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_Enable-Applicability-End -->

<!-- DQ_Enable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_Enable
```
<!-- DQ_Enable-OmaUri-End -->

<!-- DQ_Enable-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns on and turns off disk quota management on all NTFS volumes of the computer, and prevents users from changing the setting.

- If you enable this policy setting, disk quota management is turned on, and users can't turn it off.

- If you disable the policy setting, disk quota management is turned off, and users can't turn it on.

- If this policy setting isn't configured, disk quota management is turned off by default, but administrators can turn it on.

To prevent users from changing the setting while a setting is in effect, the system disables the "Enable quota management" option on the Quota tab of NTFS volumes.

> [!NOTE]
> This policy setting turns on disk quota management but doesn't establish or enforce a particular disk quota limit. To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.

> [!NOTE]
> To turn on or turn off disk quota management without specifying a setting, in My Computer, right-click the name of an NTFS volume, click Properties, click the Quota tab, and then click "Enable quota management".
<!-- DQ_Enable-Description-End -->

<!-- DQ_Enable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_Enable-Editable-End -->

<!-- DQ_Enable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_Enable-DFProperties-End -->

<!-- DQ_Enable-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_Enable |
| Friendly Name | Enable disk quotas |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| Registry Value Name | Enable |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_Enable-AdmxBacked-End -->

<!-- DQ_Enable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_Enable-Examples-End -->

<!-- DQ_Enable-End -->

<!-- DQ_Enforce-Begin -->
## DQ_Enforce

<!-- DQ_Enforce-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_Enforce-Applicability-End -->

<!-- DQ_Enforce-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_Enforce
```
<!-- DQ_Enforce-OmaUri-End -->

<!-- DQ_Enforce-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether disk quota limits are enforced and prevents users from changing the setting.

- If you enable this policy setting, disk quota limits are enforced.

- If you disable this policy setting, disk quota limits aren't enforced. When you enable or disable this policy setting, the system disables the "Deny disk space to users exceeding quota limit" option on the Quota tab so administrators can't make changes while the setting is in effect.

- If you don't configure this policy setting, the disk quota limit isn't enforced by default, but administrators can change the setting.

Enforcement is optional. When users reach an enforced disk quota limit, the system responds as though the physical space on the volume were exhausted. When users reach an unenforced limit, their status in the Quota Entries window changes, but they can continue to write to the volume as long as physical space is available.

> [!NOTE]
> This policy setting overrides user settings that enable or disable quota enforcement on their volumes.

> [!NOTE]
> To specify a disk quota limit, use the "Default quota limit and warning level" policy setting. Otherwise, the system uses the physical space on the volume as the quota limit.
<!-- DQ_Enforce-Description-End -->

<!-- DQ_Enforce-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_Enforce-Editable-End -->

<!-- DQ_Enforce-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_Enforce-DFProperties-End -->

<!-- DQ_Enforce-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_Enforce |
| Friendly Name | Enforce disk quota limit |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| Registry Value Name | Enforce |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_Enforce-AdmxBacked-End -->

<!-- DQ_Enforce-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_Enforce-Examples-End -->

<!-- DQ_Enforce-End -->

<!-- DQ_Limit-Begin -->
## DQ_Limit

<!-- DQ_Limit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_Limit-Applicability-End -->

<!-- DQ_Limit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_Limit
```
<!-- DQ_Limit-OmaUri-End -->

<!-- DQ_Limit-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the default disk quota limit and warning level for new users of the volume.

This policy setting determines how much disk space can be used by each user on each of the NTFS file system volumes on a computer. It also specifies the warning level, the point at which the user's status in the Quota Entries window changes to indicate that the user is approaching the disk quota limit.

This setting overrides new users' settings for the disk quota limit and warning level on their volumes, and it disables the corresponding options in the "Select the default quota limit for new users of this volume" section on the Quota tab.

This policy setting applies to all new users as soon as they write to the volume. It doesn't affect disk quota limits for current users, or affect customized limits and warning levels set for particular users (on the Quota tab in Volume Properties).

If you disable or don't configure this policy setting, the disk space available to users isn't limited. The disk quota management feature uses the physical space on each volume as its quota limit and warning level.

When you select a limit, remember that the same limit applies to all users on all volumes, regardless of actual volume size. Be sure to set the limit and warning level so that it's reasonable for the range of volumes in the group.

This policy setting is effective only when disk quota management is enabled on the volume. Also, if disk quotas aren't enforced, users can exceed the quota limit you set. When users reach the quota limit, their status in the Quota Entries window changes, but users can continue to write to the volume.
<!-- DQ_Limit-Description-End -->

<!-- DQ_Limit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_Limit-Editable-End -->

<!-- DQ_Limit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_Limit-DFProperties-End -->

<!-- DQ_Limit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_Limit |
| Friendly Name | Specify default quota limit and warning level |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_Limit-AdmxBacked-End -->

<!-- DQ_Limit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_Limit-Examples-End -->

<!-- DQ_Limit-End -->

<!-- DQ_LogEventOverLimit-Begin -->
## DQ_LogEventOverLimit

<!-- DQ_LogEventOverLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_LogEventOverLimit-Applicability-End -->

<!-- DQ_LogEventOverLimit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_LogEventOverLimit
```
<!-- DQ_LogEventOverLimit-OmaUri-End -->

<!-- DQ_LogEventOverLimit-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the system records an event in the local Application log when users reach their disk quota limit on a volume, and prevents users from changing the logging setting.

- If you enable this policy setting, the system records an event when the user reaches their limit.

- If you disable this policy setting, no event is recorded. Also, when you enable or disable this policy setting, the system disables the "Log event when a user exceeds their quota limit" option on the Quota tab, so administrators can't change the setting while a setting is in effect.

- If you don't configure this policy setting, no events are recorded, but administrators can use the Quota tab option to change the setting.

This policy setting is independent of the enforcement policy settings for disk quotas. As a result, you can direct the system to log an event, regardless of whether or not you choose to enforce the disk quota limit.

Also, this policy setting doesn't affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they've reached their limit, because their status in the Quota Entries window changes.

> [!NOTE]
> To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.
<!-- DQ_LogEventOverLimit-Description-End -->

<!-- DQ_LogEventOverLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_LogEventOverLimit-Editable-End -->

<!-- DQ_LogEventOverLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_LogEventOverLimit-DFProperties-End -->

<!-- DQ_LogEventOverLimit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_LogEventOverLimit |
| Friendly Name | Log event when quota limit is exceeded |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| Registry Value Name | LogEventOverLimit |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_LogEventOverLimit-AdmxBacked-End -->

<!-- DQ_LogEventOverLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_LogEventOverLimit-Examples-End -->

<!-- DQ_LogEventOverLimit-End -->

<!-- DQ_LogEventOverThreshold-Begin -->
## DQ_LogEventOverThreshold

<!-- DQ_LogEventOverThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_LogEventOverThreshold-Applicability-End -->

<!-- DQ_LogEventOverThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_LogEventOverThreshold
```
<!-- DQ_LogEventOverThreshold-OmaUri-End -->

<!-- DQ_LogEventOverThreshold-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the system records an event in the Application log when users reach their disk quota warning level on a volume.

- If you enable this policy setting, the system records an event.

- If you disable this policy setting, no event is recorded. When you enable or disable this policy setting, the system disables the corresponding "Log event when a user exceeds their warning level" option on the Quota tab so that administrators can't change logging while a policy setting is in effect.

- If you don't configure this policy setting, no event is recorded, but administrators can use the Quota tab option to change the logging setting.

This policy setting doesn't affect the Quota Entries window on the Quota tab. Even without the logged event, users can detect that they've reached their warning level because their status in the Quota Entries window changes.

> [!NOTE]
> To find the logging option, in My Computer, right-click the name of an NTFS file system volume, click Properties, and then click the Quota tab.
<!-- DQ_LogEventOverThreshold-Description-End -->

<!-- DQ_LogEventOverThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_LogEventOverThreshold-Editable-End -->

<!-- DQ_LogEventOverThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_LogEventOverThreshold-DFProperties-End -->

<!-- DQ_LogEventOverThreshold-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_LogEventOverThreshold |
| Friendly Name | Log event when quota warning level is exceeded |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| Registry Value Name | LogEventOverThreshold |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_LogEventOverThreshold-AdmxBacked-End -->

<!-- DQ_LogEventOverThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_LogEventOverThreshold-Examples-End -->

<!-- DQ_LogEventOverThreshold-End -->

<!-- DQ_RemovableMedia-Begin -->
## DQ_RemovableMedia

<!-- DQ_RemovableMedia-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DQ_RemovableMedia-Applicability-End -->

<!-- DQ_RemovableMedia-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskQuota/DQ_RemovableMedia
```
<!-- DQ_RemovableMedia-OmaUri-End -->

<!-- DQ_RemovableMedia-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting extends the disk quota policies in this folder to NTFS file system volumes on removable media.

If you disable or don't configure this policy setting, the disk quota policies established in this folder apply to fixed-media NTFS volumes only.

> [!NOTE]
> When this policy setting is applied, the computer will apply the disk quota to both fixed and removable media.
<!-- DQ_RemovableMedia-Description-End -->

<!-- DQ_RemovableMedia-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DQ_RemovableMedia-Editable-End -->

<!-- DQ_RemovableMedia-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DQ_RemovableMedia-DFProperties-End -->

<!-- DQ_RemovableMedia-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DQ_RemovableMedia |
| Friendly Name | Apply policy to removable media |
| Location | Computer Configuration |
| Path | System > Disk Quotas |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\DiskQuota |
| Registry Value Name | ApplyToRemovableMedia |
| ADMX File Name | DiskQuota.admx |
<!-- DQ_RemovableMedia-AdmxBacked-End -->

<!-- DQ_RemovableMedia-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DQ_RemovableMedia-Examples-End -->

<!-- DQ_RemovableMedia-End -->

<!-- ADMX_DiskQuota-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskQuota-CspMoreInfo-End -->

<!-- ADMX_DiskQuota-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
