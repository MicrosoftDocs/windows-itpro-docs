---
title: App-V 5.0 SP3 Prerequisites
description: App-V 5.0 SP3 Prerequisites
author: dansimp
ms.assetid: fa8d5578-3a53-4e8a-95c7-e7a5f6e4a31c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# App-V 5.0 SP3 Prerequisites


Before installing Microsoft Application Virtualization (App-V) 5.0 SP3, ensure that you have installed all of the following required prerequisite software.

For a list of supported operating systems and hardware requirements for the App-V Server, Sequencer, and Client, see [App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md).

## Summary of software preinstalled on each operating system


The following table indicates the software that is already installed for different operating systems.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Prerequisite description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>All of the prerequisite software is already installed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8</p>
<p>Windows Server 2012</p></td>
<td align="left"><p>The following prerequisite software is already installed:</p>
<ul>
<li><p>Microsoft .NET Framework 4.5</p></li>
<li><p>Windows PowerShell 3.0</p>
<div class="alert">
<strong>Note</strong>  
<p>Installing PowerShell 3.0 requires a restart.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>The prerequisite software is not already installed. You must install it before you can install App-V.</p></td>
</tr>
</tbody>
</table>

 

## App-V Server prerequisite software


Install the required prerequisite software for the App-V 5.0 SP3 Server components.

