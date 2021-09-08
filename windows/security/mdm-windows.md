---
title: Modern device management and Windows 11
description: Get an overview of modern device management with Microsoft Endpoint Manager and Windows 11
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: conceptual
ms.date: 09/08/2021
ms.prod: w11
ms.localizationpriority: medium
ms.collection: 
ms.custom: 
ms.reviewer: 
f1.keywords: NOCSH 
---

# Modern device management and Windows 11

Windows 11 supports modern device management (MDM), an enterprise management solution to help you manage your organization's security policies and business applications. MDM enables your security team to manage devices without compromising people's privacy on their personal devices.

Windows 11 includes a management component that includes:

- The enrollment client, which enrolls and configures the endpoint to communicate with the enterprise management server; and
- The management client, which periodically synchronizes with the management server to check for updates and apply your security team's latest policies.

## MDM features and capabilities

MDM includes several security features & capabilities, as described in the following table:<br/><br/>

| Feature/capability | Description |
|:---|:---|
| Remote wipe | When a device is lost or stolen, IT admins can attempt to wipe it remotely and make the data stored in memory and hard disks difficult to recover. Help desk agents can also reset devices to fix issues that are encountered by remote workers.<br/><br/>Windows 10 and Windows 11 supports the remote wipe configuration service provider (CSP) so that MDM solutions can remotely initiate any of the following operations: <br/>- Reset the device and remove user accounts and data <br/>- Reset the device and clean the drive <br/>- Reset the device but persist user accounts and data |
| Support for your work or school account | Adding a work or school account enables people to connect their devices to your work environment. Devices can be joined to an Active Directory domain, an Azure Active Directory (Azure AD) domain, or by quickly provisioning corporate-owned devices so they meet your security and policy guidelines. <br/><br/>When a device is joined to Azure AD and managed with MDM, you get the following security benefits: <br/>- Fully managed user/device settings and policies by default<br/>- Single Sign On to all Microsoft online services<br/>- Password management capabilities (Windows Hello for Business)<br/>- Authentication using tokens<br/>- No use of consumer Microsoft Account identities | 
| Config Lock | Security teams and IT admins typically enforce policies on corporate devices to keep those devices in a compliant state, and protect the operating system from changes made by users.<br/><br/>When users who have local admin rights attempt to work around security policies, they run the risk of leaving the device in a non-compliant state called *config drift*. Config drift can introduce security risks until the next time the device syncs with MDM and the configuration is reset. In a worst-case scenario, correcting config drift could take up to eight hours. Many organizations consider config drift a security risk. <br/><br/> Windows 11 with Config Lock enables IT admins to remediate config drift and keep the operating system configuration to its proper state. The operating system monitors the registry keys that configures each feature and when a drift is detected, it will revert back to the IT desired state in seconds. <br/><br/>Config Lock works with Application Control, Application Guard, and BitLocker. |
| Remote device attestation | Attestation relies on the Trusted Platform Module (TPM) and measured boot capabilities to enhance the security provided by trusted boot. IT administrators can use available boot information to protect against boot-level attacks and misconfigurations. The Microsoft Azure Attestation service securely reports on device boot health, firmware security, and other low-level security features used for device compliance. Microsoft Azure Attestation is designed to be policy-configured, giving control of your enterprise's device health to the administrator, allowing them to deal with low-level threats with confidence. Windows 11 comes with MDM integration with Microsoft Azure Attestation, allowing MDM providers to use the attestation capabilities to trust and enhance device security. <br/><br/>Learn more about [Microsoft Azure Attestation](/azure/attestation). |
| (other stuff coming soon) | Device Installation, DMA Guard, Endpoint Detection and Response, the Microsoft Defender Security Center, Smartscreen, System Guard, and Windows Hello for Business |

## Security baselines

Windows 11 can be configured with the [Microsoft MDM security baseline](/mem/intune/protect/security-baseline-settings-mdm-all?pivots=mdm-december-2020) backed by ADMX policies, which functions like the Microsoft Group Policy security baseline. Security baselines enable security teams and IT admins to easily integrate this baseline into any MDM, addressing security concerns and compliance needs for modern cloud-managed devices.

The MDM security baseline includes policies that cover the following areas:

- Microsoft inbox security technology (such as BitLocker and Windows Defender SmartScreen), and Virtual-based security (exploit protection, Microsoft Defender Antivirus, and Windows Defender Firewall)
- Restricting remote access to devices
- Setting credential requirements for passwords and PINs
- Restricting the use of legacy technology
- Legacy technology policies that offer alternative solutions with modern technology


## Support for non-Microsoft MDM servers

Non-Microsoft MDM servers can be used to manage Windows 11 by using industry standard protocols. The built-in management client can communicate with a third-party server proxy that supports the MDM protocols to perform enterprise management tasks. The third-party server will have the same consistent first-party user experience for enrollment, which also provides simplicity for Windows 11 users. MDM servers do not need to create or download a client to manage Windows 11. 

For details about the MDM protocols, the following resources:

- [MS-MDM: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f) 
- [MS-MDE2: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692)

