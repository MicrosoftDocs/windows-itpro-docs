---
title: Activate an Active Directory Forest Online (Windows 10)
description: Activate an Active Directory Forest Online
ms.assetid: 9b5bc193-799b-4aa5-9d3e-0e495f7195d3
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Activate an Active Directory Forest Online

You can use the Volume Activation Management Tool (VAMT) Active Directory-Based Activation (ADBA) function to activate an Active Directory (AD) forest over the Internet. ADBA enables certain products to inherit activation from the domain.

**Important**  
ADBA is only applicable to Generic Volume License Keys (GVLKs) and KMS Host keys (CSVLKs). To use ADBA, one or more KMS Host keys (CSVLKs) must be installed on the AD forest, and client keys (GVLKs) must be installed on the client products.

## Requirements

Before performing online activation, ensure that the network and the VAMT installation meet the following requirements:
-   VAMT is installed on a host computer that has Internet access.
-   VAMT has administrative permissions to the Active Directory domain.
-   The KMS Host key (CSVLK) you intend to use is added to VAMT in the **Product Keys** node.

**To perform an online Active Directory forest activation**

1.  Open VAMT.
2.  In the left-side pane, click the **Active Directory-Based Activation** node.
3.  In the right-side **Actions** pane, click **Online activate forest** to open the **Install Product Key** dialog box.
4.  In the **Install Product Key** dialog box, select the KMS Host key (CSVLK) that you want to apply to the AD forest.
5.  If required, enter a new Active Directory-Based Activation Object name

    **Important**  
    If you want to rename the ADBA object, you must do it now. After you click **Install Key**, the name cannot be changed.

6.  Click **Install Key**.
7.  VAMT displays the **Activating Active Directory** dialog box until it completes the requested action.

The activated object and the date that is was created appear in the **Active Directory-Based Activation** node in the center pane.

## Related topics

- [Scenario 1: Online Activation](scenario-online-activation-vamt.md)
- [Add and Remove Computers](add-remove-computers-vamt.md)
