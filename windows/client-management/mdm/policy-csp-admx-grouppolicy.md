---
title: ADMX_GroupPolicy Policy CSP
description: Learn more about the ADMX_GroupPolicy Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_GroupPolicy-Begin -->
# Policy CSP - ADMX_GroupPolicy

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_GroupPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_GroupPolicy-Editable-End -->

<!-- AllowX-ForestPolicy-and-RUP-Begin -->
2 AllowX/ForestPolicy/and/RUP

<!-- AllowX-ForestPolicy-and-RUP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowX-ForestPolicy-and-RUP-Applicability-End -->

<!-- AllowX-ForestPolicy-and-RUP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/AllowX-ForestPolicy-and-RUP
```
<!-- AllowX-ForestPolicy-and-RUP-OmaUri-End -->

<!-- AllowX-ForestPolicy-and-RUP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows user-based policy processing, roaming user profiles, and user object logon scripts for interactive logons across forests.

This policy setting affects all user accounts that interactively log on to a computer in a different forest when a trust across forests or a two-way forest trust exists.

- If you don't configure this policy setting:

- No user-based policy settings are applied from the user's forest.

- Users don't receive their roaming profiles; they receive a local profile on the computer from the local forest. A warning message appears to the user, and an event log message (1529) is posted.

- Loopback Group Policy processing is applied, using the Group Policy Objects (GPOs) that are scoped to the computer.

- An event log message (1109) is posted, stating that loopback was invoked in Replace mode.

- If you enable this policy setting, the behavior is exactly the same as in Windows 2000: user policy is applied, and a roaming user profile is allowed from the trusted forest.

- If you disable this policy setting, the behavior is the same as if it isn't configured.
<!-- AllowX-ForestPolicy-and-RUP-Description-End -->

<!-- AllowX-ForestPolicy-and-RUP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowX-ForestPolicy-and-RUP-Editable-End -->

<!-- AllowX-ForestPolicy-and-RUP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowX-ForestPolicy-and-RUP-DFProperties-End -->

<!-- AllowX-ForestPolicy-and-RUP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowX-ForestPolicy-and-RUP |
| Friendly Name | Allow cross-forest user policy and roaming user profiles |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowX-ForestPolicy-and-RUP |
| ADMX File Name | GroupPolicy.admx |
<!-- AllowX-ForestPolicy-and-RUP-AdmxBacked-End -->

<!-- AllowX-ForestPolicy-and-RUP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowX-ForestPolicy-and-RUP-Examples-End -->

<!-- AllowX-ForestPolicy-and-RUP-End -->

<!-- CorpConnSyncWaitTime-Begin -->
## CorpConnSyncWaitTime

<!-- CorpConnSyncWaitTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CorpConnSyncWaitTime-Applicability-End -->

<!-- CorpConnSyncWaitTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CorpConnSyncWaitTime
```
<!-- CorpConnSyncWaitTime-OmaUri-End -->

<!-- CorpConnSyncWaitTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies how long Group Policy should wait for workplace connectivity notifications during startup policy processing. If the startup policy processing is synchronous, the computer is blocked until workplace connectivity is available or the wait time is reached. If the startup policy processing is asynchronous, the computer isn't blocked and policy processing will occur in the background. In either case, configuring this policy setting overrides any system-computed wait times.

- If you enable this policy setting, Group Policy uses this administratively configured maximum wait time for workplace connectivity, and overrides any default or system-computed wait time.

- If you disable or don't configure this policy setting, Group Policy will use the default wait time of 60 seconds on computers running Windows operating systems greater than Windows 7 configured for workplace connectivity.
<!-- CorpConnSyncWaitTime-Description-End -->

<!-- CorpConnSyncWaitTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CorpConnSyncWaitTime-Editable-End -->

<!-- CorpConnSyncWaitTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CorpConnSyncWaitTime-DFProperties-End -->

<!-- CorpConnSyncWaitTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CorpConnSyncWaitTime |
| Friendly Name | Specify workplace connectivity wait time for policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- CorpConnSyncWaitTime-AdmxBacked-End -->

<!-- CorpConnSyncWaitTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CorpConnSyncWaitTime-Examples-End -->

<!-- CorpConnSyncWaitTime-End -->

<!-- CSE_AppMgmt-Begin -->
## CSE_AppMgmt

<!-- CSE_AppMgmt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_AppMgmt-Applicability-End -->

<!-- CSE_AppMgmt-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_AppMgmt
```
<!-- CSE_AppMgmt-OmaUri-End -->

<!-- CSE_AppMgmt-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when software installation policies are updated.

This policy setting affects all policy settings that use the software installation component of Group Policy, such as policy settings in Software Settings\Software Installation. You can set software installation policy only for Group Policy Objects stored in Active Directory, not for Group Policy Objects on the local computer.

This policy setting overrides customized settings that the program implementing the software installation policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy setting implementations specify that they're updated only when changed. However, you might want to update unchanged policy settings, such as reapplying a desired policies in case a user has changed it.
<!-- CSE_AppMgmt-Description-End -->

<!-- CSE_AppMgmt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_AppMgmt-Editable-End -->

<!-- CSE_AppMgmt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_AppMgmt-DFProperties-End -->

<!-- CSE_AppMgmt-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_AppMgmt |
| Friendly Name | Configure software Installation policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{c6dc5466-785a-11d2-84d0-00c04fb169f7} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_AppMgmt-AdmxBacked-End -->

<!-- CSE_AppMgmt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_AppMgmt-Examples-End -->

<!-- CSE_AppMgmt-End -->

<!-- CSE_DiskQuota-Begin -->
## CSE_DiskQuota

<!-- CSE_DiskQuota-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_DiskQuota-Applicability-End -->

<!-- CSE_DiskQuota-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_DiskQuota
```
<!-- CSE_DiskQuota-OmaUri-End -->

<!-- CSE_DiskQuota-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when disk quota policies are updated.

This policy setting affects all policies that use the disk quota component of Group Policy, such as those in Computer Configuration\Administrative Templates\System\Disk Quotas.

This policy setting overrides customized settings that the program implementing the disk quota policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
<!-- CSE_DiskQuota-Description-End -->

<!-- CSE_DiskQuota-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_DiskQuota-Editable-End -->

<!-- CSE_DiskQuota-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_DiskQuota-DFProperties-End -->

<!-- CSE_DiskQuota-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_DiskQuota |
| Friendly Name | Configure disk quota policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{3610eda5-77ef-11d2-8dc5-00c04fa31a66} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_DiskQuota-AdmxBacked-End -->

<!-- CSE_DiskQuota-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_DiskQuota-Examples-End -->

<!-- CSE_DiskQuota-End -->

<!-- CSE_EFSRecovery-Begin -->
## CSE_EFSRecovery

<!-- CSE_EFSRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_EFSRecovery-Applicability-End -->

<!-- CSE_EFSRecovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_EFSRecovery
```
<!-- CSE_EFSRecovery-OmaUri-End -->

<!-- CSE_EFSRecovery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when encryption policies are updated.

This policy setting affects all policies that use the encryption component of Group Policy, such as policies related to encryption in Windows Settings\Security Settings.

It overrides customized settings that the program implementing the encryption policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
<!-- CSE_EFSRecovery-Description-End -->

<!-- CSE_EFSRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_EFSRecovery-Editable-End -->

<!-- CSE_EFSRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_EFSRecovery-DFProperties-End -->

<!-- CSE_EFSRecovery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_EFSRecovery |
| Friendly Name | Configure EFS recovery policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{B1BE8D72-6EAC-11D2-A4EA-00C04F79F83A} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_EFSRecovery-AdmxBacked-End -->

<!-- CSE_EFSRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_EFSRecovery-Examples-End -->

<!-- CSE_EFSRecovery-End -->

<!-- CSE_FolderRedirection-Begin -->
## CSE_FolderRedirection

<!-- CSE_FolderRedirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_FolderRedirection-Applicability-End -->

<!-- CSE_FolderRedirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_FolderRedirection
```
<!-- CSE_FolderRedirection-OmaUri-End -->

<!-- CSE_FolderRedirection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when folder redirection policies are updated.

This policy setting affects all policies that use the folder redirection component of Group Policy, such as those in WindowsSettings\Folder Redirection. You can only set folder redirection policy for Group Policy objects, stored in Active Directory, not for Group Policy objects on the local computer.

This policy setting overrides customized settings that the program implementing the folder redirection policy setting set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
<!-- CSE_FolderRedirection-Description-End -->

<!-- CSE_FolderRedirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_FolderRedirection-Editable-End -->

<!-- CSE_FolderRedirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_FolderRedirection-DFProperties-End -->

<!-- CSE_FolderRedirection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_FolderRedirection |
| Friendly Name | Configure folder redirection policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{25537BA6-77A8-11D2-9B6C-0000F8080861} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_FolderRedirection-AdmxBacked-End -->

<!-- CSE_FolderRedirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_FolderRedirection-Examples-End -->

<!-- CSE_FolderRedirection-End -->

