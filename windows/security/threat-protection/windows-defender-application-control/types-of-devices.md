---
title: types of devices (Windows 10)
description: Typically, deployment of Windows Defender Application Control happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/01/2018
---

# Windows Defender Application Control deployment in different scenarios: types of devices

**Applies to**
-   Windows 10
-   Windows Server 2016

Typically, deployment of Windows Defender Application Control (WDAC) happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying WDAC in your organization.

| **Type of device**                 | **How WDAC relates to this type of device**  | 
|------------------------------------|------------------------------------------------------|
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | WDAC can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After WDAC deployment, only approved applications can run. This is because of protections offered by WDAC. | 
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request additional software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline WDAC policy can be established and enforced. Whenever the IT department approves additional applications, it will update the WDAC policy and (for unsigned LOB applications) the catalog.<br>WDAC policies are supported by the HVCI service. | 
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | WDAC can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. | 
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | WDAC does not apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. | 


## Related topics

- [Windows Defender Application Control Design Guide](windows-defender-application-control-design-guide.md)
- [Windows Defender Application Control Deployment Guide](windows-defender-application-control-deployment-guide.md)


