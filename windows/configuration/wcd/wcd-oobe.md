---
title: OOBE (Windows 10)
ms.reviewer: 
manager: dansimp
description: This section describes the OOBE settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
---

# OOBE (Windows Configuration Designer reference)

Use to configure settings for the [Out Of Box Experience (OOBE)](https://docs.microsoft.com/windows-hardware/customize/desktop/customize-oobe).

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Desktop > EnableCortanaVoice](#enablecortanavoice) | X  |  |  |  |  |
| [Desktop > HideOobe](#hided) | X  |  |  |  |  |
| [Mobile > EnforceEnterpriseProvisioning](#nforce) |   | X |  |  |  |
| [Mobile > HideOobe](#hidem) |   | X |  |  |  |




## EnableCortanaVoice

Use this setting to control whether Cortana voice-over is enabled during OOBE. The voice-over is disabled by default on Windows 10 Pro, Education, and Enterprise. The voice-over is enabled by default on Windows 10 Home. Select **True** to enable voice-over during OOBE, or **False** to disable voice-over during OOBE.

<span id="hided" />
## HideOobe for desktop

When set to **True**, it hides the interactive OOBE flow for Windows 10.

>[!NOTE]
>You must create a user account if you set the value to true or the device will not be usable.

When set to **False**, the OOBE screens are displayed.

<span id="nforce" />
## EnforceEnterpriseProvisioning

When set to **True**, it forces the OOBE flow into using the enterprise provisioning page without making the user interact with the Windows button. This is the default setting.

When set to **False**, it does not force the OOBE flow to the enterprise provisioning page.

<span id="hidem" />
## HideOobe for mobile

When set to **True**, it hides the interactive OOBE flow for Windows 10 Mobile.

When set to **False**, the OOBE screens are displayed.
