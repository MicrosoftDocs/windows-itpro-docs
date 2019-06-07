---
title: Update CSP
description: Update CSP
ms.assetid: F1627B57-0749-47F6-A066-677FDD3D7359
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 02/23/2018
---

# Update CSP

The Update configuration service provider enables IT administrators to manage and control the rollout of new updates.

The following diagram shows the Update configuration service provider in tree format.

![update csp diagram](images/provisioning-csp-update.png)

<a href="" id="update"></a>**Update**
<p style="margin-left: 20px">The root node.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="approvedupdates"></a>**ApprovedUpdates**
<p style="margin-left: 20px">Node for update approvals and EULA acceptance on behalf of the end-user.

> [!NOTE]
> When the RequireUpdateApproval policy is set, the MDM uses the ApprovedUpdates list to pass the approved GUIDs. These GUIDs should be a subset of the InstallableUpdates list.

<p style="margin-left: 20px">The MDM must first present the EULA to IT and have them accept it before the update is approved. Failure to do this is a breach of legal or contractual obligations. The EULAs can be obtained from the update metadata and have their own EULA ID. It&#39;s possible for multiple updates to share the same EULA. It is only necessary to approve the EULA once per EULA ID, not one per update.

<p style="margin-left: 20px">The update approval list enables IT to approve individual updates and update classifications. Auto-approval by update classifications allows IT to automatically approve Definition Updates (i.e., updates to the virus and spyware definitions on devices) and Security Updates (i.e., product-specific updates for security-related vulnerability). The update approval list does not support the uninstallation of updates by revoking approval of already installed updates. Updates are approved based on UpdateID, and an UpdateID only needs to be approved once. An update UpdateID and RevisionNumber are part of the UpdateIdentity type. An UpdateID can be associated to several UpdateIdentity GUIDs due to changes to the RevisionNumber setting. MDM services must synchronize the UpdateIdentity of an UpdateID based on the latest RevisionNumber to get the latest metadata for an update. However, update approval is based on UpdateID.

> [!NOTE]
> For the Windows 10 build, the client may need to reboot after additional updates are added.

<p style="margin-left: 20px">Supported operations are Get and Add.

<a href="" id="approvedupdates-approved-update-guid"></a>**ApprovedUpdates/**<strong>*Approved Update Guid*</strong>
<p style="margin-left: 20px">Specifies the update GUID.

<p style="margin-left: 20px">To auto-approve a class of updates, you can specify the <a href="https://go.microsoft.com/fwlink/p/?LinkId=526723" data-raw-source="[Update Classifications](https://go.microsoft.com/fwlink/p/?LinkId=526723)">Update Classifications</a> GUIDs. We strongly recommend to always specify the DefinitionsUpdates classification (E0789628-CE08-4437-BE74-2495B842F43B), which are used for anti-malware signatures. There are released periodically (several times a day). Some businesses may also want to auto-approve security updates to get them deployed quickly.

<p style="margin-left: 20px">Supported operations are Get and Add.

<p style="margin-left: 20px">Sample syncml:
<p style="margin-left: 20px"><code>
<LocURI>./Vendor/MSFT/Update/ApprovedUpdates/%7ba317dafe-baf4-453f-b232-a7075efae36e%7d</LocURI>
</code>

<a href="" id="approvedupdates-approved-update-guid-approvedtime"></a>**ApprovedUpdates/*Approved Update Guid*/ApprovedTime**
<p style="margin-left: 20px">Specifies the time the update gets approved.

<p style="margin-left: 20px">Supported operations are Get and Add.

