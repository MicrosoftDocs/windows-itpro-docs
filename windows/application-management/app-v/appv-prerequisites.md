---
title: App-V Prerequisites (Windows 10)
description: App-V Prerequisites
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# App-V for Windows 10 prerequisites

>Applies to: Windows 10, version 1607

Before installing App-V for Windows 10, ensure that you have installed all of the following required prerequisite software.

For a list of supported operating systems and hardware requirements for the App-V server, sequencer, and client, see [App-V Supported Configurations](appv-supported-configurations.md).

## Summary of software preinstalled on each operating system

The following table indicates the software that is already installed for different operating systems.

|Operating system|Prerequisite description|
|---|---|
|Windows 10|All prerequisite software is already installed.|
|Windows 8.1|All prerequisite software is already installed.<br>If you're running Windows 8, upgrade to Windows 8.1 before using App-V.|
|Windows Server 2016|The following prerequisite software is already installed:<br>- Microsoft .NET Framework 4.5<br>- Windows PowerShell 3.0<br><br>Installing Windows PowerShell requires a restart.|
|Windows 7|No prerequisite software is installed. You must install the software before you can install App-V.|

## App-V Server prerequisite software

Install the required prerequisite software for the App-V server components.

### What to know before you start

The account you use to install the App-V Server components must have:

* Administrative rights on the computer on which you are installing the components.
* The ability to query Active Directory Domain Services.

You must specify a port where each component will be hosted, and add the associated firewall rules to allow incoming requests to the specified ports.

Web Distributed Authoring and Versioning (WebDAV) is automatically disabled for the Management Service.

The following are supported deployment scenarios for App-V:

* A stand-alone deployment where all components are deployed on the same server.
* A distributed deployment.

The following deployment scenarios are not supported:

* Installing side-by-side instances of multiple App-V Server versions on the same server.
* Installing the App-V server components on a computer that runs server core or domain controller.

|Item|Description|
|---|---|
|Account for installing the App-V Server|The account that you use to install the App-V Server components must have:<br>- Administrative rights on the computer on which you are installing the components.<br>- The ability to query Active Directory Domain Services.|
|Port and firewall|- Specify a port where each component will be hosted.<br>- Add the associated firewall rules to allow incoming requests to the specified ports.|
|Web Distributed Authoring and Versioning (WebDAV)|WebDAV is automatically disabled for the Management Service.|
|Supported deployment scenarios|- A stand-alone deployment, where all components are deployed on the same server.<br>- A distributed deployment.|
|Unsupported deployment scenarios|- Installing side-by-side instances of multiple App-V Server versions on the same server.<br>- Installing the App-V server components on a computer that runs server core or domain controller.|

### Management server prerequisite software

|Prerequisites and required settings|Details|
|---|---|
|Supported version of SQL Server|For supported versions, see [App-V supported configurations](appv-supported-configurations.md).|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)|Installing Windows PowerShell 3.0 requires a restart.|
|Download and install [KB2533623](https://support.microsoft.com/kb/2533623)|Applies to Windows 7 only.|
|[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)||
|64-bit ASP.NET registration||
|Windows Server Web Server Role|This role must be added to a server operating system that is supported for the Management server.|
|Web Server (IIS) Management Tools|Select **IIS Management Scripts and Tools**.|
|Web Server Role Services|Common HTTP features:<br>- Static content<br>- Default document<br><br>Application development:<br>- ASP<span></span>.NET<br>- .NET Extensibility<br>- ISAPI Extensions<br>- ISAPI Filters<br><br>Security:<br>- Windows Authentication<br>- Request Filtering<br><br>Management Tools:<br>- IIS Management Console|
|Default installation location|%PROGRAMFILES%\Microsoft Application Virtualization Server|
|Location of the Management database|SQL Server database name, SQL Server database instance name, and database name.|
|Management console and Management database permissions|A user or group that can access the Management console and database after the deployment is complete. Only these users or groups can access the Management console and database unless the Management console is used to add additional administrators.|
|Management service website name|Name for the Management console website.|
|Management service port binding|Unique port number for the Management service. This port cannot be used by another process on the computer.|

>[!IMPORTANT]
>JavaScript must be enabled on the browser that opens the Web Management Console.

### Management server database prerequisite software

The Management database is only required if you use the App-V Management server.

|Prerequisites and required settings|Details|
|---|---|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)||
|Default installation location|%PROGRAMFILES%\Microsoft Application Virtualization Server|
|Custom SQL Server instance name (if applicable)|Format to use: **INSTANCENAME**<br>This format assumes that the installation is on the local computer.<br>If you specify the name with the format **SVR\INSTANCE**, the installation will fail.|
|Custom database name (if applicable)|Unique database name.<br>Default: AppVManagement|
|Management server location|Machine account on which the Management server is deployed.<br>Format to use: **Domain\MachineAccount**|
|Management server installation administrator|Account used to install the Management server.<br>Format to use: **Domain\AdministratorLoginName**|
|Microsoft SQL Server Service Agent|Configure the Management database computer so that the Microsoft SQL Server Agent service is restarted automatically. For instructions, see [Configure SQL Server Agent to restart services automatically](https://technet.microsoft.com/magazine/gg313742.aspx).|

### Publishing server prerequisite software

|Prerequisites and required settings|Details|
|---|---|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)||
|64-bit ASP.NET registration||
|Web Server role|This role must be added to a server operating system that is supported for the Management server.|
|Web Server (IIS) Management Tools|Select **IIS Management Scripts and Tools**.|
|Web Server Role Services|Common HTTP features:<br>- Static content<br>- Default document<br><br>Application development:<br>- ASP<span></span>.NET<br>- .NET Extensibility<br>- ISAPI Extensions<br>- ISAPI Filters<br><br>Security:<br>- Windows Authentication<br>- Request Filtering<br><br>Management Tools:<br>- IIS Management Console|
|Default installation location|%PROGRAMFILES%\Microsoft Application Virtualization Server|
|Management service URL|URL of the App-V Management service. This is the port with which the Publishing server communicates.<br>Management server and Publishing server are installed on the same server, use the format **https://<span></span>localhost:12345**.<br>If the Management server and Publishing server are installed on different servers, use the format **https:<span></span>//MyAppvServer<span></span>.MyDomain<span></span>.com**.|
|Publishing service website name|Name for the Publishing website.|
|Publishing service port binding|Unique port number for the Publishing service. This port cannot be used by another process on the computer.|

