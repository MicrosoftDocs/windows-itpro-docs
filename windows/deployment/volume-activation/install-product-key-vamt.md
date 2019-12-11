---
title: Install a Product Key (Windows 10)
description: Install a Product Key
ms.assetid: 78812c87-2208-4f8b-9c2c-5a8a18b2d648
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Install a Product Key

You can use the Volume Activation Management Tool (VAMT) to install retail, Multiple Activation Key (MAK), and KMS Host key (CSVLK).

**To install a Product key**
1.  Open VAMT.
2.  In the left-side pane, click the product that you want to install keys onto.
3.  You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.
4.  In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by Product Name, Product Key Type, or License Status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
5.  Click **Filter**.
6.  In the products list view in the center pane, sort the list if needed and then select the products that need to have keys installed. You can use the **CTRL** key or the **SHIFT** key to select more than one product.
7.  Click **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.
8.  The **Select Product Key** dialog box displays the keys that are available to be installed. Under **Recommended MAKs**, VAMT might display one or more recommended MAK based on the selected products. You can select a recommended product key or a product key from the **All Product Keys** list. Use the scroll bar if you need to view the **Description** for each key. When you have selected the product key you want to install, click **Install Key**. Note that only one key can be installed at a time.
9.  VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.

    The same status is shown under the **Status of Last Action** column in the product list view in the center pane.

    **Note**  
    Product key installation will fail if VAMT finds mismatched key types or editions. VAMT will display the failure status and will continue the installation for the next product in the list. For more information on choosing the correct MAK or KMS Host key (CSVLK), see [How to Choose the Right 
    Volume License Key for Windows](https://go.microsoft.com/fwlink/p/?linkid=238382).

## Related topics

- [Manage Product Keys](manage-product-keys-vamt.md)
 
 
