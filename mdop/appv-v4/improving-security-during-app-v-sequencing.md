---
title: Improving Security During App-V Sequencing
description: Improving Security During App-V Sequencing
author: dansimp
ms.assetid: f30206dd-5749-4a27-bbaf-61fc21b9c663
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Improving Security During App-V Sequencing


Packaging applications for sequencing is the largest ongoing task in an App-V infrastructure. Because this task is ongoing, you should carefully consider creating policies and procedures to follow when sequencing applications. In App-V 4.5, during sequencing, you can capture Access Control Lists (ACLs) on the file assets of the virtualized application.

## Virus Scanning on the Sequencer


It is a best practice to install the scanning software on the sequencing computer and then scan the computer for viruses and malware. After the sequencing computer is scanned and free of any viruses or malware, disable the scanning software, including all antivirus and malware detection software, on the sequencing computer before sequencing any applications. This speeds the sequencing process and prevents the scanning software components from being detected during sequencing and included in the virtual application package.

## Capturing ACLs on Files (NTFS)


The Sequencer captures NTFS permissions (the ACLs) for the files that are monitored during the sequencing installation phase. (Before the release of App-V 4.5, ACLs were not captured as part of the sequencing process.) This new feature enables certain applications to run for users with a low level of permission that would normally require Administrative privileges.

This feature also enables the sequencing engineer to capture the security settings identified by the vendor. Failing to apply the settings recommended by the vendor could leave the application open to attack or misuse by users. For information about whether or not you should deploy an application with open ACLs, refer to your application support group or the software vendor.

**Important**  
Although the sequencer captures the NTFS ACLs while monitoring the installation phase of sequencing, it does not capture the ACLs for the registry. Users have full access to all registry keys for virtual applications except for services. However, if a user modifies the registry of a virtual application, that change is stored in a specific location (`uservol_sftfs_v1.pkg`) and won’t affect other users.

 

During the installation phase, a sequencing engineer can modify the default permissions of the files if necessary. After the sequencing process is complete, but before saving the package, the sequencing engineer can then choose to enforce security descriptors that were captured during the installation phase. It is a best practice to enforce security descriptors if no other solution allows the application to run properly once virtualized.

 

 





