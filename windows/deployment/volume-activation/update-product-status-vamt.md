---
title: Update Product Status (Windows 10)
description: Update Product Status
ms.assetid: 39d4abd4-801a-4e8f-9b8c-425a24a96764
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

# Update Product Status

After you add computers to the VAMT database, you need to use the **Update license status** function to add the products that are installed on the computers. You can also use the **Update license status** at any time to retrieve the most current license status for any products in the VAMT database.
To retrieve license status, VAMT must have administrative permissions on all selected computers and Windows Management Instrumentation (WMI) must be accessible through the Windows Firewall. In addition, for workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure Client Computers](configure-client-computers-vamt.md).

**Note**  
The license-status query requires a valid computer name for each system queried. If the VAMT database contains computers that were added without Personally Identifiable Information, computer names will not be available for those computers, and the status for these computers will not be updated.

## Update the license status of a product

1.  Open VAMT.
2.  In the **Products** list, select one or more products that need to have their status updated.
3.  In the right-side **Actions** pane, click **Update license status** and then click a credential option. Choose **Alternate Credentials** only if you are updating products that require administrator credentials different from the ones you used to log into the computer.
4.  If you are supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and click **OK**.

    VAMT displays the **Collecting product information** dialog box while it collects the status of all selected products. When the process is finished, the updated licensing status of each product will appear in the product list view in the center pane.

    **Note**  
    If a previously discovered Microsoft Office 2010 product has been uninstalled from the remote computer, updating its licensing status will cause the entry to be deleted from the **Office** product list view, and, consequently, the total number of discovered products will be smaller. However, the Windows installation of the same computer will not be deleted and will always be shown in the **Windows** products list view.
 
## Related topics
- [Add and Manage Products](add-manage-products-vamt.md)
