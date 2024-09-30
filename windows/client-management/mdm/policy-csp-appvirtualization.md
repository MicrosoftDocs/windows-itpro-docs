---
title: AppVirtualization Policy CSP
description: Learn more about the AppVirtualization Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AppVirtualization-Begin -->
# Policy CSP - AppVirtualization

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- AppVirtualization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppVirtualization-Editable-End -->

<!-- AllowAppVClient-Begin -->
## AllowAppVClient

<!-- AllowAppVClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowAppVClient-Applicability-End -->

<!-- AllowAppVClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowAppVClient
```
<!-- AllowAppVClient-OmaUri-End -->

<!-- AllowAppVClient-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable or disable Microsoft Application Virtualization (App-V) feature. Reboot is needed for disable to take effect.

> [!NOTE]
> Application Virtualization (App-V) will reach end-of-life April 2026. After that time, the App-V client will be excluded from new versions of the Windows operating system. See aka.ms/AppVDeprecation for more information.
<!-- AllowAppVClient-Description-End -->

<!-- AllowAppVClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAppVClient-Editable-End -->

<!-- AllowAppVClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowAppVClient-DFProperties-End -->

<!-- AllowAppVClient-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableAppV |
| Friendly Name | Enable App-V Client |
| Location | Computer Configuration |
| Path | System > App-V |
| Registry Key Name | Software\Policies\Microsoft\AppV\Client |
| Registry Value Name | Enabled |
| ADMX File Name | appv.admx |
<!-- AllowAppVClient-AdmxBacked-End -->

<!-- AllowAppVClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAppVClient-Examples-End -->

<!-- AllowAppVClient-End -->

<!-- AllowDynamicVirtualization-Begin -->
## AllowDynamicVirtualization

<!-- AllowDynamicVirtualization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowDynamicVirtualization-Applicability-End -->

<!-- AllowDynamicVirtualization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowDynamicVirtualization
```
<!-- AllowDynamicVirtualization-OmaUri-End -->

<!-- AllowDynamicVirtualization-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables Dynamic Virtualization of supported shell extensions, browser helper objects, and ActiveX controls.
<!-- AllowDynamicVirtualization-Description-End -->

<!-- AllowDynamicVirtualization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDynamicVirtualization-Editable-End -->

<!-- AllowDynamicVirtualization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDynamicVirtualization-DFProperties-End -->

<!-- AllowDynamicVirtualization-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Virtualization_JITVEnable |
| Friendly Name | Enable Dynamic Virtualization |
| Location | Computer Configuration |
| Path | System > App-V > Virtualization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Virtualization |
| Registry Value Name | EnableDynamicVirtualization |
| ADMX File Name | appv.admx |
<!-- AllowDynamicVirtualization-AdmxBacked-End -->

<!-- AllowDynamicVirtualization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDynamicVirtualization-Examples-End -->

<!-- AllowDynamicVirtualization-End -->

<!-- AllowPackageCleanup-Begin -->
## AllowPackageCleanup

<!-- AllowPackageCleanup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowPackageCleanup-Applicability-End -->

<!-- AllowPackageCleanup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowPackageCleanup
```
<!-- AllowPackageCleanup-OmaUri-End -->

<!-- AllowPackageCleanup-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables automatic cleanup of appv packages that were added after Windows 10 anniversary release.
<!-- AllowPackageCleanup-Description-End -->

<!-- AllowPackageCleanup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPackageCleanup-Editable-End -->

<!-- AllowPackageCleanup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowPackageCleanup-DFProperties-End -->

<!-- AllowPackageCleanup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PackageManagement_AutoCleanupEnable |
| Friendly Name | Enable automatic cleanup of unused appv packages |
| Location | Computer Configuration |
| Path | System > App-V > PackageManagement |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\PackageManagement |
| Registry Value Name | AutoCleanupEnabled |
| ADMX File Name | appv.admx |
<!-- AllowPackageCleanup-AdmxBacked-End -->

<!-- AllowPackageCleanup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPackageCleanup-Examples-End -->

<!-- AllowPackageCleanup-End -->

<!-- AllowPackageScripts-Begin -->
## AllowPackageScripts

<!-- AllowPackageScripts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowPackageScripts-Applicability-End -->

<!-- AllowPackageScripts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowPackageScripts
```
<!-- AllowPackageScripts-OmaUri-End -->

<!-- AllowPackageScripts-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables scripts defined in the package manifest of configuration files that should run.
<!-- AllowPackageScripts-Description-End -->

