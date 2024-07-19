---
title: Activate an Active Directory Forest Online (Windows 10)
description: Use the Volume Activation Management Tool (VAMT) Active Directory-Based Activation (ADBA) function to activate an Active Directory (AD) forest online.
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 11/07/2022
ms.topic: conceptual
ms.subservice: itpro-fundamentals
---

# Activate an Active Directory Forest Online

You can use the Volume Activation Management Tool (VAMT) Active Directory-Based Activation (ADBA) function to activate an Active Directory (AD) forest over the Internet. ADBA enables certain products to inherit activation from the domain.

> [!IMPORTANT]
> ADBA is only applicable to Generic Volume License Keys (GVLKs) and KMS Host keys (CSVLKs). To use ADBA, one or more KMS Host keys (CSVLKs) must be installed on the AD forest, and client keys (GVLKs) must be installed on the client products.

## Requirements

Before performing online activation, ensure that the network and the VAMT installation meet the following requirements:

- VAMT is installed on a host computer that has Internet access.

- VAMT has administrative permissions to the Active Directory domain.

- The KMS Host key (CSVLK) you intend to use is added to VAMT in the **Product Keys** node.

### To perform an online Active Directory forest activation

1. Open VAMT.

2. In the left-side pane, select the **Active Directory-Based Activation** node.

3. In the right-side **Actions** pane, select **Online activate forest** to open the **Install Product Key** dialog box.

4. In the **Install Product Key** dialog box, select the KMS Host key (CSVLK) that you want to apply to the AD forest.

5. If necessary, enter a new Active Directory-Based Activation Object name.

    > [!IMPORTANT]
    > If you want to rename the ADBA object, you must do it now. After you click **Install Key**, the name cannot be changed.

6. Select **Install Key**.

7. VAMT displays the **Activating Active Directory** dialog box until it completes the requested action.

The activated object and the date that it was created appear in the **Active Directory-Based Activation** node in the center pane.

## Related articles

- [Scenario 1: Online Activation](scenario-online-activation-vamt.md)
- [Add and Remove Computers](add-remove-computers-vamt.md)
