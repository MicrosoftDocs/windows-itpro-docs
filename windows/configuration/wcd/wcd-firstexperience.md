---
title: FirstExperience (Windows 10)
description: This section describes the FirstExperience settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 08/08/2018
ms.reviewer: 
manager: dansimp
---

# FirstExperience (Windows Configuration Designer reference)

Use these settings to configure the out-of-box experience (OOBE) to set up HoloLens. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |   |  |  | X |  |

Setting | Description
--- | ---
PreferredRegion | Enter the [geographical location identifier](https://msdn.microsoft.com/library/windows/desktop/dd374073.aspx) for the region.
PreferredTimezone | Enter the timezone. [Microsoft Time Zone Index Values](https://msdn.microsoft.com/library/ms912391.aspx)
SkipCalibration | Initial setup of HoloLens includes a calibration step. Set to **True** to skip calibration.
SkipTraining | Initial setup of HoloLens includes training on how to perform the gestures to operate HoloLens. Set to **True** to skip training. 
SkipWifi | Set to **True** to skip connecting to a Wi-Fi network.<br><br>**Note:** HoloLens [requires a Wi-Fi connection during setup to verify the account](https://docs.microsoft.com/hololens/hololens-setup). To skip the Wi-Fi connection page during setup, your provisioning package must provide the network configuration. You can configure the network configuration [in the HoloLens wizard](https://docs.microsoft.com/hololens/hololens-provisioning#create-a-provisioning-package-for-hololens-using-the-hololens-wizard) and then switch to the advanced editor to configure **FirstExperience** settings, or in advanced settings, configure a WLAN [connectivity profile](wcd-connectivityprofiles.md).