<!-- AllowPackageScripts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPackageScripts-Editable-End -->

<!-- AllowPackageScripts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowPackageScripts-DFProperties-End -->

<!-- AllowPackageScripts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scripting_Enable_Package_Scripts |
| Friendly Name | Enable Package Scripts |
| Location | Computer Configuration |
| Path | System > App-V > Scripting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Scripting |
| Registry Value Name | EnablePackageScripts |
| ADMX File Name | appv.admx |
<!-- AllowPackageScripts-AdmxBacked-End -->

<!-- AllowPackageScripts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPackageScripts-Examples-End -->

<!-- AllowPackageScripts-End -->

<!-- AllowPublishingRefreshUX-Begin -->
## AllowPublishingRefreshUX

<!-- AllowPublishingRefreshUX-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowPublishingRefreshUX-Applicability-End -->

<!-- AllowPublishingRefreshUX-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowPublishingRefreshUX
```
<!-- AllowPublishingRefreshUX-OmaUri-End -->

<!-- AllowPublishingRefreshUX-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables a UX to display to the user when a publishing refresh is performed on the client.
<!-- AllowPublishingRefreshUX-Description-End -->

<!-- AllowPublishingRefreshUX-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPublishingRefreshUX-Editable-End -->

<!-- AllowPublishingRefreshUX-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowPublishingRefreshUX-DFProperties-End -->

<!-- AllowPublishingRefreshUX-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Enable_Publishing_Refresh_UX |
| Friendly Name | Enable Publishing Refresh UX |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing |
| Registry Value Name | EnablePublishingRefreshUI |
| ADMX File Name | appv.admx |
<!-- AllowPublishingRefreshUX-AdmxBacked-End -->

<!-- AllowPublishingRefreshUX-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPublishingRefreshUX-Examples-End -->

<!-- AllowPublishingRefreshUX-End -->

<!-- AllowReportingServer-Begin -->
## AllowReportingServer

<!-- AllowReportingServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowReportingServer-Applicability-End -->

<!-- AllowReportingServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowReportingServer
```
<!-- AllowReportingServer-OmaUri-End -->

<!-- AllowReportingServer-Description-Begin -->
<!-- Description-Source-ADMX -->
Reporting Server URL: Displays the URL of reporting server.

Reporting Time: When the client data should be reported to the server. Acceptable range is 0~23, corresponding to the 24 hours in a day. A good practice is, don't set this time to a busy hour, e.g. 9. AM.

Delay reporting for the random minutes: The maximum minutes of random delay on top of the reporting time. For a busy system, the random delay will help reduce the server load.

Repeat reporting for every (days): The periodical interval in days for sending the reporting data.

Data Cache Limit: This value specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The default value is 20 MB. The size applies to the cache in memory. When the limit's reached, the log file will roll over. When a new record is to be added (bottom of the list), one or more of the oldest records (top of the list) will be deleted to make room. A warning will be logged to the Client log and the event log the first time this occurs, and won't be logged again until after the cache has been successfully cleared on transmission and the log has filled up again.

Data Block Size: This value specifies the maximum size in bytes to transmit to the server at once on a reporting upload, to avoid permanent transmission failures when the log has reached a significant size. The default value is 65536. When transmitting report data to the server, one block at a time of application records that's less than or equal to the block size in bytes of XML data will be removed from the cache and sent to the server. Each block will have the general Client data and global package list data prepended, and these won't factor into the block size calculations; the potential exists for an extremely large package list to result in transmission failures over low bandwidth or unreliable connections.
<!-- AllowReportingServer-Description-End -->

<!-- AllowReportingServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowReportingServer-Editable-End -->

<!-- AllowReportingServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowReportingServer-DFProperties-End -->

<!-- AllowReportingServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_Server_Policy |
| Friendly Name | Reporting Server |
| Location | Computer Configuration |
| Path | System > App-V > Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Reporting |
| Registry Value Name | ReportingEnabled |
| ADMX File Name | appv.admx |
<!-- AllowReportingServer-AdmxBacked-End -->

<!-- AllowReportingServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowReportingServer-Examples-End -->

<!-- AllowReportingServer-End -->

<!-- AllowRoamingFileExclusions-Begin -->
## AllowRoamingFileExclusions

<!-- AllowRoamingFileExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowRoamingFileExclusions-Applicability-End -->

