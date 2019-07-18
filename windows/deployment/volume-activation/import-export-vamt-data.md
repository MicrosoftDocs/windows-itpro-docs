---
title: Import and Export VAMT Data (Windows 10)
description: Import and Export VAMT Data
ms.assetid: 09a2c595-1a61-4da6-bd46-4ba8763cfd4f
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

# Import and Export VAMT Data

You can use the Volume Activation Management Tool (VAMT) to import product-activation data from a Computer Information List (.cilx or .cil) file into SQL Server, and to export product-activation data into a .cilx file. A .cilx file is an XML file that stores computer and product-activation data. 
You can import data or export data during the following scenarios:
-   Import and merge data from previous versions of VAMT.
-   Export data to use to perform proxy activations.

**Warning**  
Editing a .cilx file using an application other than VAMT can corrupt the .cilx file and is not supported.

## Import VAMT Data

**To import data into VAMT**
1.  Open VAMT.
2.  In the right-side **Actions** pane, click **Import list** to open the **Import List** dialog box.
3.  In the **Import List** dialog box, navigate to the .cilx file location, select the file, and click **Open**.
4.  In the **Volume Activation Management Tool** dialog box, click **OK** to begin the import. VAMT displays a progress message while the file is being imported. Click **OK** when a message appears and confirms that the import has completed successfully.

## Export VAMT Data

Exporting VAMT data from a non-Internet-connected VAMT host computer is the first step of proxy activation using multiple VAMT hosts. To export product-activation data to a .cilx file:
1.  In the left-side pane, you can click a product you want to export data for, or click **Products** if the list contains data for all products.
2.  If you want to export only part of the data in a product list, in the product list view in the center pane select the products you want to export.
3.  In the right-side **Actions** pane on, click **Export list** to open the **Export List** dialog box.
4.  In the **Export List** dialog box, click **Browse** to navigate to the .cilx file.
5.  Under **Export options**, select one of the following data-type options:
    -   Export products and product keys
    -   Export products only
    -   Export proxy activation data only. Selecting this option ensures that the export contains only the licensing information required for the proxy web service to obtain CIDs from Microsoft. No Personally Identifiable Information (PII) is contained in the exported .cilx file when this selection is checked.
6.  If you have selected products to export, select the **Export selected product rows only** check box.
7.  Click **Save**. VAMT displays a progress message while the data is being exported. Click **OK** when a message appears and confirms that the export has completed successfully.

## Related topics

- [Perform Proxy Activation](proxy-activation-vamt.md)
