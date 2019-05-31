---
title: MED-V 1.0 Release Notes
description: MED-V 1.0 Release Notes
author: dansimp
ms.assetid: 006a3537-5c5b-43b5-8df8-4bf6ddd3cd2f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# MED-V 1.0 Release Notes


## Known Issues with MED-V


This section provides the most up-to-date information about general issues with the Microsoft Enterprise Desktop Virtualization (MED-V) platform. These issues do not appear in the product documentation and in some cases might contradict existing product documentation. Whenever possible, these issues will be addressed in later releases.

### File downloads do not follow Web redirection rules

File downloads do not follow Web redirection rules set in a MED-V workspace policy.

### When expanding a console-published application window to full screen, it disappears

If you expand a console-published application (such as cmd.exe) window to full screen inside a MED-V workspace configured in seamless integration mode, the application window might disappear or not respond.

### When working in full desktop mode, icon locations on the desktop are not saved

When working in full desktop mode, manual location changes of icons on the desktop are not saved between MED-V workspace sessions.

### A local image and a test image with the same name cannot exist in the same domain

If a local image is joined to the domain and the administrator creates a new version of the same image with the same computer name as a test image, when the test image joins the domain, either the join domain action fails or it succeeds and the local image is removed from the domain.

### MED-V does not support Windows Aero features

MED-V does not support Windows Aero features (such as Aero Flip 3D).

### The management console can be used by only one Windows user per computer

The MED-V management console can be used only by administrators and the Windows user who installed the management application.

### The MED-V Server configuration utility tests Microsoft SQL Server connectivity under user context rather than under MED-V Server service context

MED-V uses MED-V Server service context to collect reports from the Microsoft SQL Server reports database. The MED-V Server configuration utility verifies the database and tests the database connection string. It does not validate the access of MED-V Server service to the database.

 

 