<!-- AllowRoamingFileExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowRoamingFileExclusions
```
<!-- AllowRoamingFileExclusions-OmaUri-End -->

<!-- AllowRoamingFileExclusions-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the file paths relative to %userprofile% that don't roam with a user's profile. Example usage: /FILEEXCLUSIONLIST='desktop;my pictures'.
<!-- AllowRoamingFileExclusions-Description-End -->

<!-- AllowRoamingFileExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRoamingFileExclusions-Editable-End -->

<!-- AllowRoamingFileExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowRoamingFileExclusions-DFProperties-End -->

<!-- AllowRoamingFileExclusions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Integration_Roaming_File_Exclusions |
| Friendly Name | Roaming File Exclusions |
| Location | Computer Configuration |
| Path | System > App-V > Integration |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Integration |
| ADMX File Name | appv.admx |
<!-- AllowRoamingFileExclusions-AdmxBacked-End -->

<!-- AllowRoamingFileExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRoamingFileExclusions-Examples-End -->

<!-- AllowRoamingFileExclusions-End -->

<!-- AllowRoamingRegistryExclusions-Begin -->
## AllowRoamingRegistryExclusions

<!-- AllowRoamingRegistryExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowRoamingRegistryExclusions-Applicability-End -->

<!-- AllowRoamingRegistryExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowRoamingRegistryExclusions
```
<!-- AllowRoamingRegistryExclusions-OmaUri-End -->

<!-- AllowRoamingRegistryExclusions-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the registry paths that don't roam with a user profile. Example usage: /REGISTRYEXCLUSIONLIST=software\classes;software\clients.
<!-- AllowRoamingRegistryExclusions-Description-End -->

<!-- AllowRoamingRegistryExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRoamingRegistryExclusions-Editable-End -->

<!-- AllowRoamingRegistryExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowRoamingRegistryExclusions-DFProperties-End -->

<!-- AllowRoamingRegistryExclusions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Integration_Roaming_Registry_Exclusions |
| Friendly Name | Roaming Registry Exclusions |
| Location | Computer Configuration |
| Path | System > App-V > Integration |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Integration |
| ADMX File Name | appv.admx |
<!-- AllowRoamingRegistryExclusions-AdmxBacked-End -->

<!-- AllowRoamingRegistryExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRoamingRegistryExclusions-Examples-End -->

<!-- AllowRoamingRegistryExclusions-End -->

<!-- AllowStreamingAutoload-Begin -->
## AllowStreamingAutoload

<!-- AllowStreamingAutoload-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowStreamingAutoload-Applicability-End -->

<!-- AllowStreamingAutoload-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowStreamingAutoload
```
<!-- AllowStreamingAutoload-OmaUri-End -->

<!-- AllowStreamingAutoload-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies how new packages should be loaded automatically by App-V on a specific computer.
<!-- AllowStreamingAutoload-Description-End -->

<!-- AllowStreamingAutoload-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStreamingAutoload-Editable-End -->

<!-- AllowStreamingAutoload-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowStreamingAutoload-DFProperties-End -->

<!-- AllowStreamingAutoload-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Steaming_Autoload |
| Friendly Name | Specify what to load in background (aka AutoLoad) |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- AllowStreamingAutoload-AdmxBacked-End -->

<!-- AllowStreamingAutoload-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStreamingAutoload-Examples-End -->

<!-- AllowStreamingAutoload-End -->

<!-- ClientCoexistenceAllowMigrationmode-Begin -->
## ClientCoexistenceAllowMigrationmode

<!-- ClientCoexistenceAllowMigrationmode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- ClientCoexistenceAllowMigrationmode-Applicability-End -->

<!-- ClientCoexistenceAllowMigrationmode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/ClientCoexistenceAllowMigrationmode
```
<!-- ClientCoexistenceAllowMigrationmode-OmaUri-End -->

<!-- ClientCoexistenceAllowMigrationmode-Description-Begin -->
<!-- Description-Source-ADMX -->
Migration mode allows the App-V client to modify shortcuts and FTA's for packages created using a previous version of App-V.
<!-- ClientCoexistenceAllowMigrationmode-Description-End -->

<!-- ClientCoexistenceAllowMigrationmode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClientCoexistenceAllowMigrationmode-Editable-End -->

<!-- ClientCoexistenceAllowMigrationmode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClientCoexistenceAllowMigrationmode-DFProperties-End -->

