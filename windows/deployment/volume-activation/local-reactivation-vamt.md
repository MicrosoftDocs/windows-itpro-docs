---
title: Perform Local Reactivation (Windows 10)
description: Perform Local Reactivation
ms.assetid: aacd5ded-da11-4d27-a866-3f57332f5dec
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Perform Local Reactivation

If you reinstall Windows® or Microsoft® Office 2010 on a computer that was initially activated using proxy activation (MAK, retail, or CSLVK (KMS host)), and have not made significant changes to the hardware, use this local reactivation procedure to reactivate the program on that computer.
Local reactivation relies upon data that was created during the initial proxy activation and stored in the Volume Activation Management Tool (VAMT) database. The database contains the installation ID (IID) and confirmation ID (Pending CID). Local reactivation uses this data to reapply the CID and reactivate those products. Reapplying the same CID conserves the remaining activations on the key.

**Note**  
During the initial proxy activation, the CID is bound to a digital “fingerprint”, which is calculated from values assigned to several different hardware components in the computer. If the computer has had significant hardware changes, this fingerprint will no longer match the CID. In this case, you must obtain a new CID for the computer from Microsoft.

## To Perform a Local Reactivation

**To perform a local reactivation**
1.  Open VAMT. Make sure that you are connected to the desired database.
2.  In the left-side pane, click the product you want to reactivate to display the products list.
3.  In the product list view in the center pane, select the desired products to be reactivated. You can sort the list by computer name by clicking on the **Computer Name** heading. You can also use the **Filter** function to narrow your search for computers by clicking **Filter** in the right-side pane to open the **Filter Products** dialog box.
4.  In the **Filter Products** dialog box, you can filter the list by computer name, product name, product key type, license status, or by any combination of these options.
    -   To filter the list by computer name, enter a name in the **Computer Name** box.
    -   To filter the list by Product Name, Product Key Type, or License Status, click the list you want to use for the filter and select an option. If necessary, click **clear all filters** to create a new filter.
5.  Click **Filter**. VAMT displays the filtered list in the center pane.
6.  In the right-side pane, click **Activate**, and then click **Apply Confirmation ID**.
7.  Click a credential option. Choose **Alternate credentials** only if you are reactivating products that require administrator credentials different from the ones you are currently using.
8.  If you are supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and click **OK**.
    
    VAMT displays the **Apply Confirmation ID** dialog box.

10. If you are using a different product key than the product key used for initial activation, you must complete a new activation to obtain a new CID.
11. If you are activating a product that requires administrator credentials different from the ones you are currently using, select the **Use Alternate Credentials** check box.
12. Click **OK**.

## Related topics

- [Manage Activations](manage-activations-vamt.md)
