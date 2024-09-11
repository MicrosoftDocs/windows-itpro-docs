---
title: ADMX_EventLog Policy CSP
description: Learn more about the ADMX_EventLog Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EventLog-Begin -->
# Policy CSP - ADMX_EventLog

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_EventLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLog-Editable-End -->

<!-- Channel_Log_AutoBackup_1-Begin -->
## Channel_Log_AutoBackup_1

<!-- Channel_Log_AutoBackup_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_AutoBackup_1-Applicability-End -->

<!-- Channel_Log_AutoBackup_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_AutoBackup_1
```
<!-- Channel_Log_AutoBackup_1-OmaUri-End -->

<!-- Channel_Log_AutoBackup_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

- If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

- If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

- If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.
<!-- Channel_Log_AutoBackup_1-Description-End -->

<!-- Channel_Log_AutoBackup_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_1-Editable-End -->

<!-- Channel_Log_AutoBackup_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_AutoBackup_1-DFProperties-End -->

<!-- Channel_Log_AutoBackup_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_AutoBackup_1 |
| Friendly Name | Back up log automatically when full |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Application |
| Registry Value Name | AutoBackupLogFiles |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_AutoBackup_1-AdmxBacked-End -->

<!-- Channel_Log_AutoBackup_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_1-Examples-End -->

<!-- Channel_Log_AutoBackup_1-End -->

<!-- Channel_Log_AutoBackup_2-Begin -->
## Channel_Log_AutoBackup_2

<!-- Channel_Log_AutoBackup_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_AutoBackup_2-Applicability-End -->

<!-- Channel_Log_AutoBackup_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_AutoBackup_2
```
<!-- Channel_Log_AutoBackup_2-OmaUri-End -->

<!-- Channel_Log_AutoBackup_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

- If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

- If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

- If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.
<!-- Channel_Log_AutoBackup_2-Description-End -->

<!-- Channel_Log_AutoBackup_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_2-Editable-End -->

<!-- Channel_Log_AutoBackup_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_AutoBackup_2-DFProperties-End -->

<!-- Channel_Log_AutoBackup_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_AutoBackup_2 |
| Friendly Name | Back up log automatically when full |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Security |
| Registry Value Name | AutoBackupLogFiles |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_AutoBackup_2-AdmxBacked-End -->

<!-- Channel_Log_AutoBackup_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_2-Examples-End -->

<!-- Channel_Log_AutoBackup_2-End -->

<!-- Channel_Log_AutoBackup_3-Begin -->
## Channel_Log_AutoBackup_3

<!-- Channel_Log_AutoBackup_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_AutoBackup_3-Applicability-End -->

<!-- Channel_Log_AutoBackup_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_AutoBackup_3
```
<!-- Channel_Log_AutoBackup_3-OmaUri-End -->

<!-- Channel_Log_AutoBackup_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

- If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

- If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

- If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.
<!-- Channel_Log_AutoBackup_3-Description-End -->

<!-- Channel_Log_AutoBackup_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_3-Editable-End -->

<!-- Channel_Log_AutoBackup_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_AutoBackup_3-DFProperties-End -->

<!-- Channel_Log_AutoBackup_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_AutoBackup_3 |
| Friendly Name | Back up log automatically when full |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| Registry Value Name | AutoBackupLogFiles |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_AutoBackup_3-AdmxBacked-End -->

<!-- Channel_Log_AutoBackup_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_3-Examples-End -->

<!-- Channel_Log_AutoBackup_3-End -->

<!-- Channel_Log_AutoBackup_4-Begin -->
## Channel_Log_AutoBackup_4

<!-- Channel_Log_AutoBackup_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_AutoBackup_4-Applicability-End -->

<!-- Channel_Log_AutoBackup_4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_AutoBackup_4
```
<!-- Channel_Log_AutoBackup_4-OmaUri-End -->

<!-- Channel_Log_AutoBackup_4-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.

- If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it's full. A new file is then started.

- If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.

- If you don't configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.
<!-- Channel_Log_AutoBackup_4-Description-End -->

<!-- Channel_Log_AutoBackup_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_4-Editable-End -->

<!-- Channel_Log_AutoBackup_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_AutoBackup_4-DFProperties-End -->

<!-- Channel_Log_AutoBackup_4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_AutoBackup_4 |
| Friendly Name | Back up log automatically when full |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\System |
| Registry Value Name | AutoBackupLogFiles |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_AutoBackup_4-AdmxBacked-End -->