<!-- ClientCoexistenceAllowMigrationmode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Client_Coexistence_Enable_Migration_mode |
| Friendly Name | Enable Migration Mode |
| Location | Computer Configuration |
| Path | System > App-V > Client Coexistence |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Coexistence |
| Registry Value Name | MigrationMode |
| ADMX File Name | appv.admx |
<!-- ClientCoexistenceAllowMigrationmode-AdmxBacked-End -->

<!-- ClientCoexistenceAllowMigrationmode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClientCoexistenceAllowMigrationmode-Examples-End -->

<!-- ClientCoexistenceAllowMigrationmode-End -->

<!-- IntegrationAllowRootGlobal-Begin -->
## IntegrationAllowRootGlobal

<!-- IntegrationAllowRootGlobal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntegrationAllowRootGlobal-Applicability-End -->

<!-- IntegrationAllowRootGlobal-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/IntegrationAllowRootGlobal
```
<!-- IntegrationAllowRootGlobal-OmaUri-End -->

<!-- IntegrationAllowRootGlobal-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the location where symbolic links are created to the current version of a per-user published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links aren't used during publishing. Example: %localappdata%\Microsoft\AppV\Client\Integration.
<!-- IntegrationAllowRootGlobal-Description-End -->

<!-- IntegrationAllowRootGlobal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntegrationAllowRootGlobal-Editable-End -->

<!-- IntegrationAllowRootGlobal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntegrationAllowRootGlobal-DFProperties-End -->

<!-- IntegrationAllowRootGlobal-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Integration_Root_User |
| Friendly Name | Integration Root User |
| Location | Computer Configuration |
| Path | System > App-V > Integration |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Integration |
| ADMX File Name | appv.admx |
<!-- IntegrationAllowRootGlobal-AdmxBacked-End -->

<!-- IntegrationAllowRootGlobal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntegrationAllowRootGlobal-Examples-End -->

<!-- IntegrationAllowRootGlobal-End -->

<!-- IntegrationAllowRootUser-Begin -->
## IntegrationAllowRootUser

<!-- IntegrationAllowRootUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- IntegrationAllowRootUser-Applicability-End -->

<!-- IntegrationAllowRootUser-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/IntegrationAllowRootUser
```
<!-- IntegrationAllowRootUser-OmaUri-End -->

<!-- IntegrationAllowRootUser-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the location where symbolic links are created to the current version of a globally published package. Shortcuts, file type associations, etc. are created pointing to this path. If empty, symbolic links aren't used during publishing. Example: %allusersprofile%\Microsoft\AppV\Client\Integration.
<!-- IntegrationAllowRootUser-Description-End -->

<!-- IntegrationAllowRootUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IntegrationAllowRootUser-Editable-End -->

<!-- IntegrationAllowRootUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IntegrationAllowRootUser-DFProperties-End -->

<!-- IntegrationAllowRootUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Integration_Root_Global |
| Friendly Name | Integration Root Global |
| Location | Computer Configuration |
| Path | System > App-V > Integration |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Integration |
| ADMX File Name | appv.admx |
<!-- IntegrationAllowRootUser-AdmxBacked-End -->

<!-- IntegrationAllowRootUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IntegrationAllowRootUser-Examples-End -->

<!-- IntegrationAllowRootUser-End -->

<!-- PublishingAllowServer1-Begin -->
## PublishingAllowServer1

<!-- PublishingAllowServer1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishingAllowServer1-Applicability-End -->

<!-- PublishingAllowServer1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer1
```
<!-- PublishingAllowServer1-OmaUri-End -->

<!-- PublishingAllowServer1-Description-Begin -->
<!-- Description-Source-ADMX -->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
<!-- PublishingAllowServer1-Description-End -->

<!-- PublishingAllowServer1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishingAllowServer1-Editable-End -->

<!-- PublishingAllowServer1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishingAllowServer1-DFProperties-End -->

<!-- PublishingAllowServer1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Publishing_Server1_Policy |
| Friendly Name | Publishing Server 1 Settings |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\1 |
| ADMX File Name | appv.admx |
<!-- PublishingAllowServer1-AdmxBacked-End -->

<!-- PublishingAllowServer1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishingAllowServer1-Examples-End -->

<!-- PublishingAllowServer1-End -->

<!-- PublishingAllowServer2-Begin -->
## PublishingAllowServer2

<!-- PublishingAllowServer2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishingAllowServer2-Applicability-End -->

<!-- PublishingAllowServer2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer2
```
<!-- PublishingAllowServer2-OmaUri-End -->

