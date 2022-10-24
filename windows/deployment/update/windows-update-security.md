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

This system is initiated when a user interacts with the Windows Update settings page or when an application makes a call into the [WU client service API](/windows/win32/api/_wua/). These calls may be made at various times by different parts of Windows and Microsoft applications, such as Microsoft 365 Apps, Microsoft Defender, and Plug and Play (PnP).

When such interactions occur the Windows Update service running on the device will trigger a series of exchanges over the internet with Microsoft's Windows Update servers. The general workflow is that a Windows device makes multiple connections to Windows Update services using HTTPS (HTTP over TLS, TCP port 443). Update metadata is exchanged over these connections and results in a list of updates, apps, drivers, and other updates, which the device decides whether and when to download.

Once the list of downloads has been decided, the actual update binary files are then downloaded. This is done via the Delivery Optimization component over a mix of standard HTTP calls (TCP port 80) and secure peer-to-peer network calls (TCP port 7680). Which method used is based on the device's configuration/group policies.

When downloading updates using Delivery Optimization's peer-to-peer networking the content is integrity validated upon receipt from each peer. If the requested content is unavailable on the p2p network then the Delivery Optimization component will download it using HTTP.

Regardless of which method is used to download the content, the resulting files are then validated through digital signatures and file hashes before they are installed. This validates that the download is what was intended, is verified as authentic and has not been tampered with.

