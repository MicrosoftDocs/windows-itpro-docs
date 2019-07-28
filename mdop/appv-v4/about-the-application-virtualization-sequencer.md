---
title: About the Application Virtualization Sequencer
description: About the Application Virtualization Sequencer
author: dansimp
ms.assetid: bee193ca-58bd-40c9-b41a-310435633895
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About the Application Virtualization Sequencer


The Microsoft Application Virtualization (App-V) Sequencer monitors and records all installation and setup processes for an application and creates the following files: **ICO**, **OSD**, **SFT**, and **SPRJ**. These files contain all the necessary information about an application so the application can run in a virtual environment on target computers. You can use the Microsoft Application Virtualization (App-V) Sequencer to create virtual applications. After you sequence an application, it can be streamed to target computers, or target computers can run the virtual application by downloading the contents of the virtual application package and running the application locally.

**Important**  
To run a virtual application package the target computer must be running the appropriate version of the App-V client.

 

Virtual application packages run on target computers without interacting with the underlying operating system on the target computer because each application runs in a virtual environment and is isolated from other applications that are installed or running on the target computer. This isolation can reduce application conflicts and can help decrease the required amount of application pre-deployment testing.

## Sequencer Terminology


<a href="" id="application-virtualization-drive"></a>Application Virtualization drive  
The application virtualization drive is the default drive (Q:\) on the target computer from which sequenced applications are run.

<a href="" id="ico-file"></a>ICO file  
The icon file on the client desktop which is used to launch a sequenced application.

<a href="" id="installation-directory"></a>Installation directory  
The directory used by the sequencer to place installation files during setup.

<a href="" id="open-software-descriptor--osd--file"></a>Open Software Descriptor (OSD) file  
An XML-based file that instructs the App-V client how to retrieve the sequenced application from the App-V streaming server and how to run the sequenced application in the virtual environment.

<a href="" id="package-root-directory"></a>Package root directory  
The directory on the sequencing computer on which files for the sequenced application package are installed. This directory also exists virtually on the computer to which a sequenced application will be streamed.

<a href="" id="sequenced-application"></a>Sequenced application  
An application that has been monitored by the sequencer, broken up into primary and secondary feature blocks, streamed to a target computer running the App-V client t, and runs a virtual environment.

<a href="" id="sequenced-application-package"></a>Sequenced application package  
The files that comprise a virtual application and allow a virtual application to run. These files are created after sequencing and specifically include **.osd**, **.sft**, **.sprj**, and **.ico** files.

<a href="" id="sequencing"></a>Sequencing  
The process of creating an application package using the App-V Sequencer. In this process, an application is monitored, its shortcuts are configured, and a sequenced application package is created.

<a href="" id="sequencing-computer"></a>Sequencing computer  
The computer used to sequence an application.

<a href="" id="virtual-application"></a>Virtual application  
An application packaged by the Sequencer to run in a self-contained, virtual environment. The virtual environment contains the information necessary to run the application on the client without installing the application locally.

<a href="" id="primary-feature-block"></a>Primary feature block  
The minimum content in a virtual application package that is necessary for an application to run on a target computer. The content in the primary feature block is identified during the application phase of sequencing and typically consists of the content for the most used application features.

## <a href="" id="sequencing-applications-"></a>Sequencing Applications


There are two methods to create and modify virtual application packages in your environment. The first method is by using the **Sequencing** wizard. The **Sequencing** wizard allows you to create new, or modify existing virtual application packages. For more information about using the **Sequencing** wizard see, [How to Sequence a New Application](how-to-sequence-a-new-application.md). The second method is by using the command-line. The command-line allows you to create new, or modify existing virtual application packages using the command prompt. For more information about using the command line see, [How to Manage Virtual Applications Using the Command Line](how-to-manage-virtual-applications-using-the-command-line.md).

The **Sequencing** wizard provides the following functions for creating virtual application packages:

1.  **Package Configuration**: The **Sequencing** Wizard prompts for package configuration information necessary to complete the Open Software Descriptor (OSD) file, which is a required file for starting a sequenced application package.

2.  **Application Installation**: The **Sequencing** Wizard gathers information about an application’s installation and startup configurations. It monitors and records the installation and startup information associated with the application to create the files necessary for a virtual application package.

3.  **Application Startup**: The **Sequencing** Wizard gathers information for compiling and ordering the blocks of code necessary to perform the initial startup of the sequenced application package on the target computer. The compilation of the code block is referred to as the primary feature block.

## Application Virtualization Sequencer Security Considerations


The App-V Sequencer runs all services detected at sequencing time using the Local System account and does not enforce security descriptors on service control requests. If the service was installed using a different user account or if the security descriptors are intended to grant different user groups specific service permissions, consider carefully whether the service should be virtualized. In some cases, you should install the service locally to ensure that the intended service security is preserved.

**Important**  
You should always save virtual application packages in a secure location.

 

## Related topics


[Application Virtualization Sequencer Overview](application-virtualization-sequencer-overview.md)

 

 





