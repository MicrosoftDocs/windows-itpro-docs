---
title: App-V 5.0 Prerequisites
description: App-V 5.0 Prerequisites
author: dansimp
ms.assetid: 9756b571-c785-4ce6-a95c-d4e134e89429
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V 5.0 Prerequisites


Before you begin the Microsoft Application Virtualization (App-V) 5.0 Setup, you should make sure that you have met the prerequisites to install the product. This topic contains information to help you successfully plan for preparing your computing environment before you deploy the App-V 5.0 features.

**Important**  
**The prerequisites in this article apply only to App-V 5.0**. For additional prerequisites that apply to App-V 5.0 Service Packs, see the following web pages:

-   [What's new in App-V 5.0 SP1](whats-new-in-app-v-50-sp1.md)

-   [About App-V 5.0 SP2](about-app-v-50-sp2.md)

-   [App-V 5.0 SP3 Prerequisites](app-v-50-sp3-prerequisites.md)

 

The following table lists prerequisite information that pertains to specific operating systems.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating systems</th>
<th align="left">Prerequisite description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Computers that are running:</p>
<ul>
<li><p>Windows 8</p></li>
<li><p>Windows Server 2012</p></li>
</ul></td>
<td align="left"><p>The following prerequisites are already installed:</p>
<ul>
<li><p>Microsoft .NET Framework 4.5 – you do not need Microsoft .NET Framework 4</p></li>
<li><p>Windows PowerShell 3.0</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Computers that are running:</p>
<ul>
<li><p>Windows 7</p></li>
<li><p>Windows Server 2008</p></li>
</ul></td>
<td align="left"><p>You may want to download the following KB:</p>
<p>[Microsoft Security Advisory: Insecure library loading could allow remote code execution](https://support.microsoft.com/kb/2533623)</p>
<p>Be sure to check for subsequent KBs that have superseded this one, and note that some KBs may require that you uninstall previous updates.</p></td>
</tr>
</tbody>
</table>

 

## Installation prerequisites for App-V 5.0


**Note**  
The following prerequisites are already installed for computers that run Windows 8.

 

Each of the App-V 5.0 features have specific prerequisites that must be met before the App-V 5.0 features can be successfully installed.

### Prerequisites for the App-V 5.0 client

The following table lists the installation prerequisites for the App-V 5.0 client:

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
<td align="left"><p><strong>Software requirements</strong></p></td>
<td align="left"><ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595) (http://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p>
<div class="alert">
<strong>Note</strong>  
<p>Installing PowerShell 3.0 requires a restart.</p>
</div>
<div>
 
</div></li>
<li><p>Download and install [KB2533623](https://support.microsoft.com/kb/2533623) (http://support.microsoft.com/kb/2533623)</p>
<p></p>
<div class="alert">
<strong>Important</strong>  
<p>You can download and install the previous KB article. However, it may have been replaced with a more recent version.</p>
</div>
<div>
 
</div></li>
<li><p>The client installer (.exe) will detect if it is necessary to install the following prerequisites, and it will do so accordingly:</p>
<p></p>
<ul>
<li><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784) (http://www.microsoft.com/download/details.aspx?id=40784)</p>
<p>This prerequisite is only required if you have installed Hotfix Package 4 for Application Virtualization 5.0 SP2 or later.</p>
<p></p></li>
<li><p>[The Microsoft Visual C++ 2010 Redistributable](https://www.microsoft.com/download/details.aspx?id=26999) (https://go.microsoft.com/fwlink/?LinkId=26999)</p>
<p></p></li>
<li><p>[Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://www.microsoft.com/download/details.aspx?id=5638) (http://www.microsoft.com/download/details.aspx?id=5638)</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Prerequisites for the App-V 5.0 Remote Desktop Services client

**Note**  
The following prerequisites are already installed for computers that run Windows Server 2012.

 

The following table lists the installation prerequisites for the App-V 5.0 Remote Desktop Services client:

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
<td align="left"><p><strong>Software requirements</strong></p></td>
<td align="left"><ul>
<li><p>[Microsoft.NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595) (http://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p>
<div class="alert">
<strong>Note</strong>  
<p>Installing PowerShell 3.0 requires a restart.</p>
</div>
<div>
 
</div></li>
<li><p>Download and install [KB2533623](https://go.microsoft.com/fwlink/?LinkId=286102 ) (https://go.microsoft.com/fwlink/?LinkId=286102)</p>
<p></p>
<div class="alert">
<strong>Important</strong>  
<p>You can download and install the previous KB article. However, it may have been replaced with a more recent version.</p>
</div>
<div>
 
</div></li>
<li><p>The client (.exe) installer will detect if it is necessary to install the following prerequisites, and it will do so accordingly:</p>
<p></p>
<ul>
<li><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784) (http://www.microsoft.com/download/details.aspx?id=40784)</p>
<p>This prerequisite is required only if you have installed Hotfix Package 4 for Application Virtualization 5.0 SP2 or later.</p>
<p></p></li>
<li><p>[The Microsoft Visual C++ 2010 Redistributable](https://www.microsoft.com/download/details.aspx?id=26999) (https://go.microsoft.com/fwlink/?LinkId=26999)</p>
<p></p></li>
<li><p>[Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)](https://www.microsoft.com/download/details.aspx?id=5638) (http://www.microsoft.com/download/details.aspx?id=5638)</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Prerequisites for the App-V 5.0 Sequencer

**Note**  
The following prerequisites are already installed for computers that run Windows 8 and Windows Server 2012.

 

The following table lists the installation prerequisites for the App-V 5.0 Sequencer. If possible, the computer that runs the Sequencer should have the same hardware and software configurations as the computers that will run the virtual applications.

**Note**  
If the system requirements of a locally installed application exceed the requirements of the Sequencer, you must meet the requirements of that application. Additionally, because the sequencing process is system resource-intensive, we recommend that the computer that runs the Sequencer has plenty of memory, a fast processor, and a fast hard drive. For more information see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

 

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
<td align="left"><p><strong>Software requirements</strong></p></td>
<td align="left"><ul>
<li><p>[Visual C++ Redistributable Packages for Visual Studio 2013](https://www.microsoft.com/download/details.aspx?id=40784) (http://www.microsoft.com/download/details.aspx?id=40784)</p>
<p>This prerequisite is required only if you have installed Hotfix Package 4 for Application Virtualization 5.0 SP2.</p>
<p></p></li>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p>
<p></p></li>
<li><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595) (http://www.microsoft.com/download/details.aspx?id=34595)</p>
<p></p></li>
<li><p>Download and install [KB2533623](https://support.microsoft.com/kb/2533623) (http://support.microsoft.com/kb/2533623)</p>
<p></p></li>
<li><p>For computers running Microsoft Windows Server 2008 R2 SP1, download and install [KB2533623](https://go.microsoft.com/fwlink/?LinkId=286102 ) (https://go.microsoft.com/fwlink/?LinkId=286102)</p>
<p></p>
<div class="alert">
<strong>Important</strong>  
<p>You can download and install either one of the previous KB articles. However, they may have been replaced with a more recent version.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Prerequisites for the App-V 5.0 server

**Note**  
The following prerequisites are already installed for computers that run Windows Server 2012:

-   Microsoft .NET Framework 4.5. This eliminates the Microsoft .NET Framework 4 requirement.

-   Windows PowerShell 3.0

-   Download and install [KB2533623](https://support.microsoft.com/kb/2533623) (http://support.microsoft.com/kb/2533623)

    **Important**  
    You can still download install the previous KB. However, it may have been replaced with a more recent version.

     

 

The following table lists the installation prerequisites for the App-V 5.0 server. The account that you use to install the server components must have administrative rights on the computer that you are installing on. This account must also have the ability to query Active Directory Directory Services. Before you install and configure the App-V 5.0 servers, you must specify a port where each component will be hosted. You must also add the associated firewall rules to allow incoming requests to the specified ports.

**Note**  
Web Distributed Authoring and Versioning (WebDAV) is automatically disabled for the Management Service.

 

The App-V 5.0 server is supported for a standalone deployment, where all the components are deployed on the same server, and a distributed deployment. Depending on the topology that you use to deploy the App-V 5.0 server, the data that you will need for each component will slightly change.

**Important**  
The installation of the App-V 5.0 server on a computer that runs any previous version or component of App-V is not supported. Additionally, the installation of the server components on a computer that runs Server Core or a Domain Controller is also not supported.

 

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
<td align="left"><p><strong>Management Server</strong></p></td>
<td align="left"><ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Windows PowerShell 3.0](https://www.microsoft.com/download/details.aspx?id=34595) (http://www.microsoft.com/download/details.aspx?id=34595)</p>
<div class="alert">
<strong>Note</strong>  
<p>Installing PowerShell 3.0 requires a restart.</p>
</div>
<div>
 
</div></li>
<li><p>Windows Web Server with the IIS role enabled and the following features: <strong>Common HTTP Features</strong> (static content and default document), <strong>Application Development</strong> (ASP.NET, .NET Extensibility, ISAPI Extensions and ISAPI Filters), <strong>Security</strong> (Windows Authentication, Request Filtering), <strong>Management Tools</strong> (IIS Management Console).</p></li>
<li><p>Download and install [KB2533623](https://support.microsoft.com/kb/2533623) (http://support.microsoft.com/kb/2533623)</p>
<p></p>
<div class="alert">
<strong>Important</strong>  
<p>You can still download install the previous KB. However, it may have been replaced with a more recent version.</p>
</div>
<div>
 
</div></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x64)](https://www.microsoft.com/download/details.aspx?id=13523) (http://www.microsoft.com/download/details.aspx?id=13523)</p></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=267110) (https://go.microsoft.com/fwlink/?LinkId=267110)</p></li>
<li><p>64-bit ASP.NET registration</p></li>
</ul>
<p>The App-V 5.0 server components are dependent but they have varying requirements and installation options that must be deployed. Use the following information to prepare your environment to run the App-V 5.0 management server.</p>
<ul>
<li><p>Installation location - by default this component will be installed to: <strong>%PROGRAMFILES%\Microsoft Application Virtualization Server</strong>.</p></li>
<li><p>Location of the App-V 5.0 management database - SQL Server Name, SQL Instance Name, Database Name.</p></li>
<li><p>Access rights for the App-V 5.0 management console - This is the user or the group that should be granted access to the management console at the end of the deployment. After the deployment, only these users will have access to the management console until additional administrators are added through the management console.</p>
<div class="alert">
<strong>Note</strong>  
<p>Security groups and single users are not supported. You must specify an AD DS group.</p>
</div>
<div>
 
</div></li>
<li><p>App-V 5.0 management service website name – specify a name for the website or use the default name.</p></li>
<li><p>App-V 5.0 management service port binding - this should be a unique port number that is not used by another website on the computer.</p></li>
<li><p>Support for Microsoft Silverlight– Microsoft Silverlight must be installed before the management console is available. While this is not a requirement for the deployment, the server must be able to support Microsoft Silverlight.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Management Database</strong></p></td>
<td align="left"><p></p>
<div class="alert">
<strong>Note</strong>  
<p>The database is required only when using the App-V 5.0 management server.</p>
</div>
<div>
 
</div>
<ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=267110)(https://go.microsoft.com/fwlink/?LinkId=267110)</p></li>
</ul>
<p>The App-V 5.0 server components are dependent but they have varying requirements and installation options that must be deployed. Use the following information to prepare your environment to run the App-V 5.0 management database.</p>
<ul>
<li><p>Installation location - by default this component will be installed to <strong>%PROGRAMFILES%\Microsoft Application Virtualization Server</strong>.</p></li>
<li><p>Custom SQL Server instance name (if applicable) – the format should be <strong>INSTANCENAME</strong>, because the installation assumes that it is on the local machine. If you specify the name with the following format, <strong>SVR\INSTANCE</strong> will fail.</p></li>
<li><p>Custom App-V 5.0 database name (if applicable) – you must specify a unique database name. The default value for the management database is <strong>AppVManagement</strong>.</p></li>
<li><p>App-V 5.0 management server location – specifies the machine account on which the management server is deployed. This should be specified in the following format <strong>Domain\MachineAccount</strong>.</p></li>
<li><p>App-V 5.0 management server installation administrator - specifies the account that will be used to install the App-V 5.0 management server. You should use the following format: <strong>Domain\AdministratorLoginName</strong>.</p></li>
<li><p>Microsoft SQL Server Service Agent - configure the computer running the App-V 5.0 Management Database so that Microsoft SQL Server Agent service is restarted automatically. For more information see [Configure SQL Server Agent to Restart Services Automatically](https://go.microsoft.com/fwlink/?LinkId=273725) (https://go.microsoft.com/fwlink/?LinkId=273725).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Reporting Server</strong></p></td>
<td align="left"><ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=267110)(https://go.microsoft.com/fwlink/?LinkId=267110)</p></li>
<li><div class="alert">
<strong>Note</strong>  
<p>To help reduce the risk of unwanted or malicious data being sent to the reporting server, you should restrict access to the Reporting Web Service per your corporate security policy.</p>
</div>
<div>
 
</div>
<p>Windows Web Server with the IIS role with the following features: <strong>Common HTTP Features</strong> (static content and default document), <strong>Application Development</strong> (ASP.NET, .NET Extensibility, ISAPI Extensions and ISAPI Filters), <strong>Security</strong> (Windows Authentication, Request Filtering), <strong>Security</strong> (Windows Authentication, Request Filtering), <strong>Management Tools</strong> (IIS Management Console)</p></li>
<li><p>64-bit ASP.NET registration</p></li>
<li><p>Installation location - by default this component is installed to <strong>%PROGRAMFILES%\Microsoft Application Virtualization Server</strong>.</p></li>
<li><p>App-V 5.0 reporting service website name – specifies the name of the website or the default name that will be used.</p></li>
<li><p>App-V 5.0 reporting service port binding - This should be a unique port number that is not already used by another website that runs on the computer.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Reporting Database</strong></p></td>
<td align="left"><p></p>
<div class="alert">
<strong>Note</strong>  
<p>The database is required only when using the App-V 5.0 reporting server.</p>
</div>
<div>
 
</div>
<ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=267110)(https://go.microsoft.com/fwlink/?LinkId=267110)</p></li>
</ul>
<p>The App-V 5.0 server components are dependent but they have varying requirements and installation options that must be deployed. Use the following information to prepare your environment to run the App-V 5.0 reporting database.</p>
<ul>
<li><p>Installation location - by default this component will be installed to <strong>%PROGRAMFILES%\Microsoft Application Virtualization Server</strong>.</p></li>
<li><p>Custom SQL Server instance name (if applicable) – the format should be <strong>INSTANCENAME</strong>, because the installation assumes that it is on the local machine. If you specify the name with the following format, <strong>SVR\INSTANCE</strong> will fail.</p></li>
<li><p>Custom App-V 5.0 database name (if applicable) – you must specify a unique database name. The default value for the reporting database is <strong>AppVReporting</strong>.</p></li>
<li><p>App-V 5.0 reporting server location – specifies the machine account on which the reporting server is deployed. This should be specified in the following format <strong>Domain\MachineAccount</strong>.</p></li>
<li><p>App-V 5.0 reporting server installation administrator - specifies the account that will be used to install the App-V 5.0 reporting server. You should use the following format: <strong>Domain\AdministratorLoginName</strong>.</p></li>
<li><p>Microsoft SQL Server Service and the Microsoft SQL Server Agent Service – these services must be associated with user accounts that have access to query AD.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Publishing Server</strong></p></td>
<td align="left"><ul>
<li><p>[Microsoft .NET Framework 4 (Full Package)](https://www.microsoft.com/download/details.aspx?id=17718) (http://www.microsoft.com/download/details.aspx?id=17718)</p></li>
<li><p>[Microsoft Visual C++ 2010 SP1 Redistributable Package (x86)](https://go.microsoft.com/fwlink/?LinkId=267110)(https://go.microsoft.com/fwlink/?LinkId=267110)</p></li>
<li><p>Windows Web Server with the IIS role with the following features: <strong>Common HTTP Features</strong> (static content and default document), <strong>Application Development</strong> (ASP.NET, .NET Extensibility, ISAPI Extensions and ISAPI Filters), <strong>Security</strong> (Windows Authentication, Request Filtering), <strong>Security</strong> (Windows Authentication, Request Filtering), <strong>Management Tools</strong> (IIS Management Console)</p></li>
<li><p>64-bit ASP.NET registration</p></li>
</ul>
<p>The App-V 5.0 server components are dependent but they have varying requirements and installation options that must be deployed. Use the following information to prepare your environment to run the App-V 5.0 publishing server.</p>
<ul>
<li><p>Installation location - by default this component is installed to <strong>%PROGRAMFILES%\Microsoft Application Virtualization Server</strong>.</p></li>
<li><p>App-V 5.0 management service URL – specifies the URL of the App-V 5.0 management service. This is the port that the publishing server communicates with, and it should be specified using the following format: <strong>http://localhost:12345</strong>.</p></li>
<li><p>App-V 5.0 publishing service website name – specifies the name of the website or the default name that will be used.</p></li>
<li><p>App-V 5.0 publishing service port binding - This should be a unique port number that is not already used by another website that runs on the computer.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v.md)

[App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md)

 

 





