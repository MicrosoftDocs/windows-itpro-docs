---
title: Install a KMS Client Key (Windows 10)
description: Learn to use the Volume Activation Management Tool (VAMT) to install Generic Volume License Key (GVLK), or KMS client, product keys.
ms.reviewer: nganguly
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.localizationpriority: medium
ms.date: 11/07/2022
ms.topic: conceptual
ms.subservice: itpro-fundamentals
---

# Install a KMS Client Key

You can use the Volume Activation Management Tool (VAMT) to install Generic Volume License Key (GVLK), or KMS client, product keys. For example, if you're converting a MAK-activated product to KMS activation.

> [!NOTE]
> By default, volume license editions of Windows Vista, Windows® 7, Windows 8, Windows 10, Windows Server 2008, Windows Server 2008 R2, Windows Server® 2012, and Microsoft® Office 2010 use KMS for activation. GVLKs are already installed in volume license editions of these products.

## To install a KMS Client key

1. Open VAMT.

2. In the left-side pane, select **Products** to open the product list view in the center pane.

3. In the products list view in the center pane, select the products that need to have GVLKs installed. You can use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.

4. In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.

    - To filter the list by computer name, enter a name in the **Computer Name** box.

    - To filter the list by Product Name, Product Key Type, or License Status, select the list you want to use for the filter and select an option. If necessary, select **clear all filters** to create a new filter.

5. Select **Filter**. VAMT displays the filtered list in the center pane.

6. Select **Install product key** in the **Selected Items** menu in the right-side pane to display the **Install Product Key** dialog box.

7. The **Install Product Key** dialog box displays the keys that are available to be installed.

8. Select the **Automatically select an AD or KMS client key** option and then select **Install Key**.

    VAMT displays the **Installing product key** dialog box while it attempts to install the product key for the selected products. When the process is finished, the status appears in the **Action Status** column of the dialog box. Select **Close** to close the dialog box. You can also select the **Automatically close when done** check box when the dialog box appears.

    The same status is shown under the **Status of Last Action** column in the product list view in the center pane.

## Related articles

- [Perform KMS Activation](kms-activation-vamt.md)
