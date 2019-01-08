---
title: Windows Autopilot requirements
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 12/13/2018
---

# Windows Autopilot requirements

**Applies to: Windows 10**

Windows Autopilot depends on specific capabilities available in Windows 10, Azure Active Directory, and MDM services such as Microsoft Intune.  In order to use Windows Autopilot and leverage these capabilities, some requirements must be met:

See the following topics for details on licensing, network, and configuration requirements:
- [Licensing requirements](windows-autopilot-requirements-licensing.md)
- [Networking requirements](windows-autopilot-requirements-network.md)
- [Configuration requirements](windows-autopilot-requirements-configuration.md)
    - For details about specific configuration requirements to enable user-driven Hybrid Azure Active Directory join for Windows Autopilot, see [Intune Connector (preview) language requirements](intune-connector.md). This requirement is a temporary workaround, and will be removed in the next release of Intune Connector. 

There are no additional hardware requirements to use Windows 10 Autopilot, beyond the [requirements to run Windows 10](https://www.microsoft.com/windows/windows-10-specifications).

## Related topics

[Configure Autopilot deployment](configure-autopilot.md)