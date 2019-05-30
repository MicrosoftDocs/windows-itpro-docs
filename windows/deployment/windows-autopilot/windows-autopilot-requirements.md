---
title: Windows Autopilot requirements
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot requirements

**Applies to: Windows 10**

Windows Autopilot depends on specific capabilities available in Windows 10, Azure Active Directory, and MDM services such as Microsoft Intune.  In order to use Windows Autopilot and leverage these capabilities, some requirements must be met.

- Windows 10 version 1703 (semi-annual channel) or higher is required. 
- The following editions are supported:
    -   Windows 10 Pro
    -   Windows 10 Pro Education
    -   Windows 10 Pro for Workstations
    -   Windows 10 Enterprise
    -   Windows 10 Education
    -   Windows 10 Enterprise 2019 LTSC
    
 - If you're using Autopilot for Surface devices, note that only the following Surface devices support Autopilot:
    - Surface Go
    - Surface Go with LTE Advanced
    - Surface Pro (5th gen) 
    - Surface Pro with LTE Advanced (5th gen) 
    - Surface Pro 6
    - Surface Laptop (1st gen)
    - Surface Laptop 2
    - Surface Studio (1st gen)
    - Surface Studio 2
    - Surface Book 2

See the following topics for details on network and configuration requirements:
- [Networking requirements](windows-autopilot-requirements-network.md)
- [Configuration requirements](windows-autopilot-requirements-configuration.md)
    - For details about specific configuration requirements to enable user-driven Hybrid Azure Active Directory join for Windows Autopilot, see [Intune Connector (preview) language requirements](intune-connector.md). This requirement is a temporary workaround, and will be removed in the next release of Intune Connector. 

There are no additional hardware requirements to use Windows 10 Autopilot, beyond the [requirements to run Windows 10](https://www.microsoft.com/windows/windows-10-specifications).

## Related topics

[Configure Autopilot deployment](configure-autopilot.md)