### Reporting server prerequisite software

|Prerequisites and required settings|Details|
|---|---|
|Supported version of SQL Server|For supported versions, see [App-V supported configurations](appv-supported-configurations.md).|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)||
|64-bit ASP.NET registration||
|Windows Server Web Server role|This role must be added to a server operating system that is supported for the Management server.|
|Web Server (IIS) Management Tools|Select **IIS Management Scripts and Tools**.|
|Web Server Role Services|To reduce the risk of unwanted or malicious data being sent to the Reporting server, you should restrict access to the Reporting Web Service per your corporate security policy.<br><br>Common HTTP features:<br>- Static content<br>- Default document<br><br>Application development:<br>- ASP<span></span>.NET<br>- .NET Extensibility<br>- ISAPI Extensions<br>- ISAPI Filters<br><br>Security:<br>- Windows Authentication<br>- Request Filtering<br><br>- Management Tools:<br>- IIS Management Console|
|Default installation location|%PROGRAMFILES%\Microsoft Application Virtualization Server|
|Reporting service website name|Name for the Reporting website.|
|Reporting service port binding|Unique port number for the Reporting service. This port cannot be used by another process on the computer.|

### Reporting database prerequisite software

You only require the Reporting database if you're using the App-V Reporting server.

|Prerequisites and required settings|Details|
|---|---|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)||
|Default installation location|%PROGRAMFILES%\Microsoft Application Virtualization Server|
|Custom SQL Server instance name (if applicable)|Format to use: **INSTANCENAME**<br>his format assumes that the installation is on the local computer.<br>If you specify the name with the format **SVR\INSTANCE**, the installation will fail.|
|Custom database name (if applicable)|Unique database name.<br>Default: AppVReporting|
|Reporting server location|The Reporting server will be deployed on this machine account.<br>Format to use: **Domain\MachineAccount**|
|Reporting server installation administrator|Account used to install the Reporting server.<br>Format to use: **Domain\AdministratorLoginName**|
|Microsoft SQL Server Service and Microsoft SQL Server Service Agent|Configure these services to be associated with user accounts that have access to query AD DS.|

## Sequencer prerequisite software

What to know before installing the prerequisites:

* Best practice: The computer that runs the sequencer should have the same hardware and software configurations as the computers running the virtual applications.

* The sequencing process is resource-intensive, so make sure that the computer running the sequencer has plenty of memory, a fast processor, and a fast hard drive. The system requirements of locally installed applications must not exceed those of the sequencer. For more information, see [App-V supported configurations](appv-supported-configurations.md).

|Prerequisite|Details|
|---|---|
|[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)||
|[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)|Installing Windows PowerShell 3.0 requires a restart.|
|[KB2533623](https://support.microsoft.com/kb/2533623)|Applies to Windows 7 only: download and install the KB.|

## Related topics

* [Planning for App-V](appv-planning-for-appv.md)
* [App-V Supported Configurations](appv-supported-configurations.md)