<!-- Channel_Log_AutoBackup_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_AutoBackup_4-Examples-End -->

<!-- Channel_Log_AutoBackup_4-End -->

<!-- Channel_Log_FileLogAccess_1-Begin -->
## Channel_Log_FileLogAccess_1

<!-- Channel_Log_FileLogAccess_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_1-Applicability-End -->

<!-- Channel_Log_FileLogAccess_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_1
```
<!-- Channel_Log_FileLogAccess_1-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

- If you enable this policy setting, only those users matching the security descriptor can access the log.

- If you disable or don't configure this policy setting, all authenticated users and system services can write, read, or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
<!-- Channel_Log_FileLogAccess_1-Description-End -->

<!-- Channel_Log_FileLogAccess_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_1-Editable-End -->

<!-- Channel_Log_FileLogAccess_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_1-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_1 |
| Friendly Name | Configure log access |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Application |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_1-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_1-Examples-End -->

<!-- Channel_Log_FileLogAccess_1-End -->

<!-- Channel_Log_FileLogAccess_2-Begin -->
## Channel_Log_FileLogAccess_2

<!-- Channel_Log_FileLogAccess_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_2-Applicability-End -->

<!-- Channel_Log_FileLogAccess_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_2
```
<!-- Channel_Log_FileLogAccess_2-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You can't configure write permissions for this log. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.

- If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.

- If you disable or don't configure this policy setting, only system software and administrators can read or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
<!-- Channel_Log_FileLogAccess_2-Description-End -->

<!-- Channel_Log_FileLogAccess_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_2-Editable-End -->

<!-- Channel_Log_FileLogAccess_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_2-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_2 |
| Friendly Name | Configure log access |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Security |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_2-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_2-Examples-End -->

<!-- Channel_Log_FileLogAccess_2-End -->

<!-- Channel_Log_FileLogAccess_3-Begin -->
## Channel_Log_FileLogAccess_3

<!-- Channel_Log_FileLogAccess_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_3-Applicability-End -->

<!-- Channel_Log_FileLogAccess_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_3
```
<!-- Channel_Log_FileLogAccess_3-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

- If you enable this policy setting, only those users matching the security descriptor can access the log.

- If you disable or don't configure this policy setting, all authenticated users and system services can write, read, or clear this log.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
<!-- Channel_Log_FileLogAccess_3-Description-End -->

<!-- Channel_Log_FileLogAccess_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_3-Editable-End -->

<!-- Channel_Log_FileLogAccess_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_3-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_3 |
| Friendly Name | Configure log access |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_3-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_3-Examples-End -->

<!-- Channel_Log_FileLogAccess_3-End -->

<!-- Channel_Log_FileLogAccess_4-Begin -->
## Channel_Log_FileLogAccess_4

<!-- Channel_Log_FileLogAccess_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_4-Applicability-End -->

<!-- Channel_Log_FileLogAccess_4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_4
```
<!-- Channel_Log_FileLogAccess_4-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_4-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.

- If you enable this policy setting, only users whose security descriptor matches the configured value can access the log.

- If you disable or don't configure this policy setting, only system software and administrators can write or clear this log, and any authenticated user can read events from it.

> [!NOTE]
> If you enable this policy setting, some tools and APIs may ignore it. The same change should be made to the "Configure log access (legacy)" policy setting to enforce this change across all tools and APIs.
<!-- Channel_Log_FileLogAccess_4-Description-End -->

<!-- Channel_Log_FileLogAccess_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_4-Editable-End -->

<!-- Channel_Log_FileLogAccess_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_4-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_4 |
| Friendly Name | Configure log access |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\System |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_4-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_4-Examples-End -->

<!-- Channel_Log_FileLogAccess_4-End -->

<!-- Channel_Log_FileLogAccess_5-Begin -->
## Channel_Log_FileLogAccess_5

<!-- Channel_Log_FileLogAccess_5-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_5-Applicability-End -->