<!-- PublishingAllowServer2-Description-Begin -->
<!-- Description-Source-ADMX -->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
<!-- PublishingAllowServer2-Description-End -->

<!-- PublishingAllowServer2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishingAllowServer2-Editable-End -->

<!-- PublishingAllowServer2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishingAllowServer2-DFProperties-End -->

<!-- PublishingAllowServer2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Publishing_Server2_Policy |
| Friendly Name | Publishing Server 2 Settings |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\2 |
| ADMX File Name | appv.admx |
<!-- PublishingAllowServer2-AdmxBacked-End -->

<!-- PublishingAllowServer2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishingAllowServer2-Examples-End -->

<!-- PublishingAllowServer2-End -->

<!-- PublishingAllowServer3-Begin -->
## PublishingAllowServer3

<!-- PublishingAllowServer3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishingAllowServer3-Applicability-End -->

<!-- PublishingAllowServer3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer3
```
<!-- PublishingAllowServer3-OmaUri-End -->

<!-- PublishingAllowServer3-Description-Begin -->
<!-- Description-Source-ADMX -->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
<!-- PublishingAllowServer3-Description-End -->

<!-- PublishingAllowServer3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishingAllowServer3-Editable-End -->

<!-- PublishingAllowServer3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishingAllowServer3-DFProperties-End -->

<!-- PublishingAllowServer3-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Publishing_Server3_Policy |
| Friendly Name | Publishing Server 3 Settings |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\3 |
| ADMX File Name | appv.admx |
<!-- PublishingAllowServer3-AdmxBacked-End -->

<!-- PublishingAllowServer3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishingAllowServer3-Examples-End -->

<!-- PublishingAllowServer3-End -->

<!-- PublishingAllowServer4-Begin -->
## PublishingAllowServer4

<!-- PublishingAllowServer4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishingAllowServer4-Applicability-End -->

<!-- PublishingAllowServer4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer4
```
<!-- PublishingAllowServer4-OmaUri-End -->

<!-- PublishingAllowServer4-Description-Begin -->
<!-- Description-Source-ADMX -->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
<!-- PublishingAllowServer4-Description-End -->

<!-- PublishingAllowServer4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishingAllowServer4-Editable-End -->

<!-- PublishingAllowServer4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishingAllowServer4-DFProperties-End -->

<!-- PublishingAllowServer4-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Publishing_Server4_Policy |
| Friendly Name | Publishing Server 4 Settings |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\4 |
| ADMX File Name | appv.admx |
<!-- PublishingAllowServer4-AdmxBacked-End -->

<!-- PublishingAllowServer4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishingAllowServer4-Examples-End -->

<!-- PublishingAllowServer4-End -->

<!-- PublishingAllowServer5-Begin -->
## PublishingAllowServer5

<!-- PublishingAllowServer5-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PublishingAllowServer5-Applicability-End -->

<!-- PublishingAllowServer5-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/PublishingAllowServer5
```
<!-- PublishingAllowServer5-OmaUri-End -->

<!-- PublishingAllowServer5-Description-Begin -->
<!-- Description-Source-ADMX -->
Publishing Server Display Name: Displays the name of publishing server.

Publishing Server URL: Displays the URL of publishing server.

Global Publishing Refresh: Enables global publishing refresh (Boolean).

Global Publishing Refresh On Logon: Triggers a global publishing refresh on logon (Boolean).

Global Publishing Refresh Interval: Specifies the publishing refresh interval using the GlobalRefreshIntervalUnit. To disable package refresh, select 0.

Global Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).

User Publishing Refresh: Enables user publishing refresh (Boolean).

User Publishing Refresh On Logon: Triggers a user publishing refresh on logon (Boolean).

User Publishing Refresh Interval: Specifies the publishing refresh interval using the UserRefreshIntervalUnit. To disable package refresh, select 0.

User Publishing Refresh Interval Unit: Specifies the interval unit (Hour 0-23, Day 0-31).
<!-- PublishingAllowServer5-Description-End -->

<!-- PublishingAllowServer5-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishingAllowServer5-Editable-End -->

<!-- PublishingAllowServer5-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishingAllowServer5-DFProperties-End -->

<!-- PublishingAllowServer5-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Publishing_Server5_Policy |
| Friendly Name | Publishing Server 5 Settings |
| Location | Computer Configuration |
| Path | System > App-V > Publishing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Publishing\Servers\5 |
| ADMX File Name | appv.admx |
<!-- PublishingAllowServer5-AdmxBacked-End -->

<!-- PublishingAllowServer5-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishingAllowServer5-Examples-End -->

<!-- PublishingAllowServer5-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-Begin -->
## StreamingAllowCertificateFilterForClient_SSL

<!-- StreamingAllowCertificateFilterForClient_SSL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowCertificateFilterForClient_SSL-Applicability-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowCertificateFilterForClient_SSL
```
<!-- StreamingAllowCertificateFilterForClient_SSL-OmaUri-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the path to a valid certificate in the certificate store.
<!-- StreamingAllowCertificateFilterForClient_SSL-Description-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowCertificateFilterForClient_SSL-Editable-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowCertificateFilterForClient_SSL-DFProperties-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Certificate_Filter_For_Client_SSL |
| Friendly Name | Certificate Filter For Client SSL |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowCertificateFilterForClient_SSL-AdmxBacked-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowCertificateFilterForClient_SSL-Examples-End -->

