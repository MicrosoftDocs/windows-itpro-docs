---
title: WeakCharger (Windows 10)
description: This section describes the WeakCharger settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
---

# WeakCharger (reference)


Use WeakCharger settings to configure the charger notification UI.


## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [HideWeakChargerNotifyOptionUI](#hideweakchargernotifyoptionui) | X | X | X |  |   |
| [NotifyOnWeakCharger](#notifyonweakcharger) | X | X | X |  |   |


## HideWeakChargerNotifyOptionUI

This setting determines whether the user sees the dialog that's displayed when the user connects the device to an incompatible charging source. By default, the OS shows the weak charger notification option UI. 

Select between **Show Weak Charger Notifications UI** and **Hide Weak Charger Notifications UI**.

## NotifyOnWeakCharger

This setting displays a warning when the user connects the device to an incompatible charging source. This warning is intended to notify users that their device may take longer to charge or may not charge at all with the current charging source.

An incompatible charging source is one that does not behave like one of the following port types as defined by the USB Battery Charging Specification, Revision 1.2, available on the USB.org website:
- Charging downstream port
- Standard downstream port 
- Dedicated charging port

Select between **Disable Weak Charger Notifications UI** and **Enable Weak Charger Notifications UI**.