<!-- CSE_IEM-Begin -->
## CSE_IEM

<!-- CSE_IEM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_IEM-Applicability-End -->

<!-- CSE_IEM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_IEM
```
<!-- CSE_IEM-OmaUri-End -->

<!-- CSE_IEM-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when Internet Explorer Maintenance policies are updated.

This policy setting affects all policies that use the Internet Explorer Maintenance component of Group Policy, such as those in Windows Settings\Internet Explorer Maintenance.

This policy setting overrides customized settings that the program implementing the Internet Explorer Maintenance policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
<!-- CSE_IEM-Description-End -->

<!-- CSE_IEM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_IEM-Editable-End -->

<!-- CSE_IEM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_IEM-DFProperties-End -->

<!-- CSE_IEM-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_IEM |
| Friendly Name | Configure Internet Explorer Maintenance policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{A2E30F80-D7DE-11d2-BBDE-00C04F86AE3B} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_IEM-AdmxBacked-End -->

<!-- CSE_IEM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_IEM-Examples-End -->

<!-- CSE_IEM-End -->

<!-- CSE_IPSecurity-Begin -->
## CSE_IPSecurity

<!-- CSE_IPSecurity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_IPSecurity-Applicability-End -->

<!-- CSE_IPSecurity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_IPSecurity
```
<!-- CSE_IPSecurity-OmaUri-End -->

<!-- CSE_IPSecurity-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when IP security policies are updated.

This policy setting affects all policies that use the IP security component of Group Policy, such as policies in Computer Configuration\Windows Settings\Security Settings\IP Security Policies on Local Machine.

This policy setting overrides customized settings that the program implementing the IP security policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
<!-- CSE_IPSecurity-Description-End -->

<!-- CSE_IPSecurity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_IPSecurity-Editable-End -->

<!-- CSE_IPSecurity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_IPSecurity-DFProperties-End -->

<!-- CSE_IPSecurity-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_IPSecurity |
| Friendly Name | Configure IP security policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{e437bc1c-aa7d-11d2-a382-00c04f991e27} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_IPSecurity-AdmxBacked-End -->

<!-- CSE_IPSecurity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_IPSecurity-Examples-End -->

<!-- CSE_IPSecurity-End -->

<!-- CSE_Registry-Begin -->
## CSE_Registry

<!-- CSE_Registry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_Registry-Applicability-End -->

<!-- CSE_Registry-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_Registry
```
<!-- CSE_Registry-OmaUri-End -->

<!-- CSE_Registry-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when registry policies are updated.

This policy setting affects all policies in the Administrative Templates folder and any other policies that store values in the registry. It overrides customized settings that the program implementing a registry policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
<!-- CSE_Registry-Description-End -->

<!-- CSE_Registry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_Registry-Editable-End -->

<!-- CSE_Registry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_Registry-DFProperties-End -->

<!-- CSE_Registry-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_Registry |
| Friendly Name | Configure registry policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_Registry-AdmxBacked-End -->

<!-- CSE_Registry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_Registry-Examples-End -->

<!-- CSE_Registry-End -->

<!-- CSE_Scripts-Begin -->
## CSE_Scripts

<!-- CSE_Scripts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_Scripts-Applicability-End -->

<!-- CSE_Scripts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_Scripts
```
<!-- CSE_Scripts-OmaUri-End -->

<!-- CSE_Scripts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when policies that assign shared scripts are updated.

This policy setting affects all policies that use the scripts component of Group Policy, such as those in WindowsSettings\Scripts. It overrides customized settings that the program implementing the scripts policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this setting, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
<!-- CSE_Scripts-Description-End -->

<!-- CSE_Scripts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_Scripts-Editable-End -->

<!-- CSE_Scripts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_Scripts-DFProperties-End -->

<!-- CSE_Scripts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_Scripts |
| Friendly Name | Configure scripts policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{42B5FAAE-6536-11d2-AE5A-0000F87571E3} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_Scripts-AdmxBacked-End -->

<!-- CSE_Scripts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_Scripts-Examples-End -->

<!-- CSE_Scripts-End -->

<!-- CSE_Security-Begin -->
## CSE_Security

<!-- CSE_Security-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_Security-Applicability-End -->

<!-- CSE_Security-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_Security
```
<!-- CSE_Security-OmaUri-End -->

<!-- CSE_Security-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when security policies are updated.

This policy setting affects all policies that use the security component of Group Policy, such as those in Windows Settings\Security Settings.

This policy setting overrides customized settings that the program implementing the security policy set when it was installed.

- If you enable this policy setting, you can use the check boxes provided to change the options.

- If you disable or don't configure this policy setting, it has no effect on the system.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they be updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired policy setting in case a user has changed it.
<!-- CSE_Security-Description-End -->

<!-- CSE_Security-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_Security-Editable-End -->

<!-- CSE_Security-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_Security-DFProperties-End -->

<!-- CSE_Security-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_Security |
| Friendly Name | Configure security policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{827D319E-6EAC-11D2-A4EA-00C04F79F83A} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_Security-AdmxBacked-End -->

<!-- CSE_Security-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_Security-Examples-End -->

<!-- CSE_Security-End -->

<!-- CSE_Wired-Begin -->
## CSE_Wired

<!-- CSE_Wired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_Wired-Applicability-End -->

<!-- CSE_Wired-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_Wired
```
<!-- CSE_Wired-OmaUri-End -->

<!-- CSE_Wired-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when policies that assign wired network settings are updated.

This policy setting affects all policies that use the wired network component of Group Policy, such as those in Windows Settings\Wired Network Policies.

It overrides customized settings that the program implementing the wired network set when it was installed.

- If you enable this policy, you can use the check boxes provided to change the options.

- If you disable this setting or don't configure it, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
<!-- CSE_Wired-Description-End -->

<!-- CSE_Wired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_Wired-Editable-End -->

<!-- CSE_Wired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_Wired-DFProperties-End -->

<!-- CSE_Wired-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_Wired |
| Friendly Name | Configure wired policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{B587E2B1-4D59-4e7e-AED9-22B9DF11D053} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_Wired-AdmxBacked-End -->

<!-- CSE_Wired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_Wired-Examples-End -->

<!-- CSE_Wired-End -->

<!-- CSE_Wireless-Begin -->
## CSE_Wireless

<!-- CSE_Wireless-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CSE_Wireless-Applicability-End -->

<!-- CSE_Wireless-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/CSE_Wireless
```
<!-- CSE_Wireless-OmaUri-End -->

<!-- CSE_Wireless-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines when policies that assign wireless network settings are updated.

This policy setting affects all policies that use the wireless network component of Group Policy, such as those in WindowsSettings\Wireless Network Policies.

It overrides customized settings that the program implementing the wireless network set when it was installed.

- If you enable this policy, you can use the check boxes provided to change the options.

- If you disable this setting or don't configure it, it has no effect on the system.

The "Allow processing across a slow network connection" option updates the policies even when the update is being transmitted across a slow network connection, such as a telephone line. Updates across slow connections can cause significant delays.

The "Do not apply during periodic background processing" option prevents the system from updating affected policies in the background while the computer is in use. When background updates are disabled, policy changes won't take effect until the next user logon or system restart.

The "Process even if the Group Policy objects haven't changed" option updates and reapplies the policies even if the policies haven't changed. Many policy implementations specify that they're updated only when changed. However, you might want to update unchanged policies, such as reapplying a desired setting in case a user has changed it.
<!-- CSE_Wireless-Description-End -->

<!-- CSE_Wireless-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CSE_Wireless-Editable-End -->

<!-- CSE_Wireless-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CSE_Wireless-DFProperties-End -->

<!-- CSE_Wireless-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CSE_Wireless |
| Friendly Name | Configure wireless policy processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy\{0ACDD40C-75AC-47ab-BAA0-BF6DE7E7FE63} |
| ADMX File Name | GroupPolicy.admx |
<!-- CSE_Wireless-AdmxBacked-End -->

<!-- CSE_Wireless-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CSE_Wireless-Examples-End -->

<!-- CSE_Wireless-End -->

<!-- DenyRsopToInteractiveUser_1-Begin -->
## DenyRsopToInteractiveUser_1

<!-- DenyRsopToInteractiveUser_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DenyRsopToInteractiveUser_1-Applicability-End -->

<!-- DenyRsopToInteractiveUser_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DenyRsopToInteractiveUser_1
```
<!-- DenyRsopToInteractiveUser_1-OmaUri-End -->

<!-- DenyRsopToInteractiveUser_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability of users to view their Resultant Set of Policy (RSoP) data.

By default, interactively logged-on users can view their own Resultant Set of Policy (RSoP) data.

- If you enable this policy setting, interactive users can't generate RSoP data.

- If you disable or don't configure this policy setting, interactive users can generate RSoP.

> [!NOTE]
> This policy setting doesn't affect administrators. If you enable or disable this policy setting, by default administrators can view RSoP data.

