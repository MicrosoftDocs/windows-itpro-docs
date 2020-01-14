---
title: Onboarding tools and methods for Windows 10 machines
description: Onboard Windows 10 machines so that they can send sensor data to the Microsoft Defender ATP sensor
keywords: Onboard Windows 10 machines, group policy, endpoint configuration manager, mobile device management, local script, gp, sccm, mdm, intune
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Onboarding tools and methods for Windows 10 machines

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



Machines in your organization must be configured so that the Microsoft Defender ATP service can get sensor data from them. There are various methods and deployment tools that you can use to configure the machines in your organization.

The following deployment tools and methods are supported:

- Group Policy
- Microsoft Endpoint Configuration Manager
- Mobile Device Management (including Microsoft Intune)
- Local script

## In this section
Topic | Description
:---|:---
[Onboard Windows 10 machines using Group Policy](configure-endpoints-gp.md) | Use Group Policy to deploy the configuration package on machines.
[Onboard Windows machines using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) | You can use either use Microsoft Endpoint Configuration Manager (current branch) version 1606 or Microsoft Endpoint Configuration Manager (current branch) version 1602 or earlier to deploy the configuration package on machines.
[Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md) | Use Mobile Device Management tools or Microsoft Intune to deploy the configuration package on machine.
[Onboard Windows 10 machines using a local script](configure-endpoints-script.md) | Learn how to use the local script to deploy the configuration package on endpoints.
[Onboard non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi.md) | Learn how to use the configuration package to configure VDI machines.


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configureendpoints-belowfoldlink)