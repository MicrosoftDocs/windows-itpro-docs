---
title: Sequencer Command-Line Error Codes
description: Sequencer Command-Line Error Codes
author: eavena
ms.assetid: 3d491314-4923-45fd-9839-c541c5e620bd
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Sequencer Command-Line Error Codes


Use the following list to help identify errors that are related to sequencing applications by using the command line. You can also see this information by viewing the associated App-V Sequencer log file.

**Note**  
Multiple errors can occur during sequencing, and if this happens, the error code that is displayed might be the sum of two error codes. For example, if the */InstallPath* and */OutputFile* parameters are missing, the App-V Sequencer will return **96**—the sum of the two error codes.

 

<a href="" id="01"></a>01  
There is an unspecified error.

<a href="" id="02"></a>02  
The specified installation directory (/INSTALLPACKAGE) is not valid.

<a href="" id="04"></a>04  
The specified package root directory (/INSTALLPATH) is not valid.

<a href="" id="08"></a>08  
The specified */OutputFile* parameter is not valid.

<a href="" id="16"></a>16  
The installation directory (/INSTALLPACKAGE) is not specified.

<a href="" id="32"></a>32  
The package root directory (/INSTALLPATH) is not specified.

<a href="" id="64"></a>64  
The */OutputFile* parameter is not specified.

<a href="" id="128"></a>128  
The specified application virtualization drive is not valid.

<a href="" id="256"></a>256  
The installer failed.

<a href="" id="512"></a>512  
Sequencing the application failed.

<a href="" id="1024"></a>1024  
Evaluating installed shortcuts failed.

<a href="" id="2048"></a>2048  
The sequenced application package cannot be saved.

<a href="" id="4096"></a>4096  
The specified package name (/PACKAGENAME) is not valid.

<a href="" id="8192"></a>8192  
The specified block size (/BLOCKSIZE) is not valid.

<a href="" id="16384"></a>16384  
The specified compression type (/COMPRESSION) is not valid.

<a href="" id="32768"></a>32768  
The specified project path is not valid.

<a href="" id="65536"></a>65536  
The specified upgrade parameter is not valid.

<a href="" id="131072"></a>131072  
The specified upgrade project parameter is not valid.

<a href="" id="262144"></a>262144  
The specified decode path parameter is not valid.

<a href="" id="525288"></a>525288  
The package name is not specified.

## Related topics


[Application Virtualization Sequencer Reference](application-virtualization-sequencer-reference.md)

[Sequencer Command-Line Parameters](sequencer-command-line-parameters.md)

 

 





