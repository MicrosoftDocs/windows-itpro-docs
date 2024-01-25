---
title: WeakCharger
description: This section describes the WeakCharger settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.

ms.topic: reference


ms.date: 12/31/2017
---

# WeakCharger (reference)


Use WeakCharger settings to configure the charger notification UI.


## Applies to

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [HideWeakChargerNotifyOptionUI](#hideweakchargernotifyoptionui) | ✅ | ✅ |  |   |
| [NotifyOnWeakCharger](#notifyonweakcharger) | ✅ | ✅ |  |   |


## HideWeakChargerNotifyOptionUI

This setting determines whether the user sees the dialog that's displayed when the user connects the device to an incompatible charging source. By default, the OS shows the weak charger notification option UI.

Select between **Show Weak Charger Notifications UI** and **Hide Weak Charger Notifications UI**.

## NotifyOnWeakCharger

This setting shows a warning when the user connects the device to an incompatible charging source. This warning is intended to notify users that their device may take longer to charge. Or, it may not charge at all.

An incompatible charging source is one that doesn't behave like one of the following port types:

- Charging downstream port
- Standard downstream port

- Dedicated charging port

The port types are defined by the USB Battery Charging Specification, Revision 1.2, available at `USB.org`.

Select between **Disable Weak Charger Notifications UI** and **Enable Weak Charger Notifications UI**.

