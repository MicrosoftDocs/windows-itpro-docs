---
title: WindowsHelloForBusiness (Windows 10)
description: This section describes the Windows Hello for Business settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 10/02/2018
---

# WindowsHelloForBusiness (Windows Configuration Designer reference)


Use WindowsHelloForBusiness settings to specify whether [FIDO2 security keys for Windows Hello](https://blogs.windows.com/business/2018/04/17/windows-hello-fido2-security-keys/) can be used to sign in to Windows on a device configured for [Shared PC mode](wcd-sharedpc.md).

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [SecurityKeys](#securitykeys) | X |    |  |  |  |

## SecurityKeys

Select the desired value:

- `0`: security keys for Windows Hello are disabled.
- `1`: security keys for Windows Hello are enabled on [Shared PCs](wcd-sharedpc.md).
