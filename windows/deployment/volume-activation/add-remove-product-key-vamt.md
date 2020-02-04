---
title: Add and Remove a Product Key (Windows 10)
description: Add and Remove a Product Key
ms.assetid: feac32bb-fb96-4802-81b8-c69220dcfcce
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

# Add and Remove a Product Key

Before you can use a Multiple Activation Key (MAK), retail, or KMS Host key (CSVLK) product key, you must first add it to the Volume Activation Management Tool (VAMT) database.

## To Add a Product Key

1.  Open VAMT.
2.  In the left-side pane, right-click the **Product Keys** node to open the **Actions** menu.
3.  Click **Add product keys** to open the **Add Product Keys** dialog box.
4.  In the **Add Product Keys** dialog box, select from one of the following methods to add product keys:
    -   To add product keys manually, click **Enter product key(s) separated by line breaks**, enter one or more product keys separated by line breaks, and click **Add Key(s)**.
    -   To import a Comma Separated Values (CSV) file containing a list of product keys, click **Select a product key file to import**, browse to the file location, click **Open** to import the file, and then click **Add Key(s)**.

    **Note**  
    If you are activating a large number of products with a MAK, you should refresh the activation count of the MAK, to ensure that the MAK can support the required number of activations. In the product key list in the center pane, select the MAK and click **Refresh product key data online** in the right-side pane to contact Microsoft and retrieve the number of remaining activations for the MAK. This step requires Internet access. You can only retrieve the remaining activation count for MAKs.

## Remove a Product Key

-   To remove a product key from the list, simply select the key in the list and click **Delete** on the **Selected Items** menu in the right-side pane. Click **Yes** to confirm deletion of the product key. Removing a product key from the VAMT database will not affect the activation state of any products or computers on the network.

## Related topics

- [Manage Product Keys](manage-product-keys-vamt.md)
