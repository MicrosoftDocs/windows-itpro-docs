---
title: Update CSP
description: Learn how the Update configuration service provider (CSP) enables IT administrators to manage and control the rollout of new updates.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 02/23/2018
---

# Update CSP

The Update configuration service provider enables the IT administrators to manage and control the rollout of new updates.

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


> [!NOTE]
> The Update CSP functionality of 'ApprovedUpdates' is not recommended for managing desktop devices. To manage updates to desktop devices from Windows Update, see the [Policy CSP - Updates](policy-csp-update.md) documentation for the recommended policies.

The following example shows the Update configuration service provider in tree format.

```
./Vendor/MSFT/Update
----ApprovedUpdates
--------Approved Update Guid
------------ApprovedTime
----FailedUpdates
--------Failed Update Guid
------------HResult
------------Status
------------RevisionNumber
----InstalledUpdates
--------Installed Update Guid
------------RevisionNumber
----InstallableUpdates
--------Installable Update Guid
------------Type
------------RevisionNumber
----PendingRebootUpdates
--------Pending Reboot Update Guid
------------InstalledTime
------------RevisionNumber
----LastSuccessfulScanTime
----DeferUpgrade
----Rollback
--------QualityUpdate
--------FeatureUpdate
--------QualityUpdateStatus
--------FeatureUpdateStatus
```

<a href="" id="update"></a>**./Vendor/MSFT/Update**
<p>The root node.

<p>Supported operation is Get.

<a href="" id="approvedupdates"></a>**ApprovedUpdates**
<p>Node for update approvals and EULA acceptance on behalf of the end-user.

> [!NOTE]
> When the RequireUpdateApproval policy is set, the MDM uses the ApprovedUpdates list to pass the approved GUIDs. These GUIDs should be a subset of the InstallableUpdates list.

<p>The MDM must first present the EULA to IT and have them accept it before the update is approved. Failure to do this is a breach of legal or contractual obligations. The EULAs can be obtained from the update metadata and have their own EULA ID. It's possible for multiple updates to share the same EULA. It is only necessary to approve the EULA once per EULA ID, not one per update.

<p>The update approval list enables IT to approve individual updates and update classifications. Auto-approval by update classifications allows IT to automatically approve Definition Updates (that is, updates to the virus and spyware definitions on devices) and Security Updates (that is, product-specific updates for security-related vulnerability). The update approval list doesn't support the uninstallation of updates by revoking approval of already installed updates. Updates are approved based on UpdateID, and an UpdateID only needs to be approved once. An update UpdateID and RevisionNumber are part of the UpdateIdentity type. An UpdateID can be associated to several UpdateIdentity GUIDs due to changes to the RevisionNumber setting. MDM services must synchronize the UpdateIdentity of an UpdateID based on the latest RevisionNumber to get the latest metadata for an update. However, update approval is based on UpdateID.

> [!NOTE]
> For the Windows 10 build, the client may need to reboot after additional updates are added.

<p>Supported operations are Get and Add.

<a href="" id="approvedupdates-approved-update-guid"></a>**ApprovedUpdates/_Approved Update Guid_**
<p>Specifies the update GUID.

<p>To auto-approve a class of updates, you can specify the <a href="/previous-versions/windows/desktop/ff357803(v=vs.85)" data-raw-source="[Update Classifications](/previous-versions/windows/desktop/ff357803(v=vs.85))">Update Classifications</a> GUIDs. We strongly recommend to always specify the DefinitionsUpdates classification (E0789628-CE08-4437-BE74-2495B842F43B), which are used for anti-malware signatures. These GUIDs are released periodically (several times a day). Some businesses may also want to auto-approve security updates to get them deployed quickly.

<p>Supported operations are Get and Add.

<p>Sample syncml:

```
<LocURI>./Vendor/MSFT/Update/ApprovedUpdates/%7ba317dafe-baf4-453f-b232-a7075efae36e%7d</LocURI>
```

<a href="" id="approvedupdates-approved-update-guid-approvedtime"></a>**ApprovedUpdates/*Approved Update Guid*/ApprovedTime**
<p>Specifies the time the update gets approved.

<p>Supported operations are Get and Add.

<a href="" id="failedupdates"></a>**FailedUpdates**
<p>Specifies the approved updates that failed to install on a device.

<p>Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid"></a>**FailedUpdates/_Failed Update Guid_**
<p>Update identifier field of the UpdateIdentity GUID that represents an update that failed to download or install.

