---
title: How to Set Up or Disable Database Size
description: How to Set Up or Disable Database Size
author: eavena
ms.assetid: 4abaf349-132d-4186-8873-a0e515593b93
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Set Up or Disable Database Size


You can use the following procedures in the Application Virtualization Server Management Console to specify the size (in MB) of Application Virtualization System usage that you want to store in the database.

When the size of the stored data reaches 95% (the high watermark) of the specified limit, the system will delete 10% of the usage data, leaving 85% of the data. Package and application usage data will be deleted. When the database grows large enough and approaches the high watermark, a warning message is sent to the SQL Server log to inform you that this limit has been reached. This warning is necessary because the cleanup action can affect the output of the reports. It will also help you decide whether you need to increase the maximum database size, reduce the number of months of usage data to be kept, or turn down the logging level.

**Note**  
The **No Size Limit** and **Keep All Usage** options are provided so that you can disable usage reporting and database cleanup. Selecting these items will clean up the database transaction log as well. (All committed Microsoft SQL Server transactions will be removed from the database log.)

 

**To set up database size**

1.  Right-click the Application Virtualization System node in the left pane, and select **System Options**.

2.  Select the **Database** tab.

3.  Select the **Maximum Database Size (MB)** or **No Size Limit** radio button.

4.  If you choose to specify a database size, best practices recommend that you enter a number between 512 and 4096 MB. The default size is 1024 MB and if you need to increase the database size, the maximum value you can enter is 2,147,483,647. If you select **No Size Limit**, the database will grow until it reaches the disk size limit.

5.  Click **Apply** or **OK**.

**To disable database size limits**

1.  Right-click the Application Virtualization System node in the **Scope** pane, and select **System Options**.

2.  Select the **Database** tab.

3.  Select the **No Size Limit** and **Keep All Usage** radio buttons.

4.  Click **Apply** or **OK**.

## Related topics


[How to Customize an Application Virtualization System in the Server Management Console](how-to-customize-an-application-virtualization-system-in-the-server-management-console.md)

[How to Set Up or Disable Usage Reporting](how-to-set-up-or-disable-usage-reporting.md)

 

 





