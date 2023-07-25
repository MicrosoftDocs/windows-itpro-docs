---
title: Resources for deprecated features in the Windows client
description: Resources and details for deprecated features in the Windows client.
ms.date: 07/31/2023
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

## TLS versions 1.0 and 1.1 will be disabled by default

Over the past several years, internet standards and regulatory bodies have [deprecated or disallowed](https://www.ietf.org/rfc/rfc8996.html) TLS versions 1.0 and 1.1 due to various security issues. Starting in Windows 11 Insider Preview builds for September 2023 and continuing in future Windows OS releases, TLS 1.0 and 1.1 will be disabled by default. This change increases the security posture of Windows customers and encourages modern protocol adoption. For organizations that need to use these versions, there's an option to re-enable TLS 1.0 or TLS 1.1.

### TLS diagnostic events

Applications that fail when TLS 1.0 and 1.1 are disabled can be identified by reviewing the event logs. In the System EventLog, SChannel EventID 36871 may be logged with the following description:

```log
A fatal error occurred while creating a TLS <client/server> credential. The internal error state is 10013. The SSPI client process is <process ID>.
```

### TLS 1.0 and 1.1 guidance for IT admins

The impact of disabling TLS versions 1.0 and 1.1 depends largely on the Windows applications using TLS. For example, TLS 1.0 and TLS 1.1 have already been disabled by [Microsoft 365](lifecycle/announcements/transport-layer-security-1x-disablement) products as well as [WinHTTP and WinINet API surfaces](https://support.microsoft.com/topic/kb5017811-manage-transport-layer-security-tls-1-0-and-1-1-after-default-behavior-change-on-september-20-2022-e95b1b47-9c7c-4d64-9baf-610604a64c3e). Most newer versions of applications support TLS 1.2 or higher protocol versions. If an application starts failing after this change, the first step is to look for a newer version of the application that has TLS 1.2 or TLS 1.3 support.


###

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