### What to know before you start

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Account for installing the App-V Server</p></td>
<td align="left"><p>The account that you use to install the App-V Server components must have:</p>
<ul>
<li><p>Administrative rights on the computer on which you are installing the components.</p></li>
<li><p>The ability to query Active Directory Domain Services.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Port and firewall</p></td>
<td align="left"><ul>
<li><p>Specify a port where each component will be hosted.</p></li>
<li><p>Add the associated firewall rules to allow incoming requests to the specified ports.</p></li>
</ul>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Distributed Authoring and Versioning (WebDAV)</p></td>
<td align="left"><p>WebDAV is automatically disabled for the Management Service.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Supported deployment scenarios</p></td>
<td align="left"><ul>
<li><p>A stand-alone deployment, where all components are deployed on the same server.</p></li>
<li><p>A distributed deployment.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Unsupported deployment scenarios</p></td>
<td align="left"><ul>
<li><p>Installing the App-V Server on a computer that runs any previous version or component of App-V.</p></li>
<li><p>Installing the App-V server components on a computer that runs server core or domain controller.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Management server prerequisite software

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisites and required settings</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p></td>
<td align="left"><p>For supported versions, see [App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)</p></td>
<td align="left"><p>Installing PowerShell 3.0 requires a restart.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Download and install [KB2533623](https://support.microsoft.com/kb/2533623)</p></td>
<td align="left"><p>Applies to Windows 7 only.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit ASP.NET registration</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server Web Server Role</p></td>
<td align="left"><p>This role must be added to a server operating system that is supported for the Management server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Web Server (IIS) Management Tools</p></td>
<td align="left"><p>Click <strong>IIS Management Scripts and Tools</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Server Role Services</p></td>
<td align="left"><p><strong>Common HTTP Features:</strong></p>
<ul>
<li><p>Static Content</p></li>
<li><p>Default Document</p></li>
</ul>
<p><strong>Application Development:</strong></p>
<ul>
<li><p>ASP.NET</p></li>
<li><p>.NET Extensibility</p></li>
<li><p>ISAPI Extensions</p></li>
<li><p>ISAPI Filters</p></li>
</ul>
<p><strong>Security:</strong></p>
<ul>
<li><p>Windows Authentication</p></li>
<li><p>Request Filtering</p></li>
</ul>
<p><strong>Management Tools:</strong></p>
<ul>
<li><p>IIS Management Console</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Default installation location</p></td>
<td align="left"><p>%PROGRAMFILES%\Microsoft Application Virtualization Server</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Location of the Management database</p></td>
<td align="left"><p>SQL Server database name, SQL Server database instance name, and database name.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management console and Management database permissions</p></td>
<td align="left"><p>A user or group that can access the Management console and database after the deployment is complete. Only these users or groups will have access to the Management console and database unless additional administrators are added by using the Management console.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Management service website name</p></td>
<td align="left"><p>Name for the Management console website.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management service port binding</p></td>
<td align="left"><p>Unique port number for the Management service. This port cannot be used by another process on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Silverlight 5</p></td>
<td align="left"><p>The Management console is available only if Silverlight is installed.</p></td>
</tr>
</tbody>
</table>

 

### Management server database prerequisite software

The Management database is required only if you are using the App-V 5.0 SP3 Management server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisites and required settings</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Default installation location</p></td>
<td align="left"><p>%PROGRAMFILES%\Microsoft Application Virtualization Server</p></td>
</tr>
<tr class="even">
<td align="left"><p>Custom SQL Server instance name (if applicable)</p></td>
<td align="left"><p>Format to use: <strong>INSTANCENAME</strong></p>
<p>This format is based on the assumption that the installation is on the local computer.</p>
<p>If you specify the name with the format <strong>SVR\INSTANCE</strong>, the installation will fail.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Custom database name (if applicable)</p></td>
<td align="left"><p>Unique database name.</p>
<p>Default: AppVManagement</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management server location</p></td>
<td align="left"><p>Machine account on which the Management server is deployed.</p>
<p>Format to use: Domain\MachineAccount</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Management server installation administrator</p></td>
<td align="left"><p>Account used to install the Management server.</p>
<p>Format to use: Domain\AdministratorLoginName</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft SQL Server Service Agent</p></td>
<td align="left"><p>Configure the Management database computer so that the Microsoft SQL Server Agent service is restarted automatically. For instructions, see [Configure SQL Server Agent to Restart Services Automatically](https://technet.microsoft.com/magazine/gg313742.aspx).</p></td>
</tr>
</tbody>
</table>

 

### Publishing server prerequisite software

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisites and required settings</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>64-bit ASP.NET registration</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server Web Server Role</p></td>
<td align="left"><p>This role must be added to a server operating system that is supported for the Management server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Server (IIS) Management Tools</p></td>
<td align="left"><p>Click <strong>IIS Management Scripts and Tools</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Web Server Role Services</p></td>
<td align="left"><p><strong>Common HTTP Features:</strong></p>
<ul>
<li><p>Static Content</p></li>
<li><p>Default Document</p></li>
</ul>
<p><strong>Application Development:</strong></p>
<ul>
<li><p>ASP.NET</p></li>
<li><p>.NET Extensibility</p></li>
<li><p>ISAPI Extensions</p></li>
<li><p>ISAPI Filters</p></li>
</ul>
<p><strong>Security:</strong></p>
<ul>
<li><p>Windows Authentication</p></li>
<li><p>Request Filtering</p></li>
</ul>
<p><strong>Management Tools:</strong></p>
<ul>
<li><p>IIS Management Console</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Default installation location</p></td>
<td align="left"><p>%PROGRAMFILES%\Microsoft Application Virtualization Server</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management service URL</p></td>
<td align="left"><p>URL of the App-V Management service. This is the port with which the Publishing server communicates.</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Installation architecture</th>
<th align="left">Format to use for the URL</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Management server and Publishing server are installed on the same server</p></td>
<td align="left"><p>http://localhost:12345</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management server and Publishing server are installed on different servers</p></td>
<td align="left"><p>http://MyAppvServer.MyDomain.com</p></td>
</tr>
</tbody>
</table>
<p> </p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Publishing service website name</p></td>
<td align="left"><p>Name for the Publishing website.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Publishing service port binding</p></td>
<td align="left"><p>Unique port number for the Publishing service. This port cannot be used by another process on the computer.</p></td>
</tr>
</tbody>
</table>

 

### Reporting server prerequisite software

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisites and required settings</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p></td>
<td align="left"><p>For supported versions, see [App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit ASP.NET registration</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server Web Server Role</p></td>
<td align="left"><p>This role must be added to a server operating system that is supported for the Management server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Web Server (IIS) Management Tools</p></td>
<td align="left"><p>Click <strong>IIS Management Scripts and Tools</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Server Role Services</p></td>
<td align="left"><p>To reduce the risk of unwanted or malicious data being sent to the Reporting server, you should restrict access to the Reporting Web Service per your corporate security policy.</p>
<p><strong>Common HTTP Features:</strong></p>
<ul>
<li><p>Static Content</p></li>
<li><p>Default Document</p></li>
</ul>
<p><strong>Application Development:</strong></p>
<ul>
<li><p>ASP.NET</p></li>
<li><p>.NET Extensibility</p></li>
<li><p>ISAPI Extensions</p></li>
<li><p>ISAPI Filters</p></li>
</ul>
<p><strong>Security:</strong></p>
<ul>
<li><p>Windows Authentication</p></li>
<li><p>Request Filtering</p></li>
</ul>
<p><strong>Management Tools:</strong></p>
<ul>
<li><p>IIS Management Console</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Default installation location</p></td>
<td align="left"><p>%PROGRAMFILES%\Microsoft Application Virtualization Server</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Reporting service website name</p></td>
<td align="left"><p>Name for the Reporting website.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Reporting service port binding</p></td>
<td align="left"><p>Unique port number for the Reporting service. This port cannot be used by another process on the computer.</p></td>
</tr>
</tbody>
</table>

 

### Reporting database prerequisite software

The Reporting database is required only if you are using the App-V 5.0 SP3 Reporting server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisites and required settings</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Default installation location</p></td>
<td align="left"><p>%PROGRAMFILES%\Microsoft Application Virtualization Server</p></td>
</tr>
<tr class="even">
<td align="left"><p>Custom SQL Server instance name (if applicable)</p></td>
<td align="left"><p>Format to use: <strong>INSTANCENAME</strong></p>
<p>This format is based on the assumption that the installation is on the local computer.</p>
<p>If you specify the name with the format <strong>SVR\INSTANCE</strong>, the installation will fail.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Custom database name (if applicable)</p></td>
<td align="left"><p>Unique database name.</p>
<p>Default: AppVReporting</p></td>
</tr>
<tr class="even">
<td align="left"><p>Reporting server location</p></td>
<td align="left"><p>Machine account on which the Reporting server is deployed.</p>
<p>Format to use: Domain\MachineAccount</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Reporting server installation administrator</p></td>
<td align="left"><p>Account used to install the Reporting server.</p>
<p>Format to use: Domain\AdministratorLoginName</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft SQL Server Service and Microsoft SQL Server Service Agent</p></td>
<td align="left"><p>Configure these services to be associated with user accounts that have access to query AD DS.</p></td>
</tr>
</tbody>
</table>

 

## App-V client prerequisite software


Install the following prerequisite software for the App-V client.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p></td>
<td align="left"><p>Installing PowerShell 3.0 requires a restart.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[KB2533623](https://support.microsoft.com/kb/2533623)</p></td>
<td align="left"><p>Applies to Windows 7 only: Download and install the KB.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

## Remote Desktop Services client prerequisite software


Install the following prerequisite software for the App-V Remote Desktop Services client.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p></td>
<td align="left"><p>Installing PowerShell 3.0 requires a restart.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[KB2533623](https://support.microsoft.com/kb/2533623)</p></td>
<td align="left"><p>Applies to Windows 7 only: Download and install the KB.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

## Sequencer prerequisite software


**What to know before installing the prerequisites:**

-   Best practice: The computer that runs the Sequencer should have the same hardware and software configurations as the computers that will run the virtual applications.

-   The sequencing process is resource intensive, so make sure that the computer that runs the Sequencer has plenty of memory, a fast processor, and a fast hard drive. The system requirements of locally installed applications cannot exceed those of the Sequencer. For more information, see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Microsoft .NET Framework 4.5.1 (Web Installer)](https://www.microsoft.com//download/details.aspx?id=40773)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p></td>
<td align="left"><p>Installing PowerShell 3.0 requires a restart.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[KB2533623](https://support.microsoft.com/kb/2533623)</p></td>
<td align="left"><p>Applies to Windows 7 only: Download and install the KB.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784)</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 






## Related topics


[Planning for App-V 5.0](planning-for-app-v-50-rc.md)

[App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md)

 

 