> [!NOTE]
> To view RSoP data on a client computer, use the RSoP snap-in for the Microsoft Management Console. You can launch the RSoP snap-in from the command line by typing RSOP.msc.

> [!NOTE]
> This policy setting exists as both a User Configuration and Computer Configuration setting.

Also, see the "Turn off Resultant set of Policy logging" policy setting in Computer Configuration\Administrative Templates\System\GroupPolicy.
<!-- DenyRsopToInteractiveUser_1-Description-End -->

<!-- DenyRsopToInteractiveUser_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyRsopToInteractiveUser_1-Editable-End -->

<!-- DenyRsopToInteractiveUser_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DenyRsopToInteractiveUser_1-DFProperties-End -->

<!-- DenyRsopToInteractiveUser_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DenyRsopToInteractiveUser_1 |
| Friendly Name | Determine if interactive users can generate Resultant Set of Policy data |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DenyRsopToInteractiveUser |
| ADMX File Name | GroupPolicy.admx |
<!-- DenyRsopToInteractiveUser_1-AdmxBacked-End -->

<!-- DenyRsopToInteractiveUser_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyRsopToInteractiveUser_1-Examples-End -->

<!-- DenyRsopToInteractiveUser_1-End -->

<!-- DenyRsopToInteractiveUser_2-Begin -->
## DenyRsopToInteractiveUser_2

<!-- DenyRsopToInteractiveUser_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DenyRsopToInteractiveUser_2-Applicability-End -->

<!-- DenyRsopToInteractiveUser_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DenyRsopToInteractiveUser_2
```
<!-- DenyRsopToInteractiveUser_2-OmaUri-End -->

<!-- DenyRsopToInteractiveUser_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability of users to view their Resultant Set of Policy (RSoP) data.

By default, interactively logged-on users can view their own Resultant Set of Policy (RSoP) data.

- If you enable this policy setting, interactive users can't generate RSoP data.

- If you disable or don't configure this policy setting, interactive users can generate RSoP.

> [!NOTE]
> This policy setting doesn't affect administrators. If you enable or disable this policy setting, by default administrators can view RSoP data.

> [!NOTE]
> To view RSoP data on a client computer, use the RSoP snap-in for the Microsoft Management Console. You can launch the RSoP snap-in from the command line by typing RSOP.msc.

> [!NOTE]
> This policy setting exists as both a User Configuration and Computer Configuration setting.

Also, see the "Turn off Resultant set of Policy logging" policy setting in Computer Configuration\Administrative Templates\System\GroupPolicy.
<!-- DenyRsopToInteractiveUser_2-Description-End -->

<!-- DenyRsopToInteractiveUser_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyRsopToInteractiveUser_2-Editable-End -->

<!-- DenyRsopToInteractiveUser_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DenyRsopToInteractiveUser_2-DFProperties-End -->

<!-- DenyRsopToInteractiveUser_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DenyRsopToInteractiveUser_2 |
| Friendly Name | Determine if interactive users can generate Resultant Set of Policy data |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DenyRsopToInteractiveUser |
| ADMX File Name | GroupPolicy.admx |
<!-- DenyRsopToInteractiveUser_2-AdmxBacked-End -->

<!-- DenyRsopToInteractiveUser_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyRsopToInteractiveUser_2-Examples-End -->

<!-- DenyRsopToInteractiveUser_2-End -->

<!-- DisableAOACProcessing-Begin -->
## DisableAOACProcessing

<!-- DisableAOACProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAOACProcessing-Applicability-End -->

<!-- DisableAOACProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DisableAOACProcessing
```
<!-- DisableAOACProcessing-OmaUri-End -->

<!-- DisableAOACProcessing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the Group Policy Client Service from stopping when idle.
<!-- DisableAOACProcessing-Description-End -->

<!-- DisableAOACProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAOACProcessing-Editable-End -->

<!-- DisableAOACProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAOACProcessing-DFProperties-End -->

<!-- DisableAOACProcessing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAOACProcessing |
| Friendly Name | Turn off Group Policy Client Service AOAC optimization |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DisableAOACProcessing |
| ADMX File Name | GroupPolicy.admx |
<!-- DisableAOACProcessing-AdmxBacked-End -->

<!-- DisableAOACProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAOACProcessing-Examples-End -->

<!-- DisableAOACProcessing-End -->

<!-- DisableAutoADMUpdate-Begin -->
## DisableAutoADMUpdate

<!-- DisableAutoADMUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAutoADMUpdate-Applicability-End -->

<!-- DisableAutoADMUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DisableAutoADMUpdate
```
<!-- DisableAutoADMUpdate-OmaUri-End -->

<!-- DisableAutoADMUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the system from updating the Administrative Templates source files automatically when you open the Group Policy Object Editor. Administrators might want to use this if they're concerned about the amount of space used on the system volume of a DC.

By default, when you start the Group Policy Object Editor, a timestamp comparison is performed on the source files in the local %SYSTEMROOT%\inf directory and the source files stored in the GPO. If the local files are newer, they're copied into the GPO.

Changing the status of this setting to Enabled will keep any source files from copying to the GPO.

Changing the status of this setting to Disabled will enforce the default behavior. Files will always be copied to the GPO if they've a later timestamp.

> [!NOTE]
> If the Computer Configuration policy setting, "Always use local ADM files for the Group Policy Object Editor" is enabled, the state of this setting is ignored and always treated as Enabled.
<!-- DisableAutoADMUpdate-Description-End -->

<!-- DisableAutoADMUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutoADMUpdate-Editable-End -->

<!-- DisableAutoADMUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAutoADMUpdate-DFProperties-End -->

<!-- DisableAutoADMUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutoADMUpdate |
| Friendly Name | Turn off automatic update of ADM files |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy Editor |
| Registry Value Name | DisableAutoADMUpdate |
| ADMX File Name | GroupPolicy.admx |
<!-- DisableAutoADMUpdate-AdmxBacked-End -->

<!-- DisableAutoADMUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutoADMUpdate-Examples-End -->

<!-- DisableAutoADMUpdate-End -->

<!-- DisableBackgroundPolicy-Begin -->
## DisableBackgroundPolicy

<!-- DisableBackgroundPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBackgroundPolicy-Applicability-End -->

<!-- DisableBackgroundPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DisableBackgroundPolicy
```
<!-- DisableBackgroundPolicy-OmaUri-End -->

<!-- DisableBackgroundPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents Group Policy from being updated while the computer is in use. This policy setting applies to Group Policy for computers, users, and domain controllers.

- If you enable this policy setting, the system waits until the current user logs off the system before updating the computer and user settings.

- If you disable or don't configure this policy setting, updates can be applied while users are working. The frequency of updates is determined by the "Set Group Policy refresh interval for computers" and "Set Group Policy refresh interval for users" policy settings.

> [!NOTE]
> If you make changes to this policy setting, you must restart your computer for it to take effect.
<!-- DisableBackgroundPolicy-Description-End -->

<!-- DisableBackgroundPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBackgroundPolicy-Editable-End -->

<!-- DisableBackgroundPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBackgroundPolicy-DFProperties-End -->

<!-- DisableBackgroundPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBackgroundPolicy |
| Friendly Name | Turn off background refresh of Group Policy |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableBkGndGroupPolicy |
| ADMX File Name | GroupPolicy.admx |
<!-- DisableBackgroundPolicy-AdmxBacked-End -->

<!-- DisableBackgroundPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBackgroundPolicy-Examples-End -->

<!-- DisableBackgroundPolicy-End -->

<!-- DisableLGPOProcessing-Begin -->
## DisableLGPOProcessing

<!-- DisableLGPOProcessing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLGPOProcessing-Applicability-End -->

<!-- DisableLGPOProcessing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DisableLGPOProcessing
```
<!-- DisableLGPOProcessing-OmaUri-End -->

<!-- DisableLGPOProcessing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents Local Group Policy Objects (Local GPOs) from being applied.

By default, the policy settings in Local GPOs are applied before any domain-based GPO policy settings. These policy settings can apply to both users and the local computer. You can disable the processing and application of all Local GPOs to ensure that only domain-based GPOs are applied.

- If you enable this policy setting, the system doesn't process and apply any Local GPOs.

- If you disable or don't configure this policy setting, Local GPOs continue to be applied.

> [!NOTE]
> For computers joined to a domain, it's strongly recommended that you only configure this policy setting in domain-based GPOs. This policy setting will be ignored on computers that are joined to a workgroup.
<!-- DisableLGPOProcessing-Description-End -->

<!-- DisableLGPOProcessing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLGPOProcessing-Editable-End -->

<!-- DisableLGPOProcessing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLGPOProcessing-DFProperties-End -->

<!-- DisableLGPOProcessing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLGPOProcessing |
| Friendly Name | Turn off Local Group Policy Objects processing |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DisableLGPOProcessing |
| ADMX File Name | GroupPolicy.admx |
<!-- DisableLGPOProcessing-AdmxBacked-End -->

<!-- DisableLGPOProcessing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLGPOProcessing-Examples-End -->

<!-- DisableLGPOProcessing-End -->

<!-- DisableUsersFromMachGP-Begin -->
## DisableUsersFromMachGP

<!-- DisableUsersFromMachGP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableUsersFromMachGP-Applicability-End -->

<!-- DisableUsersFromMachGP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/DisableUsersFromMachGP
```
<!-- DisableUsersFromMachGP-OmaUri-End -->