<a href="" id="failedupdates"></a>**FailedUpdates**
<p style="margin-left: 20px">Specifies the approved updates that failed to install on a device.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid"></a>**FailedUpdates/**<strong>*Failed Update Guid*</strong>
<p style="margin-left: 20px">Update identifier field of the UpdateIdentity GUID that represent an update that failed to download or install.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-hresult"></a>**FailedUpdates/*Failed Update Guid*/HResult**
<p style="margin-left: 20px">The update failure error code.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-status"></a>**FailedUpdates/*Failed Update Guid*/Status**
<p style="margin-left: 20px">Specifies the failed update status (for example, download, install).

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-revisionnumber"></a>**FailedUpdates/*Failed Update Guid*/RevisionNumber**
<p style="margin-left: 20px">Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installedupdates"></a>**InstalledUpdates**
<p style="margin-left: 20px">The updates that are installed on the device.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installedupdates-installed-update-guid"></a>**InstalledUpdates/**<strong>*Installed Update Guid*</strong>
<p style="margin-left: 20px">UpdateIDs that represent the updates installed on a device.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installedupdates-installed-update-guid-revisionnumber"></a>**InstalledUpdates/*Installed Update Guid*/RevisionNumber**
<p style="margin-left: 20px">Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installableupdates"></a>**InstallableUpdates**
<p style="margin-left: 20px">The updates that are applicable and not yet installed on the device. This includes updates that are not yet approved.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid"></a>**InstallableUpdates/**<strong>*Installable Update Guid*</strong>
<p style="margin-left: 20px">Update identifiers that represent the updates applicable and not installed on a device.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid-type"></a>**InstallableUpdates/*Installable Update Guid*/Type**
<p style="margin-left: 20px">The UpdateClassification value of the update. Valid values are:

-   0 - None
-   1 - Security
-   2 = Critical

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid-revisionnumber"></a>**InstallableUpdates/*Installable Update Guid*/RevisionNumber**
<p style="margin-left: 20px">The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="pendingrebootupdates"></a>**PendingRebootUpdates**
<p style="margin-left: 20px">The updates that require a reboot to complete the update session.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid"></a>**PendingRebootUpdates/**<strong>*Pending Reboot Update Guid*</strong>
<p style="margin-left: 20px">Update identifiers for the pending reboot state.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid-installedtime"></a>**PendingRebootUpdates/*Pending Reboot Update Guid*/InstalledTime**
<p style="margin-left: 20px">The time the update is installed.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid-revisionnumber"></a>**PendingRebootUpdates/*Pending Reboot Update Guid*/RevisionNumber**
<p style="margin-left: 20px">Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="lastsuccessfulscantime"></a>**LastSuccessfulScanTime**
<p style="margin-left: 20px">The last successful scan time.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="deferupgrade"></a>**DeferUpgrade**
<p style="margin-left: 20px">Upgrades deferred until the next period.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="rollback"></a>**Rollback**
Added in Windows 10, version 1803. Node for the rollback operations.

<a href="" id="rollback-qualityupdate"></a>**Rollback/QualityUpdate**
Added in Windows 10, version 1803. Roll back latest Quality Update, if the machine meets the following conditions:

-  Condition 1: Device must be Windows Update for Business Connected
-  Condition 2: Device must be in a Paused State
-  Condition 3: Device must have the Latest Quality Update installed on the device (Current State)

If the conditions are not true, the device will not Roll Back the Latest Quality Update.

<a href="" id="rollback-featureupdate"></a>**Rollback/FeatureUpdate**
Added in Windows 10, version 1803. Roll Back Latest Feature Update, if the machine meets the following conditions:

-  Condition 1: Device must be Windows Update for Business Connnected
-  Condition 2: Device must be in Paused State
-  Condition 3: Device must have the Latest Feature Update Installed on the device (Current State)
-  Condition 4: Machine should be within the uninstall period

> [!Note]
> This only works for Semi Annual Channel Targeted devices.

If the conditions are not true, the device will not Roll Back the Latest Feature Update.


<a href="" id="rollback-qualityupdatestatus"></a>**Rollback/QualityUpdateStatus**
Added in Windows 10, version 1803. Returns the result of last RollBack QualityUpdate operation.

<a href="" id="rollback-featureupdatestatus"></a>**Rollback/FeatureUpdateStatus**
Added in Windows 10, version 1803. Returns the result of last RollBack FeatureUpdate operation.

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






