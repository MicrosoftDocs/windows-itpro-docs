---
title: Windows Defender Advanced Threat Protection preview features and updates
description: Learn how to access Windows Defender Advanced Threat Protection preview features and updates.
keywords: preview, preview experience, Windows Defender Advanced Threat Protection, features, updates
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Windows Defender Advanced Threat Protection preview features and updates

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP continuously updates the portal to include feature enhancements and updates. You can choose to take part in the preview experience by selecting the option during onboarding or enabling the preview experience from the **Preferences setup** menu.

Windows Defender ATP adds various feature enhancements and capabilities in the February 2017 preview release.

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

## Preview features
In this release, new features enable you to quickly respond to detected attacks so that you can contain or reduce and prevent further damage caused by malicious attackers in your organization.

Actions such as isolate a machine, stop and quarantine files, and add file to the blocked list are made conveniently available within the file or machine views. Actions taken are aggregated in the Action center for future reference.

These set of new features also include the ability to collect forensic data from a compromised machine to identify the machines state and indicator of attacks.

You'll also see the sensor health feature which helps you keep track and identify machines that might be encountering issues reporting sensor data to the service.

You can now investigate user entities and see related details such as the machines the account was seen on and observed logon types.

The following links take you to the topics that provide information on how to use these features:

>[!NOTE]
> All response features require machines to be on the latest Windows 10 Insider Preview build and above.

- [Respond to machine alerts](respond-machine-alerts-windows-defender-advanced-threat-protection.md)
  - [Isolate machines from the network](respond-machine-alerts-windows-defender-advanced-threat-protection.md#isolate-machines-from-the-network)
  - [Undo machine isolation](respond-machine-alerts-windows-defender-advanced-threat-protection.md#undo-machine-isolation)
  - [Collect investigation package](respond-machine-alerts-windows-defender-advanced-threat-protection.md#collect-investigation-package)

- [Respond to file related alerts](respond-file-alerts-windows-defender-advanced-threat-protection.md)
  - [Stop and quarantine files in your network](respond-file-alerts-windows-defender-advanced-threat-protection.md#stop-and-quarantine-files-in-your-network)
  - [Remove file from quarantine](respond-file-alerts-windows-defender-advanced-threat-protection.md#remove-file-from-quarantine)
  - [Block files in your network](respond-file-alerts-windows-defender-advanced-threat-protection.md#block-files-in-your-network)

- [Check sensor status](check-sensor-status-windows-defender-advanced-threat-protection.md)
  - [Fix unhealthy sensors](fix-unhealhty-sensors-windows-defender-advanced-threat-protection.md)

- [Investigate a user entity](investigate-user-entity-windows-defender-advanced-threat-protection.md)

## Enhancements
The following topics have been added to enhance the Windows Defender ATP experience:

- [Understand threat intelligence concepts](threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
  - [Enable the custom threat intelligence application](enable-custom-ti-windows-defender-advanced-threat-protection.md)
  - [Create custom threat intelligence using REST API](custom-ti-api-windows-defender-advanced-threat-protection.md)
  - [Troubleshoot custom threat intelligence issues](troubleshoot-custom-ti-windows-defender-advanced-threat-protection.md)
