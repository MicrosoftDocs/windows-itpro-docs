---
title: Add and remove a product key
description: Add a product key to the Volume Activation Management Tool (VAMT) database. Also, learn how to remove the key from the database.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
---

# Add and remove a product key

Before you can use a Multiple Activation Key (MAK), retail, or KMS Host key (CSVLK) product key, you must first add it to the Volume Activation Management Tool (VAMT) database.

## To add a product key

1. Open VAMT.

2. In the left-side pane, right-click the **Product Keys** node to open the **Actions** menu.

3. Select **Add product keys** to open the **Add Product Keys** dialog box.

4. In the **Add Product Keys** dialog box, select from one of the following methods to add product keys:

    - To add product keys manually, select **Enter product key(s) separated by line breaks**, enter one or more product keys separated by line breaks, and select **Add Key(s)**.

    - To import a Comma Separated Values (CSV) file containing a list of product keys, select **Select a product key file to import**, browse to the file location, select **Open** to import the file, and then select **Add Key(s)**.

    > [!NOTE]
    > If you are activating a large number of products with a MAK, you should refresh the activation count of the MAK, to ensure that the MAK can support the required number of activations. In the product key list in the center pane, select the MAK and click **Refresh product key data online** in the right-side pane to contact Microsoft and retrieve the number of remaining activations for the MAK. This step requires Internet access. You can only retrieve the remaining activation count for MAKs.

## Remove a product key

- To remove a product key from the list, select the key in the list and select **Delete** on the **Selected Items** menu in the right-side pane. Select **Yes** to confirm deletion of the product key. Removing a product key from the VAMT database won't affect the activation state of any products or computers on the network.

## Related articles

[Install a product key](install-product-key-vamt.md)

[Install a KMS client key](install-kms-client-key-vamt.md)
