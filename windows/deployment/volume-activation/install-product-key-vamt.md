---
title: Install a product key
description: Learn to use the Volume Activation Management Tool (VAMT) to install retail, Multiple Activation Key (MAK), and KMS Host key (CSVLK).
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.localizationpriority: medium
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
---

# Install a product key

You can use the Volume Activation Management Tool (VAMT) to install retail, Multiple Activation Key (MAK), and KMS Host key (CSVLK).

## To install a product key

1. Open VAMT.

2. In the left-side pane, select the product that you want to install keys onto.

3. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

4. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

5. Select **Filter**.

6. In the products list view in the center pane, sort the list if needed and then select the products that need to have keys installed. You can use the **CTRL** key or the **SHIFT** key to select more than one product.

7. Select **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.

8. The **Select Product Key** dialog box displays the keys that are available to be installed. Under **Recommended MAKs**, VAMT might display one or more recommended MAK based on the selected products. You can select a recommended product key or a product key from the **All Product Keys** list. Use the scroll bar if you need to view the **Description** for each key. When you've selected the product key you want to install, select **Install Key**. Only one key can be installed at a time.

9. VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.

    The same status is shown under the **Status of Last Action** column in the product list view in the center pane.

    > [!NOTE]
    > Product key installation will fail if VAMT finds mismatched key types or editions. VAMT will display the failure status and will continue the installation for the next product in the list. For more information on choosing the correct MAK or KMS Host key (CSVLK), see [How to Choose the Right Volume License Key for Windows](/previous-versions/tn-archive/ee939271(v=technet.10)).

## Related articles

[Add and remove a product key](add-remove-product-key-vamt.md)

[Install a KMS client key](install-kms-client-key-vamt.md)
