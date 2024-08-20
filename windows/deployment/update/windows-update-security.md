---
title: Windows Update security
manager: aaroncz
description: Overview of the security for Windows Update including security for the metadata exchange and content download.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 08/15/2024
---

# Windows Update security

The Windows Update (WU) system ensures devices are updated securely. Its end-to-end protection prevents manipulation of protocol exchanges and ensures only approved content is installed. Some protected environments may need to update firewall and proxy rules to ensure that Windows updates can be properly accessed. This article provides an overview of the security features of Windows Update.

## Windows Update security overview

The Windows Update system distributes a multitude of content. Some examples of this content include:

- Updates to the Windows operating system
- Microsoft 365 Apps updates (Office updates)
- Hardware drivers
- Antivirus definitions
- Microsoft Store apps

This system is initiated when a user interacts with the Windows Update settings page or when an application makes a call into the [WU client service API](/windows/win32/api/_wua/). These calls may be made at various times by Microsoft applications and different parts of Windows, such as [Microsoft 365 Apps](/officeupdates/update-history-microsoft365-apps-by-date), [Microsoft Defender](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus), and [Plug and Play (PnP)](/windows-hardware/drivers/kernel/introduction-to-plug-and-play).

When such interactions occur, the Windows Update service running on the device will trigger a series of exchanges over the internet with Microsoft's Windows Update servers. The general workflow is:

1. A Windows device makes multiple connections to Windows Update services using HTTPS (HTTP over TLS, TCP port 443).
1. Update metadata is exchanged over these connections and results in a list of updates, apps, drivers, and other updates.
1. The device decides whether and when to download items from the resulting list.

Once the list of downloads has been decided, the actual update binary files are then downloaded. The download is done via the [Delivery Optimization](/windows/deployment/do/waas-delivery-optimization) component over a mix of standard HTTP calls (TCP port 80) and secure peer-to-peer network calls (TCP port 7680). Which method used is based on the device's configuration/group policies.

When downloading updates using Delivery Optimization's peer-to-peer (P2P) networking, the content is integrity validated upon receipt from each peer. If the requested content is unavailable on the P2P network, then the Delivery Optimization component will download it using HTTP.

Regardless of which method is used to download the content, the resulting files are then validated through digital signatures and file hashes before they're installed. The validation confirms that the download is what was intended, is verified as authentic, and hasn't been tampered with.

## Securing metadata connections

When Windows Update scans for updates, it goes through a series of metadata exchanges between the device and Windows Update servers. This exchange is done using HTTPS (HTTP over TLS). These secured connections are certificate-pinned, ensuring that:

- The TLS connection's server certificate is validated (certificate trust, expiry, revocation, SAN entries, etc.)  
- The certificate's issuer is validated as genuine Microsoft Windows Update

The connection fails if the issuer is unexpected, or not a valid Windows Update intermediate certificate. Certificate pinning ensures that the device is connecting to legitimate Microsoft servers and prevents man-in-the-middle attacks.

Since Windows Update TLS connections are certificate-pinned, it's important that TLS proxies pass these connections without interception. The full list of DNS names that require proxy/firewall exceptions can be found in the [Windows Update troubleshooting](/troubleshoot/windows-client/deployment/windows-update-issues-troubleshooting?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#device-cannot-access-update-files) article.

Microsoft doesn't provide IP addresses or IP ranges for these exceptions because they may differ over time as changes are made for purposes such as traffic load balancing.

## Expected Windows Update server usage

The Windows Update service's servers are used solely by WU components. There's no expectation that end users will be interacting with these remote endpoints. Therefore, these service endpoints may not resolve as expected in a web browser. A user casually browsing to these endpoints may notice a lack of adherence to the latest web browser expectations such as publicly trusted PKI, certificate transparency logging, or TLS requirements. This behavior is expected and doesn't limit or otherwise impact the safety and security of the Windows Update system.

Users attempting to browse to the service endpoints may see security warnings and even content access failures. Again, this behavior is expected as the service endpoints aren't designed for web browser access or casual user consumption.

## Securing content delivery

The process of downloading update binaries is secured at a layer above the transport. Even though content may be downloaded through standard HTTP (TCP port 80), the content goes through a rigorous security validation process.

Downloads are load balanced through Content Delivery Networks (CDN), so using TLS would break their Microsoft chain-of-custody. Because a TLS connection to a caching CDN terminates at the CDN, not Microsoft, TLS certificates aren't Microsoft specific. This means that the WU client can't prove the trustworthiness of the CDN as Microsoft doesn't control CDN TLS certificates. Additionally, a TLS connection to a CDN doesn't prove content hasn't been manipulated within the CDN's caching network. Therefore, TLS doesn't offer any of the security promises to the end-to-end Windows Update workflow that it otherwise provides.

Regardless of how the content is delivered, once it has been downloaded, it's properly validated. Content is validated for trust, integrity, and intention using various techniques such as digital signature validation and file hash checks. This level of content validation provides even more layers of security than TLS alone.

## Windows Server Update Services (WSUS)

Enterprises using WSUS have a similar workflow. However, the client devices connect to their enterprise's WSUS server instead of over the internet to Microsoft's servers. It's up to the enterprise to decide whether to use HTTP or TLS (HTTPS) connections for the metadata exchange. Microsoft strongly advises using TLS connections and configuring client devices with appropriate TLS certificate pinning configurations for metadata exchange with WSUS. For more information about WSUS TLS certificate-pinning, see:

- [Windows IT Pro Blog: Changes to improve security for Windows devices scanning WSUS](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/changes-to-improve-security-for-windows-devices-scanning-wsus/ba-p/1645547)
- [Windows IT Pro Blog: Scan changes and certificates add security for Windows devices using WSUS for updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/scan-changes-and-certificates-add-security-for-windows-devices/ba-p/2053668)

When a WSUS server [updates its own update catalog](/windows-server/administration/windows-server-update-services/manage/setting-up-update-synchronizations), it connects to Microsoft's server sync services and scans for updates. The WSUS server synchronization process is similar to the [metadata exchange process](#securing-metadata-connections) for client devices connecting to Windows Update. The WSUS-to-Microsoft connection is over TLS and is verified by Microsoft certificate, similar to the WU client's TLS certificate-pinning.
