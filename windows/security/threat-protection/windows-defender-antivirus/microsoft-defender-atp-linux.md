---
title: Microsoft Defender ATP for Linux
ms.reviewer: 
description: Describes how to install and use Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
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

# Microsoft Defender Advanced Threat Protection for Linux

This topic describes how to install, configure, update, and use Microsoft Defender ATP for Linux.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Linux is likely to lead to performance problems and unpredictable side effects.
 
> [!NOTE]
>How would users give us feedback?  
> **TODO:** Should we add atp --feedback "Feedback" that will send the feedback to us / OCV. I am keeping the original line for reference.  
>
> If you have any feedback that you would like to share, submit it by opening Microsoft Defender ATP for Mac on your device and navigating to **Help** > **Send feedback**.

## How to install Microsoft Defender ATP for Linux

### Prerequisites

- Access to the Microsoft Defender Security Center portal
- Beginner-level experience in Linux and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### System requirements

- Supported Linux distributions and versions: RHEL 7, Oracle 7, CentOS 7, Ubuntu 16 and 18, Debian 9
- Disk space: 650 MB. 
> [!NOTE]
>**TODO**: Verify this

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an *allow* rule specifically for them.

| Service location                         | DNS record              |
| ---------------------------------------- | ----------------------- |
| Common URLs for all locations            |  x.cp.wd.microsoft.com <br/> cdn.x.cp.wd.microsoft.com <br/> eu-cdn.x.cp.wd.microsoft.com <br/> wu-cdn.x.cp.wd.microsoft.com <br/> *.blob.core.windows.net <br/> officecdn-microsoft-com.akamaized.net |
| European Union                           | europe.x.cp.wd.microsoft.com |
| United Kingdom                           | unitedkingdom.x.cp.wd.microsoft.com |
| United States                            | unitedstates.x.cp.wd.microsoft.com |

>[!NOTE]
> **TODO:** Verify the proxy paragraph

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

> `OK https://x.cp.wd.microsoft.com/api/report`
>
> `OK https://cdn.x.cp.wd.microsoft.com/ping`

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Linux.

In general you need to take the following steps:

- Ensure that you have a Microsoft Defender ATP subscription and have access to the Microsoft Defender ATP Portal
- Deploy Microsoft Defender ATP for Linux using one of the following deployment methods:
  - Via third-party management tools:
    - [Deploy using Puppet configuration management tool](microsoft-defender-atp-linux-install-with-puppet.md)
    - [Deploy using Ansbile configuration management tool](microsoft-defender-atp-linux-install-with-ansible.md)
    - [Other configuration management tools](microsoft-defender-atp-linux-install-with-other-configtool.md)
  - Via the command-line tool:
    - [Manual deployment](microsoft-defender-atp-linux-install-manually.md)

## How to update Microsoft Defender ATP for Linux

>[!NOTE]
> **TODO:** Upgrade story is not very clear right now!

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender ATP for Linux, refer to [Deploy updates for Microsoft Defender ATP for Linux](microsoft-defender-atp-linux-updates.md)

## How to configure Microsoft Defender ATP for Linux

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender ATP for Linux](microsoft-defender-atp-linux-preferences.md).

## Resources

- For more information about logging, uninstalling, or other topics, see the [Resources](microsoft-defender-atp-linux-resources.md) page.

- [Privacy for Microsoft Defender ATP for Linux](microsoft-defender-atp-linux-privacy.md)