<!-- StreamingAllowCertificateFilterForClient_SSL-End -->

<!-- StreamingAllowHighCostLaunch-Begin -->
## StreamingAllowHighCostLaunch

<!-- StreamingAllowHighCostLaunch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowHighCostLaunch-Applicability-End -->

<!-- StreamingAllowHighCostLaunch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowHighCostLaunch
```
<!-- StreamingAllowHighCostLaunch-OmaUri-End -->

<!-- StreamingAllowHighCostLaunch-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting controls whether virtualized applications are launched on Windows 8 machines connected via a metered network connection (e.g. 4G).
<!-- StreamingAllowHighCostLaunch-Description-End -->

<!-- StreamingAllowHighCostLaunch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowHighCostLaunch-Editable-End -->

<!-- StreamingAllowHighCostLaunch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowHighCostLaunch-DFProperties-End -->

<!-- StreamingAllowHighCostLaunch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Allow_High_Cost_Launch |
| Friendly Name | Allow First Time Application Launches if on a High Cost Windows 8 Metered Connection |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| Registry Value Name | AllowHighCostLaunch |
| ADMX File Name | appv.admx |
<!-- StreamingAllowHighCostLaunch-AdmxBacked-End -->

<!-- StreamingAllowHighCostLaunch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowHighCostLaunch-Examples-End -->

<!-- StreamingAllowHighCostLaunch-End -->

<!-- StreamingAllowLocationProvider-Begin -->
## StreamingAllowLocationProvider

<!-- StreamingAllowLocationProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowLocationProvider-Applicability-End -->

<!-- StreamingAllowLocationProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowLocationProvider
```
<!-- StreamingAllowLocationProvider-OmaUri-End -->

<!-- StreamingAllowLocationProvider-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the CLSID for a compatible implementation of the IAppvPackageLocationProvider interface.
<!-- StreamingAllowLocationProvider-Description-End -->

<!-- StreamingAllowLocationProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowLocationProvider-Editable-End -->

<!-- StreamingAllowLocationProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowLocationProvider-DFProperties-End -->

<!-- StreamingAllowLocationProvider-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Location_Provider |
| Friendly Name | Location Provider |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowLocationProvider-AdmxBacked-End -->

<!-- StreamingAllowLocationProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowLocationProvider-Examples-End -->

<!-- StreamingAllowLocationProvider-End -->

<!-- StreamingAllowPackageInstallationRoot-Begin -->
## StreamingAllowPackageInstallationRoot

<!-- StreamingAllowPackageInstallationRoot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowPackageInstallationRoot-Applicability-End -->

<!-- StreamingAllowPackageInstallationRoot-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowPackageInstallationRoot
```
<!-- StreamingAllowPackageInstallationRoot-OmaUri-End -->

<!-- StreamingAllowPackageInstallationRoot-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies directory where all new applications and updates will be installed.
<!-- StreamingAllowPackageInstallationRoot-Description-End -->

<!-- StreamingAllowPackageInstallationRoot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowPackageInstallationRoot-Editable-End -->

<!-- StreamingAllowPackageInstallationRoot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowPackageInstallationRoot-DFProperties-End -->

<!-- StreamingAllowPackageInstallationRoot-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Package_Installation_Root |
| Friendly Name | Package Installation Root |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowPackageInstallationRoot-AdmxBacked-End -->

<!-- StreamingAllowPackageInstallationRoot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowPackageInstallationRoot-Examples-End -->

<!-- StreamingAllowPackageInstallationRoot-End -->

<!-- StreamingAllowPackageSourceRoot-Begin -->
## StreamingAllowPackageSourceRoot

<!-- StreamingAllowPackageSourceRoot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowPackageSourceRoot-Applicability-End -->

<!-- StreamingAllowPackageSourceRoot-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowPackageSourceRoot
```
<!-- StreamingAllowPackageSourceRoot-OmaUri-End -->