<!-- Channel_Log_FileLogAccess_5-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_5
```
<!-- Channel_Log_FileLogAccess_5-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_5-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.

- If you enable this policy setting, only those users matching the security descriptor can access the log.

- If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.

- If you don't configure this policy setting, the previous policy setting configuration remains in effect.
<!-- Channel_Log_FileLogAccess_5-Description-End -->

<!-- Channel_Log_FileLogAccess_5-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_5-Editable-End -->

<!-- Channel_Log_FileLogAccess_5-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_5-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_5-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_5 |
| Friendly Name | Configure log access (legacy) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | System\CurrentControlSet\Services\EventLog\Application |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_5-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_5-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_5-Examples-End -->

<!-- Channel_Log_FileLogAccess_5-End -->

<!-- Channel_Log_FileLogAccess_6-Begin -->
## Channel_Log_FileLogAccess_6

<!-- Channel_Log_FileLogAccess_6-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_6-Applicability-End -->

<!-- Channel_Log_FileLogAccess_6-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_6
```
<!-- Channel_Log_FileLogAccess_6-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_6-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You can't configure write permissions for this log.

- If you enable this policy setting, only those users whose security descriptor matches the configured specified value can access the log.

- If you disable this policy setting, only system software and administrators can read or clear this log.

- If you don't configure this policy setting, the previous policy setting configuration remains in effect.
<!-- Channel_Log_FileLogAccess_6-Description-End -->

<!-- Channel_Log_FileLogAccess_6-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_6-Editable-End -->

<!-- Channel_Log_FileLogAccess_6-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_6-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_6-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_6 |
| Friendly Name | Configure log access (legacy) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | System\CurrentControlSet\Services\EventLog\Security |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_6-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_6-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_6-Examples-End -->

<!-- Channel_Log_FileLogAccess_6-End -->

<!-- Channel_Log_FileLogAccess_7-Begin -->
## Channel_Log_FileLogAccess_7

<!-- Channel_Log_FileLogAccess_7-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_7-Applicability-End -->

<!-- Channel_Log_FileLogAccess_7-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_7
```
<!-- Channel_Log_FileLogAccess_7-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_7-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string. You must set both "configure log access" policy settings for this log in order to affect the both modern and legacy tools.

- If you enable this policy setting, only those users matching the security descriptor can access the log.

- If you disable this policy setting, all authenticated users and system services can write, read, or clear this log.

- If you don't configure this policy setting, the previous policy setting configuration remains in effect.
<!-- Channel_Log_FileLogAccess_7-Description-End -->

<!-- Channel_Log_FileLogAccess_7-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_7-Editable-End -->

<!-- Channel_Log_FileLogAccess_7-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_7-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_7-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_7 |
| Friendly Name | Configure log access (legacy) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | System\CurrentControlSet\Services\EventLog\Setup |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_7-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_7-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_7-Examples-End -->

<!-- Channel_Log_FileLogAccess_7-End -->

<!-- Channel_Log_FileLogAccess_8-Begin -->
## Channel_Log_FileLogAccess_8

<!-- Channel_Log_FileLogAccess_8-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_FileLogAccess_8-Applicability-End -->

<!-- Channel_Log_FileLogAccess_8-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_FileLogAccess_8
```
<!-- Channel_Log_FileLogAccess_8-OmaUri-End -->

<!-- Channel_Log_FileLogAccess_8-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the security descriptor to use for the log using the Security Descriptor Definition Language (SDDL) string.

- If you enable this policy setting, only users whose security descriptor matches the configured value can access the log.

- If you disable this policy setting, only system software and administrators can write or clear this log, and any authenticated user can read events from it.

- If you don't configure this policy setting, the previous policy setting configuration remains in effect.
<!-- Channel_Log_FileLogAccess_8-Description-End -->

<!-- Channel_Log_FileLogAccess_8-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_8-Editable-End -->

<!-- Channel_Log_FileLogAccess_8-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_FileLogAccess_8-DFProperties-End -->

<!-- Channel_Log_FileLogAccess_8-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_FileLogAccess_8 |
| Friendly Name | Configure log access (legacy) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | System\CurrentControlSet\Services\EventLog\System |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_FileLogAccess_8-AdmxBacked-End -->

<!-- Channel_Log_FileLogAccess_8-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_FileLogAccess_8-Examples-End -->

<!-- Channel_Log_FileLogAccess_8-End -->

<!-- Channel_Log_Retention_2-Begin -->
## Channel_Log_Retention_2

<!-- Channel_Log_Retention_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_Retention_2-Applicability-End -->

