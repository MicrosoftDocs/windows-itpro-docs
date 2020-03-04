---
title: Microsoft Defender ATP for Mac
ms.reviewer:
description: Describes how to install and use Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, catalina, mojave, high sierra
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

This topic describes how to install, configure, update, and use Microsoft Defender ATP for Mac.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Mac is likely to lead to performance problems and unpredictable side effects. If non-Microsoft endpoint protection is an absolute requirement in your environment, you can still safely take advantage of MDATP for Mac EDR functionality after configuring MDATP for Mac antivirus functionality to run in [Passive mode](mac-preferences.md#enable--disable-passive-mode).

## What’s new in the latest release

[What's new in Microsoft Defender ATP](whats-new-in-microsoft-defender-atp.md)

[What's new in Microsoft Defender ATP for Mac](mac-whatsnew.md)

> [!TIP]
> If you have any feedback that you would like to share, submit it by opening Microsoft Defender ATP for Mac on your device and navigating to **Help** > **Send feedback**.

To get the latest features, including preview capabilities (such as endpoint detection and response for your Mac machines), configure your macOS machine running Microsoft Defender ATP to be an "Insider" machine. See [Enable Microsoft Defender ATP Insider Machine](endpoint-detection-response-mac-preview.md). 

## How to install Microsoft Defender ATP for Mac

### Prerequisites

- A Microsoft Defender ATP subscription and access to the Microsoft Defender Security Center portal
- Beginner-level experience in macOS and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Mac.

- Third-party management tools:
    - [Microsoft Intune-based deployment](mac-install-with-intune.md)
    - [JAMF-based deployment](mac-install-with-jamf.md)
    - [Other MDM products](mac-install-with-other-mdm.md)

- Command-line tool:
    - [Manual deployment](mac-install-manually.md)

### System requirements

The three most recent major releases of macOS are supported.

- 10.15 (Catalina), 10.14 (Mojave), 10.13 (High Sierra)
- Disk space: 650 MB

Beta versions of macOS are not supported. macOS Sierra (10.12) support ended on January 1, 2020.

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

### Network connections

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an *allow* rule specifically for them.

| Service location                         | DNS record              |
| ---------------------------------------- | ----------------------- |
| Common URLs for all locations            |  x.cp.wd.microsoft.com <br/> cdn.x.cp.wd.microsoft.com <br/> eu-cdn.x.cp.wd.microsoft.com <br/> wu-cdn.x.cp.wd.microsoft.com <br/> *.blob.core.windows.net <br/> officecdn-microsoft-com.akamaized.net <br/> crl.microsoft.com <br/>  events.data.microsoft.com |
| European Union                           | europe.x.cp.wd.microsoft.com <br/> eu-v20.events.data.microsoft.com |
| United Kingdom                           | unitedkingdom.x.cp.wd.microsoft.com <br/> uk-v20.events.data.microsoft.com |
| United States                            | unitedstates.x.cp.wd.microsoft.com  <br/> us-v20.events.data.microsoft.com |

Microsoft Defender ATP can discover a proxy server by using the following discovery methods:
- Web Proxy Auto-discovery Protocol (WPAD)
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs.

To test that a connection is not blocked, open [https://x.cp.wd.microsoft.com/api/report](https://x.cp.wd.microsoft.com/api/report) and [https://cdn.x.cp.wd.microsoft.com/ping](https://cdn.x.cp.wd.microsoft.com/ping) in a browser.

If you prefer the command line, you can also check the connection by running the following command in Terminal:

```bash
$ curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to the following:

 `OK https://x.cp.wd.microsoft.com/api/report`

 `OK https://cdn.x.cp.wd.microsoft.com/ping`

> [!CAUTION]
> We recommend that you keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) (SIP) enabled on client machines. SIP is a built-in macOS security feature that prevents low-level tampering with the OS, and is enabled by default.

Once Microsoft Defender ATP is installed, connectivity can be validated by running the following command in Terminal:
```bash
$ mdatp --connectivity-test
```

## How to update Microsoft Defender ATP for Mac

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender ATP for Mac, a program named Microsoft AutoUpdate (MAU) is used. To learn more, see [Deploy updates for Microsoft Defender ATP for Mac](mac-updates.md)

## How to configure Microsoft Defender ATP for Mac

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender ATP for Mac](mac-preferences.md).

## macOS kernel and system extensions

In alignment with macOS evolution, we are preparing a Microsoft Defender ATP for Mac update that leverages system extensions instead of kernel extensions. Visit [What's new in Microsoft Defender Advanced Threat Protection for Mac](mac-whatsnew.md) for relevant details.

## Resources

- For more information about logging, uninstalling, or other topics, see the [Resources](mac-resources.md) page.

- [Privacy for Microsoft Defender ATP for Mac](mac-privacy.md)
