---
title: Command-Line Errors
description: Command-Line Errors
author: dansimp
ms.assetid: eea62568-4e90-4877-9cc7-e27ef5c05068
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Command-Line Errors


Use the following list of errors to identify the reasons why command-line sequencing is not working properly. You can also see these errors by viewing the sequencer log file.

**Note**  
More than one error might be displayed when sequencing. Furthermore, the error code displayed might be the sum of two error codes. For example, if the */InstallPath* and */OutputFile* parameters are missing, the Microsoft System Center Application Virtualization Sequencer will return 96—the sum of the two error codes.

 

<a href="" id="01"></a>01  
There is an unspecified error.

<a href="" id="02"></a>02  
The specified installation directory (/INSTALLPACKAGE) specified is not valid.

<a href="" id="04"></a>04  
The specified package root directory (/INSTALLPATH) is not valid.

<a href="" id="08"></a>08  
The */OutputFile* parameter that was specified is not valid.

<a href="" id="16"></a>16  
The installation directory (/INSTALLPACKAGE) was not specified.

<a href="" id="32"></a>32  
The package root directory (/INSTALLPATH) was not specified.

<a href="" id="64"></a>64  
The */OutputFile* parameter was not specified.

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
The specified block size (/BLOCKSIZE<em>)</em> is not valid.

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
The package name was not specified.

## Related topics


[About Using the Sequencer Command Line](about-using-the-sequencer-command-line.md)

[Command-Line Parameters](command-line-parameters.md)

 

 





