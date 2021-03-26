---
title: App-V Supported Configurations (Windows 10)
description: Learn the requirements to install and run App-V supported configurations in your Windows 10 environment.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/16/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# App-V Supported Configurations

>Applies to: Windows 10, version 1607; Window Server 2019; Windows Server 2016; Windows Server 2012 R2; Windows Server 2012; Windows Server 2008 R2 (Extended Security Update)

This topic specifies the requirements to install and run App-V in your Windows 10 environment. For information about prerequisite software such as the .NET Framework, see [App-V prerequisites](appv-prerequisites.md).

## App-V Server system requirements

This section lists the operating system and hardware requirements for all App-V server components.

### Unsupported App-V server scenarios

The App-V server does not support the following scenarios:

* Deployment to a computer that runs the Server Core installation option.
* Deployment to a computer that runs a previous version of the App-V server components. You can only install App-V side-by-side with the App-V 4.5 Lightweight Streaming Server (LWS) server. This scenario doesn't support side-by-side deployment of App-V and the Application Virtualization Management Service (HWS) 4.x.
* Deployment to a computer running Microsoft SQL Server Express edition.
* Deployment to a domain controller.
* Short paths. If you plan to use a short path, you must create a new volume.

### Management server operating system requirements

You can install the App-V Management server on a server running Windows Server 2008 R2 with SP1 (Extended Security Update) or later.

>[!IMPORTANT]
>Deploying a Management server role to a computer with Remote Desktop Services enabled is not supported.

### Management server hardware requirements

* A 64-bit (x64) processor that runs at 1.4 GHz or faster.
* 1 GB RAM (64-bit).
* 200 MB of available hard disk space, not including the content directory.

### Management server database requirements

The following table lists the SQL Server versions that the App-V Management database installation supports.

|SQL Server version|Service pack|System architecture|
|---|---|---|
|Microsoft SQL Server 2019||32-bit or 64-bit|
|Microsoft SQL Server 2017||32-bit or 64-bit|
|Microsoft SQL Server 2016|SP2|32-bit or 64-bit|
|Microsoft SQL Server 2014||32-bit or 64-bit|
|Microsoft SQL Server 2012|SP2|32-bit or 64-bit|
|Microsoft SQL Server 2008 R2|SP3|32-bit or 64-bit|

For more information on user configuration files with SQL server 2016 or later, see the [support article](https://support.microsoft.com/help/4548751/app-v-server-publishing-might-fail-when-you-apply-user-configuration-f).

### Publishing server operating system requirements

The App-V Publishing server can be installed on a server that runs Windows Server 2008 R2 with SP1 or later.

### Publishing server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

* A 64-bit (x64) processor that runs at 1.4 GHz or faster.
* 2 GB RAM (64-bit).
* 200 MB of available hard disk space, not including the content directory.

### Reporting server operating system requirements

You can install the App-V Reporting server on a server running Windows Server 2008 R2 with SP1 or later.

### Reporting server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

* A 64-bit (x64) processor that runs at 1.4 GHz or faster.
* 2 GB RAM (64-bit).
* 200 MB of available hard disk space, not including the content directory.

### Reporting server database requirements

The following table lists the SQL Server versions that are supported for the App-V Reporting database installation.

|SQL Server version|Service pack|System architecture|
|---|---|---|
|Microsoft SQL Server 2017||32-bit or 64-bit|
|Microsoft SQL Server 2016|SP2|32-bit or 64-bit|
|Microsoft SQL Server 2014||32-bit or 64-bit|
|Microsoft SQL Server 2012|SP2|32-bit or 64-bit|
|Microsoft SQL Server 2008 R2|SP3|32-bit or 64-bit|

## App-V client and Remote Desktop Services client requirements

With Windows 10, version 1607 and later releases, the App-V client is included with Windows 10 Enterprise and Windows 10 Education. The App-V client is no longer part of the Microsoft Desktop Optimization Pack. Before you can use the App-V client, it must be enabled, as described in [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

Similarly, the App-V Remote Desktop Services (RDS) client is included with Windows Server 2016 Standard and Windows Server 2016 Datacenter.

## Sequencer system requirements

Sequencer is now part of the Windows Assessment and Deployment Kit (Windows ADK). [Download the latest Windows ADK](/windows-hardware/get-started/adk-install) that is recommended for your version of the Windows OS. 

### Sequencer hardware requirements

See the Windows or Windows Server documentation for the hardware requirements.

## Supported versions of Microsoft Endpoint Configuration Manager

The App-V client works with Configuration Manager versions starting with Technical Preview for System Center Configuration Manager, version 1606.

## Related topics

* [Planning to deploy App-V](appv-planning-to-deploy-appv.md)
* [App-V prerequisites](appv-prerequisites.md)