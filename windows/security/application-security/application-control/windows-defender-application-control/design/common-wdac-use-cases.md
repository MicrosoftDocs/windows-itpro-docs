---
title: Policy creation for common WDAC usage scenarios
description: Develop a plan for deploying Windows Defender Application Control (WDAC) in your organization based on these common scenarios.
ms.localizationpriority: medium
ms.date: 04/05/2023
ms.topic: conceptual
---

# Windows Defender Application Control deployment in different scenarios: types of devices

> [!NOTE]
> Some capabilities of Windows Defender Application Control (WDAC) are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

Typically, deployment of Windows Defender Application Control (WDAC) happens best in phases, rather than being a feature that you simply "turn on." The choice and sequence of phases depends on the way various computers and other devices are used in your organization, and to what degree IT manages those devices. The following table can help you begin to develop a plan for deploying WDAC in your organization. It's common for organizations to have device use cases across each of the categories described.

## Types of devices

|  Type of device                 | How WDAC relates to this type of device  |
|------------------------------------|------------------------------------------------------|
| **Lightly managed devices**: Company-owned, but users are free to install software.<br>Devices are required to run organization's antivirus solution and client management tools. | Windows Defender Application Control can be used to help protect the kernel, and to monitor (audit) for problem applications rather than limiting the applications that can be run. |
| **Fully managed devices**: Allowed software is restricted by IT department.<br>Users can request for more software, or install from a list of applications provided by IT department.<br>Examples: locked-down, company-owned desktops and laptops. | An initial baseline Windows Defender Application Control policy can be established and enforced. Whenever the IT department approves more applications, it updates the WDAC policy and (for unsigned LOB applications) the catalog. |
| **Fixed-workload devices**: Perform same tasks every day.<br>Lists of approved applications rarely change.<br>Examples: kiosks, point-of-sale systems, call center computers. | Windows Defender Application Control can be deployed fully, and deployment and ongoing administration are relatively straightforward.<br>After Windows Defender Application Control deployment, only approved applications can run. This rule is because of protections offered by WDAC. |
| **Bring Your Own Device**: Employees are allowed to bring their own devices, and also use those devices away from work. | In most cases, Windows Defender Application Control doesn't apply. Instead, you can explore other hardening and security features with MDM-based conditional access solutions, such as Microsoft Intune. However, you may choose to deploy an audit-mode policy to these devices or employ a blocklist only policy to prevent specific apps or binaries that are considered malicious or vulnerable by your organization. |

## An introduction to Lamna Healthcare Company

In the next set of articles, we'll explore each of the above scenarios using a fictional organization called Lamna Healthcare Company.

Lamna Healthcare Company (Lamna) is a large healthcare provider operating in the United States. Lamna employs thousands of people, from doctors and nurses to accountants, in-house lawyers, and IT technicians. Their device use cases are varied and include single-user workstations for their professional staff, shared kiosks used by doctors and nurses to access patient records, dedicated medical devices such as MRI scanners, and many others. Additionally, Lamna has a relaxed, bring-your-own-device policy for many of their professional staff.

Lamna uses [Microsoft Intune](https://www.microsoft.com/microsoft-365/microsoft-endpoint-manager) in hybrid mode with both Configuration Manager and Intune. Although they use Microsoft Intune to deploy many applications, Lamna has always had relaxed application usage practices: individual teams and employees have been able to install and use any applications they deem necessary for their role on their own workstations. Lamna also recently started to use [Microsoft Defender for Endpoint](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp) for better endpoint detection and response.

Recently, Lamna experienced a ransomware event that required an expensive recovery process and may have included data exfiltration by the unknown attacker. Part of the attack included installing and running malicious binaries that evaded detection by Lamna's antivirus solution but would have been blocked by an application control policy. In response, Lamna's executive board has authorized many new security IT responses, including tightening policies for application use and introducing application control.

## Up next

- [Create a Windows Defender Application Control policy for lightly managed devices](create-wdac-policy-for-lightly-managed-devices.md)
