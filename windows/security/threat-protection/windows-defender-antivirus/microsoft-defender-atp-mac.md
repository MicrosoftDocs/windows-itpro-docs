---
title: Microsoft Defender ATP for Mac
description: Describes how to install and use Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, mojave, high sierra, sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Microsoft Defender ATP for Mac

>[!IMPORTANT]
>This topic relates to the pre-release version of Microsoft Defender ATP for Mac. Microsoft Defender ATP for Mac is not yet widely available, and this topic only applies to enterprise customers who have been accepted into the preview program. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic describes how to install and use Microsoft Defender ATP for Mac.

## What’s new in the public preview

We've been working hard through the private preview period, and we've heard your concerns. We've reduced the delay for when new Mac devices appear in the ATP console after they've been deployed. We've improved threat handling, and enhanced the user experience. We've also made numerous bug fixes. Other updates to Microsoft Defender ATP for Mac include:

- Full accessibility
- Improved performance
- Localization for 37 languages
- Improved anti-tampering protections
- Feedback and samples can now be submitted via the GUI.
- Product health can be queried with JAMF or the command line.
- Admins can set their cloud preference for any location, not just for those in the US.

## Installing and configuring

There are various methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Mac.
In general you'll need to take the following steps:

- Ensure you have a Windows Defender ATP subscription and have access to the Windows Defender ATP Portal
- Deploy Microsoft Defender ATP for Mac using one of the following deployment methods:
  - [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md)
  - [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md)
  - [Manual deployment](microsoft-defender-atp-mac-install-manually.md)

### Prerequisites

You should have beginner-level experience in macOS and BASH scripting. You must have administrative privileges on the machine.

You should also have access to Windows Defender Security Center.

### System Requirements

- macOS version: 10.14 (Mojave), 10.13 (High Sierra), 10.12 (Sierra)
- Disk space during preview: 1GB

Beta versions of macOS are not supported.

> [!CAUTION]
> Running other third-party endpoint protection along with Microsoft Defender ATP for Mac may lead to performance problems and unpredictable side effects.

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an **allow** rule specifically for them:

| Service        | Description                          | URL                                                                  |
| -------------- |:------------------------------------:| --------------------------------------------------------------------:|
| ATP            | Advanced threat protection service   | `https://x.cp.wd.microsoft.com/`, `https://*.x.cp.wd.microsoft.com/` |

To test that a connection is not blocked, open `https://x.cp.wd.microsoft.com/api/report` and `https://wu-cdn.x.cp.wd.microsoft.com/` in a browser, or run the following command in Terminal:

```bash
    mavel-mojave:~ testuser$ curl 'https://x.cp.wd.microsoft.com/api/report'
    OK
```

We recommend to keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) ([Wiki](https://en.wikipedia.org/wiki/System_Integrity_Protection)) enabled (default setting) on client machines.
SIP is a built-in macOS security feature that prevents low-level tampering with the OS.

## Resources

For additional information about logging, uninstalling, or known issues, see our [Resources](microsoft-defender-atp-mac-resources.md) page.