<!-- StreamingAllowPackageSourceRoot-Description-Begin -->
<!-- Description-Source-ADMX -->
Overrides source location for downloading package content.
<!-- StreamingAllowPackageSourceRoot-Description-End -->

<!-- StreamingAllowPackageSourceRoot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowPackageSourceRoot-Editable-End -->

<!-- StreamingAllowPackageSourceRoot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowPackageSourceRoot-DFProperties-End -->

<!-- StreamingAllowPackageSourceRoot-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Package_Source_Root |
| Friendly Name | Package Source Root |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowPackageSourceRoot-AdmxBacked-End -->

<!-- StreamingAllowPackageSourceRoot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowPackageSourceRoot-Examples-End -->

<!-- StreamingAllowPackageSourceRoot-End -->

<!-- StreamingAllowReestablishmentInterval-Begin -->
## StreamingAllowReestablishmentInterval

<!-- StreamingAllowReestablishmentInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowReestablishmentInterval-Applicability-End -->

<!-- StreamingAllowReestablishmentInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowReestablishmentInterval
```
<!-- StreamingAllowReestablishmentInterval-OmaUri-End -->

<!-- StreamingAllowReestablishmentInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the number of seconds between attempts to reestablish a dropped session.
<!-- StreamingAllowReestablishmentInterval-Description-End -->

<!-- StreamingAllowReestablishmentInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowReestablishmentInterval-Editable-End -->

<!-- StreamingAllowReestablishmentInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowReestablishmentInterval-DFProperties-End -->

<!-- StreamingAllowReestablishmentInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Reestablishment_Interval |
| Friendly Name | Reestablishment Interval |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowReestablishmentInterval-AdmxBacked-End -->

<!-- StreamingAllowReestablishmentInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowReestablishmentInterval-Examples-End -->

<!-- StreamingAllowReestablishmentInterval-End -->

<!-- StreamingAllowReestablishmentRetries-Begin -->
## StreamingAllowReestablishmentRetries

<!-- StreamingAllowReestablishmentRetries-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingAllowReestablishmentRetries-Applicability-End -->

<!-- StreamingAllowReestablishmentRetries-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingAllowReestablishmentRetries
```
<!-- StreamingAllowReestablishmentRetries-OmaUri-End -->

<!-- StreamingAllowReestablishmentRetries-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the number of times to retry a dropped session.
<!-- StreamingAllowReestablishmentRetries-Description-End -->

<!-- StreamingAllowReestablishmentRetries-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingAllowReestablishmentRetries-Editable-End -->

<!-- StreamingAllowReestablishmentRetries-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingAllowReestablishmentRetries-DFProperties-End -->

<!-- StreamingAllowReestablishmentRetries-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Reestablishment_Retries |
| Friendly Name | Reestablishment Retries |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| ADMX File Name | appv.admx |
<!-- StreamingAllowReestablishmentRetries-AdmxBacked-End -->

<!-- StreamingAllowReestablishmentRetries-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingAllowReestablishmentRetries-Examples-End -->

<!-- StreamingAllowReestablishmentRetries-End -->

<!-- StreamingSharedContentStoreMode-Begin -->
## StreamingSharedContentStoreMode

<!-- StreamingSharedContentStoreMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingSharedContentStoreMode-Applicability-End -->

<!-- StreamingSharedContentStoreMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingSharedContentStoreMode
```
<!-- StreamingSharedContentStoreMode-OmaUri-End -->

<!-- StreamingSharedContentStoreMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that streamed package contents won't be saved to the local hard disk.
<!-- StreamingSharedContentStoreMode-Description-End -->

<!-- StreamingSharedContentStoreMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingSharedContentStoreMode-Editable-End -->

<!-- StreamingSharedContentStoreMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingSharedContentStoreMode-DFProperties-End -->

<!-- StreamingSharedContentStoreMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Shared_Content_Store_Mode |
| Friendly Name | Shared Content Store (SCS) mode |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| Registry Value Name | SharedContentStoreMode |
| ADMX File Name | appv.admx |
<!-- StreamingSharedContentStoreMode-AdmxBacked-End -->

<!-- StreamingSharedContentStoreMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingSharedContentStoreMode-Examples-End -->

<!-- StreamingSharedContentStoreMode-End -->

<!-- StreamingSupportBranchCache-Begin -->
## StreamingSupportBranchCache

<!-- StreamingSupportBranchCache-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingSupportBranchCache-Applicability-End -->

<!-- StreamingSupportBranchCache-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingSupportBranchCache
```
<!-- StreamingSupportBranchCache-OmaUri-End -->

