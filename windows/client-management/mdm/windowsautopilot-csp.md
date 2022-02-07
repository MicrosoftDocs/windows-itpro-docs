---
title: WindowsAutoPilot CSP
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

# WindowsAutoPilot CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The WindowsAutopilot CSP collects hardware information about a device and formats it into a BLOB. This BLOB is used as input for calling Windows Autopilot Service to mark a device as remediation required if the device underwent a hardware change that affects its ability to use Windows Autopilot.

