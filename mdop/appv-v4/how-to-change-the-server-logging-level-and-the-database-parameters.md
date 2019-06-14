---
title: How to Change the Server Logging Level and the Database Parameters
description: How to Change the Server Logging Level and the Database Parameters
author: dansimp
ms.assetid: e3ebaee5-6c4c-4aa8-9766-c5aeb00f477a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Change the Server Logging Level and the Database Parameters


You can use the following procedures to change the logging level and the database log parameters from the Application Virtualization Server Management Console.

The following logging levels are available:

-   Transaction Only

-   Fatal Errors

-   Errors

-   Warnings/Errors

-   Info/Warnings/Errors

-   Verbose

**Note**  
Because of the size of the log file produced when you use **Verbose** mode, the recommendation is that you do not run production servers with this level of logging set.

 

The database logging parameters determine the database driver type, access credentials, and location of the logging database.

**To change the logging level for Management Servers**

1.  Click the **Server Groups** node to display the server groups.

2.  Right-click the server group, and select **Properties**.

3.  In the **Properties** dialog box, select the **Logging** tab.

4.  In the **Server Group Properties** dialog box, select the server and then click **Edit**.

5.  In the **Add/Edit Log Module** dialog box, select the logging level from the **Event Type** drop-down list.

6.  Click **OK**.

7.  In the **Server Group Properties** dialog box, click **OK** or **Apply**.

**To change the logging level for Streaming Servers**

1.  Edit the following registry key value to change the logging level:

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\DistributionServer\\LogLevel

2.  Select one of the following values to set the logging level.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Value</th>
    <th align="left">Logging Level</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>0</p></td>
    <td align="left"><p>Transactions Only</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>1</p></td>
    <td align="left"><p>Fatal Errors</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>2</p></td>
    <td align="left"><p>Errors</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>3</p></td>
    <td align="left"><p>Warnings/Errors</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>4</p></td>
    <td align="left"><p>Information/ Warnings/Errors</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>5</p></td>
    <td align="left"><p>Verbose</p></td>
    </tr>
    </tbody>
    </table>

     

**To change database log parameters**

1.  Click the **Server Groups** node to display the server groups.

2.  Right-click the server group, and select **Properties**.

3.  In the **Properties** dialog box, select the **Logging** tab.

4.  In the **Server Group Properties** dialog box, select the server and then click **Edit**.

5.  In the **Add/Edit Log Module** dialog box, select a database driver from the **Database Driver** drop-down list.

6.  Enter a **DNS Host Name**.

7.  Click the **Dynamically Determine Port** check box, or enter a port number in the **Port** field.

8.  Enter a **Service Name** in the corresponding field.

9.  Click **OK**.

10. On the **Server Group Properties** dialog box, click **OK** or **Apply**.

## Related topics


[How to Customize an Application Virtualization System in the Server Management Console](how-to-customize-an-application-virtualization-system-in-the-server-management-console.md)

 

 





