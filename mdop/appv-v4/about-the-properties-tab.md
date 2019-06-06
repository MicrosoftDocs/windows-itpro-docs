---
title: About the Properties Tab
description: About the Properties Tab
author: dansimp
ms.assetid: a6cf6f51-3778-4c8d-9632-3af4005775d2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About the Properties Tab


Use the **Properties** tab to view basic statistical information about a sequenced application package. The information is automatically generated unless otherwise noted. This tab contains the following elements.

## Package Information


<a href="" id="package-name"></a>**Package Name**  
The single name used for a sequenced application package that might contain one or more applications—for example, Microsoft Office could be used to label a sequenced application package that contains Microsoft Word and Microsoft Excel applications that run in the same virtual environment.

<a href="" id="comments"></a>**Comments**  
Displays a short description of the software package that will appear in the Open Software Descriptor (OSD) file ABSTRACT element. This item is optional.

<a href="" id="package-version"></a>**Package Version**  
The sequenced application package version.

<a href="" id="package-guid"></a>**Package GUID**  
The globally unique identifier (GUID) automatically assigned to the sequenced application package to distinguish it from other sequenced application packages that might be running on the computer to which a sequenced application package is streamed.

<a href="" id="package-version-guid"></a>**Package Version GUID**  
The sequenced application package version GUID.

<a href="" id="root-directory"></a>**Root Directory**  
The directory on the sequencing computer in which files for the sequenced application package are installed. This directory is also created on the computer to which a sequenced application package will be streamed. It is recommended for backwards compatibility that this be an 8.3 format directory name at the root of the Q drive, such as Q:\\MyApp.1\\.

<a href="" id="created"></a>**Created**  
The date and time the sequenced application package was created.

<a href="" id="modified"></a>**Modified**  
The date and time the sequenced application package was last modified.

<a href="" id="package-size"></a>**Package Size**  
The size of the package in megabytes.

<a href="" id="launch-size"></a>**Launch Size**  
The size in megabytes of the portion of the SFT file that is required to start the application.

## Sequencing Parameters


<a href="" id="block-size"></a>**Block Size**  
Specifies the size of the primary and secondary feature blocks into which the SFT file is divided for streaming across a network. All blocks equal the specified size; however, the last block might be smaller than specified. You will see one of the following values:

-   4 KB

-   16 KB

-   32 KB

-   64 KB

**Note**  
After the initial package has been created, the block size value is not changeable.

 

## Related topics


[How to Change Package Properties](how-to-change-package-properties.md)

[Sequencer Console](sequencer-console.md)

 

 





