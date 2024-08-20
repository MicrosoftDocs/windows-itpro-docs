---
title: Resources for deprecated features in the Windows client
description: Resources and details for deprecated features in the Windows client.
ms.date: 08/12/2024
ms.service: windows-client
ms.subservice: itpro-fundamentals
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

## Paint 3D

Paint 3D is deprecated and will be removed from the Microsoft Store on November 4, 2024. Existing installations of Paint 3D will continue to work, but the app will no longer be available for download from the Microsoft Store. If you remove the app, you can reinstall it from the Microsoft Store until November 4, 2024. After that date, Paint 3D will no longer be available for download. Paint 3D was preinstalled on some Windows 10 devices, but wasn't preinstalled on Windows 11 devices. Some alternatives to Paint 3D include:

- View and edit 2D images: [Paint](https://apps.microsoft.com/detail/9pcfs5b6t72h) or [Photos](https://apps.microsoft.com/detail/9wzdncrfjbh4)
- View 3D content: [3D Viewer](https://apps.microsoft.com/detail/9nblggh42ths).

## NTLM

Customers concerned about NTLM usage in their environments are encouraged to utilize [NTLM auditing](/previous-versions/windows/it-pro/windows-10/security/threat-protection/security-policy-settings/network-security-restrict-ntlm-audit-ntlm-authentication-in-this-domain) to [investigate how NTLM is being used](https://techcommunity.microsoft.com/t5/ask-the-directory-services-team/ntlm-blocking-and-you-application-analysis-and-auditing/ba-p/397191).  

In many cases, applications should be able to replace NTLM with Negotiate using a one-line change in their `AcquireCredentialsHandle` request to the SSPI. One known exception is for applications that have made hard assumptions about the maximum number of round trips needed to complete authentication. In most cases, Negotiate will add at least one additional round trip. Some scenarios may require additional configuration. For more information, see [Kerberos authentication troubleshooting guidance](/troubleshoot/windows-server/windows-security/kerberos-authentication-troubleshooting-guidance).

Negotiate's built-in fallback to NTLM is preserved to mitigate compatibility issues during this transition. For updates on NTLM deprecation, see [https://aka.ms/ntlm](https://aka.ms/ntlm).

## WordPad

WordPad will be removed from all editions of Windows starting in Windows 11, version 24H2 and Windows Server 2025. As a result, Windows will no longer have a built-in, default RTF reader. We recommend Microsoft Word for rich text documents like .doc and .rtf and Notepad for plain text documents like .txt. The following binaries will be removed as a result of WordPad removal:

- wordpad.exe
- wordpadfilter.dll
- write.exe 

Avoid taking a direct dependency on these binaries and Wordpad in your product. Instead, for trying to open a text file, rely on Microsoft Word or Notepad.

## VBScript

VBScript will be available as a [feature on demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) before being retired in future Windows releases. Initially, the VBScript feature on demand will be preinstalled to allow for uninterrupted use while you prepare for the retirement of VBScript.
 
## TLS versions 1.0 and 1.1 disablement resources

Over the past several years, internet standards and regulatory bodies have [deprecated or disallowed](https://www.ietf.org/rfc/rfc8996.html) TLS versions 1.0 and 1.1 due to various security issues. Starting in Windows 11 Insider Preview builds for September 2023 and continuing in future Windows OS releases, TLS 1.0 and 1.1 are disabled by default. This change increases the security posture of Windows customers and encourages modern protocol adoption. For organizations that need to use these versions, there's an option to re-enable TLS 1.0 or TLS 1.1.

The following information can help IT professionals to:

- Identify issues related to TLS 1.0 and 1.1 disablement
- Re-enable TLS 1.0 and 1.1, if needed

For developer guidance and for a list of common applications known to rely on TLS 1.0 or 1.1, see the [Announcing the disablement of TLS 1.0 and TLS 1.1 in Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/tls-1-0-and-tls-1-1-soon-to-be-disabled-in-windows/ba-p/3887947) blog post.

### TLS diagnostic events

Applications that fail when TLS 1.0 and 1.1 are disabled can be identified by reviewing the event logs. In the System Event Log, SChannel EventID 36871 may be logged with the following description:

`A fatal error occurred while creating a TLS <client/server> credential. The internal error state is 10013. The SSPI client process is <process ID>.`

### TLS 1.0 and 1.1 guidance for IT professionals

The impact of disabling TLS versions 1.0 and 1.1 depends on the Windows applications using TLS. For example, TLS 1.0 and TLS 1.1 are already disabled by [Microsoft 365](/lifecycle/announcements/transport-layer-security-1x-disablement) products as well as [WinHTTP and WinINet API surfaces](https://support.microsoft.com/topic/kb5017811-manage-transport-layer-security-tls-1-0-and-1-1-after-default-behavior-change-on-september-20-2022-e95b1b47-9c7c-4d64-9baf-610604a64c3e). Most newer versions of applications support TLS 1.2 or higher protocol versions. If an application starts failing after this change, the first step is to discover if a newer version of the application has TLS 1.2 or TLS 1.3 support.

Using the system default settings for the best balance of security and performance is recommended. Organizations that limit TLS cipher suites using [Group Policy](/windows-server/security/tls/manage-tls) or [PowerShell cmdlets](/powershell/module/tls) should also verify that [cipher suites](/windows/win32/secauthn/tls-cipher-suites-in-windows-11) needed for TLS 1.3 and TLS 1.2 are enabled.

If there are no alternatives available and TLS 1.0 or TLS 1.1 is needed, the protocol versions can be re-enabled with a system [registry setting](/windows-server/security/tls/tls-registry-settings). To override a system default and set a (D)TLS or SSL protocol version to the **Enabled** state:

   - **TLS 1.0**:
     ```registry
     [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client]
           "Enabled" = dword:00000001
     [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server]
           "Enabled" = dword:00000001
     ```

   - **TLS 1.1**:

     ```registry
     [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client]
           "Enabled" = dword:00000001
     [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server]
           "Enabled" = dword:00000001
     ```

Re-enabling TLS 1.0 or TLS 1.1 on machines should only be done as a last resort, and as a temporary solution until incompatible applications can be updated or replaced. Support for these legacy TLS versions may be completely removed in the future.

## Microsoft Support Diagnostic Tool resources

The [Microsoft Support Diagnostic Tool (MSDT)](/windows-server/administration/windows-commands/msdt) gathers diagnostic data for analysis by support professionals. MSDT is the engine used to run legacy Windows built-in troubleshooters. There are currently 28 built-in troubleshooters for MSDT. Half of the built-in troubleshooters have already been [redirected](#redirected-msdt-troubleshooters) to the Get Help platform, while the other half will be [retired](#retired-msdt-troubleshooters).  

If you're using MSDT to run [custom troubleshooting packages](/previous-versions/windows/desktop/wintt/package-schema), it will be available as a [feature on demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities) before the tool is fully retired in 2025. This change allows you to continue to use MSDT to run custom troubleshooting packages while transitioning to a new platform. [Contact Microsoft support](https://support.microsoft.com/contactus) for Windows if you require more assistance.

### Redirected MSDT troubleshooters

The following troubleshooters are automatically redirected when you access them from **Start** > **Settings** > **System** > **Troubleshoot**:

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
