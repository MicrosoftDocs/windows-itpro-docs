---
title: CallAndMessageEnhancement (Windows 10)
description: This section describes the CallAndMessagingEnhancement settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/21/2017
ms.reviewer: 
manager: dansimp
---

# CallAndMessagingEnhancement (Windows Configuration Designer reference)

Use to configure call origin and blocking apps.

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and are not intended for use by administrators in the enterprise.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [BlockingApp](#blockingapp) |  |  X  |  |  |  |
| [CallOriginApp](#calloriginapp) |  |  X  |  |  |  |

## BlockingApp

| Setting | Value | Description |
| --- | --- | --- |
| ActiveBlockingAppUserModelId  | AUMID  | The AUMID of the application that will be set as the active blocking app by default.  |
| DefaultBlockingAppUserModelId  | AUMID  | The AUMID of the application that the OS will select as the active blocking app if the user uninstalls the current active blocking app. This app should be uninstallable. |

## CallOriginApp

| Setting | Value | Description |
| --- | --- | --- |
| ActiveCallOriginAppUserModelId  | AUMID  | The AUMID of the application to be set as the active call origin provider app by default.  |
| DefaultCallOriginAppUserModelId  | AUMID  | The AUMID of the application that the OS will select as the active call origin provider app if the user uninstalls the current active call origin app. This app should be uninstallable.  |
