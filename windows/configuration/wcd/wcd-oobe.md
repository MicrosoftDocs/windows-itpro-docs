---
title: OOBE
description: This section describes the OOBE settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer. 

ms.topic: reference

ms.date: 12/31/2017
--- 

# OOBE (Windows Configuration Designer reference) 

Use to configure settings for the [Out Of Box Experience (OOBE)](/windows-hardware/customize/desktop/customize-oobe). 

## Applies to 

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [Desktop > EnableCortanaVoice](#enablecortanavoice) | ✅  |  |  |  |
| [Desktop > HideOobe](#hideoobe-for-desktop) | ✅  |  |  |  | 

## EnableCortanaVoice 

Use this setting to control whether Cortana voice-over is enabled during OOBE. The voice-over is disabled by default on Windows 10 Pro, Education, and Enterprise. The voice-over is enabled by default on Windows 10 Home. Select **True** to enable voice-over during OOBE, or **False** to disable voice-over during OOBE. 

## HideOobe for desktop 

When set to **True**, it hides the interactive OOBE flow for Windows 10. 

> [!NOTE]
> You must create a user account if you set the value to true or the device will not be usable. 

When set to **False**, the OOBE screens are displayed. 