<!-- DisableUsersFromMachGP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control a user's ability to invoke a computer policy refresh.

- If you enable this policy setting, users aren't able to invoke a refresh of computer policy. Computer policy will still be applied at startup or when an official policy refresh occurs.

- If you disable or don't configure this policy setting, the default behavior applies. By default, computer policy is applied when the computer starts up. It also applies at a specified refresh interval or when manually invoked by the user.

> [!NOTE]
> This policy setting applies only to non-administrators. Administrators can still invoke a refresh of computer policy at any time, no matter how this policy setting is configured.

Also, see the "Set Group Policy refresh interval for computers" policy setting to change the policy refresh interval.

> [!NOTE]
> If you make changes to this policy setting, you must restart your computer for it to take effect.
<!-- DisableUsersFromMachGP-Description-End -->

<!-- DisableUsersFromMachGP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableUsersFromMachGP-Editable-End -->

<!-- DisableUsersFromMachGP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableUsersFromMachGP-DFProperties-End -->

<!-- DisableUsersFromMachGP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableUsersFromMachGP |
| Friendly Name | Remove users' ability to invoke machine policy refresh |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DenyUsersFromMachGP |
| ADMX File Name | GroupPolicy.admx |
<!-- DisableUsersFromMachGP-AdmxBacked-End -->

<!-- DisableUsersFromMachGP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableUsersFromMachGP-Examples-End -->

<!-- DisableUsersFromMachGP-End -->

<!-- EnableCDP-Begin -->
## EnableCDP

<!-- EnableCDP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableCDP-Applicability-End -->

<!-- EnableCDP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/EnableCDP
```
<!-- EnableCDP-OmaUri-End -->

<!-- EnableCDP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the Windows device is allowed to participate in cross-device experiences (continue experiences).

- If you enable this policy setting, the Windows device is discoverable by other Windows devices that belong to the same user, and can participate in cross-device experiences.

- If you disable this policy setting, the Windows device isn't discoverable by other devices, and can't participate in cross-device experiences.

- If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
<!-- EnableCDP-Description-End -->

<!-- EnableCDP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableCDP-Editable-End -->

<!-- EnableCDP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableCDP-DFProperties-End -->

<!-- EnableCDP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableCDP |
| Friendly Name | Continue experiences on this device |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableCdp |
| ADMX File Name | GroupPolicy.admx |
<!-- EnableCDP-AdmxBacked-End -->

<!-- EnableCDP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableCDP-Examples-End -->

<!-- EnableCDP-End -->

<!-- EnableLogonOptimization-Begin -->
## EnableLogonOptimization

<!-- EnableLogonOptimization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableLogonOptimization-Applicability-End -->

<!-- EnableLogonOptimization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/EnableLogonOptimization
```
<!-- EnableLogonOptimization-OmaUri-End -->

<!-- EnableLogonOptimization-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Group Policy caching behavior.

- If you enable or don't configure this policy setting, Group Policy caches policy information after every background processing session. This cache saves applicable GPOs and the settings contained within them. When Group Policy runs in synchronous foreground mode, it refers to this cache, which enables it to run faster. When the cache is read, Group Policy attempts to contact a logon domain controller to determine the link speed. When Group Policy runs in background mode or asynchronous foreground mode, it continues to download the latest version of the policy information, and it uses a bandwidth estimate to determine slow link thresholds. (See the "Configure Group Policy Slow Link Detection" policy setting to configure asynchronous foreground behavior).

The slow link value that's defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before reporting the link speed as slow. The default is 500 milliseconds.

The timeout value that's defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before determining that there is no network connectivity. This stops the current Group Policy processing. Group Policy will run in the background the next time a connection to a domain controller is established. Setting this value too high might result in longer waits for the user at boot or logon. The default is 5000 milliseconds.

- If you disable this policy setting, the Group Policy client won't cache applicable GPOs or settings that are contained within the GPOs. When Group Policy runs synchronously, it downloads the latest version of the policy from the network and uses bandwidth estimates to determine slow link thresholds. (See the "Configure Group Policy Slow Link Detection" policy setting to configure asynchronous foreground behavior).
<!-- EnableLogonOptimization-Description-End -->

<!-- EnableLogonOptimization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLogonOptimization-Editable-End -->

<!-- EnableLogonOptimization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLogonOptimization-DFProperties-End -->

<!-- EnableLogonOptimization-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableLogonOptimization |
| Friendly Name | Configure Group Policy Caching |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableLogonOptimization |
| ADMX File Name | GroupPolicy.admx |
<!-- EnableLogonOptimization-AdmxBacked-End -->

<!-- EnableLogonOptimization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLogonOptimization-Examples-End -->

<!-- EnableLogonOptimization-End -->

<!-- EnableLogonOptimizationOnServerSKU-Begin -->
## EnableLogonOptimizationOnServerSKU

<!-- EnableLogonOptimizationOnServerSKU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableLogonOptimizationOnServerSKU-Applicability-End -->

<!-- EnableLogonOptimizationOnServerSKU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/EnableLogonOptimizationOnServerSKU
```
<!-- EnableLogonOptimizationOnServerSKU-OmaUri-End -->

<!-- EnableLogonOptimizationOnServerSKU-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Group Policy caching behavior on Windows Server machines.

- If you enable this policy setting, Group Policy caches policy information after every background processing session. This cache saves applicable GPOs and the settings contained within them. When Group Policy runs in synchronous foreground mode, it refers to this cache, which enables it to run faster. When the cache is read, Group Policy attempts to contact a logon domain controller to determine the link speed. When Group Policy runs in background mode or asynchronous foreground mode, it continues to download the latest version of the policy information, and it uses a bandwidth estimate to determine slow link thresholds. (See the "Configure Group Policy Slow Link Detection" policy setting to configure asynchronous foreground behavior).

The slow link value that's defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before reporting the link speed as slow. The default is 500 milliseconds.

The timeout value that's defined in this policy setting determines how long Group Policy will wait for a response from the domain controller before determining that there is no network connectivity. This stops the current Group Policy processing. Group Policy will run in the background the next time a connection to a domain controller is established. Setting this value too high might result in longer waits for the user at boot or logon. The default is 5000 milliseconds.

- If you disable or don't configure this policy setting, the Group Policy client won't cache applicable GPOs or settings that are contained within the GPOs. When Group Policy runs synchronously, it downloads the latest version of the policy from the network and uses bandwidth estimates to determine slow link thresholds. (See the "Configure Group Policy Slow Link Detection" policy setting to configure asynchronous foreground behavior).
<!-- EnableLogonOptimizationOnServerSKU-Description-End -->

<!-- EnableLogonOptimizationOnServerSKU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLogonOptimizationOnServerSKU-Editable-End -->

<!-- EnableLogonOptimizationOnServerSKU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLogonOptimizationOnServerSKU-DFProperties-End -->

<!-- EnableLogonOptimizationOnServerSKU-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableLogonOptimizationOnServerSKU |
| Friendly Name | Enable Group Policy Caching for Servers |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableLogonOptimizationOnServerSKU |
| ADMX File Name | GroupPolicy.admx |
<!-- EnableLogonOptimizationOnServerSKU-AdmxBacked-End -->

<!-- EnableLogonOptimizationOnServerSKU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLogonOptimizationOnServerSKU-Examples-End -->

<!-- EnableLogonOptimizationOnServerSKU-End -->

<!-- EnableMMX-Begin -->
## EnableMMX

<!-- EnableMMX-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableMMX-Applicability-End -->

<!-- EnableMMX-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/EnableMMX
```
<!-- EnableMMX-OmaUri-End -->

<!-- EnableMMX-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows IT admins to turn off the ability to Link a Phone with a PC to continue reading, emailing and other tasks that requires linking between Phone and PC.

- If you enable this policy setting, the Windows device will be able to enroll in Phone-PC linking functionality and participate in Continue on PC experiences.

- If you disable this policy setting, the Windows device isn't allowed to be linked to Phones, will remove itself from the device list of any linked Phones, and can't participate in Continue on PC experiences.

- If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
<!-- EnableMMX-Description-End -->

<!-- EnableMMX-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableMMX-Editable-End -->

<!-- EnableMMX-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMMX-DFProperties-End -->

<!-- EnableMMX-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableMMX |
| Friendly Name | Phone-PC linking on this device |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableMmx |
| ADMX File Name | GroupPolicy.admx |
<!-- EnableMMX-AdmxBacked-End -->

<!-- EnableMMX-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableMMX-Examples-End -->

<!-- EnableMMX-End -->

