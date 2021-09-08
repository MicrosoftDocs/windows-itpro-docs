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

Windows 11 supports MDM, an enterprise management solution to help you manage your organization's security policies and business applications. MDM enables your security team to manage devices without compromising people's privacy on their personal devices.

Windows 11 includes a management component that includes:

- The enrollment client, which enrolls and configures the endpoint to communicate with the enterprise management server; and
- The management client, which periodically synchronizes with the management server to check for updates and apply your security team's latest policies.

## MDM features and capabilities

MDM includes several security features & capabilities. These include:
- Remote wipe
- Support for your work or school account
- Config Lock
- Remote device attestation
- (other stuff coming soon): Device Installation, DMA Guard, Endpoint Detection and Response, the Microsoft Defender Security Center, Smartscreen, System Guard, and Windows Hello for Business

## Support for non-Microsoft MDM servers

Non-Microsoft MDM servers can be used to manage Windows 11 by using industry standard protocols. The built-in management client can communicate with a third-party server proxy that supports the MDM protocols to perform enterprise management tasks. The third-party server will have the same consistent first-party user experience for enrollment, which also provides simplicity for Windows 11 users. MDM servers do not need to create or download a client to manage Windows 11. 

For details about the MDM protocols, the following resources:

- [MS-MDM: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f) 
- [MS-MDE2: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692)

## Security baselines

Windows 11 can be configured with the Microsoft MDM security baseline backed by ADMX policies, which functions like the Microsoft GP-based security baseline. Security baseline enables IT admins to easily integrate this baseline into any MDM, addressing security concerns and compliance needs for modern cloud-managed devices.

The MDM security baseline includes policies that cover the following areas:

- Microsoft inbox security technology (not deprecated) such as BitLocker, Windows Defender SmartScreen, and Virtual-based security, Exploit Guard, Defender, and Firewall
- Restricting remote access to devices
- Setting credential requirements for passwords and PINs
- Restricting use of legacy technology
- Legacy technology policies that offer alternative solutions with modern technology
