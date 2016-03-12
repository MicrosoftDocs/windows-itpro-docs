---
title: Active Directory Based Activation Overview (Windows 10)
description: Active Directory Based Activation Overview
MSHAttr: PreferredLib /library
ms.assetid: c1dac3bd-6a86-4c45-83dd-421e63a398c0
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# Active Directory-Based Activation Overview


Active Directory-Based Activation (ADBA) enables enterprises to activate computers through a connection to their domain. Many companies have computers at offsite locations that use products that are registered to the company. Previously these computers needed to either use a retail key or a Multiple Activation Key (MAK), or physically connect to the network in order to activate their products by using Key Management Services (KMS). ADBA provides a way to activate these products if the computers can join the company’s domain. When the user joins their computer to the domain, the ADBA object automatically activates Windows installed on their computer, as long as the computer has a Generic Volume License Key (GVLK) installed. No single physical computer is required to act as the activation object, because it is distributed throughout the domain.

## Active Directory-Based Activation Scenarios


VAMT enables IT Professionals to manage and activate the Active Directory-Based Activation object. Activation can be performed by using a scenario such as the following:

-   Online activation: To activate an ADBA forest online, the user selects the **Online activate forest** function, selects a KMS Host key (CSVLK) to use, and gives the Active Directory-Based Activation Object a name.

-   Proxy activation: For a proxy activation, the user first selects the **Proxy activate forest** function, selects a KMS Host key (CSVLK) to use, gives the Active Directory-Based Activation Object a name, and provides a file name to save the CILx file that contains the Installation ID. Next, the user takes that file to a computer that is running VAMT with an Internet connection and then selects the **Acquire confirmation IDs for CILX** function on the VAMT landing page, and provides the original CILx file. When VAMT has loaded the Confirmation IDs into the original CILx file, the user takes this file back to the original VAMT instance, where the user completes the proxy activation process by selecting the **Apply confirmation ID to Active Directory domain** function.

## Related topics


[How to Activate an Active Directory Forest Online](http://go.microsoft.com/fwlink/p/?LinkId=246565)

[How to Proxy Activate an Active Directory Forest](http://go.microsoft.com/fwlink/p/?LinkId=246566)

 

 





