---
title: Planning for High Availability with App-V Server
description: Planning for High Availability with App-V Server
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Planning for High Availability with App-V Server

Microsoft Application Virtualization (App-V) system configurations can take advantage of options that maintain a high level of available service.

Use the information in the following sections to help you understand the options to deploy App-V in a highly available configuration.

-   [Support for Microsoft SQL Server clustering](#bkmk-sqlcluster)

-   [Support for IIS Network Load Balancing](#bkmk-iisloadbal)

-   [Support for clustered file servers when running (SCS) mode](#bkmk-clusterscsmode)

-   [Support for Microsoft SQL Server Mirroring](#bkmk-sqlmirroring)

-   [Support for Microsoft SQL Server Always On](#bkmk-sqlalwayson)

## <a href="" id="bkmk-sqlcluster"></a>Support for Microsoft SQL Server clustering


You can run the App-V Management database and Reporting database on computers that are running Microsoft SQL Server clusters. However, you must install the databases using scripts.

For instructions, see [How to Deploy the App-V Databases by Using SQL Scripts](appv-deploy-appv-databases-with-sql-scripts.md).

## <a href="" id="bkmk-iisloadbal"></a>Support for IIS Network Load Balancing


You can use Internet Information Services (IIS) Network Load Balancing to configure a highly available environment for computers running the App-V Management, Publishing, and Reporting services which are deployed through IIS.

Review the following for more information about configuring IIS and Network Load Balancing for computers running Windows Server operating systems:

-   Provides information about configuring Internet Information Services (IIS) 7.0.

    [Achieving High Availability and Scalability - ARR and NLB](http://www.iis.net/learn/extensions/configuring-application-request-routing-arr/achieving-high-availability-and-scalability-arr-and-nlb)

-   Configuring Microsoft Windows Server

    [Network Load Balancing Overview](https://technet.microsoft.com/library/hh831698(v=ws.11).aspx).

    This information also applies to IIS Network Load Balancing (NLB) clusters in Windows Server 2008, Windows Server 2008 R2, or Windows Server 2012.

    **Note**  
    The IIS Network Load Balancing functionality in Windows Server 2012 is generally the same as in Windows Server 2008 R2. However, some task details are changed in Windows Server 2012. For information on new ways to do tasks, see [Common Management Tasks and Navigation in Windows](https://technet.microsoft.com/library/hh831491.aspx).

## <a href="" id="bkmk-clusterscsmode"></a>Support for clustered file servers when running SCS mode

Running App-V Server in Shared Content Store (SCS) mode with clustered file servers is supported.

The following steps can be used to enable this configuration:

-   Configure the App-V client to run in Shared Content Store mode. For more information, see [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md).

-   Configure the file server cluster, configured in either the scale out mode (which started with Windows Server 2012) or the earlier clustering mode, with a virtual SAN.

The following steps can be used to validate the configuration:

1.  Add a package on the publishing server. For more information about adding a package, see [How to Add or Upgrade Packages by Using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md).

2.  Perform a publishing refresh on the computer running the App-V client and open an application.

3.  Switch cluster nodes mid-publishing refresh and mid-streaming to ensure failover works correctly.

Review the following for more information about configuring Windows Server Failover clusters:

-   [Create a Failover Cluster](https://technet.microsoft.com/library/dn505754(v=ws.11).aspx).

-   [Use Cluster Shared Volumes in a Failover Cluster](https://technet.microsoft.com/library/jj612868(v=ws.11).aspx).

## <a href="" id="bkmk-sqlmirroring"></a>Support for Microsoft SQL Server Mirroring

Using Microsoft SQL Server mirroring, where the App-V management server database is mirrored utilizing two SQL Server instances, for App-V management server databases is supported.

Review the following for more information about configuring Microsoft SQL Server Mirroring:

-   [Prepare a Mirror Database for Mirroring (SQL Server)](https://technet.microsoft.com/library/ms189053.aspx)

-   [Establish a Database Mirroring Session Using Windows Authentication (SQL Server Management Studio)](https://msdn.microsoft.com/library/ms188712.aspx)

The following steps can be used to validate the configuration:

1.  Initiate a Microsoft SQL Server Mirroring session.

2.  Select **Failover** to designate a new master Microsoft SQL Server instance.

3.  Verify that the App-V management server continues to function as expected after the failover.

The connection string on the management server can be modified to include **failover partner = &lt;server2&gt;**. This will only help when the primary on the mirror has failed over to the secondary and the computer running the App-V client is doing a fresh connection (say after reboot).

Use the following steps to modify the connection string to include **failover partner = &lt;server2&gt;**:

**Important**  
This topic describes how to change the Windows registry by using Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. You should make a backup copy of the registry files (System.dat and User.dat) before you change the registry. Microsoft cannot guarantee that the problems that might occur when you change the registry can be resolved. Change the registry at your own risk.


1.  Login to the management server and open **regedit**.

2.  Navigate to **HKEY\_LOCAL\_MACHINE** \\ **Software** \\ **Microsoft** \\ **AppV** \\ **Server** \\ **ManagementService**.

3.  Modify the **MANAGEMENT\_SQL\_CONNECTION\_STRING** value with the **failover partner = &lt;server2&gt;**.

4.  Restart management service using the IIS console.

    **Note**  
    Database Mirroring is on the list of Deprecated Database Engine Features for Microsoft SQL Server 2012 due to the **AlwaysOn** feature available starting with Microsoft SQL Server 2012.

Click any of the following links for more information:

-   [Prepare a Mirror Database for Mirroring (SQL Server)](https://technet.microsoft.com/library/ms189053.aspx).

-   [Establish a Database Mirroring Session Using Windows Authentication (SQL Server Management Studio)](https://technet.microsoft.com/library/ms188712(v=sql.130).aspx).

-   [Deprecated Database Engine Features in SQL Server 2012](https://msdn.microsoft.com/library/ms143729(v=sql.110).aspx).

## <a href="" id="bkmk-sqlalwayson"></a>Support for Microsoft SQL Server Always On configuration

The App-V management server database supports deployments to computers running Microsoft SQL Server with the **Always On** configuration. For more information, see [Always On Availability Groups (SQL Server)](https://technet.microsoft.com/library/hh510230.aspx).

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Planning to Deploy App-V](appv-planning-to-deploy-appv.md)
