---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md, deployment-service-troubleshoot.md, and the deployment-service-prerequisites.md articles. Headings may be driven by article context. 7512398 -->

It's possible for the service to receive content approval but the content doesn't get installed on the device because of a Group Policy, CSP, or registry setting on the device. In some cases, organizations specifically configure these policies to fit their current or future needs. For instance, organizations may want to review applicable driver content through the deployment service, but not allow installation. Configuring this sort of behavior can be useful, especially when transitioning management of driver updates due to changing organizational needs. The following table describes driver related update policies that can affect deployments through the deployment service: 

| Description of policies | Locations | Behavior with the deployment service|
|---|---|---| 
| Policies that exclude drivers from Windows Update for a device | - **Group Policy**: `\Windows Components\Windows Update\Do not include drivers with Windows Updates` set to `enabled` </br> - **CSP**: [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-csp-update#excludewudriversinqualityupdate) set to `1`  </br> - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ExcludeWUDriversFromQualityUpdates` set to `1`</br> - **Intune**: [**Windows Drivers** update setting](/mem/intune/protect/windows-update-settings#update-settings) for the update ring set to `Allow` | Devices that are enrolled for **drivers** and added to an audience though the deployment service: </br></br> - Won't install drivers that are approved from the deployment service </br> - Will display the applicable driver content in the deployment service  | 
| Policies that define the source for driver updates as either Windows Update or Windows Server Update Service (WSUS)|  - **Group Policy**: `\Windows Components\Windows Update\Manage updates offered from Windows Server Update Service\Specify source service for specific classes of Windows Updates` set to `enabled` with the `Driver Updates` option set to `Windows Update`</br> - **CSP**: [SetPolicyDrivenUpdateSourceForDriverUpdates](/windows/client-management/mdm/policy-csp-update#setpolicydrivenupdatesourcefordriverupdates) set to `0` for Windows Update as the source</br> - **Registry**:  `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\SetPolicyDrivenUpdateSourceForDriverUpdates` set to `0`. Under `\AU`, `UseUpdateClassPolicySource` also needs to be set to `1`</br> - **Intune**: Not applicable. Intune deploys updates using Windows Update for Business. [Co-managed clients from Configuration Manager](/mem/configmgr/comanage/overview?toc=/mem/configmgr/cloud-attach/toc.json&bc=/mem/configmgr/cloud-attach/breadcrumb/toc.json) with the workload for Windows Update policies set to Intune will also use Windows Update for Business. | Devices that are enrolled for **drivers** and added to an audience though the deployment service: </br></br> - Will display the applicable driver content in the deployment service </br> - Will install drivers that are approved from the deployment service  | 