<!-- Channel_Log_Retention_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_Retention_2
```
<!-- Channel_Log_Retention_2-OmaUri-End -->

<!-- Channel_Log_Retention_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

- If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

- If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

> [!NOTE]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
<!-- Channel_Log_Retention_2-Description-End -->

<!-- Channel_Log_Retention_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_Retention_2-Editable-End -->

<!-- Channel_Log_Retention_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_Retention_2-DFProperties-End -->

<!-- Channel_Log_Retention_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_Retention_2 |
| Friendly Name | Control Event Log behavior when the log file reaches its maximum size |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Security |
| Registry Value Name | Retention |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_Retention_2-AdmxBacked-End -->

<!-- Channel_Log_Retention_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_Retention_2-Examples-End -->

<!-- Channel_Log_Retention_2-End -->

<!-- Channel_Log_Retention_3-Begin -->
## Channel_Log_Retention_3

<!-- Channel_Log_Retention_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_Retention_3-Applicability-End -->

<!-- Channel_Log_Retention_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_Retention_3
```
<!-- Channel_Log_Retention_3-OmaUri-End -->

<!-- Channel_Log_Retention_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

- If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

- If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

> [!NOTE]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
<!-- Channel_Log_Retention_3-Description-End -->

<!-- Channel_Log_Retention_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_Retention_3-Editable-End -->

<!-- Channel_Log_Retention_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_Retention_3-DFProperties-End -->

<!-- Channel_Log_Retention_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_Retention_3 |
| Friendly Name | Control Event Log behavior when the log file reaches its maximum size |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| Registry Value Name | Retention |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_Retention_3-AdmxBacked-End -->

<!-- Channel_Log_Retention_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_Retention_3-Examples-End -->

<!-- Channel_Log_Retention_3-End -->

<!-- Channel_Log_Retention_4-Begin -->
## Channel_Log_Retention_4

<!-- Channel_Log_Retention_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_Log_Retention_4-Applicability-End -->

<!-- Channel_Log_Retention_4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_Log_Retention_4
```
<!-- Channel_Log_Retention_4-OmaUri-End -->

<!-- Channel_Log_Retention_4-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

- If you enable this policy setting and a log file reaches its maximum size, new events aren't written to the log and are lost.

- If you disable or don't configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

> [!NOTE]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
<!-- Channel_Log_Retention_4-Description-End -->

<!-- Channel_Log_Retention_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_Log_Retention_4-Editable-End -->

<!-- Channel_Log_Retention_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_Log_Retention_4-DFProperties-End -->

<!-- Channel_Log_Retention_4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_Retention_4 |
| Friendly Name | Control Event Log behavior when the log file reaches its maximum size |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\System |
| Registry Value Name | Retention |
| ADMX File Name | EventLog.admx |
<!-- Channel_Log_Retention_4-AdmxBacked-End -->

<!-- Channel_Log_Retention_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_Log_Retention_4-Examples-End -->

<!-- Channel_Log_Retention_4-End -->

<!-- Channel_LogEnabled-Begin -->
## Channel_LogEnabled

<!-- Channel_LogEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogEnabled-Applicability-End -->

<!-- Channel_LogEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogEnabled
```
<!-- Channel_LogEnabled-OmaUri-End -->

<!-- Channel_LogEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns on logging.

- If you enable or don't configure this policy setting, then events can be written to this log.

- If the policy setting is disabled, then no new events can be logged. Events can always be read from the log, regardless of this policy setting.
<!-- Channel_LogEnabled-Description-End -->

<!-- Channel_LogEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogEnabled-Editable-End -->

<!-- Channel_LogEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogEnabled-DFProperties-End -->

<!-- Channel_LogEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogEnabled |
| Friendly Name | Turn on logging |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| Registry Value Name | Enabled |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogEnabled-AdmxBacked-End -->

<!-- Channel_LogEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogEnabled-Examples-End -->

<!-- Channel_LogEnabled-End -->

<!-- Channel_LogFilePath_1-Begin -->
## Channel_LogFilePath_1

<!-- Channel_LogFilePath_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogFilePath_1-Applicability-End -->

<!-- Channel_LogFilePath_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogFilePath_1
```
<!-- Channel_LogFilePath_1-OmaUri-End -->

<!-- Channel_LogFilePath_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

- If you enable this policy setting, the Event Log uses the path specified in this policy setting.

- If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.
<!-- Channel_LogFilePath_1-Description-End -->

<!-- Channel_LogFilePath_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogFilePath_1-Editable-End -->

<!-- Channel_LogFilePath_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogFilePath_1-DFProperties-End -->

<!-- Channel_LogFilePath_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogFilePath_1 |
| Friendly Name | Control the location of the log file |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Application |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogFilePath_1-AdmxBacked-End -->

<!-- Channel_LogFilePath_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogFilePath_1-Examples-End -->

<!-- Channel_LogFilePath_1-End -->

<!-- Channel_LogFilePath_2-Begin -->
## Channel_LogFilePath_2

<!-- Channel_LogFilePath_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogFilePath_2-Applicability-End -->

<!-- Channel_LogFilePath_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogFilePath_2
```
<!-- Channel_LogFilePath_2-OmaUri-End -->

