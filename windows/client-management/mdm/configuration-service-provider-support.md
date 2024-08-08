---
title: Configuration service provider support
description: Learn more about configuration service provider (CSP) supported scenarios.
ms.date: 09/18/2020
ms.collection:
  - highpri
  - tier2
---

# Configuration service provider support

A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device. These settings map to registry keys or files. Some configuration service providers support the WAP format, some support SyncML, and some support both. SyncML is only used over-the-air for Open Mobile Alliance Device Management (OMA DM), whereas WAP can be used over-the-air for OMA Client Provisioning, or it can be included in the device image as a `.provxml` file that is installed during boot.

- For information about the bridge WMI provider classes that map to these CSPs, see [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal).
- For CSP DDF files, see [Device description framework files](configuration-service-provider-ddf.md).
