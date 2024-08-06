---
title: ADMX_Reliability Policy CSP
description: Learn more about the ADMX_Reliability Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Reliability-Begin -->
# Policy CSP - ADMX_Reliability

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Reliability-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Reliability-Editable-End -->

<!-- EE_EnablePersistentTimeStamp-Begin -->
## EE_EnablePersistentTimeStamp

<!-- EE_EnablePersistentTimeStamp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EE_EnablePersistentTimeStamp-Applicability-End -->

<!-- EE_EnablePersistentTimeStamp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Reliability/EE_EnablePersistentTimeStamp
```
<!-- EE_EnablePersistentTimeStamp-OmaUri-End -->

<!-- EE_EnablePersistentTimeStamp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the system to detect the time of unexpected shutdowns by writing the current time to disk on a schedule controlled by the Timestamp Interval.

- If you enable this policy setting, you are able to specify how often the Persistent System Timestamp is refreshed and subsequently written to the disk. You can specify the Timestamp Interval in seconds.

- If you disable this policy setting, the Persistent System Timestamp is turned off and the timing of unexpected shutdowns isn't recorded.

- If you don't configure this policy setting, the Persistent System Timestamp is refreshed according the default, which is every 60 seconds beginning with Windows Server 2003.

> [!NOTE]
> This feature might interfere with power configuration settings that turn off hard disks after a period of inactivity. These power settings may be accessed in the Power Options Control Panel.
<!-- EE_EnablePersistentTimeStamp-Description-End -->

<!-- EE_EnablePersistentTimeStamp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EE_EnablePersistentTimeStamp-Editable-End -->

<!-- EE_EnablePersistentTimeStamp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EE_EnablePersistentTimeStamp-DFProperties-End -->

<!-- EE_EnablePersistentTimeStamp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EE_EnablePersistentTimeStamp |
| Friendly Name | Enable Persistent Time Stamp |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Reliability |
| Registry Value Name | TimeStampEnabled |
| ADMX File Name | Reliability.admx |
<!-- EE_EnablePersistentTimeStamp-AdmxBacked-End -->

<!-- EE_EnablePersistentTimeStamp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EE_EnablePersistentTimeStamp-Examples-End -->

<!-- EE_EnablePersistentTimeStamp-End -->

<!-- PCH_ReportShutdownEvents-Begin -->
## PCH_ReportShutdownEvents

<!-- PCH_ReportShutdownEvents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_ReportShutdownEvents-Applicability-End -->

<!-- PCH_ReportShutdownEvents-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Reliability/PCH_ReportShutdownEvents
```
<!-- PCH_ReportShutdownEvents-OmaUri-End -->

<!-- PCH_ReportShutdownEvents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not unplanned shutdown events can be reported when error reporting is enabled.

- If you enable this policy setting, error reporting includes unplanned shutdown events.

- If you disable this policy setting, unplanned shutdown events aren't included in error reporting.

- If you don't configure this policy setting, users can adjust this setting using the control panel, which is set to "Upload unplanned shutdown events" by default.

Also see the "Configure Error Reporting" policy setting.
<!-- PCH_ReportShutdownEvents-Description-End -->

<!-- PCH_ReportShutdownEvents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_ReportShutdownEvents-Editable-End -->

<!-- PCH_ReportShutdownEvents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_ReportShutdownEvents-DFProperties-End -->

<!-- PCH_ReportShutdownEvents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_ReportShutdownEvents |
| Friendly Name | Report unplanned shutdown events |
| Location | Computer Configuration |
| Path | CAT_WindowsErrorReporting > Advanced Error Reporting Settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| Registry Value Name | IncludeShutdownErrs |
| ADMX File Name | Reliability.admx |
<!-- PCH_ReportShutdownEvents-AdmxBacked-End -->

<!-- PCH_ReportShutdownEvents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_ReportShutdownEvents-Examples-End -->

<!-- PCH_ReportShutdownEvents-End -->

<!-- ShutdownEventTrackerStateFile-Begin -->
## ShutdownEventTrackerStateFile

<!-- ShutdownEventTrackerStateFile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShutdownEventTrackerStateFile-Applicability-End -->

<!-- ShutdownEventTrackerStateFile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Reliability/ShutdownEventTrackerStateFile
```
<!-- ShutdownEventTrackerStateFile-OmaUri-End -->

<!-- ShutdownEventTrackerStateFile-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines when the Shutdown Event Tracker System State Data feature is activated.

The system state data file contains information about the basic system state as well as the state of all running processes.

- If you enable this policy setting, the System State Data feature is activated when the user indicates that the shutdown or restart is unplanned.

- If you disable this policy setting, the System State Data feature is never activated.

- If you don't configure this policy setting, the default behavior for the System State Data feature occurs.

> [!NOTE]
> By default, the System State Data feature is always enabled on Windows Server 2003. See "Supported on" for all supported versions.
<!-- ShutdownEventTrackerStateFile-Description-End -->

<!-- ShutdownEventTrackerStateFile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShutdownEventTrackerStateFile-Editable-End -->

<!-- ShutdownEventTrackerStateFile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShutdownEventTrackerStateFile-DFProperties-End -->

<!-- ShutdownEventTrackerStateFile-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShutdownEventTrackerStateFile |
| Friendly Name | Activate Shutdown Event Tracker System State Data feature |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Reliability |
| Registry Value Name | SnapShot |
| ADMX File Name | Reliability.admx |
<!-- ShutdownEventTrackerStateFile-AdmxBacked-End -->

<!-- ShutdownEventTrackerStateFile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShutdownEventTrackerStateFile-Examples-End -->

<!-- ShutdownEventTrackerStateFile-End -->

<!-- ShutdownReason-Begin -->
## ShutdownReason

<!-- ShutdownReason-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShutdownReason-Applicability-End -->

<!-- ShutdownReason-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Reliability/ShutdownReason
```
<!-- ShutdownReason-OmaUri-End -->

<!-- ShutdownReason-Description-Begin -->
<!-- Description-Source-ADMX -->
The Shutdown Event Tracker can be displayed when you shut down a workstation or server. This is an extra set of questions that's displayed when you invoke a shutdown to collect information related to why you are shutting down the computer.

- If you enable this setting and choose "Always" from the drop-down menu list, the Shutdown Event Tracker is displayed when the computer shuts down.

- If you enable this policy setting and choose "Server Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running Windows Server. (See "Supported on" for supported versions).

- If you enable this policy setting and choose "Workstation Only" from the drop-down menu list, the Shutdown Event Tracker is displayed when you shut down a computer running a client version of Windows. (See "Supported on" for supported versions).

- If you disable this policy setting, the Shutdown Event Tracker isn't displayed when you shut down the computer.

- If you don't configure this policy setting, the default behavior for the Shutdown Event Tracker occurs.

> [!NOTE]
> By default, the Shutdown Event Tracker is only displayed on computers running Windows Server.
<!-- ShutdownReason-Description-End -->

<!-- ShutdownReason-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShutdownReason-Editable-End -->

<!-- ShutdownReason-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShutdownReason-DFProperties-End -->

<!-- ShutdownReason-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShutdownReason |
| Friendly Name | Display Shutdown Event Tracker |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Reliability |
| Registry Value Name | ShutdownReasonOn |
| ADMX File Name | Reliability.admx |
<!-- ShutdownReason-AdmxBacked-End -->

<!-- ShutdownReason-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShutdownReason-Examples-End -->

<!-- ShutdownReason-End -->

<!-- ADMX_Reliability-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Reliability-CspMoreInfo-End -->

<!-- ADMX_Reliability-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