<!-- EnforcePoliciesOnly-Begin -->
## EnforcePoliciesOnly

<!-- EnforcePoliciesOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnforcePoliciesOnly-Applicability-End -->

<!-- EnforcePoliciesOnly-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/EnforcePoliciesOnly
```
<!-- EnforcePoliciesOnly-OmaUri-End -->

<!-- EnforcePoliciesOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents administrators from viewing or using Group Policy preferences.

A Group Policy administration (.adm) file can contain both true settings and preferences. True settings, which are fully supported by Group Policy, must use registry entries in the Software\Policies or Software\Microsoft\Windows\CurrentVersion\Policies registry subkeys. Preferences, which aren't fully supported, use registry entries in other subkeys.

- If you enable this policy setting, the "Show Policies Only" command is turned on, and administrators can't turn it off. As a result, Group Policy Object Editor displays only true settings; preferences don't appear.

- If you disable or don't configure this policy setting, the "Show Policies Only" command is turned on by default, but administrators can view preferences by turning off the "Show Policies Only" command.

> [!NOTE]
> To find the "Show Policies Only" command, in Group Policy Object Editor, click the Administrative Templates folder (either one), right-click the same folder, and then point to "View".

In Group Policy Object Editor, preferences have a red icon to distinguish them from true settings, which have a blue icon.
<!-- EnforcePoliciesOnly-Description-End -->

<!-- EnforcePoliciesOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnforcePoliciesOnly-Editable-End -->

<!-- EnforcePoliciesOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnforcePoliciesOnly-DFProperties-End -->

<!-- EnforcePoliciesOnly-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnforcePoliciesOnly |
| Friendly Name | Enforce Show Policies Only |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy Editor |
| Registry Value Name | ShowPoliciesOnly |
| ADMX File Name | GroupPolicy.admx |
<!-- EnforcePoliciesOnly-AdmxBacked-End -->

<!-- EnforcePoliciesOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnforcePoliciesOnly-Examples-End -->

<!-- EnforcePoliciesOnly-End -->

<!-- FontMitigation-Begin -->
## FontMitigation

<!-- FontMitigation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FontMitigation-Applicability-End -->

<!-- FontMitigation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/FontMitigation
```
<!-- FontMitigation-OmaUri-End -->

<!-- FontMitigation-Description-Begin -->
<!-- Description-Source-ADMX -->
This security feature provides a global setting to prevent programs from loading untrusted fonts. Untrusted fonts are any font installed outside of the %windir%\Fonts directory. This feature can be configured to be in 3 modes: On, Off, and Audit. By default, it's Off and no fonts are blocked. If you aren't quite ready to deploy this feature into your organization, you can run it in Audit mode to see if blocking untrusted fonts causes any usability or compatibility issues.
<!-- FontMitigation-Description-End -->

<!-- FontMitigation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FontMitigation-Editable-End -->

<!-- FontMitigation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FontMitigation-DFProperties-End -->

<!-- FontMitigation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FontMitigation |
| Friendly Name | Untrusted Font Blocking |
| Location | Computer Configuration |
| Path | System > Mitigation Options |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\MitigationOptions |
| ADMX File Name | GroupPolicy.admx |
<!-- FontMitigation-AdmxBacked-End -->

<!-- FontMitigation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FontMitigation-Examples-End -->

<!-- FontMitigation-End -->

<!-- GPDCOptions-Begin -->
## GPDCOptions

<!-- GPDCOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GPDCOptions-Applicability-End -->

<!-- GPDCOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GPDCOptions
```
<!-- GPDCOptions-OmaUri-End -->

<!-- GPDCOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines which domain controller the Group Policy Object Editor snap-in uses.

- If you enable this setting, you can which domain controller is used according to these options:

"Use the Primary Domain Controller" indicates that the Group Policy Object Editor snap-in reads and writes changes to the domain controller designated as the PDC Operations Master for the domain.

"Inherit from Active Directory Snap-ins" indicates that the Group Policy Object Editor snap-in reads and writes changes to the domain controller that Active Directory Users and Computers or Active Directory Sites and Services snap-ins use.

"Use any available domain controller" indicates that the Group Policy Object Editor snap-in can read and write changes to any available domain controller.

- If you disable this setting or don't configure it, the Group Policy Object Editor snap-in uses the domain controller designated as the PDC Operations Master for the domain.

> [!NOTE]
> To change the PDC Operations Master for a domain, in Active Directory Users and Computers, right-click a domain, and then click "Operations Masters".
<!-- GPDCOptions-Description-End -->

<!-- GPDCOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GPDCOptions-Editable-End -->

<!-- GPDCOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GPDCOptions-DFProperties-End -->

<!-- GPDCOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GPDCOptions |
| Friendly Name | Configure Group Policy domain controller selection |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy Editor |
| ADMX File Name | GroupPolicy.admx |
<!-- GPDCOptions-AdmxBacked-End -->

<!-- GPDCOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GPDCOptions-Examples-End -->

<!-- GPDCOptions-End -->

<!-- GPTransferRate_1-Begin -->
## GPTransferRate_1

<!-- GPTransferRate_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GPTransferRate_1-Applicability-End -->

<!-- GPTransferRate_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GPTransferRate_1
```
<!-- GPTransferRate_1-OmaUri-End -->

<!-- GPTransferRate_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines a slow connection for purposes of applying and updating Group Policy.

If the rate at which data is transferred from the domain controller providing a policy update to the computers in this group is slower than the rate specified by this setting, the system considers the connection to be slow.

The system's response to a slow policy connection varies among policies. The program implementing the policy can specify the response to a slow link. Also, the policy processing settings in this folder lets you override the programs' specified responses to slow links.

- If you enable this setting, you can, in the "Connection speed" box, type a decimal number between 0 and 4,294,967,200, indicating a transfer rate in kilobits per second. Any connection slower than this rate is considered to be slow. If you type 0, all connections are considered to be fast.

- If you disable this setting or don't configure it, the system uses the default value of 500 kilobits per second.

This setting appears in the Computer Configuration and User Configuration folders. The setting in Computer Configuration defines a slow link for policies in the Computer Configuration folder. The setting in User Configuration defines a slow link for settings in the User Configuration folder.

Also, see the "Do not detect slow network connections" and related policies in Computer Configuration\Administrative Templates\System\User Profile.

> [!NOTE]
> If the profile server has IP connectivity, the connection speed setting is used. If the profile server doesn't have IP connectivity, the SMB timing is used.
<!-- GPTransferRate_1-Description-End -->

<!-- GPTransferRate_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GPTransferRate_1-Editable-End -->

<!-- GPTransferRate_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GPTransferRate_1-DFProperties-End -->

<!-- GPTransferRate_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GPTransferRate_1 |
| Friendly Name | Configure Group Policy slow link detection |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- GPTransferRate_1-AdmxBacked-End -->

<!-- GPTransferRate_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GPTransferRate_1-Examples-End -->

<!-- GPTransferRate_1-End -->

<!-- GPTransferRate_2-Begin -->
## GPTransferRate_2

<!-- GPTransferRate_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GPTransferRate_2-Applicability-End -->

<!-- GPTransferRate_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GPTransferRate_2
```
<!-- GPTransferRate_2-OmaUri-End -->

<!-- GPTransferRate_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines a slow connection for purposes of applying and updating Group Policy.

If the rate at which data is transferred from the domain controller providing a policy update to the computers in this group is slower than the rate specified by this setting, the system considers the connection to be slow.

The system's response to a slow policy connection varies among policies. The program implementing the policy can specify the response to a slow link. Also, the policy processing settings in this folder lets you override the programs' specified responses to slow links.

- If you enable this setting, you can, in the "Connection speed" box, type a decimal number between 0 and 4,294,967,200, indicating a transfer rate in kilobits per second. Any connection slower than this rate is considered to be slow. If you type 0, all connections are considered to be fast.

- If you disable this setting or don't configure it, the system uses the default value of 500 kilobits per second.

This setting appears in the Computer Configuration and User Configuration folders. The setting in Computer Configuration defines a slow link for policies in the Computer Configuration folder. The setting in User Configuration defines a slow link for settings in the User Configuration folder.

Also, see the "Do not detect slow network connections" and related policies in Computer Configuration\Administrative Templates\System\User Profile.

> [!NOTE]
> If the profile server has IP connectivity, the connection speed setting is used. If the profile server doesn't have IP connectivity, the SMB timing is used.
<!-- GPTransferRate_2-Description-End -->

<!-- GPTransferRate_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GPTransferRate_2-Editable-End -->

<!-- GPTransferRate_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GPTransferRate_2-DFProperties-End -->

<!-- GPTransferRate_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GPTransferRate_2 |
| Friendly Name | Configure Group Policy slow link detection |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- GPTransferRate_2-AdmxBacked-End -->

<!-- GPTransferRate_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GPTransferRate_2-Examples-End -->

<!-- GPTransferRate_2-End -->

<!-- GroupPolicyRefreshRate-Begin -->
## GroupPolicyRefreshRate

<!-- GroupPolicyRefreshRate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GroupPolicyRefreshRate-Applicability-End -->

<!-- GroupPolicyRefreshRate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GroupPolicyRefreshRate
```
<!-- GroupPolicyRefreshRate-OmaUri-End -->

