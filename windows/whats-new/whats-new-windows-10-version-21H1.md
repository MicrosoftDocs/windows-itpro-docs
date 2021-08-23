---
title: What's new in Windows 10, version 21H1
description: New and updated features in Windows 10, version 21H1 (also known as the Windows 10 May 2021 Update).
keywords: ["What's new in Windows 10", "Windows 10", "May 2021 Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 21H1 for IT Pros

**Applies to**
-   Windows 10, version 21H1

This article lists new and updated features and content that is of interest to IT Pros for Windows 10, version 21H1, also known as the **Windows 10 May 2021 Update**. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 20H2.

Windows 10, version 21H1 is a scoped set of features for select performance improvements, enterprise features, and quality enhancements. As an [H1-targeted release](/lifecycle/faq/windows#what-is-the-servicing-timeline-for-a-version--feature-update--of-windows-10-), 21H1 is serviced for 18 months from the release date for devices running Windows 10 Enterprise or Windows 10 Education editions. 


For details on how to update your device, or the devices in your organization, see [How to get the Windows 10 May 2021 Update](https://blogs.windows.com/windowsexperience/?p=175674). Devices running Windows 10, versions 2004 and 20H2 have the ability to update quickly to version 21H1 via an enablement package. For more details, see [Feature Update through Windows 10, version 21H1 Enablement Package](https://support.microsoft.com/help/5000736).

## Servicing

### Windows Update

Starting with Windows 10, version 20H2 and including this release, Latest Cumulative Updates (LCUs) and Servicing Stack Updates (SSUs) have been combined into a single cumulative monthly update, available via Microsoft Catalog or Windows Server Update Services. For more information, see [Simplifying on-premises deployment of servicing stack updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-on-premises-deployment-of-servicing-stack-updates/ba-p/1646039).

Also see [What's next for Windows 10 updates](https://blogs.windows.com/windowsexperience/2020/06/16/whats-next-for-windows-10-updates/).

## Deployment

### Windows Autopilot

A new [resolved issues](/mem/autopilot/resolved-issues) article is available that includes several new fixes for Windows Autopilot deployment scenarios.

A new Intune remote action: **Collect diagnostics**, lets you collect the logs from corporate devices without interrupting or waiting for the end user. For more information, see [Collect diagnostics remote action](/mem/intune/fundamentals/whats-new#collect-diagnostics-remote-action).

Intune has also added capabilities to [Role-based access control](/mem/intune/fundamentals/whats-new#role-based-access-control) (RBAC) that can be used to further define profile settings for the Enrollment Status Page (ESP). For more information see [Create Enrollment Status Page profile and assign to a group](/mem/intune/enrollment/windows-enrollment-status#create-enrollment-status-page-profile-and-assign-to-a-group).  

For a full list of what's new in Microsoft Intune, see [What's new in Microsoft Intune](/mem/intune/fundamentals/whats-new).

### Windows Assessment and Deployment Toolkit (ADK)

There is no new ADK for Windows 10, version 21H1. The ADK for Windows 10, version 2004 will also work with Windows 10, version 21H1.  For more information, see [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

## Device management

Windows Management Instrumentation (WMI) Group Policy Service (GPSVC) has a performance improvement to support remote work scenarios:
- An issue is fixed that caused changes by an Active Directory (AD) administrator to user or computer group memberships to propagate slowly. Although the access token eventually updates, these changes might not appear when the administrator uses gpresult /r or gpresult /h to create a report.

## Security

### Windows Defender Application Guard (WDAG)

WDAG performance is improved with optimized document opening times:
- An issue is fixed that could cause a one minute or more delay when you open a Microsoft Defender Application Guard (WDAG) Office document. This can occur when you try to open a file using a Universal Naming Convention (UNC) path or Server Message Block (SMB) share link.
- A memory issue is fixed that could cause a WDAG container to use almost 1 GB of working set memory when the container is idle.
- The performance of Robocopy is improved when copying files over 400 MB in size.

### Windows Hello

Windows Hello multi-camera support is added, allowing users to choose an external camera priority when both external and internal Windows Hello-capable cameras are present.

## Microsoft Edge

The new Chromium-based [Microsoft Edge](https://www.microsoft.com/edge/business) browser is included with this release.  For more information about what's new in Edge, see the [Microsoft Edge insider](https://www.microsoftedgeinsider.com/whats-new).

## General fixes

See the [Windows Insider blog](https://blogs.windows.com/windows-insider/2021/02/17/releasing-windows-10-build-19042-844-20h2-to-beta-and-release-preview-channels/) for more information.

This release includes the following enhancements and issues fixed:

- a memory leak in Internet Explorer 11 that occurs when you use the Chinese language pack.
- COM+ callout policies that cause a deadlock in certain applications.
- an issue that prevents certain Win32 apps from opening as a different user when you use the runas
- unexpected screens during the Windows Out of Box Experience (OOBE).
- an issue that might cause a deadlock when a COM server delivers an event to multiple subscribers in parallel.
- an issue in Advanced display settings that shows the incorrect refresh rates available for high dynamic range (HDR) displays.
- an issue that might prevent certain CAD applications from opening if those applications rely on OpenGL.
- an issue that might cause video playback to flicker when rendering on certain low-latency capable monitors.
- an issue that sometimes prevents the input of strings into the Input Method Editor (IME).
- an issue that exhausts resources because Desktop Windows Manager (DWM) leaks handles and virtual memory in Remote Desktop sessions.
- a stop error that occurs at start up.
- an issue that might delay a Windows Hello for Business (WHfB) Certificate Trust deployment when you open the Settings-> Accounts-> Sign-in Options page.
- an issue that might prevent some keyboard keys from working, such as the home, Ctrl, or left arrow keys when you set the Japanese IME input mode to Kana.
- removed the history of previously used pictures from a user account profile.
- wrong language displayed on a console after you change the system locale.
- host process of Windows Remote Management (WinRM) can stop working when it formats messages from a PowerShell plugin.
- Windows Management Instrumentation (WMI) service caused a heap leak each time security settings are applied to WMI namespace permissions.
- screen rendering after opening games with certain hardware configurations.
- startup times for applications that have roaming settings when User Experience Virtualization (UE-V) is turned on.
- a principal in a trusted MIT realm fails to obtain a Kerberos service ticket from Active Directory domain controllers (DC). This occurs on devices that installed Windows Updates that contain CVE-2020-17049 protections and configured PerfromTicketSignature to 1 or higher. These updates were released between November 10, 2020 and December 8, 2020. Ticket acquisition also fails with the error, “KRB_GENERIC_ERROR”, if callers submit a PAC-less Ticket Granting Ticket (TGT) as an evidence ticket without providing the USER_NO_AUTH_DATA_REQUIRED flag.
- high memory and CPU utilization in Microsoft Defender for Endpoint.
- We enhanced data loss prevention and insider risk management solution functionalities in Microsoft 365 endpoints.
- an error when you attempt to open an untrusted webpage using Microsoft Edge or open an untrusted Microsoft Office document. The error is, “WDAG Report – Container: Error: 0x80070003, Ext error: 0x00000001”. This issue occurs after installing the .NET update KB4565627.
- an issue that prevents wevtutil from parsing an XML file.
- failure to report an error when the Elliptic Curve Digital Signature Algorithm (ECDSA) generates invalid keys of 163 bytes instead of 165 bytes.
- We added support for using the new Chromium-based Microsoft Edge as the assigned access single kiosk app. Now, you can also customize a breakout key sequence for single app kiosks. For more information, see Configure Microsoft Edge kiosk mode.
- User Datagram Protocol (UDP) broadcast packets that are larger than the maximum transmission unit (MTU). Devices that receive these packets discard them because the checksum is not valid.
- the WinHTTP AutoProxy service does not comply with the value set for the maximum Time To Live (TTL) on the Proxy Auto-Configuration (PAC) file. This prevents the cached file from updating dynamically.
- We improved the ability of the WinHTTP Web Proxy Auto-Discovery Service to ignore invalid Web Proxy Auto-Discovery Protocol (WPAD) URLs that the Dynamic Host Configuration Protocol (DHCP) server returns.
- We displayed the proper Envelope media type as a selectable output paper type for Universal Print queues.
- We ended the display of a random paper size for a printer when it uses the Microsoft Internet Printing Protocol (IPP) Class Driver.
- We enabled Windows to retrieve updated printer capabilities to ensure that users have the proper set of selectable print options.
- We updated support for hole punch and stapling locations for print jobs with long edge first paper feed direction on certain printers.
- an issue that might cause the IKEEXT service to stop working intermittently.
- an issue that might prevent a Non-Volatile Memory Express (NVMe) device from entering the proper power state.
- an issue that might cause stop error 7E in sys on servers running the Network File System (NFS) service.
- an issue that prevents the User Profile Service from detecting a slow or a fast link reliably.
- an issue that causes contention for a metadata lock when using Work Folders.
- We added a new dfslogkey:<br>
  Keypath: **HKEY_LOCAL_MACHINE/SOFTWARE/MICROSOFT/dfslog**<br>
  The **RootShareAcquireSuccessEvent** field has the following possible values:
  * Default value = 1; enables the log.
  * Value other than 1; disables the log.

  If this key does not exist, it will be created automatically. 
  To take effect, any change to **dfslog/RootShareAcquireSuccessEvent** in the registry requires that you restart the DFSN service.
- We updated the Open Mobile Alliance (OMA) Device Management (DM) sync protocol by adding a check-in reason for requests from the client to the server. The check-in reason will allow the mobile device management (MDM) service to make better decisions about sync sessions. With this change, the OMA-DM service must negotiate a protocol version of 4.0 with the Windows OMA-DM client.
- We turned off token binding by default in Windows Internet (WinINet).
-  an issue that might prevent the correct Furigana characters from appearing in apps that automatically allow the input of Furigana characters. You might need to enter the Furigana characters manually. This issue occurs when using the Microsoft Japanese Input Method Editor (IME) to enter Kanji characters in these apps.

## See Also

[IT tools to support Windows 10, version 21H1](https://aka.ms/tools-for-21H1)<br>
[Introducing the next feature update to Windows 10, version 21H1](https://blogs.windows.com/windowsexperience/2021/02/17/introducing-the-next-feature-update-to-windows-10-version-21h1/): Windows Experience Blog.<br>
[What's New in Windows Server](/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.<br>
[What's New in Windows 10](./index.yml): See what’s new in other versions of Windows 10.<br>
[Announcing more ways we’re making app development easier on Windows](https://blogs.windows.com/windowsdeveloper/2020/09/22/kevin-gallo-microsoft-ignite-2020/): Simplifying app development in Windows.<br>
[Features and functionality removed in Windows 10](/windows/deployment/planning/windows-10-removed-features): Removed features.<br>
[Windows 10 features we’re no longer developing](/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.<br>
