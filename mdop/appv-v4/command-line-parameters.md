---
title: Command-Line Parameters
description: Command-Line Parameters
author: dansimp
ms.assetid: d90a0591-f1ce-4cb8-b244-85cc70461922
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Command-Line Parameters


Use the following Application Virtualization Sequencer parameters to sequence an application and to upgrade a sequenced application package at the command prompt. In the Microsoft Application Virtualization Sequencer directory, you would enter **SFTSequencer**, followed by the appropriate parameter.

<a href="" id="-help-or---"></a>*/HELP* or */?*  
Use to display the list of parameters available for command-line sequencing.

<a href="" id="-installpackage-or--i"></a>*/INSTALLPACKAGE* or */I*  
Use to specify the installer or a batch file for the application to be sequenced.

<a href="" id="-installpath-or--p"></a>*/INSTALLPATH* or */P*  
Use to specify the package root directory.

<a href="" id="-outputfile-or--o"></a>*/OUTPUTFILE* or */O*  
Use to specify the path and file name of the SPRJ file that will be generated.

**Important**  
The */OUTPUTFILE* parameter is not available when opening a package that you do not intend to upgrade.

 

<a href="" id="-fullload-or--f"></a>*/FULLLOAD* or */F*  
Use to specify whether to put everything in the primary feature block.

<a href="" id="-packagename-or--k"></a>*/PACKAGENAME* or */K*  
Use to specify the package name of the sequenced application.

<a href="" id="-blocksize"></a>*/BLOCKSIZE*  
Specifies the SFT file block size that will be used to stream the package to client computers. You can select one of the following values:

-   4 KB

-   16 KB

-   32 KB

-   64 KB

You should consider the size of the SFT file when you specify the block size. A file with a smaller block size takes longer to stream over the network but is less bandwidth-intensive. Files with larger block sizes use more network bandwidth.

<a href="" id="-compression"></a>*/COMPRESSION*  
Use to specify the method for compressing the SFT file as it is streamed to the client.

<a href="" id="-msi-or--m"></a>*/MSI* or */M*  
Use to specify generating a Microsoft Windows Installer package for the sequenced application.

<a href="" id="-default"></a>*/DEFAULT*  
Specifies the default SPRJ file that will be used when creating a virtual application package. This file is used as the .sprj template when the application is sequenced for the first time.

<a href="" id="-upgrade"></a>*/UPGRADE*  
Specifies the path and file name of the SPRJ file that will be upgraded.

<a href="" id="-decodepath"></a>*/DECODEPATH*  
Specifies the directory on the sequencing computer where the files associated with the sequenced application package are installed. Use one of the following formats when specifying the directory:

-   /decodepath:Q:

-   /decodepath:Q:.

-   /decodepath:”Q:.”

-   /decodepath:”Q:”

## Related topics


[About Using the Sequencer Command Line](about-using-the-sequencer-command-line.md)

[How to Open a Sequenced Application Using the Command Line](how-to-open-a-sequenced-application-using-the-command-line.md)

[How to Upgrade a Package Using the Open Package Command](how-to-upgrade-a-package-using-the-open-package-command.md)

 

 