<!-- GroupPolicyRefreshRate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies how often Group Policy for computers is updated while the computer is in use (in the background). This setting specifies a background update rate only for Group Policies in the Computer Configuration folder.

In addition to background updates, Group Policy for the computer is always updated when the system starts.

By default, computer Group Policy is updated in the background every 90 minutes, with a random offset of 0 to 30 minutes.

- If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the computer tries to update Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals aren't appropriate for most installations.

- If you disable this setting, Group Policy is updated every 90 minutes (the default). To specify that Group Policy should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" policy.

The Set Group Policy refresh interval for computers policy also lets you specify how much the actual update interval varies. To prevent clients with the same update interval from requesting updates simultaneously, the system varies the update interval for each client by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that client requests overlap. However, updates might be delayed significantly.

This setting establishes the update rate for computer Group Policy. To set an update rate for user policies, use the "Set Group Policy refresh interval for users" setting (located in User Configuration\Administrative Templates\System\Group Policy).

This setting is only used when the "Turn off background refresh of Group Policy" setting isn't enabled.

> [!NOTE]
> Consider notifying users that their policy is updated periodically so that they recognize the signs of a policy update. When Group Policy is updated, the Windows desktop is refreshed; it flickers briefly and closes open menus. Also, restrictions imposed by Group Policies, such as those that limit the programs users can run, might interfere with tasks in progress.
<!-- GroupPolicyRefreshRate-Description-End -->

<!-- GroupPolicyRefreshRate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRate-Editable-End -->

<!-- GroupPolicyRefreshRate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GroupPolicyRefreshRate-DFProperties-End -->

<!-- GroupPolicyRefreshRate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GroupPolicyRefreshRate |
| Friendly Name | Set Group Policy refresh interval for computers |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- GroupPolicyRefreshRate-AdmxBacked-End -->

<!-- GroupPolicyRefreshRate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRate-Examples-End -->

<!-- GroupPolicyRefreshRate-End -->

<!-- GroupPolicyRefreshRateDC-Begin -->
## GroupPolicyRefreshRateDC

<!-- GroupPolicyRefreshRateDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GroupPolicyRefreshRateDC-Applicability-End -->

<!-- GroupPolicyRefreshRateDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GroupPolicyRefreshRateDC
```
<!-- GroupPolicyRefreshRateDC-OmaUri-End -->

<!-- GroupPolicyRefreshRateDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies how often Group Policy is updated on domain controllers while they're running (in the background). The updates specified by this setting occur in addition to updates performed when the system starts.

By default, Group Policy on the domain controllers is updated every five minutes.

- If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the domain controller tries to update Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals aren't appropriate for most installations.

- If you disable or don't configure this setting, the domain controller updates Group Policy every 5 minutes (the default). To specify that Group Policies for users should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" setting.

This setting also lets you specify how much the actual update interval varies. To prevent domain controllers with the same update interval from requesting updates simultaneously, the system varies the update interval for each controller by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that update requests overlap. However, updates might be delayed significantly.

> [!NOTE]
> This setting is used only when you are establishing policy for a domain, site, organizational unit (OU), or customized group. If you are establishing policy for a local computer only, the system ignores this setting.
<!-- GroupPolicyRefreshRateDC-Description-End -->

<!-- GroupPolicyRefreshRateDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRateDC-Editable-End -->

<!-- GroupPolicyRefreshRateDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GroupPolicyRefreshRateDC-DFProperties-End -->

<!-- GroupPolicyRefreshRateDC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GroupPolicyRefreshRateDC |
| Friendly Name | Set Group Policy refresh interval for domain controllers |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- GroupPolicyRefreshRateDC-AdmxBacked-End -->

<!-- GroupPolicyRefreshRateDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRateDC-Examples-End -->

<!-- GroupPolicyRefreshRateDC-End -->

<!-- GroupPolicyRefreshRateUser-Begin -->
## GroupPolicyRefreshRateUser

<!-- GroupPolicyRefreshRateUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GroupPolicyRefreshRateUser-Applicability-End -->

<!-- GroupPolicyRefreshRateUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/GroupPolicyRefreshRateUser
```
<!-- GroupPolicyRefreshRateUser-OmaUri-End -->

<!-- GroupPolicyRefreshRateUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies how often Group Policy for users is updated while the computer is in use (in the background). This setting specifies a background update rate only for the Group Policies in the User Configuration folder.

In addition to background updates, Group Policy for users is always updated when users log on.

By default, user Group Policy is updated in the background every 90 minutes, with a random offset of 0 to 30 minutes.

- If you enable this setting, you can specify an update rate from 0 to 64,800 minutes (45 days). If you select 0 minutes, the computer tries to update user Group Policy every 7 seconds. However, because updates might interfere with users' work and increase network traffic, very short update intervals aren't appropriate for most installations.

- If you disable this setting, user Group Policy is updated every 90 minutes (the default). To specify that Group Policy for users should never be updated while the computer is in use, select the "Turn off background refresh of Group Policy" setting.

This setting also lets you specify how much the actual update interval varies. To prevent clients with the same update interval from requesting updates simultaneously, the system varies the update interval for each client by a random number of minutes. The number you type in the random time box sets the upper limit for the range of variance. For example, if you type 30 minutes, the system selects a variance of 0 to 30 minutes. Typing a large number establishes a broad range and makes it less likely that client requests overlap. However, updates might be delayed significantly.

> [!IMPORTANT]
> If the "Turn off background refresh of Group Policy" setting is enabled, this setting is ignored.

> [!NOTE]
> This setting establishes the update rate for user Group Policies. To set an update rate for computer Group Policies, use the "Group Policy refresh interval for computers" setting (located in Computer Configuration\Administrative Templates\System\Group Policy).

> [!TIP]
> Consider notifying users that their policy is updated periodically so that they recognize the signs of a policy update. When Group Policy is updated, the Windows desktop is refreshed; it flickers briefly and closes open menus. Also, restrictions imposed by Group Policies, such as those that limit the programs a user can run, might interfere with tasks in progress.
<!-- GroupPolicyRefreshRateUser-Description-End -->

<!-- GroupPolicyRefreshRateUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRateUser-Editable-End -->

<!-- GroupPolicyRefreshRateUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GroupPolicyRefreshRateUser-DFProperties-End -->

<!-- GroupPolicyRefreshRateUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GroupPolicyRefreshRateUser |
| Friendly Name | Set Group Policy refresh interval for users |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- GroupPolicyRefreshRateUser-AdmxBacked-End -->

<!-- GroupPolicyRefreshRateUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GroupPolicyRefreshRateUser-Examples-End -->

<!-- GroupPolicyRefreshRateUser-End -->

<!-- LogonScriptDelay-Begin -->
## LogonScriptDelay

<!-- LogonScriptDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LogonScriptDelay-Applicability-End -->

<!-- LogonScriptDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/LogonScriptDelay
```
<!-- LogonScriptDelay-OmaUri-End -->

<!-- LogonScriptDelay-Description-Begin -->
<!-- Description-Source-ADMX -->
Enter "0" to disable Logon Script Delay.

This policy setting allows you to configure how long the Group Policy client waits after logon before running scripts.

By default, the Group Policy client waits five minutes before running logon scripts. This helps create a responsive desktop environment by preventing disk contention.

- If you enable this policy setting, Group Policy will wait for the specified amount of time before running logon scripts.

- If you disable this policy setting, Group Policy will run scripts immediately after logon.

- If you don't configure this policy setting, Group Policy will wait five minutes before running logon scripts.
<!-- LogonScriptDelay-Description-End -->

<!-- LogonScriptDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LogonScriptDelay-Editable-End -->

<!-- LogonScriptDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LogonScriptDelay-DFProperties-End -->

<!-- LogonScriptDelay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LogonScriptDelay |
| Friendly Name | Configure Logon Script Delay |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableLogonScriptDelay |
| ADMX File Name | GroupPolicy.admx |
<!-- LogonScriptDelay-AdmxBacked-End -->

<!-- LogonScriptDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LogonScriptDelay-Examples-End -->

<!-- LogonScriptDelay-End -->

<!-- NewGPODisplayName-Begin -->
## NewGPODisplayName

<!-- NewGPODisplayName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NewGPODisplayName-Applicability-End -->

<!-- NewGPODisplayName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/NewGPODisplayName
```
<!-- NewGPODisplayName-OmaUri-End -->

<!-- NewGPODisplayName-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set the default display name for new Group Policy objects.

This setting allows you to specify the default name for new Group Policy objects created from policy compliant Group Policy Management tools including the Group Policy tab in Active Directory tools and the GPO browser.

The display name can contain environment variables and can be a maximum of 255 characters long.

If this setting is Disabled or Not Configured, the default display name of New Group Policy object is used.
<!-- NewGPODisplayName-Description-End -->

