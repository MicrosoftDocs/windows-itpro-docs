---
title: Run online activation
description: Learn how to use the Volume Activation Management Tool (VAMT) to enable client products to be activated online.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
---

# Run online activation

You can use the Volume Activation Management Tool (VAMT) to enable client products to be activated over the internet. You can install the client products with any kind of product key that is eligible for online activation—Multiple Activation Key (MAK), retail, and Windows Key Management Services (KMS) host key.

## Requirements

Before running online activation, ensure that the network and the VAMT installation meet the following requirements:

- VAMT is installed on a central computer that has network access to all client computers.

- Both the VAMT host and client computers have internet access.

- The products that you want to activate are added to VAMT.

- VAMT has administrative permissions on all computers that you intend to activate, and that Windows Management Instrumentation (WMI) can be accessed through the Windows firewall. For more information, see [Configure client computers](configure-client-computers-vamt.md).

The product keys that are installed on the client products must have a sufficient number of remaining activations. If you're activating a MAK key, you can retrieve the remaining number of activations for that key by selecting the MAK in the product key list in the center pane and then clicking **Refresh product key data online** in the right-side pane. This action retrieves the number of remaining activations for the MAK from Microsoft. This step requires internet access and that the remaining activation count can only be retrieved for MAKs.

## To run an online activation

1. Open VAMT.

2. In the products list view in the center pane, sort the list if necessary. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

3. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

4. Select **Filter**. VAMT displays the filtered list in the center pane.

5. Select the products that you want to activate. You can use the **CTRL** key or the **SHIFT** key to select more than one product.

6. Select **Activate** in the **Selected Items** menu in the right-side **Actions** pane and then point to **Activate**. If the **Actions** pane isn't displayed, select the Show/Hide Action Pane button, which is located on the toolbar to the right of the Help button.

7. Point to **Online activate**, and then select the appropriate credential option. If you select the **Alternate Credentials** option, you'll be prompted to enter an alternate user name and password.

8. VAMT displays the **Activating products** dialog box until it completes the requested action. When activation is complete, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.

    The same status is shown under the **Status of Last Action** column in the products list view in the center pane.

    > [!NOTE]
    > Online activation doesn't enable you to save the Confirmation IDs (CIDs). As a result, you can't run local reactivation.

    > [!NOTE]
    > You can use online activation to select products that have different key types and activate the products at the same time.

## Related articles

[Run proxy activation](proxy-activation-vamt.md)

[Run KMS activation](kms-activation-vamt.md)

[Run local reactivation](local-reactivation-vamt.md)
