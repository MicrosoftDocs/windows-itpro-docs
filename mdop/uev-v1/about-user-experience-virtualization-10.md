---
title: About User Experience Virtualization 1.0
description: About User Experience Virtualization 1.0
author: dansimp
ms.assetid: 3758b100-35a8-4e10-ac08-f583fb8ddbd9
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About User Experience Virtualization 1.0


Microsoft User Experience Virtualization (UE-V) monitors the changes that are made by users to application settings and Windows operating system settings. The user settings are captured and centralized to a settings storage location. These settings can then be applied to the different computers that are accessed by the user, including desktop computers, laptop computers, and virtual desktop infrastructure (VDI) sessions.

User Experience Virtualization uses settings location templates to specify what applications and Windows settings on the user computers are monitored and centralized. The settings location template is an XML file that specifies which file and registry locations are associated with each application or operating system setting. The template does not contain values for the settings; it contains only the locations of the settings that are to be monitored.

The application settings and Windows settings are monitored by UE-V when users are working on their computers. The values for the application settings are stored on the settings storage server when the user closes the application. The values for the Windows settings are stored when the user logs off, when the computer is locked, or when they disconnect remotely from a computer.

An administrator can create a UE-V settings location template to specify which enterprise application settings will roam. UE-V includes a set of settings location templates for some Microsoft applications and Windows settings. For a list of default applications and settings in UE-V, see [Planning Which Applications to Synchronize with UE-V 1.0](planning-which-applications-to-synchronize-with-ue-v-10.md).

## UEV 1.0 Release Notes


For more information, and for late-breaking news that did not make it into the documentation, see [Microsoft User Experience Virtualization (UE-V) 1.0 Release Notes](microsoft-user-experience-virtualization--ue-v--10-release-notes.md).

## Related topics


[Getting Started With User Experience Virtualization 1.0](getting-started-with-user-experience-virtualization-10.md)

[Microsoft User Experience Virtualization (UE-V) 1.0](index.md)

[High-Level Architecture for UE-V 1.0](high-level-architecture-for-ue-v-10.md)

 

 