<!-- NewGPODisplayName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NewGPODisplayName-Editable-End -->

<!-- NewGPODisplayName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NewGPODisplayName-DFProperties-End -->

<!-- NewGPODisplayName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NewGPODisplayName |
| Friendly Name | Set default name for new Group Policy objects |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy Editor |
| ADMX File Name | GroupPolicy.admx |
<!-- NewGPODisplayName-AdmxBacked-End -->

<!-- NewGPODisplayName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NewGPODisplayName-Examples-End -->

<!-- NewGPODisplayName-End -->

<!-- NewGPOLinksDisabled-Begin -->
## NewGPOLinksDisabled

<!-- NewGPOLinksDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NewGPOLinksDisabled-Applicability-End -->

<!-- NewGPOLinksDisabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/NewGPOLinksDisabled
```
<!-- NewGPOLinksDisabled-OmaUri-End -->

<!-- NewGPOLinksDisabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to create new Group Policy object links in the disabled state.

- If you enable this setting, you can create all new Group Policy object links in the disabled state by default. After you configure and test the new object links by using a policy compliant Group Policy management tool such as Active Directory Users and Computers or Active Directory Sites and Services, you can enable the object links for use on the system.

- If you disable this setting or don't configure it, new Group Policy object links are created in the enabled state. If you don't want them to be effective until they're configured and tested, you must disable the object link.
<!-- NewGPOLinksDisabled-Description-End -->

<!-- NewGPOLinksDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NewGPOLinksDisabled-Editable-End -->

<!-- NewGPOLinksDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NewGPOLinksDisabled-DFProperties-End -->

<!-- NewGPOLinksDisabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NewGPOLinksDisabled |
| Friendly Name | Create new Group Policy Object links disabled by default |
| Location | User Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy Editor |
| Registry Value Name | NewGPOLinksDisabled |
| ADMX File Name | GroupPolicy.admx |
<!-- NewGPOLinksDisabled-AdmxBacked-End -->

<!-- NewGPOLinksDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NewGPOLinksDisabled-Examples-End -->

<!-- NewGPOLinksDisabled-End -->

<!-- OnlyUseLocalAdminFiles-Begin -->
## OnlyUseLocalAdminFiles

<!-- OnlyUseLocalAdminFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- OnlyUseLocalAdminFiles-Applicability-End -->

<!-- OnlyUseLocalAdminFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/OnlyUseLocalAdminFiles
```
<!-- OnlyUseLocalAdminFiles-OmaUri-End -->

<!-- OnlyUseLocalAdminFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you always use local ADM files for the Group Policy snap-in.

By default, when you edit a Group Policy Object (GPO) using the Group Policy Object Editor snap-in, the ADM files are loaded from that GPO into the Group Policy Object Editor snap-in. This allows you to use the same version of the ADM files that were used to create the GPO while editing this GPO.

This leads to the following behavior:

- If you originally created the GPO with, for example, an English system, the GPO contains English ADM files.

- If you later edit the GPO from a different-language system, you get the English ADM files as they were in the GPO.

You can change this behavior by using this setting.

- If you enable this setting, the Group Policy Object Editor snap-in always uses local ADM files in your %windir%\inf directory when editing GPOs.

This leads to the following behavior:

- If you had originally created the GPO with an English system, and then you edit the GPO with a Japanese system, the Group Policy Object Editor snap-in uses the local Japanese ADM files, and you see the text in Japanese under Administrative Templates.

- If you disable or don't configure this setting, the Group Policy Object Editor snap-in always loads all ADM files from the actual GPO.

> [!NOTE]
> If the ADMs that you require aren't all available locally in your %windir%\inf directory, you might not be able to see all the settings that have been configured in the GPO that you are editing.
<!-- OnlyUseLocalAdminFiles-Description-End -->

<!-- OnlyUseLocalAdminFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OnlyUseLocalAdminFiles-Editable-End -->

<!-- OnlyUseLocalAdminFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OnlyUseLocalAdminFiles-DFProperties-End -->

<!-- OnlyUseLocalAdminFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OnlyUseLocalAdminFiles |
| Friendly Name | Always use local ADM files for Group Policy Object Editor |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\Group Policy |
| Registry Value Name | OnlyUseLocalAdminFiles |
| ADMX File Name | GroupPolicy.admx |
<!-- OnlyUseLocalAdminFiles-AdmxBacked-End -->

<!-- OnlyUseLocalAdminFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OnlyUseLocalAdminFiles-Examples-End -->

<!-- OnlyUseLocalAdminFiles-End -->

<!-- ProcessMitigationOptions-Begin -->
## ProcessMitigationOptions

<!-- ProcessMitigationOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProcessMitigationOptions-Applicability-End -->

<!-- ProcessMitigationOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/ProcessMitigationOptions
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/ProcessMitigationOptions
```
<!-- ProcessMitigationOptions-OmaUri-End -->

<!-- ProcessMitigationOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This security feature provides a means to override individual process MitigationOptions settings. This can be used to enforce a number of security policies specific to applications. The application name is specified as the Value name, including extension. The Value is specified as a bit field with a series of flags in particular positions. Bits can be set to either 0 (setting is forced off), 1 (setting is forced on), or ? (setting retains its existing value prior to GPO evaluation). The recognized bit locations are:

PROCESS_CREATION_MITIGATION_POLICY_DEP_ENABLE (0x00000001)
Enables data execution prevention (DEP) for the child process.

PROCESS_CREATION_MITIGATION_POLICY_DEP_ATL_THUNK_ENABLE (0x00000002)
Enables DEP-ATL thunk emulation for the child process. DEP-ATL thunk emulation causes the system to intercept NX faults that originate from the Active Template Library (ATL) thunk layer.

PROCESS_CREATION_MITIGATION_POLICY_SEHOP_ENABLE (0x00000004)
Enables structured exception handler overwrite protection (SEHOP) for the child process. SEHOP blocks exploits that use the structured exception handler (SEH) overwrite technique.

PROCESS_CREATION_MITIGATION_POLICY_FORCE_RELOCATE_IMAGES_ALWAYS_ON (0x00000100)
The force Address Space Layout Randomization (ASLR) policy forcibly rebases images that aren't dynamic base compatible by acting as though an image base collision happened at load time. If relocations are required, images that don't have a base relocation section won't be loaded.

PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_ON (0x00010000)
PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_OFF (0x00020000)
The bottom-up randomization policy, which includes stack randomization options, causes a random location to be used as the lowest user address.

For instance, to enable PROCESS_CREATION_MITIGATION_POLICY_DEP_ENABLE and PROCESS_CREATION_MITIGATION_POLICY_FORCE_RELOCATE_IMAGES_ALWAYS_ON, disable PROCESS_CREATION_MITIGATION_POLICY_BOTTOM_UP_ASLR_ALWAYS_OFF, and to leave all other options at their default values, specify a value of:

???????????????0???????1???????1

Setting flags not specified here to any value other than ? results in undefined behavior.
<!-- ProcessMitigationOptions-Description-End -->

<!-- ProcessMitigationOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProcessMitigationOptions-Editable-End -->

<!-- ProcessMitigationOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProcessMitigationOptions-DFProperties-End -->

<!-- ProcessMitigationOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProcessMitigationOptions |
| Friendly Name | Process Mitigation Options |
| Location | Computer and User Configuration |
| Path | System > Mitigation Options |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\MitigationOptions\ProcessMitigationOptions |
| ADMX File Name | GroupPolicy.admx |
<!-- ProcessMitigationOptions-AdmxBacked-End -->

<!-- ProcessMitigationOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProcessMitigationOptions-Examples-End -->

<!-- ProcessMitigationOptions-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-Begin -->
## ResetDfsClientInfoDuringRefreshPolicy

<!-- ResetDfsClientInfoDuringRefreshPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ResetDfsClientInfoDuringRefreshPolicy-Applicability-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/ResetDfsClientInfoDuringRefreshPolicy
```
<!-- ResetDfsClientInfoDuringRefreshPolicy-OmaUri-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Enabling this setting will cause the Group Policy Client to connect to the same domain controller for DFS shares as is being used for Active Directory.
<!-- ResetDfsClientInfoDuringRefreshPolicy-Description-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ResetDfsClientInfoDuringRefreshPolicy-Editable-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ResetDfsClientInfoDuringRefreshPolicy-DFProperties-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ResetDfsClientInfoDuringRefreshPolicy |
| Friendly Name | Enable AD/DFS domain controller synchronization during policy refresh |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | ResetDfsClientInfoDuringRefreshPolicy |
| ADMX File Name | GroupPolicy.admx |
<!-- ResetDfsClientInfoDuringRefreshPolicy-AdmxBacked-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ResetDfsClientInfoDuringRefreshPolicy-Examples-End -->

<!-- ResetDfsClientInfoDuringRefreshPolicy-End -->

<!-- RSoPLogging-Begin -->
## RSoPLogging

