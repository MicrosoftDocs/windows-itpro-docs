---
title: Planning the Application Virtualization Sequencer Implementation
description: Planning the Application Virtualization Sequencer Implementation
author: eavena
ms.assetid: 052f32fe-ad13-4921-a8ce-4a657eb2b2bf
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning the Application Virtualization Sequencer Implementation


Sequencing, the process used by Application Virtualization to create virtual applications and application packages, requires the use of a computer with the Application Virtualization Sequencer software installed.

During the sequencing process, the Sequencer is placed in monitor mode, and the application to be sequenced is installed on the sequencing computer. Next, the sequenced application is started, and its most important and commonly used functions are exercised so that the monitoring process can configure the primary feature block, which contains the minimum content in an application package that is necessary for an application to run. When these steps are complete, monitoring mode is stopped and the sequenced application is saved and tested to verify correct operation.

When deciding which applications to choose for sequencing, remember that certain applications cannot be sequenced. These include certain parts of the Windows operating system, such as Internet Explorer, device drivers, and applications that start services at boot time.

For step-by-step information about installing the Sequencer, see [How to Install the Application Virtualization Sequencer](how-to-install-the-application-virtualization-sequencer.md).

**Important**  
The entire sequencing process plan should be reviewed and approved by your corporate security team. Sequencer operations would usually be kept separate from the production environment in a lab. This can be as simple or as comprehensive as necessary, based on your business requirements. The sequencing computers will need connectivity to the corporate network to copy finished packages over to the production servers. However, because they are typically operated without antivirus protection, they must not be on the corporate network unprotected—for example, you might be able to operate behind a firewall or on an isolated network segment. Using Virtual Machines configured to share an isolated virtual network might also be an acceptable approach. Follow your corporate security policies to safely address this situation.

 

Key steps for planning the sequencing process include the following:

-   Consider the number of applications you expect to process each month, the size of those applications, and add an allowance for sequencing future updates. Packages can be up to 4 GB in size, compressed or uncompressed.

-   Prepare and document a methodical, repeatable process for your organization to follow when sequencing each application. This should include the use of a checklist for each run, as well as a version control process. The use of a tracking log for each sequenced application is also very helpful when investigating possible technical issues with a package.

-   For sequencing applications, use high-performing computers that are optimized for processing throughput, with at least 4 GB of RAM and a fast CPU (3 GHz or faster). Fast hard disks and the use of separate disk volumes can also improve performance. Virtual Machines are ideal for sequencing because they can easily be reset, or you can use a physical computer with a clean image on a local partition to enable rapid re-imaging after each package sequencing operation has been completed.

    **Important**  
    Running the App-V sequencer in Safe Mode is not supported.

     

-   Verify that you understand the sequenced application’s operating environment, including integration elements such as Microsoft Office or the Java Runtime Environment, because this will often determine whether anything has to be installed on the sequencing computer prior to sequencing the application.

-   Ensure that each new sequencing operation always starts with a clean base image. Make sure that the sequencing computer has been reset, either by restoring the saved image to a physical computer or by restarting a virtual machine after discarding all changes. The base image should have the latest updates applied from Windows Update before saving.

-   Turn off anything on the sequencing computer that can interfere with the install monitoring process, such antivirus scanners and Windows Update, because having a stable platform during the sequencing process is essential. Because this step incurs significant security risks, ensure that the correct precautions are taken to protect the computer and network as well as the sequenced application package. We recommend that you do an antivirus scan of application packages before sequencing them.

-   Include a detailed process for testing each application after sequencing. Testing the sequenced application will determine whether it functions correctly and is an essential part of the process prior to deploying the virtualized application to end users. As the final step in testing prior to wide-scale deployment to end users, you should also plan for a pilot deployment to a test group.

-   When testing sequenced applications, choose computer equipment of the same type and running the same operating systems that are in use in the company production environment. As long as they are configured properly, either virtual machines or physical machines can be used.

## Related topics


[Application Virtualization Sequencer Hardware and Software Requirements](application-virtualization-sequencer-hardware-and-software-requirements.md)

[How to Install the Application Virtualization Sequencer](how-to-install-the-application-virtualization-sequencer.md)

[How to Upgrade the Application Virtualization Sequencer](how-to-upgrade-the-application-virtualization-sequencer.md)

[Security and Protection Overview](security-and-protection-overview.md)

 

 





