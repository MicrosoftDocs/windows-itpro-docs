---
title: How to Migrate the App-V SQL Database to a Different SQL Server
description: How to Migrate the App-V SQL Database to a Different SQL Server
author: dansimp
ms.assetid: 353892a1-9327-4489-a19c-4ec7bd1b736f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Migrate the App-V SQL Database to a Different SQL Server


The following procedures describe in detail how to migrate the SQL database of the Microsoft Application Virtualization (App-V) Management Server to a different SQL Server.

**Important**  
This procedure requires that the App-V server service is stopped and this will prevent end-users from using their applications.

 

**To back up the App-V SQL database**

1.  Open the Services.msc program and stop the App-V Management Server service on all Management Servers that use the database to be migrated.

2.  On the computer where the App-V database is located, open SQL Server Management Studio.

3.  Expand the **Databases** node and locate the App-V database (default name is APPVIRT).

4.  Right-click the database and select **Tasks** and then select **Back Up**.

5.  Verify that **Recovery model** is set to **SIMPLE** and the **Backup type** is set to **Full**. Change the **Backup set** and **Destination** settings if it is necessary.

6.  Click **OK** to back up the database. After the backup has completed successfully, click **OK**.

7.  Open Windows Explorer and browse to the folder that contains the database backup file, for example APPVIRT.BAK. Copy the database backup file to the destination computer that is running SQL Server.

**To restore the App-V SQL database to the destination computer**

1.  On the destination computer, open SQL Server Management Studio, right-click the **Databases** node and select **Restore Database**.

2.  Under **Source for Restore**, choose **From device** and then click the “**…**” button.

3.  In the **Specify Backup** dialog box, make sure that the **Backup Media** is set to **File** and then click **Add**.

4.  Select the backup file that you copied from the original computer that is running SQL Server, and then click **OK**.

5.  Click **OK** and then click to select the backup set to restore.

6.  Under **Destination for restore**, click the drop-down for **To database** and select the App-V database name, for example APPVIRT.

7.  Click **OK** to start the restore. After the restore has completed successfully, click **OK**.

8.  Expand the **Security** node, right-click **Logins** and select **New Login**.

9.  In the **Login Name** field, enter the Network Service account details for the App-V Management Server in the format of DOMAIN\\SERVERNAME$.

10. On the **General** page under **Default database** select the App-V database name, for example, APPVIRT, and then click **OK**.

11. Under **Select a page**, click to select the **User Mapping** page. Under **Users mapped to this login**, click the check box in the **Map** column to select the App-V database.

12. Under **Database role membership for: &lt;appvdatabasename&gt;**, click to select **SFTEveryone** and then click **OK**.

13. Make sure that the Windows Firewall on the new computer that is running SQL Server is configured to allow the App-V Management Server to access the system. Under **Administrative Tools**, use the **Windows Firewall with Advanced Security** program to create an **Inbound Rule** for the port that is used by SQL Server (default is port 1433).

**To migrate the App-V SQL Server Agent jobs**

1.  On the original computer that is running SQL Server, in SQL Server Management Studio, expand the **SQL Server Agent** node, and then expand the **Jobs** node.

2.  Right-click the following four App-V jobs and select **Script Job as | CREATE to | File**, and save each script to a folder and give each script a descriptive name.

    -   **Softgrid Database (appvdbname) Check Usage History**

    -   **Softgrid Database (appvdbname) Close Orphaned Sessions**

    -   **Softgrid Database (appvdbname) Enforce Size Limit**

    -   **Softgrid Database (appvdbname) Monitor Alert/Job Status**

3.  Copy the four script files (.sql) to the destination computer that is running SQL Server and open SQL Server Management Studio.

4.  In Windows Explorer, right-click each .sql file and then click **Run**. Each script will open in a query window in SQL Server Management Studio. Click **Execute** for each script and verify that each is completed successfully.

5.  Refresh the **Jobs** node under the **SQL Server Agent** node and confirm that the four jobs are created successfully.

**To update the configuration of the App-V Management Server**

1.  On the App-V Management Server, modify the following registry keys:

    -   **SQLServerName** = &lt;newservername&gt;

    -   **SQLServerPort** = &lt;newserverport&gt;

    Then restart the App-V server service.

2.  Browse to find the file SftMgmt.udl under the App-V Management Server installation directory (default is C:\\Program Files\\Microsoft System Center App Virt Management Server\\App Virt Management Service). Right-click the file and select **Open**.

3.  On the **Connection** tab, enter the name of the destination computer that is running SQL Server, and then click **Test Connection**. When the test is successful, click **OK** and then click **OK** again.

4.  For App-V Management Server versions before 4.5 SP2, you must update the SQL Logging settings. Under **Server Groups**, right-click the server group the server is a member of and select **Properties**.

5.  On the **Logging** tab click to select the **SQL Database** entry and then click **Edit**.

6.  Change the **DNS Host Name** to the host name of the new computer that is running SQL Server and then click **OK**. Click **OK** two times more, and then restart the App-V server service.

7.  Open the App-V Management Console, right-click the **Applications** node and select **Refresh**. The list of applications should be displayed as before.

 

 





