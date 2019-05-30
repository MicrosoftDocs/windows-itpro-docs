---
title: Design the MED-V Server Infrastructure
description: Design the MED-V Server Infrastructure
author: dansimp
ms.assetid: 2781040f-880e-4e16-945d-a38c0adb4151
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Design the MED-V Server Infrastructure


In this topic, you will design the server infrastructure for each MED-V instance. This includes determining whether the SQL Server instance will exist on the MED-V server or on a remote server, as well as the size of the SQL Server database. You will also determine the location of the management console.

## Design and Place the Server for Each MED-V Instance


The MED-V server implements policies and stores state and history data about its clients.

### Form Factor

MED-V recommends using a 2.8-GHz dual core CPU server with 2 GB of RAM. This recommendation is based on the assumption that the MED-V server will run on a dedicated machine and that SQL Server and the MED-V management console will run on separate machines.

Given this workload, the MED-V server should be relatively lightly loaded. In the absence of specific architectural guidance on the server form factor, design the server using the MED-V recommendation, with memory that matches the organization’s standard form factor. The MED-V server can be run on a virtual machine (VM) on Windows Server 2008 Hyper-V. If a VM will be used, ensure that it has access to CPU and memory resources equivalent to those specified for a physical machine.

The disk capacity the MED-V server requires must be sufficient to store the MED-V workspace configuration files. A MED-V workspace can only use one VM, and one policy, for one or more users. Therefore, the number of MED-V workspaces that must be stored depends on the degree to which different policies are required for different users of the same VM, as well as the number of VMs that will be used. The MED-V workspace XML files are around 30 KB in size for a typical MED-V workspace. To determine the required disk capacity, multiply 30 KB by the number of MED-V workspaces that the MED-V server will store.

The MED-V server’s most important network connections are the links to its clients, therefore place the server in a network location that provides the most available bandwidth and the most robust links to its clients.

### Fault Tolerance

There can only be one active MED-V server in a MED-V instance, and MED-V does not include standard capabilities to place the server in a Microsoft Cluster Server (MSCS) cluster to provide fault tolerance. A passive backup server can be manually configured.

To decide whether a passive backup server should be manually configured for the MED-V instance, determine whether users will be permitted to use the MED-V images in offline mode. For information on offline mode, see [How to Configure a Domain User or Group](how-to-configure-a-domain-user-or-groupmedvv2.md). If users are not allowed to work offline, they will be unable to continue working in the event of a MED-V server failure, even if the MED-V workspace has already been started on the client. If offline work is permitted, for each MED-V workspace, determine how long the client is allowed to work offline before it must authenticate. This is the maximum amount of time that the server can be unavailable.

## Design and Place the SQL Server Database


The MED-V server uses the SQL Server database to store client status and events. You can install the SQL Server database on the same machine as the MED-V server or you can place it on a separate server running SQL Server, which can optionally be remote. You can share the database with other MED-V instances, in which case events and alerts from those instances will be stored in the same database, and reports will include events from all instances. You can install the database in an existing SQL Server instance, and the databases of other MED-V servers can reside in that same instance.

If you place the database server in a location that is remote from the MED-V server, across networks links that do not have sufficient bandwidth available, reports may be slow to load in the console and may not display the latest data from clients. Refer to the organization service level expectations that you determined in [Define the Project Scope](define-the-project-scope.md) and use that information to decide where to place the SQL Server database.

### Form Factor

If you will run SQL Server on the same server as MED-V, and if SQL Server will only be used to store data for that server, start with the MED-V recommendation and add resources for the SQL Server load. If SQL Server will store events and alerts from more than one MED-V instance, for information on how to scale up the server form factor, see the [Infrastructure Planning and Design Microsoft SQL Server 2008](https://go.microsoft.com/fwlink/?LinkId=163302) guide (http:// go.microsoft.com/fwlink/?LinkId=163302).

The size of the database depends on the number of client events that the database will store. Events are created by normal operation of the client, such as when a MED-V workspace is started, or when there is an error in the MED-V workspace. The default interval at which the client sends events is 1 minute.

To estimate the size of the database, determine the following:

-   Number of clients in the MED-V instance. The maximum is 5,000.

-   Typical event arrival rate. This rate depends on client usage behavior but is approximately 15 to 20 events per day per client.

-   Event size. The size is typically around 200 bytes.

-   Storage amount. The number of days for which events will be stored.

Multiply these values together to calculate the size of the required data storage in bytes, and then add a safety factor to account for the following:

-   Errors, which could create a large number of events from a client in a short period of time.

-   Database table and organizational space.

To approximate the infrastructure optimization per second (IOPs) requirement, use the above values, multiplying the typical event arrival rate by the number of clients in the instance. This yields the number of records that can be written per day. Divide that number by 86,400 to derive the number of records written per second. If a write operations can be equated with a single infrastructure optimization (IO) operation, this number is the write IOPs required. Add a buffer to that for reporting activity. This is difficult to determine but depends on the number of consoles in use with the instance and the frequency with which they are used to generate reports.

### Fault Tolerance

When MED-V client is running, if the server is unavailable, events will be backed up on the client and reports will be unavailable in the management console. Refer to the organization’s service level expectations determined in [Define the Project Scope](define-the-project-scope.md) to decide whether the design of a fault-tolerant SQL Server infrastructure is necessary.

MED-V does not provide support for running SQL Server in an MSCS cluster. In order to provide warm standby and to avoid data loss in the event of a failure, you can place SQL Server in a log shipping configuration. For information on log shipping, see the [Infrastructure Planning and Design Microsoft SQL Server 2008](https://go.microsoft.com/fwlink/?LinkId=163302) guide (https://go.microsoft.com/fwlink/?LinkId=163302).

## Design the Management Console


Part of the functionality of the MED-V management console is to test VMs before they are packed for distribution to MED-V clients. Therefore, the management console should be designed with a form factor that resembles, as closely as possible, the form factor of a typical MED-V client machine.

The management console application is installed together with the MED-V client and uses Microsoft Virtual PC 2007 SP1 with the hotfix that is described in Microsoft Knowledge Base article 974918. A client operating system must be used; the MED-V management console cannot run on the same system as the MED-V server.

You cannot share a management console with multiple MED-V server instances. The address of the MED-V server is specified during the installation of the management console’s MED-V client; this can be changed after installation, but at any time the management console can only work with a single MED-V server.

You can use multiple management consoles with a single MED-V server. To avoid conflicts, a mechanism is available that notifies other console users when one console has made changes to a MED-V workspace.

For each MED-V instance, determine how many management consoles will be needed and where they will be placed. Select a typical MED-V client form factor to be used for the management console.

## Related topics


[MED-V 1.0 SP1 Supported Configurations](med-v-10-sp1-supported-configurationsmedv-10-sp1.md)

[Configuring MED-V Server for Cluster Mode](configuring-med-v-server-for-cluster-mode.md)

[How to Install MED-V Client and MED-V Management Console](how-to-install-med-v-client-and-med-v-management-console.md)

[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

 

 





