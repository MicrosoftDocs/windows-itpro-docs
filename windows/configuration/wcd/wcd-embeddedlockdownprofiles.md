---
title: EmbeddedLockdownProfiles (Windows 10)
description: This section describes the EmbeddedLockdownProfiles setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
---

# EmbeddedLockdownProfiles (Windows Configuration Designer reference)

Use to apply an XML configuration to a mobile device that locks down the device, configures custom layouts, and define multiple roles.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| AssignedAccessXml |   | X |  |  |  |

1. Create a lockdown XML file, either by using [the Lockdown Designer app](../mobile-devices/mobile-lockdown-designer.md) or [manually](../mobile-devices/lockdown-xml.md).
2. In the **AssignedAccessXml** setting, browse to and select the lockdown XML file that you created.


## Related topics

- [EnterpriseAssignedAccess configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/enterpriseassignedaccess-csp)
