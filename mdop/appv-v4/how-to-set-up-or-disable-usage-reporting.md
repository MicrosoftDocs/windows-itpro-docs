---
title: How to Set Up or Disable Usage Reporting
description: How to Set Up or Disable Usage Reporting
author: eavena
ms.assetid: 8587003a-128d-4b5d-ac70-5b9eddddd3dc
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Set Up or Disable Usage Reporting


You can use the following procedures in the Application Virtualization Server Management Console to specify the duration (in months) of Application Virtualization System usage information you want to store in the database.

**Note**  
 To store usage information, you must select the **Log Usage Information** check box on the **Provider Pipeline** tab. To display this tab, right-click the provider policy in the **Provider Policies Results** pane and select **Properties**.

 

**To set up usage reporting**

1.  Right-click the Application Virtualization System node in the left pane, and select **System Options**.

2.  Select the **Database** tab.

3.  Select the **Keep Usage For (Months)** or **Keep All Usage** radio button.

4.  If you choose to specify usage duration in months, enter a number from 1 to 120 (default value is 6 months). If you select **Keep All Usage**, the database will grow until it reaches the specified size limit.

5.  Click **Apply** or **OK**.

**To disable usage reporting**

1.  Click the **Provider Policies** node.

2.  Right-click **Provider Policy** and select **Properties**.

3.  Select the **Provider Pipeline** tab.

4.  Clear the **Log Usage Information** check box.

5.  Click **Apply** or **OK**.

## Related topics


[How to Customize an Application Virtualization System in the Server Management Console](how-to-customize-an-application-virtualization-system-in-the-server-management-console.md)

[How to Set Up or Disable Database Size](how-to-set-up-or-disable-database-size.md)

 

 





