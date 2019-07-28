---
title: Sequencer Command-Line Parameters
description: Sequencer Command-Line Parameters
author: eavena
ms.assetid: 28fb875a-c302-4d95-b2e0-8dc0c5dbb0f8
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Sequencer Command-Line Parameters


You can use the following Application Virtualization (App-V) Sequencer parameters to sequence an application and to upgrade an existing virtual application by using a command line. For more information about sequencing an application by using a command line, see [How to Sequence a New Application by Using the Command Line](how-to-sequence-a-new-application-by-using-the-command-line.md).

## Sequencer Command-Line Parameters


<a href="" id="-help-or---"></a>**/HELP or /?**  
Displays information about parameters that are available for using a command line to sequence applications.

<a href="" id="-installpackage-or--i"></a>**/INSTALLPACKAGE or /I**  
Specifies the Windows Installer or a batch file that will be used to install an application so that it can be sequenced.

<a href="" id="-installpath-or--p"></a>**/INSTALLPATH or /P**  
Specifies the package root directory for an application.

<a href="" id="-outputfile-or--o"></a>**/OUTPUTFILE or /O**  
Specifies the path and file name of the SPRJ file that will be generated.

<a href="" id="-fullload-or--f"></a>**/FULLLOAD or /F**  
Specifies whether all files will be contained in the primary feature block. If the **/FULLLOAD** parameter is specified on the command line, all of the associated application data is added to primary feature block. If the **/FULLLOAD** parameter is not specified on the command line, then none of the associated application data is added to the primary feature block.

<a href="" id="-packagename-or--k"></a>**/PACKAGENAME or /K**  
Specifies the package name that will be assigned to the sequenced application.

<a href="" id="-blocksize"></a>**/BLOCKSIZE**  
Specifies the SFT file block size that will be used to stream the package to client computers. You can select one of the following values:

-   4 KB

-   16 KB

-   32 KB

-   64 KB

You should consider the size of the SFT file when you specify the block size. A file with a smaller block size takes longer to stream over the network but is less bandwidth-intensive. Files with larger block sizes use more network bandwidth.

<a href="" id="-compression"></a>**/COMPRESSION**  
Specifies the method for compressing the SFT file that will be streamed to the client.

<a href="" id="-msi-or--m"></a>**/MSI or /M**  
Specifies whether a Windows Installer for the sequenced application should be created.

<a href="" id="-default"></a>**/DEFAULT**  
Specifies the default SPRJ file that will be used when creating a virtual application package. This file is used as the .sprj template when the application is sequenced for the first time.

<a href="" id="-upgrade"></a>**/UPGRADE**  
Specifies the path and file name of the SPRJ file that will be upgraded.

<a href="" id="-decodepath"></a>**/DECODEPATH**  
Specifies the directory on the sequencing computer where the files associated with the sequenced application package are installed. Use one of the following formats when specifying the directory:

-   /decodepath:Q:

-   /decodepath:Q:.

-   /decodepath:”Q:.”

-   /decodepath:”Q:”

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

[Sequencer Command-Line Error Codes](sequencer-command-line-error-codes.md)

 

 





