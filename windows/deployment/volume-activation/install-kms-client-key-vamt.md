---
title: Install a KMS Client Key (Windows 10)
description: Install a KMS Client Key
ms.assetid: d234468e-7917-4cf5-b0a8-4968454f7759
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

# Install a KMS Client Key

You can use the Volume Activation Management Tool (VAMT) to install Generic Volume License Key (GVLK), or KMS client, product keys. For example, if you are converting a MAK-activated product to KMS activation.

**Note**  
By default, volume license editions of Windows Vista, Windows® 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft® Office 2010 use KMS for activation. GVLKs are already installed in volume license editions of these products.

**To install a KMS Client key**
1.  Open VAMT.
2.  In the left-side pane click **Products** to open the product list view in the center pane.
3.  In the products list view in the center pane, select the products that need to have GVLKs installed. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.
4.  In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by Product Name, Product Key Type, or License Status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
5.  Click **Filter**. VAMT displays the filtered list in the center pane.
6.  Click **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.
7.  The **Install Product Key** dialog box displays the keys that are available to be installed.
8.  Select the **Automatically select an AD or KMS client key** option and then click **Install Key**.

    VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Click **Close** to close the dialog box. You can also click the **Automatically close when done** check box when the dialog box appears.
    
    The same status is shown under the **Status of Last Action** column in the product list view in the center pane.

## Related topics

- [Perform KMS Activation](kms-activation-vamt.md)
