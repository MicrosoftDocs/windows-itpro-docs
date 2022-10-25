---
title: Windows Update security
ms.reviewer: 
manager: aaroncz
description: Overview of the security for Windows Update.
ms.prod: w10
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 10/25/2022
---

# Windows Update security overview

The Windows Update (WU) system ensures devices are updated securely. Its end-to-end protection prevents manipulation of protocol exchanges and ensures only approved content is installed. Some protected environments may need to update firewall and proxy rules to ensure that Windows updates can be properly accessed.

The Windows Update system distributes a multitude of content. Some examples of this content include:

- Updates to the Windows operating system
- Microsoft 365 Apps updates (Office updates)
- Hardware drivers
- Antivirus definitions
- Microsoft Store apps

This system is initiated when a user interacts with the Windows Update settings page or when an application makes a call into the [WU client service API](/windows/win32/api/_wua/). These calls may be made at various times by different parts of Windows and Microsoft applications, such as [Microsoft 365 Apps](/officeupdates/update-history-microsoft365-apps-by-date), [Microsoft Defender](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus), and [Plug and Play (PnP)](/windows-hardware/drivers/kernel/introduction-to-plug-and-play).

When such interactions occur, the Windows Update service running on the device will trigger a series of exchanges over the internet with Microsoft's Windows Update servers. The general workflow is:

1. A Windows device makes multiple connections to Windows Update services using HTTPS (HTTP over TLS, TCP port 443).
1. Update metadata is exchanged over these connections and results in a list of updates, apps, drivers, and other updates.
1. The device decides whether and when to download items from the resulting list.

Once the list of downloads has been decided, the actual update binary files are then downloaded. The download is done via the [Delivery Optimization](/windows/deployment/do/waas-delivery-optimization) component over a mix of standard HTTP calls (TCP port 80) and secure peer-to-peer network calls (TCP port 7680). Which method used is based on the device's configuration/group policies.

When downloading updates using Delivery Optimization's peer-to-peer (P2P) networking, the content is integrity validated upon receipt from each peer. If the requested content is unavailable on the P2P network, then the Delivery Optimization component will download it using HTTP.

Regardless of which method is used to download the content, the resulting files are then validated through digital signatures and file hashes before they're installed. The validation confirms that the download is what was intended, is verified as authentic, and hasn't been tampered with.

## Securing metadata connections

When Windows Update scans for updates, it goes through a series of metadata exchanges between the device and Windows Update servers. This exchange is done using HTTPS (HTTP over TLS). These secured connections are certificate-pinned. Certificate pinning, ensures that not only is the TLS connection's server certificate validated (certificate trust, expiry, revocation, SAN entries, etc.) but the certificate's issuer is also validated as genuine Microsoft Windows Update. If the issuer is unexpected (not a valid Windows Update intermediate certificate), then the connection fails. This ensures that the device is connecting to legitimate Microsoft servers and prevents man-in-the-middle attacks.

Since Windows Update TLS connections are certificate-pinned, it's important that TLS proxies pass these connections without interception. The full list of DNS names that require proxy/firewall exceptions can be found in the [Windows Update troubleshooting](/windows-client/deployment/windows-update-issues-troubleshooting?toc=%2Fwindows%2Fdeployment%2Ftoc.json&bc=%2Fwindows%2Fdeployment%2Fbreadcrumb%2Ftoc.json#device-cannot-access-update-files) article.


Microsoft doesn't provide IP addresses or IP ranges for these exceptions because they may differ over time as changes are made for purposes such as traffic load balancing.