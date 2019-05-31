---
title: Updating MED-V 2.0
description: Updating MED-V 2.0
author: levinec
ms.assetid: beea2f54-42d7-4a17-98e0-d243a8562265
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Updating MED-V 2.0


Help secure your system by applying the appropriate security updates for Microsoft Enterprise Desktop Virtualization (MED-V) 2.0.

## Updating MED-V


You can update MED-V interactively, by the end user, or silently by using an electronic software distribution system. Installation of the MED-V Host Agent upgrades the MED-V Host Agent and then updates the MED-V workspace if required. The MED-V Host Agent and Guest Agent keep in sync. If applications are running from the MED-V workspace while the MED-V Host Agent is being updated, a restart of the host computer is required to complete the update. If no applications are running, MED-V is restarted automatically and the upgrade is completed without a restart of the host computer.

If you are updating MED-V by using an electronic software distribution system, you can control the restart behavior. To do this, suppress the restart by typing **REBOOT=”ReallySuppress”** at the command prompt when installing MED-V\_HostAgent\_Setup.exe. Then, configure the electronic software distribution system to capture the 3010 return code (which signals that a restart is required) and perform the set restart behavior.

## Related topics


[Technical Reference for MED-V](technical-reference-for-med-v.md)

 

 





