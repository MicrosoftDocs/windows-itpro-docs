---
title: Update Product Status (Windows 10)
description: Learn how to use the Update license status function to add the products that are installed on the computers.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/07/2022
ms.topic: article
ms.technology: itpro-fundamentals
---

# Update product status

After you add computers to the VAMT database, you need to use the **Update license status** function to add the products that are installed on the computers. You can also use the **Update license status** at any time to retrieve the most current license status for any products in the VAMT database.
To retrieve license status, VAMT must have administrative permissions on all selected computers and Windows Management Instrumentation (WMI) must be accessible through the Windows Firewall. In addition, for workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure Client Computers](configure-client-computers-vamt.md).

> [!NOTE]
The license-status query requires a valid computer name for each system queried. If the VAMT database contains computers that were added without Personally Identifiable Information, computer names will not be available for those computers, and the status for these computers will not be updated.

## Update the license status of a product

1. Open VAMT.

2. In the **Products** list, select one or more products that need to have their status updated.

3. In the right-side **Actions** pane, select **Update license status** and then select a credential option. Choose **Alternate Credentials** only if you're updating products that require administrator credentials different from the ones you used to log into the computer.

4. If you're supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and select **OK**.

    VAMT displays the **Collecting product information** dialog box while it collects the status of all selected products. When the process is finished, the updated licensing status of each product will appear in the product list view in the center pane.

    > [!NOTE]
    If a previously discovered Microsoft Office 2010 product has been uninstalled from the remote computer, updating its licensing status will cause the entry to be deleted from the **Office** product list view, and, consequently, the total number of discovered products will be smaller. However, the Windows installation of the same computer will not be deleted and will always be shown in the **Windows** products list view.

## Related articles

- [Add and Manage Products](add-manage-products-vamt.md)