<!-- Channel_LogFilePath_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

- If you enable this policy setting, the Event Log uses the path specified in this policy setting.

- If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.
<!-- Channel_LogFilePath_2-Description-End -->

<!-- Channel_LogFilePath_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogFilePath_2-Editable-End -->

<!-- Channel_LogFilePath_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogFilePath_2-DFProperties-End -->

<!-- Channel_LogFilePath_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogFilePath_2 |
| Friendly Name | Control the location of the log file |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Security |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogFilePath_2-AdmxBacked-End -->

<!-- Channel_LogFilePath_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogFilePath_2-Examples-End -->

<!-- Channel_LogFilePath_2-End -->

<!-- Channel_LogFilePath_3-Begin -->
## Channel_LogFilePath_3

<!-- Channel_LogFilePath_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogFilePath_3-Applicability-End -->

<!-- Channel_LogFilePath_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogFilePath_3
```
<!-- Channel_LogFilePath_3-OmaUri-End -->

<!-- Channel_LogFilePath_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

- If you enable this policy setting, the Event Log uses the path specified in this policy setting.

- If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.
<!-- Channel_LogFilePath_3-Description-End -->

<!-- Channel_LogFilePath_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogFilePath_3-Editable-End -->

<!-- Channel_LogFilePath_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogFilePath_3-DFProperties-End -->

<!-- Channel_LogFilePath_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogFilePath_3 |
| Friendly Name | Control the location of the log file |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogFilePath_3-AdmxBacked-End -->

<!-- Channel_LogFilePath_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogFilePath_3-Examples-End -->

<!-- Channel_LogFilePath_3-End -->

<!-- Channel_LogFilePath_4-Begin -->
## Channel_LogFilePath_4

<!-- Channel_LogFilePath_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogFilePath_4-Applicability-End -->

<!-- Channel_LogFilePath_4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogFilePath_4
```
<!-- Channel_LogFilePath_4-OmaUri-End -->

<!-- Channel_LogFilePath_4-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.

- If you enable this policy setting, the Event Log uses the path specified in this policy setting.

- If you disable or don't configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.
<!-- Channel_LogFilePath_4-Description-End -->

<!-- Channel_LogFilePath_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogFilePath_4-Editable-End -->

<!-- Channel_LogFilePath_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogFilePath_4-DFProperties-End -->

<!-- Channel_LogFilePath_4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogFilePath_4 |
| Friendly Name | Control the location of the log file |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\System |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogFilePath_4-AdmxBacked-End -->

<!-- Channel_LogFilePath_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogFilePath_4-Examples-End -->

<!-- Channel_LogFilePath_4-End -->

<!-- Channel_LogMaxSize_3-Begin -->
## Channel_LogMaxSize_3

<!-- Channel_LogMaxSize_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Channel_LogMaxSize_3-Applicability-End -->

<!-- Channel_LogMaxSize_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLog/Channel_LogMaxSize_3
```
<!-- Channel_LogMaxSize_3-OmaUri-End -->

<!-- Channel_LogMaxSize_3-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the maximum size of the log file in kilobytes.

- If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes), in kilobyte increments.

- If you disable or don't configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.
<!-- Channel_LogMaxSize_3-Description-End -->

<!-- Channel_LogMaxSize_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Channel_LogMaxSize_3-Editable-End -->

<!-- Channel_LogMaxSize_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Channel_LogMaxSize_3-DFProperties-End -->

<!-- Channel_LogMaxSize_3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogMaxSize_3 |
| Friendly Name | Specify the maximum log file size (KB) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Setup |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Setup |
| ADMX File Name | EventLog.admx |
<!-- Channel_LogMaxSize_3-AdmxBacked-End -->

<!-- Channel_LogMaxSize_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Channel_LogMaxSize_3-Examples-End -->

<!-- Channel_LogMaxSize_3-End -->

<!-- ADMX_EventLog-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLog-CspMoreInfo-End -->

<!-- ADMX_EventLog-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