<!-- RSoPLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RSoPLogging-Applicability-End -->

<!-- RSoPLogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/RSoPLogging
```
<!-- RSoPLogging-OmaUri-End -->

<!-- RSoPLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows you to enable or disable Resultant Set of Policy (RSoP) logging on a client computer.

RSoP logs information on Group Policy settings that have been applied to the client. This information includes details such as which Group Policy Objects (GPO) were applied, where they came from, and the client-side extension settings that were included.

- If you enable this setting, RSoP logging is turned off.

- If you disable or don't configure this setting, RSoP logging is turned on. By default, RSoP logging is always on.

> [!NOTE]
> To view the RSoP information logged-on a client computer, you can use the RSoP snap-in in the Microsoft Management Console (MMC).
<!-- RSoPLogging-Description-End -->

<!-- RSoPLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RSoPLogging-Editable-End -->

<!-- RSoPLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RSoPLogging-DFProperties-End -->

<!-- RSoPLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RSoPLogging |
| Friendly Name | Turn off Resultant Set of Policy logging |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | RSoPLogging |
| ADMX File Name | GroupPolicy.admx |
<!-- RSoPLogging-AdmxBacked-End -->

<!-- RSoPLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RSoPLogging-Examples-End -->

<!-- RSoPLogging-End -->

<!-- SlowLinkDefaultForDirectAccess-Begin -->
## SlowLinkDefaultForDirectAccess

<!-- SlowLinkDefaultForDirectAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SlowLinkDefaultForDirectAccess-Applicability-End -->

<!-- SlowLinkDefaultForDirectAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/SlowLinkDefaultForDirectAccess
```
<!-- SlowLinkDefaultForDirectAccess-OmaUri-End -->

<!-- SlowLinkDefaultForDirectAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows an administrator to define the Direct Access connection to be considered a fast network connection for the purposes of applying and updating Group Policy.

When Group Policy detects the bandwidth speed of a Direct Access connection, the detection can sometimes fail to provide any bandwidth speed information. If Group Policy detects a bandwidth speed, Group Policy will follow the normal rules for evaluating if the Direct Access connection is a fast or slow network connection. If no bandwidth speed is detected, Group Policy will default to a slow network connection. This policy setting allows the administrator the option to override the default to slow network connection and instead default to using a fast network connection in the case that no network bandwidth speed is determined.

> [!NOTE]
> When Group Policy detects a slow network connection, Group Policy will only process those client side extensions configured for processing across a slow link (slow network connection).

- If you enable this policy, when Group Policy can't determine the bandwidth speed across Direct Access, Group Policy will evaluate the network connection as a fast link and process all client side extensions.

- If you disable this setting or don't configure it, Group Policy will evaluate the network connection as a slow link and process only those client side extensions configured to process over a slow link.
<!-- SlowLinkDefaultForDirectAccess-Description-End -->

<!-- SlowLinkDefaultForDirectAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SlowLinkDefaultForDirectAccess-Editable-End -->

<!-- SlowLinkDefaultForDirectAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SlowLinkDefaultForDirectAccess-DFProperties-End -->

<!-- SlowLinkDefaultForDirectAccess-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SlowLinkDefaultForDirectAccess |
| Friendly Name | Configure Direct Access connections as a fast network connection |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | SlowLinkDefaultForDirectAccess |
| ADMX File Name | GroupPolicy.admx |
<!-- SlowLinkDefaultForDirectAccess-AdmxBacked-End -->

<!-- SlowLinkDefaultForDirectAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SlowLinkDefaultForDirectAccess-Examples-End -->

<!-- SlowLinkDefaultForDirectAccess-End -->

<!-- SlowlinkDefaultToAsync-Begin -->
## SlowlinkDefaultToAsync

<!-- SlowlinkDefaultToAsync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SlowlinkDefaultToAsync-Applicability-End -->

<!-- SlowlinkDefaultToAsync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/SlowlinkDefaultToAsync
```
<!-- SlowlinkDefaultToAsync-OmaUri-End -->

<!-- SlowlinkDefaultToAsync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy directs Group Policy processing to skip processing any client side extension that requires synchronous processing (that is, whether computers wait for the network to be fully initialized during computer startup and user logon) when a slow network connection is detected.

- If you enable this policy setting, when a slow network connection is detected, Group Policy processing will always run in an asynchronous manner.

Client computers won't wait for the network to be fully initialized at startup and logon. Existing users will be logged-on using cached credentials, which will result in shorter logon times. Group Policy will be applied in the background after the network becomes available.

Note that because this is a background refresh, extensions requiring synchronous processing such as Software Installation, Folder Redirection and Drive Maps preference extension won't be applied.

Note There are two conditions that will cause Group Policy to be processed synchronously even if this policy setting is enabled:

1 - At the first computer startup after the client computer has joined the domain.

2 - If the policy setting "Always wait for the network at computer startup and logon" is enabled.

- If you disable or don't configure this policy setting, detecting a slow network connection won't affect whether Group Policy processing will be synchronous or asynchronous.
<!-- SlowlinkDefaultToAsync-Description-End -->

<!-- SlowlinkDefaultToAsync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SlowlinkDefaultToAsync-Editable-End -->

<!-- SlowlinkDefaultToAsync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SlowlinkDefaultToAsync-DFProperties-End -->

<!-- SlowlinkDefaultToAsync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SlowlinkDefaultToAsync |
| Friendly Name | Change Group Policy processing to run asynchronously when a slow network connection is detected. |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | SlowlinkDefaultToAsync |
| ADMX File Name | GroupPolicy.admx |
<!-- SlowlinkDefaultToAsync-AdmxBacked-End -->

<!-- SlowlinkDefaultToAsync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SlowlinkDefaultToAsync-Examples-End -->

<!-- SlowlinkDefaultToAsync-End -->

<!-- SyncWaitTime-Begin -->
## SyncWaitTime

<!-- SyncWaitTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SyncWaitTime-Applicability-End -->

<!-- SyncWaitTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/SyncWaitTime
```
<!-- SyncWaitTime-OmaUri-End -->

<!-- SyncWaitTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies how long Group Policy should wait for network availability notifications during startup policy processing. If the startup policy processing is synchronous, the computer is blocked until the network is available or the default wait time is reached. If the startup policy processing is asynchronous, the computer isn't blocked and policy processing will occur in the background. In either case, configuring this policy setting overrides any system-computed wait times.

- If you enable this policy setting, Group Policy will use this administratively configured maximum wait time and override any default or system-computed wait time.

- If you disable or don't configure this policy setting, Group Policy will use the default wait time of 30 seconds on computers running Windows Vista operating system.
<!-- SyncWaitTime-Description-End -->

<!-- SyncWaitTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SyncWaitTime-Editable-End -->

<!-- SyncWaitTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SyncWaitTime-DFProperties-End -->

<!-- SyncWaitTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SyncWaitTime |
| Friendly Name | Specify startup policy processing wait time |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- SyncWaitTime-AdmxBacked-End -->

<!-- SyncWaitTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SyncWaitTime-Examples-End -->

<!-- SyncWaitTime-End -->

<!-- UserPolicyMode-Begin -->
## UserPolicyMode

<!-- UserPolicyMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UserPolicyMode-Applicability-End -->

<!-- UserPolicyMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_GroupPolicy/UserPolicyMode
```
<!-- UserPolicyMode-OmaUri-End -->

<!-- UserPolicyMode-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs the system to apply the set of Group Policy objects for the computer to any user who logs on to a computer affected by this setting. It's intended for special-use computers, such as those in public places, laboratories, and classrooms, where you must modify the user setting based on the computer that's being used.

By default, the user's Group Policy Objects determine which user settings apply.

- If this setting is enabled, then, when a user logs on to this computer, the computer's Group Policy Objects determine which set of Group Policy Objects applies.

- If you enable this setting, you can select one of the following modes from the Mode box:

"Replace" indicates that the user settings defined in the computer's Group Policy Objects replace the user settings normally applied to the user.

"Merge" indicates that the user settings defined in the computer's Group Policy Objects and the user settings normally applied to the user are combined. If the settings conflict, the user settings in the computer's Group Policy Objects take precedence over the user's normal settings.

- If you disable this setting or don't configure it, the user's Group Policy Objects determines which user settings apply.

> [!NOTE]
> This setting is effective only when both the computer account and the user account are in at least Windows 2000 domains.
<!-- UserPolicyMode-Description-End -->

<!-- UserPolicyMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserPolicyMode-Editable-End -->

<!-- UserPolicyMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UserPolicyMode-DFProperties-End -->

<!-- UserPolicyMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UserPolicyMode |
| Friendly Name | Configure user Group Policy loopback processing mode |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | GroupPolicy.admx |
<!-- UserPolicyMode-AdmxBacked-End -->

<!-- UserPolicyMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserPolicyMode-Examples-End -->

<!-- UserPolicyMode-End -->

<!-- ADMX_GroupPolicy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_GroupPolicy-CspMoreInfo-End -->

<!-- ADMX_GroupPolicy-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
