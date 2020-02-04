---
title: Common WDAC deployment scenarios (Windows 10)
description: Develop a plan for deploying Windows Defender Application Control (WDAC) in your organization, using these common scenarios.
keywords: whitelisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 03/01/2018
---

# Windows Defender Application Control deployment in different scenarios: types of devices

**Applies to**
-   Windows 10
-   Windows Server 2016 and above

Typically, deployment of Windows Defender Application Control (WDAC) happens best in phases, rather than being a feature that you simply “turn on.” The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying WDAC in your organization. It is very common for organizations to have device use cases across each of the categories described.

## Types of devices

| **Type of device**                 | **How WDAC relates to this type of device**  | 
|------------------------------------|------------------------------------------------------|
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | WDAC can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. | 
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request additional software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline WDAC policy can be established and enforced. Whenever the IT department approves additional applications, it will update the WDAC policy and (for unsigned LOB applications) the catalog.<br>WDAC policies are supported by the HVCI service. | 
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | WDAC can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After WDAC deployment, only approved applications can run. This is because of protections offered by WDAC. | 
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | In most cases, WDAC does not apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. However, you may choose to deploy an audit-mode policy to these devices or employ a block-list only policy to prevent specific apps or binaries that are considered malicious or vulnerable by your organization. | 

## An introduction to Lamna Healthcare Company

In the next set of topics, we will explore each of the above scenarios using a fictional organization called Lamna Healthcare Company.

Lamna Healthcare Company (Lamna) is a large healthcare provider operating in the United States. Lamna employs thousands of people, from doctors and nurses to accountants, in-house lawyers, and IT technicians. Their device use cases are varied and include single-user workstations for their professional staff, shared kiosks used by doctors and nurses to access patient records, dedicated medical devices such as MRI scanners, and many others. Additionally, Lamna has a relaxed, bring-your-own-device policy for many of their professional staff.

Lamna uses [Microsoft Endpoint Manager](https://www.microsoft.com/microsoft-365/microsoft-endpoint-manager) (MEM) in hybrid mode with both Configuration Manager (MEMCM) and Intune. Although they use MEM to deploy many applications, Lamna has always had very relaxed application usage practices: individual teams and employees have been able to install and use any applications they deem necessary for their role on their own workstations. Lamna also recently started to use [Microsoft Defender Advanced Threat Protection](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp) (MDATP) for better endpoint detection and response.

> [!NOTE]
> Microsoft Endpoint Configuration Manager was previously known as System Center Configuration Manager. 

Recently, Lamna experienced a ransomware event that required an expensive recovery process and may have included data exfiltration by the unknown attacker. Part of the attack included installing and running malicious binaries that evaded detection by Lamna's antivirus solution but would have been blocked by an application control policy. In response, Lamna's executive board has authorized a number of new security IT responses, including tightening policies for application use and introducing application control.

## Up next

- [Create a WDAC policy for lightly-managed devices](create-wdac-policy-for-lightly-managed-devices.md)
