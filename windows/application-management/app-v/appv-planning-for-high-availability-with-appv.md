---
title: Planning for High Availability with App-V Server
description: Planning for High Availability with App-V Server
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Planning for high availability with App-V Server

>Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) system configurations can take advantage of options that maintain a high available service level.

The following sections will he following sections to help you understand the options to deploy App-V in a highly available configuration.

## Support for Microsoft SQL Server clustering

You can run the App-V Management and Reporting databases on computers running Microsoft SQL Server clusters. However, you must install the databases using scripts.

For deployment instructions, see [How to deploy the App-V databases by using SQL scripts](appv-deploy-appv-databases-with-sql-scripts.md).

## Support for IIS network load balancing

You can use Internet Information Services' (IIS) network load balancing (NLB) to configure a highly available environment for computers running the App-V Management, Publishing, and Reporting services that are deployed through IIS.

Review the following articles to learn more about configuring IIS and NLB for computers running Windows Server operating systems:

* [Achieving High Availability and Scalability - ARR and NLB](https://www.iis.net/learn/extensions/configuring-application-request-routing-arr/achieving-high-availability-and-scalability-arr-and-nlb) describes how to configure IIS 7.0.

* [Network load balancing overview](<https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831698(v=ws.11)>) will tell you more about how to configure Microsoft Windows Server.

    This information also applies to IIS NLB clusters in Windows Server 2008, Windows Server 2008 R2, or Windows Server 2012.

>[!NOTE]
>The IIS NLB functionality in Windows Server 2012 is generally the same as in Windows Server 2008 R2. However, some task details have changed in Windows Server 2012. To learn how to work with these changes, see [Common management tasks and navigation in Windows](<https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831491(v=ws.11)>).

## Support for clustered file servers when running SCS mode

Running App-V Server in Shared Content Store (SCS) mode with clustered file servers is supported.

To enable SCS mode configurations, follow these steps:

1. Configure the App-V client to run in SCS mode. For more information, see [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md).
2. Configure the file server cluster, configured in either the scale out mode (which started with Windows Server 2012) or the earlier clustering mode, with a virtual SAN.

The following steps can be used to validate the configuration:

1. Add a package on the publishing server. To learn how to add a package, see [How to add or upgrade packages by using the Management console](appv-add-or-upgrade-packages-with-the-management-console.md).
2. Perform a publishing refresh on the computer running the App-V client and open an application.
3. Switch cluster nodes mid-publishing refresh and mid-streaming to ensure failover works correctly.

Review the following articles to learn more about configuring Windows Server failover clusters:

* [Create a failover cluster](<https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn505754(v=ws.11)>)
* [Use cluster shared volumes in a failover cluster](<https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj612868(v=ws.11)>)

## Support for Microsoft SQL Server mirroring

Using Microsoft SQL Server mirroring, where the App-V management server database is mirrored utilizing two SQL Server instances, for App-V management server databases is supported.

Review the following to learn more about how to configure Microsoft SQL Server mirroring:

* [Prepare a mirror database for mirroring (SQL Server)](https://docs.microsoft.com/sql/database-engine/database-mirroring/prepare-a-mirror-database-for-mirroring-sql-server)
* [Establish a database mirroring session using Windows Authentication (SQL Server Management Studio)](https://msdn.microsoft.com/library/ms188712.aspx) (FIX LINK)

The following steps can be used to validate the configuration:

1. Initiate a Microsoft SQL Server Mirroring session.
2. Select **Failover** to designate a new master Microsoft SQL Server instance.
3. Verify that the App-V management server continues to function as expected after the failover.

The connection string on the management server can be modified to include ```failover partner = <server2>```. This will only help when the primary on the mirror has failed over to the secondary and the computer running the App-V client is doing a fresh connection (say after reboot).

Use the following steps to modify the connection string to include ```failover partner = <server2>```:

>[!IMPORTANT]
>This process involves changing the Windows registry with Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. Always make a backup copy of the registry files (**System.dat** and **User.dat**) before changing the registry. Microsoft can't guarantee that problems caused by changing the registry can be resolved, so change the registry at your own risk.

1. Log in to the management server and open **regedit**.
2. Navigate to **HKEY\_LOCAL\_MACHINE** \\ **Software** \\ **Microsoft** \\ **AppV** \\ **Server** \\ **ManagementService**.
3. Modify the **MANAGEMENT\_SQL\_CONNECTION\_STRING** value with the ```failover partner = <server2>``` value.
4. Restart management service using the IIS console.
   >[!NOTE]
   >Database Mirroring is on the list of [deprecated database engine features in SQL Server 2012](<https://msdn.microsoft.com/library/ms143729(v=sql.110).aspx>) due to the **AlwaysOn** feature available starting with Microsoft SQL Server 2012.

Click any of the following links for more information:

* [Prepare a mirror database for mirroring (SQL Server)](https://docs.microsoft.com/sql/database-engine/database-mirroring/prepare-a-mirror-database-for-mirroring-sql-server).
* [Establish a database mirroring session using Windows Authentication (SQL Server Management Studio)](https://docs.microsoft.com/sql/database-engine/database-mirroring/establish-database-mirroring-session-windows-authentication).
* [Deprecated database engine features in SQL Server 2012](<https://msdn.microsoft.com/library/ms143729(v=sql.110).aspx>).

## Support for Microsoft SQL Server Always On configuration

The App-V management server database supports deployments to computers running Microsoft SQL Server with the **Always On** configuration. For more information, see [Always On Availability Groups (SQL Server)](https://docs.microsoft.com/sql/database-engine/availability-groups/windows/always-on-availability-groups-sql-server).





## Related topics

* [Planning to deploy App-V](appv-planning-to-deploy-appv.md)
