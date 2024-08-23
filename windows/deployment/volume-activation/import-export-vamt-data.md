---
title: Import and export VAMT data
description: Learn how to use the VAMT to import product-activation data from a file into SQL Server.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.service: windows-client
ms.subservice: activation
ms.date: 11/07/2022
ms.topic: how-to
---

# Import and export Volume Activation Management Tool data

You can use the Volume Activation Management Tool (VAMT) to import product-activation data from a computer information list (`.cilx` or `.cil`) file into SQL Server. Also use VAMT to export product-activation data into a `.cilx` file. A `.cilx` file is an XML file that stores computer and product-activation data.

You can import data or export data during the following scenarios:

- Import and merge data from previous versions of VAMT.

- Export data to perform proxy activations.

> [!WARNING]
> Editing a `.cilx` file through an application other than VAMT can corrupt the `.cilx` file. This method isn't supported.

## Import VAMT data

To import data into VAMT, use the following process:

1. Open VAMT.

2. In the right-side **Actions** pane, select **Import list** to open the **Import List** dialog box.

3. In the **Import List** dialog box, navigate to the `.cilx` file location, choose the file, and select **Open**.

4. In the **Volume Activation Management Tool** dialog box, select **OK** to begin the import. VAMT displays a progress message while the file is being imported. Select **OK** when a message appears and confirms that the import has completed successfully.

## Export VAMT data

Exporting VAMT data from a VAMT host computer that's not internet-connected is the first step of proxy activation using multiple VAMT hosts. To export product-activation data to a `.cilx` file:

1. In the left-side pane, select a product you want to export data for, or select **Products** if the list contains data for all products.

2. If you want to export only part of the data in a product list, in the product-list view in the center pane, select the products you want to export.

3. In the right-side **Actions** pane on, select **Export list** to open the **Export List** dialog box.

4. In the **Export List** dialog box, select **Browse** to navigate to the `.cilx` file.

5. Under **Export options**, select one of the following data-type options:

    - Export products and product keys

    - Export products only

    - Export proxy activation data only. Selecting this option makes sure that the export contains only the licensing information required for the proxy web service to obtain CIDs from Microsoft. No personally identifiable information (PII) is contained in the exported `.cilx` file when this selection is checked.

6. If you've selected products to export, select the **Export selected product rows only** check box.

7. Select **Save**. VAMT displays a progress message while the data is being exported. Select **OK** when a message appears and confirms that the export has completed successfully.

## Related articles

[VAMT proxy activation](proxy-activation-vamt.md)
