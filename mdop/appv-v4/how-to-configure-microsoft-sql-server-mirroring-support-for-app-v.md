---
title: How to Configure Microsoft SQL Server Mirroring Support for App-V
description: How to Configure Microsoft SQL Server Mirroring Support for App-V
author: dansimp
ms.assetid: 6d069eb5-109f-460a-836a-de49473b7035
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Configure Microsoft SQL Server Mirroring Support for App-V


You can use the following procedure to configure your Microsoft Application Virtualization (App-V) environment to use Microsoft SQL Server database mirroring. Configuring database mirroring can help with disaster recovery and failover scenarios. App-V 4.5 SP2 supports all modes of database mirroring currently available for Microsoft SQL Server 2005 and SQL Server 2008.

**Note**  
This procedure is written for administrators who are familiar with setting up and configuring SQL Server databases and database mirroring with Microsoft SQL Server, and therefore covers only the specific configuration settings that are unique to App-V.



**To configure your App-V environment to use Microsoft SQL Server database mirroring**

1.  Set up SQL Server database mirroring of the App-V database following your standard business practices for database mirroring. Use the following links for general information about implementing Microsoft SQL Server database mirroring:

    -   **Microsoft SQL 2005**—[Setting Up Database Mirroring](https://go.microsoft.com/fwlink/?LinkId=187478) (https://go.microsoft.com/fwlink/?LinkId=187478)

    -   **Microsoft SQL 2008**—[Setting Up Database Mirroring](https://go.microsoft.com/fwlink/?LinkId=187477) (https://go.microsoft.com/fwlink/?LinkId=187477)

    In addition, you can find Best Practices information in [Database Mirroring Best Practices and Performance Considerations](https://go.microsoft.com/fwlink/?LinkId=190270) (https://go.microsoft.com/fwlink/?LinkId=190270).

2.  After mirroring has been set up, verify that the App-V database shows a status of **(Principal, Synchronized)**, and the mirrored database shows a status of **(Mirror, Synchronized / Restoring)**. Resolve any mirroring issues before proceeding to the next step. For additional information about monitoring the status, see [Monitoring Mirroring Status](https://go.microsoft.com/fwlink/?LinkId=190279) (https://go.microsoft.com/fwlink/?LinkId=190279).

3.  On the SQL Server computer that hosts the mirror of the App-V database, create the SQL Server Login for the network service account of the App-V Management Server by using the account name **&lt;domain&gt;\\&lt;ManagementServerHostName&gt;$**.

4.  Install the Microsoft SQL Server Native Client on the App-V Management Server, and on the computer running the App-V Management Web Service if installed on a different computer. If you plan to have additional App-V Management Servers connect to the mirrored SQL database for load balancing, you must install the Microsoft SQL Server Native Client on those computers as well. You can download the Microsoft SQL Server Native Client from the [Microsoft SQL Server 2008 Feature Pack](https://go.microsoft.com/fwlink/?LinkId=187479) page in the Microsoft Download Center (https://go.microsoft.com/fwlink/?LinkId=187479).

5.  Check the registry key **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Softgrid\\4.5\\Server\\SQLServerName** and make sure that it contains only the host name of the SQL Server. If it includes an instance name, for example *serverhostname\\instancename*, the instance name must be removed.

    **Important**  
    The App-V Management Server uses the TCP/IP networking library to communicate with the SQL Server when database mirroring is enabled, and therefore instance names cannot be used. The port numbers must be specified in the registry keys instead.



6.  Check the registry key **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Softgrid\\4.5\\Server\\SQLServerPort** and make sure that it contains the port number that is used for SQL on the SQL Server computer. If you are using a named instance this key value must be set to the port that is used for the named instance.

7.  Create the registry key **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Softgrid\\4.5\\Server\\SQLFailoverServerName** as REG\_SZ and then set the value to the host name of the SQL Server that hosts the mirror.

8.  Create the registry key **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Softgrid\\4.5\\Server\\SQLFailoverServerPort** as DWORD and then set the value to the port number that is used for SQL on the computer that is running SQL Server to host the mirror. If you are using a named instance for the mirror this key value must be set to the port number that is used for the named instance.

9.  On the computer that is running the App-V Management Web Service, configure the Universal Data Link (UDL) text file. In the directory where App-V is installed, double-click **SftMgmt.udl** and specify the following values:

    -   On the **Provider** tab, select the OLE DB provider **SQL Server Native Client 10.0**.

    -   Click **Next** to select the **Connection** tab. In the **Server Name** box, enter the server name of the SQL Server. Next, select **Use Windows NT Integrated Security**. Finally, click the list **Select the database**, and then select the App-V database name.

    -   Click the **All** tab, and then select the entry **Failover Partner**. Click **Edit Value**, and then enter the server name of the failover SQL Server. Click **OK**.

    **Important**  
    The App-V system uses Kerberos authentication. Therefore, when you configure SQL mirroring where Kerberos Authentication is enabled on the SQL Server and the SQL Server service runs under a domain user account, you must manually configure an SPN. For more information, see “When SQL Service Uses Domain-Based Account” in the article [Configuring App-V Administration for a Distributed Environment](https://go.microsoft.com/fwlink/?LinkId=203186) (https://go.microsoft.com/fwlink/?LinkId=203186).



10. To verify that database mirroring is running correctly, test the failover and confirm that the App-V Management Server continues to function correctly.

    **Important**  
    Proceed with care, and follow your standard business practices to ensure that system operations are not disrupted in the event of a failure.



~~~
After the failover has occurred successfully, as verified by using the SQL Server status monitoring information, right-click the **Applications** node in the App-V Management Console, and then select **Refresh**. The list of applications should display normally if the system is working correctly.
~~~

## Related topics


[How to Perform Administrative Tasks in the Application Virtualization Server Management Console](how-to-perform-administrative-tasks-in-the-application-virtualization-server-management-console.md)









