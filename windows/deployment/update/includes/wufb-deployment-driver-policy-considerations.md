---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.subservice: itpro-updates
ms.service: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md, deployment-service-troubleshoot.md, and the deployment-service-prerequisites.md articles. Headings may be driven by article context. 7512398 -->

It's possible for the service to receive content approval but the content doesn't get installed on the device because of a Group Policy, CSP, or registry setting on the device. In some cases, organizations specifically configure these policies to fit their current or future needs. For instance, organizations may want to review applicable driver content through the deployment service, but not allow installation. Configuring this sort of behavior can be useful, especially when transitioning management of driver updates due to changing organizational needs. The following list describes driver related update policies that can affect deployments through the deployment service: 

### Policies that exclude drivers from Windows Update for a device

The following policies exclude drivers from Windows Update for a device:

- **Locations of policies that exclude drivers**:
  -  **Group Policy**: `\Windows Components\Windows Update\Do not include drivers with Windows Updates` set to `enabled`
  - **CSP**: [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-csp-update#excludewudriversinqualityupdate) set to `1`
  - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversFromQualityUpdates` set to `1`
  - **Intune**: [**Windows Drivers** update setting](/mem/intune/protect/windows-update-settings#update-settings) for the update ring set to `Allow` 

**Behavior with the deployment service**: Devices with driver exclusion polices that are enrolled for **drivers** and added to an audience though the deployment service:
  - Will display the applicable driver content in the deployment service
  - Won't install drivers that are approved from the deployment service
    - If drivers are deployed to a device that's blocking them, the deployment service displays the driver is being offered and reporting displays the install is pending.

### Policies that define the source for driver updates

The following policies define the source for driver updates as either Windows Update or Windows Server Update Service (WSUS):

- **Locations of policies that define an update source**:
  -  **Group Policy**: `\Windows Components\Windows Update\Manage updates offered from Windows Server Update Service\Specify source service for specific classes of Windows Updates` set to `enabled` with the `Driver Updates` option set to `Windows Update`
  - **CSP**: [SetPolicyDrivenUpdateSourceForDriverUpdates](/windows/client-management/mdm/policy-csp-update#setpolicydrivenupdatesourcefordriverupdates) set to `0` for Windows Update as the source
  - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetPolicyDrivenUpdateSourceForDriverUpdates` set to `0`. Under `\AU`, `UseUpdateClassPolicySource` also needs to be set to `1`
  - **Intune**: Not applicable. Intune deploys updates using Windows Update for Business. [Co-managed clients from Configuration Manager](/mem/configmgr/comanage/overview?toc=/mem/configmgr/cloud-attach/toc.json&bc=/mem/configmgr/cloud-attach/breadcrumb/toc.json) with the workload for Windows Update policies set to Intune will also use Windows Update for Business.

**Behavior with the deployment service**: Devices with these update source policies that are enrolled for **drivers** and added to an audience though the deployment service:
  - Will display the applicable driver content in the deployment service
  - Will install drivers that are approved from the deployment service

> [!NOTE] 
> When the scan source for drivers is set to WSUS, the deployment service doesn't get inventory events from devices. This means that the deployment service won't be able to report the applicability of a driver for the device. 