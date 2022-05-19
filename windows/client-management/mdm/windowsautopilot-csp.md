---
title: WindowsAutopilot CSP
description: Learn how without the ability to mark a device as remediation required, the device will remain in a broken state, which results in security and privacy concerns in Autopilot.
ms.assetid: E6BC6B0D-1F16-48A5-9AC4-76D69A7EDDA6
ms.reviewer: 
manager: dansimp
ms.author: v-nsatapathy
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 02/07/2022
---

# WindowsAutopilot CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The WindowsAutopilot CSP exposes Windows Autopilot related device information. The WindowsAutopilot CSP collects hardware information about a device and formats it into a BLOB. This BLOB is used as input for calling Windows Autopilot Service to mark a device as remediation required if the device underwent a hardware change that affects its ability to use Windows Autopilot.

**./Vendor/MSFT/WindowsAutopilot**

Root node. Supported operation is Get.

**HardwareMismatchRemediationData**

Interior node. Supported operation is Get. Collects hardware information about a device and returns it as an encoded string. This string is used as input for calling Windows Autopilot Service to remediate a device if the device underwent a hardware change that affects its ability to use Windows Autopilot.

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)