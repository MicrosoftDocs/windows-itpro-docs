---
title: High-Level Architecture
description: High-Level Architecture
author: levinec
ms.assetid: a00edb9f-207b-4f32-9e8f-522ea2739d2f
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# High-Level Architecture


This section describes the high-level system architecture and component design of Microsoft Enterprise Desktop Virtualization (MED-V) 2.0.

## System Architecture


MED-V enhances Windows Virtual PC to run two operating systems on one device, adding virtual image delivery, Group Policy-based provisioning, and centralized management. By using MED-V, you can easily configure, deploy, and manage corporate Windows Virtual PC images on any Windows-based desktop running Windows 7 Professional, Enterprise, or Windows 7 Ultimate. The MED-V solution includes the following components:

<a href="" id="---------------med-v-host"></a> **MED-V Host**  
A Windows 7 environment that includes a MED-V Host Agent, an electronic software distribution (ESD) system, a registry management system, and a MED-V guest. The MED-V host interacts with the MED-V guest so that certain setup functions and system information can be processed.

<a href="" id="-------------------med-v-host-agent"></a> **MED-V Host Agent**  
The MED-V software contained in the MED-V host that provides a channel to communicate with the MED-V guest. It also provides functionality such as first time setup and application publishing.

**Note**  
After MED-V and its required components are installed MED-V must be configured. The configuration of MED-V is referred to as first time setup.

 

<a href="" id="esd-system"></a>**ESD System**  
Your existing software distribution method that lets you deploy and install the MED-V workspace package files that MED-V creates.

<a href="" id="registry-management-system"></a>**Registry Management System**  
Your existing method of managing Group Policy settings and preferences.

<a href="" id="windows-virtual-pc-image"></a>**Windows Virtual PC Image**  
An administrator-defined virtual machine that contains the following components:

<a href="" id="corporate-operating-system"></a>**Corporate Operating System**  
Your standard corporate operating system.

<a href="" id="management-and-security-tools"></a>**Management and Security Tools**  
Your standard management and security tools, such as virus protection.

<a href="" id="-----------------------med-v-guest"></a> **MED-V Guest**  
A Windows XP SP3 environment, as part of a Windows Virtual PC running on Windows 7 that contains the following components:

<a href="" id="---------------------------med-v-guest-agent"></a> **MED-V Guest Agent**  
The MED-V software contained in the MED-V guest that provides a channel to communicate with the MED-V host. It also supports the MED-V Host Agent with functions like performing first time setup.

**Note**  
The MED-V Guest Agent is installed automatically during first time setup.

 

<a href="" id="esd-client"></a>**ESD Client**  
An optional part of your ESD system that installs software packages and reports status to the ESD system.

## Related topics


[Planning for Application Operating System Compatibility](planning-for-application-operating-system-compatibility.md)

[Prepare the Deployment Environment for MED-V](prepare-the-deployment-environment-for-med-v.md)

 

 





