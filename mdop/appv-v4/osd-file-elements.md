---
title: OSD File Elements
description: OSD File Elements
author: eavena
ms.assetid: 8211b562-7549-4331-8321-144f52574e99
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# OSD File Elements


The Sequencer installation directory contains an XML schema file, **Softricity.xsd**, which defines the valid structure of an Open Software Descriptor (OSD) file. Following are some of the more frequently used OSD elements.

<a href="" id="softpkg"></a>SOFTPKG  
The root element of the OSD file containing all elements defining the software package.

<a href="" id="codebase"></a>CODEBASE  
Information about the .sft file for this package, including the HREF, FILENAME, and GUID attributes. You can edit the HREF attribute if you change the distribution point of this particular package.

<a href="" id="os"></a>OS  
Defines on what operating systems this application can run based on values that are initially set in the Sequencing Wizard. This value can contain only the values defined in **Softricity.xsd**.

<a href="" id="local-interaction-allowed"></a>LOCAL\_INTERACTION\_ALLOWED  
Set to TRUE, this enables creation of named objects (events, mutexes, semaphores, file mappings, and mailslots) and COM objects in the global namespace rather than isolated inside a particular virtual environment, which allows virtual applications to interact with the host operating system's applications.

Example:&lt;SOFTPKG&gt;&lt;IMPLEMENTATION&gt;

&lt;VIRTUALENV&gt;&lt;POLICIES&gt;

&lt;LOCAL\_INTERACTION\_ALLOWED&gt;TRUE

&lt;/LOCAL\_INTERACTION\_ALLOWED&gt;

&lt;/POLICIES&gt;&lt;/VIRTUALENV&gt;

&lt;/IMPLEMENTATION&gt;&lt;/SOFTPKG&gt;

<a href="" id="dependencies"></a>DEPENDENCIES  
Defines Dynamic Suite Composition (dependencies on other packages) by using a CODEBASE tag from another package.

Example:&lt;DEPENDENCIES&gt;&lt;CODEBASE HREF="rtsps://server/package.sft" GUID="7579F4DF-2461-4219-BD43-494E1FDC69E3" SYSGUARDFILE="pkg.1\\osguard.cp" SIZE="6572748" MANDATORY="FALSE"/&gt;&lt;/DEPENDENCIES&gt;

<a href="" id="package-name"></a>PACKAGE NAME  
A common name for the package entered into the Sequencing Wizard **Package Information** page, which enables you to specify a single name used for a sequenced application containing multiple applications.

<a href="" id="title"></a>TITLE  
Optional descriptive name of the application you are sequencing.

<a href="" id="abstract"></a>ABSTRACT  
Short description of the software package entered in the **Comments** field in the Sequencing Wizard **Package Information** page. A best practice is to specify information such as the operating system and service-pack level of the Sequencer workstation, Sequencer version, and the sequencing engineer’s name.

<a href="" id="script"></a>SCRIPT  
Defines specific scripted events to occur during startup, shutdown, or streaming.

<a href="" id="mgmt-shortcutlist"></a>MGMT\_SHORTCUTLIST  
List of all shortcuts defined in the wizard.

<a href="" id="mgmt-fileassociations"></a>MGMT\_FILEASSOCIATIONS  
List of the file types specified in the wizard.

## Related topics


[About the OSD Tab](about-the-osd-tab.md)

 

 





