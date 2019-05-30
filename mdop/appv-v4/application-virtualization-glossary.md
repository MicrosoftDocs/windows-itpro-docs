---
title: Application Virtualization Glossary
description: Application Virtualization Glossary
author: dansimp
ms.assetid: 9eb71774-e288-4f94-8f94-5b98e0d012a7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Application Virtualization Glossary


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Term</th>
<th align="left">Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>active upgrade</p></td>
<td align="left"><p>An upgrade that enables a new version of an application to be added to an App-V Management Server or Streaming Server without affecting users currently running the application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Source Root</p></td>
<td align="left"><p>Reference to a registry key that allows an override of the OSD CODEBASE for the HREF element (for example, the source location). This registry value enables an administrator or ESD system to ensure application loading is performed according to a planned topology management scheme.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Application Virtualization drive</p></td>
<td align="left"><p>The default virtual application client drive (Q:) from which sequenced applications are run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Virtualization reporting</p></td>
<td align="left"><p>Virtual application information gathered for data analysis. Data is collected for assembly of custom views and interpretation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AutoLoad configuration parameter</p></td>
<td align="left"><p>A client runtime policy configuration parameter that enables the secondary feature block of a virtualized application to be streamed to the client automatically in the background.</p></td>
</tr>
<tr class="even">
<td align="left"><p>branch a package</p></td>
<td align="left"><p>To upgrade an existing sequenced application package and run it side-by-side with the original sequenced application package.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Dynamic Suite Composition</p></td>
<td align="left"><p>An Application Virtualization feature that enables a virtual application package to allow dependent plug-ins or middleware packages to use the virtual environment. This feature enables plug-ins and middleware packages to use the primary package's registry settings, and the packages behave and interact with one another in the same way as if they were installed locally on a comuter.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ICO file</p></td>
<td align="left"><p>The file for the icon on the client's desktop used to launch a sequenced application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Icon Source Root</p></td>
<td align="left"><p>Reference to a registry key that allows specification of a source location for icon retrieval for a sequenced application package during publication. Icon Source Roots support UNC formats only (not URLs).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Installation directory</p></td>
<td align="left"><p>The directory where the installer for the application virtualization sequencer places its files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Desktop Client</p></td>
<td align="left"><p>An application that resides on a Windows-based computer desktop and which communicates and authenticates with the Microsoft System Center Virtual Application Server to receive the application code and allow a sequenced application to be run locally.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization for Terminal Services</p></td>
<td align="left"><p>The Application Virtualization feature, including both client and server components, running in a Terminal Services environment.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Console</p></td>
<td align="left"><p>Centralized snap-in to the Microsoft Management Console, which you use to administer the Application Virtualization Management System.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Management System</p></td>
<td align="left"><p>A specific deployment of the Application Virtualization platform that includes all of the components that are managed by a single data store.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Web Service</p></td>
<td align="left"><p>A service that acts as an intermediary between the Application Virtualization Management Console and the data store. First it authenticates its users, and then it allows authorized administrators to manipulate data in the data store.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization platform</p></td>
<td align="left"><p>Name for the Microsoft products that are used to create, store, distribute, and run virtualized applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Sequencer</p></td>
<td align="left"><p>Application that monitors and records the installation and setup process for applications so that an application can be sequenced and run in the virtual environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Terminal Services Client</p></td>
<td align="left"><p>An application that resides on a Terminal Server and which communicates and authenticates with the Microsoft Virtual Application Server to receive the application code and allow a sequenced application to be run locally.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft System Center Application Virtualization Management Server</p></td>
<td align="left"><p>One of two Application Virtualization server types from which a sequenced application package can be streamed. In addition to streaming virtual application packages, the Application Virtualization Management Server offers other services such as publishing, management, reporting, and so on.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft System Center Application Virtualization Streaming Server</p></td>
<td align="left"><p>One of two Application Virtualization server types from which a sequenced application package can be streamed. The Streaming Server streams applications to the client computers only and does not offer other services such as publishing, management, reporting, and so on.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Open Software Descriptor (OSD) file</p></td>
<td align="left"><p>An XML-based file that instructs the client on how to retrieve the sequenced application from the Application Virtualization Management/Streaming Server and how to run the sequenced application in its virtual environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>OSD Source Root</p></td>
<td align="left"><p>Reference to a registry key that allows specification of a source location for OSD file retrieval for an application package during publication. OSD Source Roots support UNC formats only (not URLs).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>package root directory</p></td>
<td align="left"><p>The directory on the sequencing computer on which files for the sequenced application package are installed. This directory also exists virtually on the computer to which a sequenced application will be streamed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>primary feature block</p></td>
<td align="left"><p>The minimum content in an application package that is necessary for an application to run. The content in the primary feature block is identified during the application phase of sequencing and typically consists of the content for the most used application features.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>secondary feature block</p></td>
<td align="left"><p>The remainder of the application package that is not contained in the primary feature block. This content is streamed to the client on demand as application features are used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>sequenced application</p></td>
<td align="left"><p>An application that has been monitored by the Sequencer, broken up into primary and secondary feature blocks, streamed to a computer running the Microsoft Application Virtualization Terminal Services Client or the Microsoft Application Virtualization Desktop Client, and can run inside of its own virtual environment.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>sequenced application package</p></td>
<td align="left"><p>The files that comprise a virtual application and allow a virtual application to run. These files are created after sequencing and specifically include .osd, .sft, .sprj, and .ico files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>sequencing</p></td>
<td align="left"><p>The process of creating an application package by using the Application Virtualization Sequencer. In this process, an application is monitored, its shortcuts are configured, and a sequenced application package is created containing the .osd, .sft, .sprj, and .ico files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>sequencing computer</p></td>
<td align="left"><p>The computer used to perform sequencing and create a sequenced application package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Sequencing Wizard</p></td>
<td align="left"><p>Step-by-step wizard that walks the user through sequencing an application, including package configuration, installing the application or applications to be sequenced, and sequencing the application package for streaming.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SFT</p></td>
<td align="left"><p>A file that contains one or more sequenced applications that the Sequencer has packaged into streaming blocks, as well as the associated delivery information. The SFT file is stored on each server that must stream the packaged applications to a client.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SFTMIME</p></td>
<td align="left"><p>A command-line interface for setting up and managing applications, file type associations, and desktop configuration servers managed by Application Virtualization Desktop and Terminal Services Clients.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SPRJ file</p></td>
<td align="left"><p>An XML-based Sequencer Project file, in which the Sequencer stores its Exclusion Items and Parse Items information. The SPRJ file is used heavily in the creation of application records as well as during an upgrade to a package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>virtual application</p></td>
<td align="left"><p>An application packaged by the Sequencer to run in a self-contained, virtual environment. The virtual environment contains the information necessary to run the application on the client without installing the application locally.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Virtual COM</p></td>
<td align="left"><p>The subsystem that manages COM objects created by application processes running in a virtual environment and prevents conflict with the same objects created outside the virtual environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>virtual directory</p></td>
<td align="left"><p>An opaque directory where only files and subdirectories defined in the application package or created through interaction with an application in a virtual environment are visible. Any files in an identically named local directory are not visible to the application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>virtual environment</p></td>
<td align="left"><p>A runtime container that defines the resources available to application processes launched from a sequenced application package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>virtual file</p></td>
<td align="left"><p>A file name within the virtual environment that is mapped to an alternate target location. A virtual file appears alongside other files in the containing directory, regardless of whether that directory is virtual or local.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>virtual file system</p></td>
<td align="left"><p>The subsystem that intercepts and redirects file system requests from application processes running in a virtual environment. These requests are processed based on the virtual files and directories defined in the application package and created or modified through interaction with a virtual application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>virtual registry</p></td>
<td align="left"><p>The subsystem that intercepts and redirects registry requests for keys and values from application processes running in a virtual environment. The redirection is based on the registry information defined in the application package and created or modified through interaction with a virtual application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>virtual services</p></td>
<td align="left"><p>The subsystem that acts as the Service Control Manager (SCM) for services running in a virtual environment.</p></td>
</tr>
</tbody>
</table>

 

 

 





