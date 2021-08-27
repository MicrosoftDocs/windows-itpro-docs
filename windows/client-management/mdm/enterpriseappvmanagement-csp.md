---
title: EnterpriseAppVManagement CSP
description: Examine the tree format for EnterpriseAppVManagement CSP to manage virtual applications in Windows 10 PCs.(Enterprise and Education editions). 
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---

# EnterpriseAppVManagement CSP

The EnterpriseAppVManagement configuration service provider (CSP) is used to manage virtual applications in Windows 10 PCs (Enterprise and Education editions). This CSP was added in Windows 10, version 1703.

The following shows the EnterpriseAppVManagement configuration service provider in tree format.
```
./Vendor/MSFT
EnterpriseAppVManagement
----AppVPackageManagement
--------EnterpriseID
------------PackageFamilyName
----------------PackageFullName
--------------------Name
--------------------Version
--------------------Publisher
--------------------InstallLocation
--------------------InstallDate
--------------------Users
--------------------AppVPackageId
--------------------AppVVersionId
--------------------AppVPackageUri
----AppVPublishing
--------LastSync
------------LastError
------------LastErrorDescription
------------SyncStatusDescription
------------SyncProgress
--------Sync
------------PublishXML
----AppVDynamicPolicy
--------ConfigurationId
------------Policy
```
**./Vendor/MSFT/EnterpriseAppVManagement**  
<p>Root node for the EnterpriseAppVManagement configuration service provider.</p>

**AppVPackageManagement**  
<p>Used to query App-V package information (post-publish).</p> 

**AppVPackageManagement/EnterpriseID**  
<p>Used to query package information. Value is always &quot;HostedInstall&quot;.</p>

**AppVPackageManagement/EnterpriseID/PackageFamilyName**  
<p>Package ID of the published App-V package.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName***  
<p>Version ID of the published App-V package.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/Name**  
<p>Name specified in the published AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/Version**  
<p>Version specified in the published AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/Publisher**  
<p>Publisher as specified in the published asset information of the AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/InstallLocation**  
<p>Local package path specified in the published asset information of the AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/InstallDate**  
<p>Date the app was installed, as specified in the published asset information of the AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/Users**  
<p>Registered users for app, as specified in the published asset information of the AppV package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/AppVPackageId**  
<p>   Package ID of the published App-V package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/AppVVersionId**  
<p>Version ID of the published App-V package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/*EnterpriseID*/*PackageFamilyName*/*PackageFullName*/AppVPackageUri**  
<p>Package URI of the published App-V package.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPublishing**  
<p>Used to monitor publishing operations on App-V.</p>

**AppVPublishing/LastSync**  
<p>Used to monitor publishing status of last sync operation.</p>

**AppVPublishing/LastSync/LastError**  
<p>Error code and error description of last sync operation.</p>
<p>Value type is string. Supported operation is Get.</p>

**AppVPublishing/LastSync/LastErrorDescription**  
<p>Last sync error status. One of the following values may be returned:</p>

- SYNC\_ERR_NONE (0) - No errors during publish.
- SYNC\_ERR\_UNPUBLISH_GROUPS (1) - Unpublish groups failed during publish.
- SYNC\_ERR\_PUBLISH\_NONGROUP_PACKAGES (2) - Publish no-group packages failed during publish.
- SYNC\_ERR\_PUBLISH\_GROUP_PACKAGES (3) - Publish group packages failed during publish.
- SYNC\_ERR\_UNPUBLISH_PACKAGES (4) - Unpublish packages failed during publish.
- SYNC\_ERR\_NEW_POLICY_WRITE (5) - New policy write failed during publish.
- SYNC\_ERR\_MULTIPLE\_DURING_PUBLISH (6) - Multiple non-fatal errors occurred during publish.

<p>Value type is string. Supported operation is Get.</p>

**AppVPublishing/LastSync/SyncStatusDescription**  
<p>Latest sync in-progress stage. One of the following values may be returned:</p>

- SYNC\_PROGRESS_IDLE (0) - App-V publishing is idle.
- SYNC\_PROGRESS\_UNPUBLISH_GROUPS (1) - App-V connection groups publish in progress.
- SYN\_PROGRESS\_PUBLISH\_NONGROUP_PACKAGES (2) - App-V packages (non connection group) publish in progress.
- SYNC\_PROGRESS\_PUBLISH\_GROUP_PACKAGES (3) - App-V packages (connection group) publish in progress.
- SYN\C_PROGRESS_UNPUBLISH_PACKAGES (4) - App-V packages unpublish in progress.

<p>Value type is string. Supported operation is Get.</p>

<strong>AppVPublishing/LastSync/SyncProgress</strong><br/><p>Latest sync state. One of the following values may be returned:</p>

- SYNC\_STATUS_IDLE (0) - App-V Sync is idle.
- SYNC\_STATUS\_PUBLISH_STARTED (1) - App-V Sync is initializing.
- SYNC\_STATUS\_PUBLISH\_IN_PROGRESS (2) - App-V Sync is in progress.
- SYNC\_STATUS\_PUBLISH\_COMPLETED (3) - App-V Sync is complete.
- SYNC\_STATUS\_PUBLISH\_REBOOT_REQUIRED (4) - App-V Sync requires device reboot.

<p>Value type is string. Supported operation is Get.</p>

**AppVPublishing/Sync**  
<p>Used to perform App-V synchronization.</p>

**AppVPublishing/Sync/PublishXML**  
<p>Used to execute the App-V synchronization using the Publishing protocol. For more information about the protocol see <a href="/openspecs/windows_protocols/ms-vapr/a05e030d-4fb9-4c8d-984b-971253b62be8" data-raw-source="[[MS-VAPR]: Virtual Application Publishing and Reporting (App-V) Protocol](/openspecs/windows_protocols/ms-vapr/a05e030d-4fb9-4c8d-984b-971253b62be8)">[MS-VAPR]: Virtual Application Publishing and Reporting (App-V) Protocol</a>.</p>
<p>Supported operations are Get, Delete, and Execute.</p>


**AppVDynamicPolicy**  
<p>Used to set App-V Policy Configuration documents for publishing packages.</p>

**AppVDynamicPolicy/*ConfigurationId***  
<p>ID for App-V Policy Configuration document for publishing packages (referenced in the Publishing protocol document).</p>

**AppVDynamicPolicy/*ConfigurationId*/Policy**  
<p>XML for App-V Policy Configuration documents for publishing packages.</p>
<p>Value type is xml. Supported operations are Add, Get, Delete, and Replace.</p>