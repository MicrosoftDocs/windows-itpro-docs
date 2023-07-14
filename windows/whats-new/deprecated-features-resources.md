---
title: Resources for deprecated features in the Windows client
description: Resources and details for deprecated features in the Windows Client.
ms.date: 02/14/2023
ms.prod: windows-client
ms.technology: itpro-fundamentals
ms.localizationpriority: medium
author: mestew
ms.author: mstewart
manager: aaroncz
ms.topic: reference
ms.collection:
  - highpri
  - tier1
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Resources for deprecated features

This article provides additional resources about [deprecated features for Windows client](deprecated-features.md) that may be needed by IT professionals. The following information is provided to help IT professionals plan for the removal of deprecated features:

## Microsoft Support Diagnostic Tool resources

The [Microsoft Support Diagnostic Tool (MSDT)](/windows-server/administration/windows-commands/msdt) gathers diagnostic data for analysis by support professionals. MSDT is the engine used to run legacy Windows built-in troubleshooters. There are currently 28 built-in troubleshooters for MSDT. Half of the built-in troubleshooters have already been [redirected](#redirected-msdt-troubleshooters) to the Get Help platform, while the other half will be [retired](#retired-msdt-troubleshooters).  

If you're using MSDT to run [custom troubleshooting packages](/previous-versions/windows/desktop/wintt/package-schema), it will be available as a [Feature on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) before the tool is fully retired in 2025. This change will allow you to continue to use MSDT to run custom troubleshooting packages while transitioning to a new platform. [Contact Microsoft support](https://support.microsoft.com/contactus) for Windows if you require additional assistance.

### Redirected MSDT troubleshooters

The following troubleshooters will automatically be redirected when you access them from **Start** > **Settings** > **System** > **Troubleshoot**:

- Background Intelligent Transfer Service (BITS)
- Bluetooth
- Camera
- Internet Connections
- Network Adapter
- Playing Audio
- Printer
- Program Compatibility Troubleshooter
- Recording Audio
- Video Playback
- Windows Network Diagnostics
- Windows Media Player DVD
- Windows Media Player Library
- Windows Media Player Settings
- Windows Update

### Retired MSDT troubleshooters

The following troubleshooters will be removed in a future release of Windows:

- Connection to a Workplace using DirectAccess
- Devices and Printers
- Hardware and Devices
- HomeGroup
- Incoming Connections
- Internet Explorer Performance
- Internet Explorer Safety
- Keyboard
- Power
- Search and Indexing
- Speech
- System Maintenance
- Shared Folders
- Windows Store Apps

## Next steps

- [Windows feature lifecycle](feature-lifecycle.md)
- [Deprecated Windows features](deprecated-features.md)
- [Removed Windows features](removed-features.md)
