---
title: Activate by proxy an Active Directory forest
description: Learn how to use the Volume Activation Management Tool (VAMT) Active Directory-Based Activation (ADBA) function to activate by proxy an Active Directory (AD) forest.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: concept-article
ms.service: windows-client
ms.subservice: itpro-fundamentals
---

# Activate by proxy an Active Directory forest

You can use the Volume Activation Management Tool (VAMT) Active Directory-Based Activation (ADBA) function to activate by proxy an Active Directory (AD) forest for an isolated workgroup that doesn't have Internet access. ADBA enables certain volume products to inherit activation from the domain.

> [!IMPORTANT]
> ADBA is only applicable to *Generic Volume License Keys (GVLKs)* and *KMS Host key (CSVLK)*. To use ADBA, one or more KMS Host keys (CSVLK) must be installed on the AD forest, and client keys (GVLKs) must be installed on the client products.

In a typical proxy-activation scenario, the VAMT host computer distributes a product key to one or more client computers and collects the installation ID (IID) from each computer. The VAMT host computer sends the IIDs to Microsoft on behalf of the client computers and obtains the corresponding Confirmation IDs (CIDs). The VAMT host computer then installs the CIDs on the client computer to complete the activation. If you use this activation method, only the VAMT host computer needs to have Internet access.

> [!NOTE]
> For workgroups that are isolated from any larger network, you can still perform an AD forest activation. This requires installing a second instance of VAMT on a computer in the isolated group and using removable media to transfer activation data between that computer and another VAMT host computer that has Internet access. You can also activate by proxy a KMS Host key (CSVLK) in the core network if you do not want the host computer to connect to Microsoft over the Internet.

## Requirements

Before performing proxy activation, ensure that the network and the VAMT installation meet the following requirements:

- There's an instance of VAMT that is installed on a computer that has Internet access. If you're performing proxy activation for an isolated workgroup, you must also have VAMT installed on one of the computers in the workgroup.
- VAMT has administrative permissions to the Active Directory domain.

### To perform an Active Directory forest proxy activation

1. Open VAMT.

2. In the left-side pane, select the **Active Directory-Based Activation** node.

3. In the right-side **Actions** pane, select **Proxy activate forest** to open the **Install Product Key** dialog box.

4. In the **Install Product Key** dialog box, select the KMS Host key (CSVLK) that you want to activate.

5. If you want to rename the ADBA object, enter a new Active Directory-Based Activation Object name. If you want to rename the ADBA object, you must do it now. After you select **Install Key**, the name can't be changed.

6. Enter the name of the file where you want to save the offline installation ID, or browse to the file location and then select **Open**. If you're activating an AD forest in an isolated workgroup, save the `.cilx` file to a removable media device.

7. Select **Install Key**. VAMT displays the **Activating Active Directory** dialog box until it completes the requested action. The activated object and the date that it was created appear in the **Active Directory-Based Activation** node in the center pane.

8. Insert the removable media into the VAMT host that has Internet access. Make sure that you are on the root node, and that the **Volume Activation Management Tool** view is displayed in the center pane.

9. In the right-side **Actions** pane, select **Acquire confirmation IDs for CILX** to open the **Acquire confirmation IDs for file** dialog box.

10. In the **Acquire confirmation IDs for file** dialog box, browse to where the `.cilx` file you exported from the isolated workgroup host computer is located. Select the file, and then select **Open**. VAMT displays an **Acquiring Confirmation IDs** message while it contacts Microsoft and acquires the CIDs.

11. When the CID collection process is complete, VAMT displays a **Volume Activation Management Tool** message that shows how many confirmation IDs were successfully acquired, and the name of the file to which the IDs were saved. Select **OK** to close the message.

12. Remove the storage device that contains the `.cilx` file from the Internet-connected VAMT host computer and insert it into the VAMT host computer in the isolated workgroup.

13. Open VAMT and then select the **Active Directory-Based Activation** node in the left-side pane.

14. In the right-side **Actions** pane, select **Apply confirmation ID to Active Directory domain**, browse to the `.cilx` file and then select **Open**.

VAMT displays the **Activating Active Directory** dialog box until it completes the requested action. The activated object and the date that it was created appear in the **Active Directory-Based Activation** node in the center pane.

## Related articles

[Add and remove computers](add-remove-computers-vamt.md)