<!-- StreamingSupportBranchCache-Description-Begin -->
<!-- Description-Source-ADMX -->
If enabled, the App-V client will support BrancheCache compatible HTTP streaming. If BranchCache support isn't desired, this should be disabled. The client can then apply HTTP optimizations which are incompatible with BranchCache.
<!-- StreamingSupportBranchCache-Description-End -->

<!-- StreamingSupportBranchCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingSupportBranchCache-Editable-End -->

<!-- StreamingSupportBranchCache-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingSupportBranchCache-DFProperties-End -->

<!-- StreamingSupportBranchCache-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Support_Branch_Cache |
| Friendly Name | Enable Support for BranchCache |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| Registry Value Name | SupportBranchCache |
| ADMX File Name | appv.admx |
<!-- StreamingSupportBranchCache-AdmxBacked-End -->

<!-- StreamingSupportBranchCache-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingSupportBranchCache-Examples-End -->

<!-- StreamingSupportBranchCache-End -->

<!-- StreamingVerifyCertificateRevocationList-Begin -->
## StreamingVerifyCertificateRevocationList

<!-- StreamingVerifyCertificateRevocationList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- StreamingVerifyCertificateRevocationList-Applicability-End -->

<!-- StreamingVerifyCertificateRevocationList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/StreamingVerifyCertificateRevocationList
```
<!-- StreamingVerifyCertificateRevocationList-OmaUri-End -->

<!-- StreamingVerifyCertificateRevocationList-Description-Begin -->
<!-- Description-Source-ADMX -->
Verifies Server certificate revocation status before streaming using HTTPS.
<!-- StreamingVerifyCertificateRevocationList-Description-End -->

<!-- StreamingVerifyCertificateRevocationList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StreamingVerifyCertificateRevocationList-Editable-End -->

<!-- StreamingVerifyCertificateRevocationList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StreamingVerifyCertificateRevocationList-DFProperties-End -->

<!-- StreamingVerifyCertificateRevocationList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Streaming_Verify_Certificate_Revocation_List |
| Friendly Name | Verify certificate revocation list |
| Location | Computer Configuration |
| Path | System > App-V > Streaming |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Streaming |
| Registry Value Name | VerifyCertificateRevocationList |
| ADMX File Name | appv.admx |
<!-- StreamingVerifyCertificateRevocationList-AdmxBacked-End -->

<!-- StreamingVerifyCertificateRevocationList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StreamingVerifyCertificateRevocationList-Examples-End -->

<!-- StreamingVerifyCertificateRevocationList-End -->

<!-- VirtualComponentsAllowList-Begin -->
## VirtualComponentsAllowList

<!-- VirtualComponentsAllowList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- VirtualComponentsAllowList-Applicability-End -->

<!-- VirtualComponentsAllowList-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppVirtualization/VirtualComponentsAllowList
```
<!-- VirtualComponentsAllowList-OmaUri-End -->

<!-- VirtualComponentsAllowList-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.
<!-- VirtualComponentsAllowList-Description-End -->

<!-- VirtualComponentsAllowList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- VirtualComponentsAllowList-Editable-End -->

<!-- VirtualComponentsAllowList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- VirtualComponentsAllowList-DFProperties-End -->

<!-- VirtualComponentsAllowList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Virtualization_JITVAllowList |
| Friendly Name | Virtual Component Process Allow List |
| Location | Computer Configuration |
| Path | System > App-V > Virtualization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\AppV\Client\Virtualization |
| Registry Value Name | ProcessesUsingVirtualComponents |
| ADMX File Name | appv.admx |
<!-- VirtualComponentsAllowList-AdmxBacked-End -->

<!-- VirtualComponentsAllowList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- VirtualComponentsAllowList-Examples-End -->

<!-- VirtualComponentsAllowList-End -->

<!-- AppVirtualization-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AppVirtualization-CspMoreInfo-End -->

<!-- AppVirtualization-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
