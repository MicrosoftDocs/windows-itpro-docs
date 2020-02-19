---
title: Best Practices for the Application Virtualization Sequencer
description: Best Practices for the Application Virtualization Sequencer
author: dansimp
ms.assetid: 95e5e216-864f-41a1-90d4-b8d7e1eb42a0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Best Practices for the Application Virtualization Sequencer


This topic provides best practices for running the Microsoft Application Virtualization (App-V) Sequencer. Review and consider the following recommendations when planning and using the Sequencer in your environment.

## Sequencing Computer Configuration Best Practices


The following best practices should be considered when configuring the computer running the App-V Sequencer:

-   **Sequence on a computer that has a similar configuration and that is running an earlier version of the operating system than the target computers.**

    Ensure that the computer that is running the Sequencer is running an earlier version of the operating system than the target computers. This includes the service pack and update versions. For example, if the target computers are running Windows Vista and Windows XP, you should sequence applications on a computer that is running Windows XP. The ability to sequence on one operating system and run the virtualized application on a different operating system is not guaranteed, and depends on the particular application and operating system. If you encounter issues, you may be required to sequence on the same operating system environment as the one on which the App-V client is running.

-   **Configure the computer running the Sequencer with multiple partitions.**

    You should configure the computer running the Sequencer with at least two primary partitions. The first partition (**C:**) should contain the operating system, and it should be formatted using the NTFS file system. The second partition (**Q:**) is used as the destination path for the virtual application installation and should also be formatted using the NTFS file system.

-   **Configure the temp directory with enough free disk space.**

    The Sequencer uses the **%TMP%** or **%TEMP%** directory and the **Scratch** directory to store temporary files during sequencing. You should configure these directories on the computer running the Sequencer with free disk space equivalent to the estimated application installation requirements. You can verify the location of the **Scratch** directory by opening the Sequencer console and selecting **Tools**, **Options**, and then selecting the **Paths** tab. Configuring the temp directories and the **Scratch** directory on different hard drive partitions can improve performance during sequencing.

-   **Sequence applications by using Microsoft Virtual PC.**

    You will sequence most applications more than once. To help facilitate this, you should consider sequencing on a computer running in a virtual environment. This will allow you to sequence an application and revert to a clean state, with minimal reconfiguration, on the computer that is running the Sequencer.

    If you are running Microsoft Hyper-V in your environment the App-V sequencer will run when the Hyper-V virtual computer it is running on is:

    -   paused and resumed.

    -   has its state saved and restored.

    -   saved as a snapshot and is restored.

    -   migrated to different hardware as part of a live migration.

-   **Before you sequence a new application, shut down other running programs.**

    Processes and scheduled tasks that normally run on the sequencing computer can slow down the sequencing process and cause irrelevant data to be gathered during sequencing. All unnecessary applications and programs should be shut down before you begin sequencing.

-   **Sequence on a computer that is running Terminal Services**

    You should not configure the install mode on a computer that is running Terminal Services before you install the sequencer.

## Sequencing Best Practices


The following best practices should be considered when sequencing a new application:

-   

    **Note**  
    If you are running App-V 4.6 SP1 you do not need to sequence to a directory that follows the 8.3 naming convention.

     

-   **Sequence to a unique directory that follows the 8.3 naming convention.**

    You should sequence all applications to a directory that follows the 8.3 naming convention. The specified directory name cannot contain more than eight characters, followed by a three-character file name extension—for example, **Q:\\MYAPP.ABC**.

-   **Sequence to a destination folder on the root of the drive, not to a subdirectory.**

    If the application suite has multiple parts, install each application to a subdirectory of the main directory. For example, if a package contains an application along with a client, use **Q:\\AppSuite** as the main directory and sequence the main application to **Q:\\AppSuite\\Main**, and sequence the client to **Q:\\AppSuite\\Client**.

-   **Configure and test the application during the installation phase.**

    Completing the installation of an application often requires performing several manual steps that are not part of the application installation process. These steps can involve configuring a connection to a database or copying updated files. You should perform these configurations during the installation phase and then run the application to make sure it works.

-   **Run the application, multiple times if necessary, until the program is stable.**

    You should run the application multiple times during the installation to ensure all associated registration and dialog box configurations have been completed. Opening the application multiple times during installation will ensure that only the relevant application features are loaded into the **primary feature block**.

-   **Disable all automatic update features associated with the application.**

    Some applications have the ability to check for the latest updates automatically during installation. To assist with versioning of virtual application packages, you should disable this feature during sequencing. If there are required updates, you should sequence a new virtual application package with the associated updates installed.

## Related topics


[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)

 

 





