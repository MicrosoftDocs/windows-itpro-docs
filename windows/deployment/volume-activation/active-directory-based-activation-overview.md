---
title: Active Directory-Based Activation Overview (Windows 10)
description: Active Directory-Based Activation Overview
ms.assetid: c1dac3bd-6a86-4c45-83dd-421e63a398c0
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 12/07/2018
ms.topic: article
---

# Active Directory-Based Activation overview

Active Directory-Based Activation (ADBA) enables enterprises to activate computers through a connection to their domain. Many companies have computers at offsite locations that use products that are registered to the company. Previously these computers needed to either use a retail key or a Multiple Activation Key (MAK), or physically connect to the network in order to activate their products by using Key Management Services (KMS). ADBA provides a way to activate these products if the computers can join the company’s domain. When the user joins their computer to the domain, the ADBA object automatically activates Windows installed on their computer, as long as the computer has a Generic Volume License Key (GVLK) installed. No single physical computer is required to act as the activation object, because it is distributed throughout the domain.

## ADBA scenarios

You might use ADBA if you only want to activate domain joined devices.

If you have a server hosting the KMS service, it can be necessary to reactivate licenses if the server is replaced with a new host. This is not necessary When ADBA is used. 

ADBA can also make load balancing easier when multiple KMS servers are present since the client can connect to any domain controller. This is simpler than using the DNS service to load balance by configuring priority and weight values.

Some VDI solutions also require that new clients activate during creation before they are added to the pool. In this scenario, ADBA can eliminate potential VDI issues that might arise due to a KMS outage. 


## ADBA methods

VAMT enables IT Professionals to manage and activate the ADBA object. Activation can be performed using the following methods:
-   Online activation: To activate an ADBA forest online, the user selects the **Online activate forest** function, selects a KMS Host key (CSVLK) to use, and gives the ADBA Object a name.
-   Proxy activation: For a proxy activation, the user first selects the **Proxy activate forest** function, selects a KMS Host key (CSVLK) to use, gives the ADBA Object a name, and provides a file name to save the CILx file that contains the Installation ID. Next, the user takes that file to a computer that is running VAMT with an Internet connection and then selects the **Acquire confirmation IDs for CILX** function on the VAMT landing page, and provides the original CILx file. When VAMT has loaded the Confirmation IDs into the original CILx file, the user takes this file back to the original VAMT instance, where the user completes the proxy activation process by selecting the **Apply confirmation ID to Active Directory domain** function.

## Related topics

- [How to Activate an Active Directory Forest Online](https://go.microsoft.com/fwlink/p/?LinkId=246565)
- [How to Proxy Activate an Active Directory Forest](https://go.microsoft.com/fwlink/p/?LinkId=246566)
 
 
