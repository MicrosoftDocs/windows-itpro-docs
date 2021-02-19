---
title: DMClient (Windows 10)
description: This section describes the DMClient setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# DMClient (Windows Configuration Designer reference)

Use to specify enterprise-specific mobile device management configuration setting.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| UpdateManagementServiceAddress | X  | X | X |  | X |

For the **UpdateManagementServiceAddress** setting, enter a list of servers. The first server in the semi-colon delimited list is the server that will be used to instantiate MDM sessions. 

## Related topics

- [DMClient configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/dmclient-csp)
