---
title: About Sequencing Phases
description: About Sequencing Phases
author: dansimp
ms.assetid: c1cb7b6c-204c-48f2-848c-4bd5a3d5ecb6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About Sequencing Phases


Sequencing is the process by which you create a sequenced application package by using the Microsoft Application Virtualization (App-V) Sequencer. During sequencing, the Sequencer monitors and records all installation and setup processes for an application and creates the following files: ICO, OSD, SFT, and SPRJ. These files contain all the necessary information about an application, and they allow that application to run in a virtual environment.

The four phases to sequencing an application and creating a virtual application package are installation, launch, customization, and save. The following list provides information about each of the phases:

1.  **Installation phase**—During the installation phase, you specify the package name and an optional associated comment that will be associated with the package. You can also configure advanced monitoring options during this phase. Advanced monitoring options include specifying the block size and whether you will install automatic updates during monitoring. The sequencer records all necessary information and configurations required to create a virtual application package and the associated file and registry settings.

    **Important**  
    To view the advanced options select **Show Advanced Monitoring Options** on the **Package Information** page.

     

2.  **Launch phase**—During the launch phase, you can specify any required file associations and security descriptors that should be configured with the package. You should open the application as many times as necessary to ensure application functionality and stability.

3.  **Customization phase**—During the customization phase, you can configure your package by using the associated .osd files. You can specify whether any associated scripts should run inside or outside of the virtual environment, specify additional actions that should be performed, specify how associated scripts run (synchronously or asynchronously), and specify any additional scripts that should be run under the user context.

4.  **Save phase**—During the save phase, all required files for the virtual application package are created. The files created are .sprj, .sft, .osd, .ico, .xml manifest, and the Windows installer (.msi) file.

## Related topics


[Application Virtualization Sequencer](application-virtualization-sequencer.md)

 

 