<p>Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-hresult"></a>**FailedUpdates/*Failed Update Guid*/HResult**
<p>The update failure error code.

<p>Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-status"></a>**FailedUpdates/*Failed Update Guid*/Status**
<p>Specifies the failed update status (for example, download, install).

<p>Supported operation is Get.

<a href="" id="failedupdates-failed-update-guid-revisionnumber"></a>**FailedUpdates/*Failed Update Guid*/RevisionNumber**
<p>Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p>Supported operation is Get.

<a href="" id="installedupdates"></a>**InstalledUpdates**
<p>The updates that are installed on the device.

<p>Supported operation is Get.

<a href="" id="installedupdates-installed-update-guid"></a>**InstalledUpdates/_Installed Update Guid_**
<p>UpdateIDs that represent the updates installed on a device.

<p>Supported operation is Get.

<a href="" id="installedupdates-installed-update-guid-revisionnumber"></a>**InstalledUpdates/*Installed Update Guid*/RevisionNumber**
<p>Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p>Supported operation is Get.

<a href="" id="installableupdates"></a>**InstallableUpdates**
<p>The updates that are applicable and not yet installed on the device. These updates include updates that aren't yet approved.

<p>Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid"></a>**InstallableUpdates/_Installable Update Guid_**
<p>Update identifiers that represent the updates applicable and not installed on a device.

<p>Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid-type"></a>**InstallableUpdates/*Installable Update Guid*/Type**
<p>The UpdateClassification value of the update. Valid values are:

- 0 - None
- 1 - Security
- 2 - Critical

<p>Supported operation is Get.

<a href="" id="installableupdates-installable-update-guid-revisionnumber"></a>**InstallableUpdates/*Installable Update Guid*/RevisionNumber**
<p>The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p>Supported operation is Get.

<a href="" id="pendingrebootupdates"></a>**PendingRebootUpdates**
<p>The updates that require a reboot to complete the update session.

<p>Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid"></a>**PendingRebootUpdates/_Pending Reboot Update Guid_**
<p>Update identifiers for the pending reboot state.

<p>Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid-installedtime"></a>**PendingRebootUpdates/*Pending Reboot Update Guid*/InstalledTime**
<p>The time the update is installed.

<p>Supported operation is Get.

<a href="" id="pendingrebootupdates-pending-reboot-update-guid-revisionnumber"></a>**PendingRebootUpdates/*Pending Reboot Update Guid*/RevisionNumber**
<p>Added in Windows 10, version 1703. The revision number for the update that must be passed in server to server sync to get the metadata for the update.

<p>Supported operation is Get.

<a href="" id="lastsuccessfulscantime"></a>**LastSuccessfulScanTime**
<p>The last successful scan time.

<p>Supported operation is Get.

<a href="" id="deferupgrade"></a>**DeferUpgrade**
<p>Upgrades deferred until the next period.

<p>Supported operation is Get.

<a href="" id="rollback"></a>**Rollback**
Added in Windows 10, version 1803. Node for the rollback operations.

<a href="" id="rollback-qualityupdate"></a>**Rollback/QualityUpdate**
Added in Windows 10, version 1803. Roll back latest Quality Update, if the machine meets the following conditions:

- Condition 1: Device must be Windows Update for Business Connected
- Condition 2: Device must be in a Paused State
- Condition 3: Device must have the Latest Quality Update installed on the device (Current State)

If the conditions aren't true, the device won't Roll Back the Latest Quality Update.

<a href="" id="rollback-featureupdate"></a>**Rollback/FeatureUpdate**
Added in Windows 10, version 1803. Roll Back Latest Feature Update, if the machine meets the following conditions:

- Condition 1: Device must be Windows Update for Business Connected
- Condition 2: Device must be in Paused State
- Condition 3: Device must have the Latest Feature Update Installed on the device (Current State)
- Condition 4: Machine should be within the uninstall period

> [!NOTE]
> This only works for General Availability Channel Targeted devices.

If the conditions aren't true, the device won't Roll Back the Latest Feature Update.

<a href="" id="rollback-qualityupdatestatus"></a>**Rollback/QualityUpdateStatus**
Added in Windows 10, version 1803. Returns the result of last RollBack QualityUpdate operation.

<a href="" id="rollback-featureupdatestatus"></a>**Rollback/FeatureUpdateStatus**
Added in Windows 10, version 1803. Returns the result of last RollBack FeatureUpdate operation.

## Related topics

[Configuration service provider reference](index.yml)
