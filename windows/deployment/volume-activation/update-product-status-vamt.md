---
title: Update product status
description: Learn how to use the Update license status function to add the products that are installed on the computers.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 03/29/2024
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-fundamentals
---

# Update product status

After computers are added to the Volume Activation Management Tool (VAMT) database, the **Update license status** function needs to be used to add the products that are installed on the computers. The **Update license status** can also be used at any time to retrieve the most current license status for any products in the VAMT database.
To retrieve license status, VAMT must have administrative permissions on all selected computers and Windows Management Instrumentation (WMI) must be accessible through the Windows Firewall. In addition, for workgroup computers, a registry key must be created to enable remote administrative actions under User Account Control (UAC). For more information, see [Configure client computers](configure-client-computers-vamt.md).

> [!NOTE]
> The license-status query requires a valid computer name for each system queried. If the VAMT database contains computers that were added without Personally Identifiable Information, computer names will not be available for those computers, and the status for these computers will not be updated.

## Update the license status of a product

1. Open VAMT.

1. In the **Products** list, select one or more products that need to have their status updated.

1. In the right-side **Actions** pane, select **Update license status** and then select a credential option. Choose **Alternate Credentials** only if updating products that require administrator credentials different from the ones used to log into the computer.

1. If supplying alternate credentials, in the **Windows Security** dialog box type the appropriate user name and password and select **OK**.

    VAMT displays the **Collecting product information** dialog box while it collects the status of all selected products. When the process is finished, the updated licensing status of each product appears in the product list view in the center pane.

    > [!NOTE]
    >
    > If a previously discovered Microsoft Office product is uninstalled from the remote computer, updating its licensing status causes the entry to be deleted from the **Office** product list view that results in the total number of discovered products being smaller. However, the Windows installation of the same computer isn't deleted and is always be shown in the **Windows** products list view.

## Related content

[Add and remove computers](add-remove-computers-vamt.md)

[Remove products](remove-products-vamt.md)
