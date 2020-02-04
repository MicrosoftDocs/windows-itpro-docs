---
title: Planning for MBAM 2.5 High Availability
description: Planning for MBAM 2.5 High Availability
author: dansimp
ms.assetid: 1e29b30c-33f1-4a52-9442-8c1391f0049c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning for MBAM 2.5 High Availability


Microsoft BitLocker Administration and Monitoring (MBAM) can maintain high availability through use of one or more of the following technologies, which are described in the following sections:

-   [SQL Server AlwaysOn availability groups](#bkmk-alwayson)

-   [Microsoft SQL Server clustering](#bkmk-sql-clustering)

-   [IIS Network Load Balancing](#bkmk-load-balance)

-   [Database mirroring in SQL Server](#bkmk-db-mirroring)

-   [Backing up MBAM databases by using the Volume Shadow Copy Service (VSS)](#bkmk-vss)

Use the information in the following sections to help you understand the options to deploy MBAM in a highly available configuration.

## <a href="" id="bkmk-alwayson"></a>Support for SQL Server AlwaysOn availability groups


MBAM enables you to configure and manage availability groups for the databases in Microsoft SQL Server. An availability group for MBAM supports a failover environment where the Compliance and Audit Database and the Recovery Database fail over together rather than separately.

An availability group supports a set of read/write primary databases and one to four sets of corresponding secondary databases. Optionally, secondary databases can be made available for read-only permission, some backup operations, or for both.

For information about how to set up availability groups, see [AlwaysOn Availability Groups](https://go.microsoft.com/fwlink/?LinkId=393277).

## <a href="" id="bkmk-sql-clustering"></a>Microsoft SQL Server clustering


You can run the MBAM 2.5 Compliance and Audit Database and the Recovery Database on computers that are running SQL Server clusters.

## <a href="" id="bkmk-load-balance"></a>IIS Network Load Balancing


You can use Network Load Balancing to configure a highly available environment for computers that are running the Administration and Monitoring Website (also known as Help Desk), the Self-Service Portal, and the web services, which are deployed through Internet Information Services (IIS).

### Prerequisites

Before configuring load balancing, ensure that you have met the following prerequisites:

-   A load balancer must be available. You can use load balancers from Microsoft or another company. For more information about Microsoft load balancer technology, see [Build a Web Farm with IIS Servers](https://go.microsoft.com/fwlink/?LinkId=393326).

-   At least two servers are running IIS and have met all of the MBAM prerequisites to support its web features, including ASP.NET MVC 4.

-   MBAM databases and reports are running on a server.

### <a href="" id="-------------mbam-specific-changes-that-are-required-to-enable-load-balancing"></a> MBAM-specific changes that are required to enable Load Balancing

Complete the following tasks:

1.  Register a Service Principal Name (SPN) for the virtual host name under the domain account that you are using for the web application pools. For example, if the virtual host name is mbamvirtual.contoso.com, and the domain account used for the web application pools is contoso\\mbamapppooluser, the following command registers the SPN appropriately.

    `Setspn -s http//mbamvirtual contoso\mbamapppooluser`

    `Setspn -s http//mbamvirtual.contoso.com contoso\mbamapppooluser`

2.  Configure the following MBAM web features:

    -   On each server that will host the MBAM web features, use the same domain account for the application pool administrative credentials.

    -   Specify a host name that matches the virtual host name (DNS name) of the Load Balancing cluster. For example, when you install MBAM on a server called "NLB1" with a virtual host name of **mbamvirtual.contoso.com**, ensure that the host name that you specify in the Windows PowerShell cmdlet is **mbamvirtual.contoso.com**.

3.  If you are configuring the websites in a web farm with a load balancer, you must configure the websites to use the same machine key.

    For more information, see the following sections in [machineKey Element (ASP.NET Settings Schema)](https://msdn.microsoft.com/library/vstudio/w8h3skw9.aspx):

    -   Machine Key Explained

    -   Web Farm Deployment Considerations

    For instructions about how to automatically generate a key, see [Generate a Machine Key (IIS 7)](https://technet.microsoft.com/library/cc772287.aspx).

The information about Load Balancing also applies to IIS Network Load Balancing (NLB) clusters in Windows Server 2012 or Windows Server 2008 R2. The IIS Network Load Balancing functionality in Windows Server 2012 is generally the same as in Windows Server 2008 R2. However, some task details are different in Windows Server 2012. For information about new ways to do tasks, see [Common Management Tasks and Navigation in Windows Server 2012 R2 Preview and Windows Server 2012](https://go.microsoft.com/fwlink/?LinkId=316371).

## <a href="" id="bkmk-db-mirroring"></a>Database mirroring in SQL Server


MBAM supports the use of SQL Server mirroring, where the Compliance and Audit Database and the Recovery Database are mirrored by using two instances of SQL Server for each database. Before implementing mirroring, be aware that mirroring is slowly being phased out, in favor of availability groups, which are discussed earlier in this topic.

To implement mirroring for MBAM, you must specify the appropriate connection strings for the mirrored database configuration by using the **Enable-MbamWebApplication** Windows PowerShell cmdlet. For more information about the MBAM 2.5 Windows PowerShell cmdlets, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md).

### Examples of implementing SQL Server mirroring by using Windows PowerShell

The following examples show how you might implement SQL Server mirroring by using Windows PowerShell cmdlets.

**Example 1**

``` syntax
Enable-MbamWebApplication -AdministrationPortal -ComplianceAndAuditDBConnectionString 'Integrated Security=SSPI;Data Source=MyDatabaseServer;Failover Partner=myMirrorServerAddress;Initial Catalog="MBAM Compliance Status";' -RecoveryDBConnectionString 'Integrated Security=SSPI;Data Source=MyDatabaseServer;Failover Partner=myMirrorServerAddress;Initial Catalog="MBAM Recovery and Hardware";' -AdvancedHelpdeskAccessGroup “MyDomain\AdvancedUserGroup” -HelpdeskAccessGroup “MyDomain\StandardUserGroup” -ReportsReadOnlyAccessGroup "MyDomain\ReportUserGroup" -ReportUrl "https://MyReportServer/ReportServer" -Port 443 -WebServiceApplicationPoolCredential (Get-Credential) -Certificate (dir cert:\LocalMachine\My\E2A7EA5533890D6567E40DFC46F53B3D31D6B689)
```

**Example 2**

``` syntax
Enable-MbamWebApplication -SelfServicePortal -ComplianceAndAuditDBConnectionString 'Integrated Security=SSPI;Data Source=MyDatabaseServer; Failover Partner=myMirrorServerAddress;Initial Catalog="MBAM Compliance Status";' -RecoveryDBConnectionString 'Integrated Security=SSPI;Data Source=MyDatabaseServer;I Failover Partner=myMirrorServerAddress;Initial Catalog="MBAM Recovery and Hardware";' -Port 443 -WebServiceApplicationPoolCredential (Get-Credential) -Certificate (dir cert:\LocalMachine\My\E2A7EA5533890D6567E40DFC46F53B3D31D6B689)
```

### More information about SQL Server mirroring

The following links provide more information about configuring SQL Server mirroring:

-   [How to: Prepare a Mirror Database for Mirroring (Transact-SQL)](https://go.microsoft.com/fwlink/?LinkId=316375)

-   [Establish a Database Mirroring Session Using Windows Authentication (SQL Server Management Studio)](https://go.microsoft.com/fwlink/?LinkId=316377)

## <a href="" id="bkmk-vss"></a>Backing up MBAM databases by using the Volume Shadow Copy Service (VSS)


MBAM provides a Volume Shadow Copy Service (VSS) writer, called the Microsoft BitLocker Administration and Management Writer. This VSS writer facilitates the backup of the Compliance and Audit Database and the Recovery Database.

The VSS writer is registered on every server where you enable an MBAM web application. The MBAM VSS writer depends on the SQL Server VSS Writer, which is registered as part of the Microsoft SQL Server installation. Any backup technology that uses VSS writers to perform backup can discover the MBAM VSS writer.



## Related topics


[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




