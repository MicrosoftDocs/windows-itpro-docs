---
title: EnterpriseAppVManagement CSP
description: EnterpriseAppVManagement CSP
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# EnterpriseAppVManagement CSP

The EnterpriseAppVManagement configuration service provider (CSP) is used to manage virtual applications in Windows 10 PCs (Enterprise and Education editions). This CSP was added in Windows 10, version 1703.

The following diagram shows the EnterpriseAppVManagement configuration service provider in tree format.

![enterpriseappvmanagement csp](images/provisioning-csp-enterpriseappvmanagement.png)

**./Vendor/MSFT/EnterpriseAppVManagement**  
<p style="margin-left: 20px">Root node for the EnterpriseAppVManagement configuration service provider.</p>

**AppVPackageManagement**  
<p style="margin-left: 20px">Used to query App-V package information (post-publish).</p> 

**AppVPackageManagement/EnterpriseID**  
<p style="margin-left: 20px">Used to query package information. Value is always "HostedInstall".</p>

**AppVPackageManagement/EnterpriseID/PackageFamilyName**  
<p style="margin-left: 20px">Package ID of the published App-V package.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_**  
<p style="margin-left: 20px">Version ID of the published App-V package.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Name**  
<p style="margin-left: 20px">Name specified in the published AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Version**  
<p style="margin-left: 20px">Version specified in the published AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Publisher**  
<p style="margin-left: 20px">Publisher as specified in the published asset information of the AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/InstallLocation**  
<p style="margin-left: 20px">Local package path specified in the published asset information of the AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/InstallDate**  
<p style="margin-left: 20px">Date the app was installed, as specified in the published asset information of the AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Users**  
<p style="margin-left: 20px">Registered users for app, as specified in the published asset information of the AppV package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVPackageId**  
<p style="margin-left: 20px">   Package ID of the published App-V package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVVersionId**  
<p style="margin-left: 20px">Version ID of the published App-V package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVPackageUri**  
<p style="margin-left: 20px">Package URI of the published App-V package.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPublishing**  
<p style="margin-left: 20px">Used to monitor publishing operations on App-V.</p>

**AppVPublishing/LastSync**  
<p style="margin-left: 20px">Used to monitor publishing status of last sync operation.</p>

**AppVPublishing/LastSync/LastError**  
<p style="margin-left: 20px">Error code and error description of last sync operation.</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPublishing/LastSync/LastErrorDescription**  
<p style="margin-left: 20px">Last sync error status. One of the following values may be returned:</p>

- SYNC\_ERR_NONE (0) - No errors during publish.
- SYNC\_ERR\_UNPUBLISH_GROUPS (1) - Unpublish groups failed during publish.
- SYNC\_ERR\_PUBLISH\_NONGROUP_PACKAGES (2) - Publish no-group packages failed during publish.
- SYNC\_ERR\_PUBLISH\_GROUP_PACKAGES (3) - Publish group packages failed during publish.
- SYNC\_ERR\_UNPUBLISH_PACKAGES (4) - Unpublish packages failed during publish.
- SYNC\_ERR\_NEW_POLICY_WRITE (5) - New policy write failed during publish.
- SYNC\_ERR\_MULTIPLE\_DURING_PUBLISH (6) - Multiple non-fatal errors occured during publish.

<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPublishing/LastSync/SyncStatusDescription**  
<p style="margin-left: 20px">Latest sync in-progress stage. One of the following values may be returned:</p>

- SYNC\_PROGRESS_IDLE (0) - App-V publishing is idle.
- SYNC\_PROGRESS\_UNPUBLISH_GROUPS (1) - App-V connection groups publish in progress.
- SYN\_PROGRESS\_PUBLISH\_NONGROUP_PACKAGES (2) - App-V packages (non connection group) publish in progress.
- SYNC\_PROGRESS\_PUBLISH\_GROUP_PACKAGES (3) - App-V packages (connection group) publish in progress.
- SYN\C_PROGRESS_UNPUBLISH_PACKAGES (4) - App-V packages unpublish in progress.

<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>
                
**AppVPublishing/LastSync/SyncProgress**  
<p style="margin-left: 20px">Latest sync state. One of the following values may be returned:</p>

- SYNC\_STATUS_IDLE (0) - App-V Sync is idle.
- SYNC\_STATUS\_PUBLISH_STARTED (1) - App-V Sync is initializing.
- SYNC\_STATUS\_PUBLISH\_IN_PROGRESS (2) - App-V Sync is in progress.
- SYNC\_STATUS\_PUBLISH\_COMPLETED (3) - App-V Sync is complete.
- SYNC\_STATUS\_PUBLISH\_REBOOT_REQUIRED (4) - App-V Sync requires device reboot.

<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

**AppVPublishing/Sync**  
<p style="margin-left: 20px">Used to perform App-V synchronization.</p>

**AppVPublishing/Sync/PublishXML**  
<p style="margin-left: 20px">Used to execute the App-V synchronization using the Publishing protocol. For more information about the protocol see [[MS-VAPR]: Virtual Application Publishing and Reporting (App-V) Protocol](https://msdn.microsoft.com/library/mt739986.aspx).</p>
<p style="margin-left: 20px">Supported operations are Get, Delete, and Execute.</p>


**AppVDynamicPolicy**  
<p style="margin-left: 20px">Used to set App-V Policy Configuration documents for publishing packages.</p>

**AppVDynamicPolicy/_ConfigurationId_**  
<p style="margin-left: 20px">ID for App-V Policy Configuration document for publishing packages (referenced in the Publishing protocol document).</p>

**AppVDynamicPolicy/_ConfigurationId_/Policy**  
<p style="margin-left: 20px">XML for App-V Policy Configuration documents for publishing packages.</p>
<p style="margin-left: 20px">Value type is xml. Supported operations are Add, Get, Delete, and Replace.</p>

