---
title: Gathering Information about Your Active Directory Deployment (Windows 10)
description: Gathering Information about Your Active Directory Deployment
ms.assetid: b591b85b-12ac-4329-a47e-bc1b03e66eb0
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/17/2017
---

# Gathering Information about Your Active Directory Deployment

**Applies to**
-   Windows 10
-   Windows Server 2016

Active Directory is another important item about which you must gather information. You must understand the forest structure. This includes domain layout, organizational unit (OU) architecture, and site topology. This information makes it possible to know where devices are currently placed, their configuration, and the impact of changes to Active Directory that result from implementing Windows Defender Firewall with Advanced Security. Review the following list for information needed:

-   **Names and number of forests**. The forest (not the domain) is the security boundary in an Active Directory implementation. You must understand the current Active Directory architecture to determine the most effective strategy for deploying your firewall and connection security rules using Group Policy. It also enables you to understand which devices can be isolated and how best to accomplish the required degree of isolation.

-   **Names and number of domains**. Authentication in server and domain isolation uses the IKE negotiation process with the Kerberos V5 protocol. This protocol assumes that devices are domain members.

-   **Number and types of trusts**. Trusts affect the logical boundaries of domain isolation and define whether IKE negotiation can occur between devices in different Active Directory domains.

-   **Names and number of sites**. Site architecture is usually aligned with the network topology. Understanding how sites are defined in Active Directory will help provide insight into replication and other details. Site architecture can provide a better understanding of the current Active Directory deployment.

-   **OU structure**. OUs are logical constructs and can therefore be molded to fit many different requirements and goals. The OU structure is an ideal place to examine how Group Policy is currently used and how the OUs are laid out. You do not have to redesign an already implemented OU structure in order to effectively deploy firewall and connection security policy, but an understanding of the structure helps you know what WMI or group filtering is required to apply each GPO to the correct devices.

-   **Existing IPsec policy**. Because this project culminates in the implementation of IPsec policy, you must understand how the network currently uses IPsec (if at all). Windows Defender Firewall connection security rules for versions of Windows prior to Windows Vista and Windows Server 2008 are not compatible with earlier versions of Windows. If you already have IPsec policies deployed to devices running Windows XP and Windows Server 2003 in your organization, you must ensure that the new IPsec policies you deploy enable devices using either the old or new IPsec policies to communicate with each other.

**Next:** [Gathering Information about Your Devices](gathering-information-about-your-devices.md)
