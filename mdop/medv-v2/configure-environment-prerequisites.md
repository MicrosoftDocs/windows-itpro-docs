---
title: Configure Environment Prerequisites
description: Configure Environment Prerequisites
author: dansimp
ms.assetid: 7379e8e5-1cb2-4b8e-8acc-5c04e26f8c91
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Configure Environment Prerequisites


Before you can deploy and run Microsoft Enterprise Desktop Virtualization (MED-V) 2.0, you must ensure that your environment meets the following minimum prerequisites.

**Windows 7**

The MED-V Host Agent and the MED-V Workspace Packager are only supported in Windows 7 or newer.

**Windows XP SP3**

The MED-V Guest Agent is only supported in Windows XP SP3.

**.NET Framework 3.5 SP1**

The MED-V Host and Guest agents and the MED-V Workspace Packager require the Microsoft .NET Framework 3.5 SP1.

**Important**  
You must also install the update [KB959209](https://go.microsoft.com/fwlink/?LinkId=204950) (https://go.microsoft.com/fwlink/?LinkId=204950), which addresses several known application compatibility issues.

 

**Note**  
You must manually install the .NET Framework 3.5 SP1 and the update KB959209 into the Windows Virtual PC image that you prepare for use with MED-V. However, by default, the Microsoft .NET Framework 3.5 SP1 and the update are included when you install Windows 7 on the host computer.

 

**An Active Directory Infrastructure**

Group Policy provides the centralized management and configuration of operating systems, applications, and users' settings in an Active Directory environment.

## Related topics


[Configure Installation Prerequisites](configure-installation-prerequisites.md)

[High-Level Architecture](high-level-architecturemedv2.md)

[MED-V 2.0 Supported Configurations](med-v-20-supported-configurations.md)

 

 





