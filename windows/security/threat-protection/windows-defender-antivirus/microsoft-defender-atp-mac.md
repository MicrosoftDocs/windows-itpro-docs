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
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Microsoft Defender Advanced Threat Protection for Mac

>[!IMPORTANT]
>This topic relates to the pre-release version of Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac. Microsoft Defender ATP for Mac is not yet widely available, and this topic only applies to enterprise customers who have been accepted into the preview program. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic describes how to install and use Microsoft Defender ATP for Mac.

## What’s new in the public preview

Since opening the limited preview, we've been working non-stop to enhance the product, by listening to customer feedback. We've reduced the time it takes for devices to appear in Microsoft Defender Security Center, immediately following deployment. We've improved threat handling, enhanced the user experience, and fixed bugs. Other updates to Microsoft Defender ATP for Mac include:

- Enhanced accessibility
- Improved performance
- improved client product health monitoring
- Localization into 37 languages
- Improved anti-tampering protections
- Feedback and samples can now be submitted via the interface.
- Product health can be queried with JAMF or the command line.
- Admins can set their cloud preference for any location, not just for those in the US.

## Installing and configuring

There are several methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Mac.

In general you'll need to take the following steps:

- Ensure you have a Microsoft Defender ATP subscription and have access to the Microsoft Defender ATP Portal
- Deploy Microsoft Defender ATP for Mac using one of the following deployment methods:
  - Via the command line tool:
    - [Manual deployment](microsoft-defender-atp-mac-install-manually.md)
  - Via third party tools:
    - [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md)
    - [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md)
    - [Other MDM products](microsoft-defender-atp-mac-install-with-other-mdm.md)

Whichever method you choose, you will first need to visit the onboarding page in the Microsoft Defender ATP portal.

### Prerequisites

You should have beginner-level experience in macOS and BASH scripting. You must have administrative privileges on the machine.

You should also have access to Microsoft Defender Security Center.

### System Requirements

- macOS version: 10.14 (Mojave), 10.13 (High Sierra), 10.12 (Sierra)
- Disk space during preview: 1GB

Beta versions of macOS are not supported.

> [!CAUTION]
> Running other third-party endpoint protection alongside Microsoft Defender ATP for Mac may lead to performance problems and unpredictable side effects.

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an **allow** rule specifically for them:

| Service        | Description                          | URL                                                                  |
| -------------- | ------------------------------------ | -------------------------------------------------------------------- |
| ATP            | Advanced threat protection service   | [https://x.cp.wd.microsoft.com](https://x.cp.wd.microsoft.com), [https://cdn.x.cp.wd.microsoft.com](https://cdn.x.cp.wd.microsoft.com) |

To test that a connection is not blocked, open [https://x.cp.wd.microsoft.com/api/report](https://x.cp.wd.microsoft.com/api/report) and [https://cdn.x.cp.wd.microsoft.com/ping]([https://cdn.x.cp.wd.microsoft.com/ping) in a browser.

If you prefer the command line, you can also check the connection by running the following command in Terminal:

```bash
testuser$ curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should look like this:

> `OK https://x.cp.wd.microsoft.com/api/report`
>
> `OK https://cdn.x.cp.wd.microsoft.com/ping`


We recommend that you keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) (SIP) enabled on client machines. SIP is a built-in macOS security feature that prevents low-level tampering with the OS, and is enabled by default.

## Resources

For additional information about logging, uninstalling, or known issues, see our [Resources](microsoft-defender-atp-mac-resources.md) page.
