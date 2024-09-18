---
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.service: windows-client
ms.subservice: autopatch
ms.topic: include
ms.date: 09/16/2024
ms.localizationpriority: medium
---
<!--This file is shared by windows-autopatch-driver-and-firmware-programmatic-controls.md, windows-autopatch-troubleshoot-programmatic-controls.md, and the deployment-service-prerequisites.md articles. Headings may be driven by article context. 7512398 -->

It's possible for the service to receive content approval but the content doesn't get installed on the device because of a Group Policy, CSP, or registry setting on the device. In some cases, organizations specifically configure these policies to fit their current or future needs. For instance, organizations may want to review applicable driver content, but not allow installation. Configuring this sort of behavior can be useful, especially when transitioning management of driver updates due to changing organizational needs. The following list describes driver related update policies that can affect deployments: 

### Policies that exclude drivers from Windows Update for a device

The following policies exclude drivers from Windows Update for a device:

- **Locations of policies that exclude drivers**:
  -  **Group Policy**: `\Windows Components\Windows Update\Do not include drivers with Windows Updates` set to `enabled`
  - **CSP**: [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-csp-update#excludewudriversinqualityupdate) set to `1`
  - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversFromQualityUpdates` set to `1`
  - **Intune**: [**Windows Drivers** update setting](/mem/intune/protect/windows-update-settings#update-settings) for the update ring set to `Block` 

**Behavior**: Devices with driver exclusion polices that are enrolled for **drivers** and added to an audience:
  - Will display the applicable driver content
  - Won't install drivers that are approved
    - If drivers are deployed to a device that's blocking them, Windows Autopatch displays the driver is being offered and reporting displays the install is pending.

### Policies that define the source for driver updates

The following policies define the source for driver updates as either Windows Update or Windows Server Update Service (WSUS):

- **Locations of policies that define an update source**:
  -  **Group Policy**: `\Windows Components\Windows Update\Manage updates offered from Windows Server Update Service\Specify source service for specific classes of Windows Updates` set to `enabled` with the `Driver Updates` option set to `Windows Update`
  - **CSP**: [SetPolicyDrivenUpdateSourceForDriverUpdates](/windows/client-management/mdm/policy-csp-update#setpolicydrivenupdatesourcefordriverupdates) set to `0` for Windows Update as the source
  - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetPolicyDrivenUpdateSourceForDriverUpdates` set to `0`. Under `\AU`, `UseUpdateClassPolicySource` also needs to be set to `1`
  - **Intune**: Not applicable. Intune deploys updates using Windows Update for Business. [Co-managed clients from Configuration Manager](/mem/configmgr/comanage/overview?toc=/mem/configmgr/cloud-attach/toc.json&bc=/mem/configmgr/cloud-attach/breadcrumb/toc.json) with the workload for Windows Update policies set to Intune will also use Windows Update for Business.

**Behavior**: Devices with these update source policies that are enrolled for **drivers** and added to an audience:
  - Will display the applicable driver content
  - Will install drivers that are approved

> [!NOTE]
> When the scan source for drivers is set to WSUS, Windows Autopatch doesn't get inventory events from devices. This means that Windows Autopatch won't be able to report the applicability of a driver for the device.
