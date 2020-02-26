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

# Microsoft Defender ATP for Linux

This topic describes how to install, configure, update, and use Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Linux is likely to cause performance problems and unpredictable system errors.

<br></br>

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4q3yP]

## How to install Microsoft Defender ATP for Linux

### Prerequisites

- Access to the Microsoft Defender Security Center portal
- Beginner-level experience in Linux and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### Known issues

- Logged on users do not appear in the ATP portal.
- In SUSE distributions, if the installation of *libatomic1* fails, you should validate that your OS is registered:

    ```bash
    $ sudo SUSEConnect --status-text
    ```

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Linux.

In general you need to take the following steps:

- Ensure that you have a Microsoft Defender ATP subscription, and that you have access to the Microsoft Defender ATP portal.
- Deploy Microsoft Defender ATP for Linux using one of the following deployment methods:
  - The command-line tool:
    - [Manual deployment](linux-install-manually.md)
  - Third-party management tools:
    - [Deploy using Puppet configuration management tool](linux-install-with-puppet.md)
    - [Deploy using Ansbile configuration management tool](linux-install-with-ansible.md)

### System requirements

- Supported Linux server distributions and versions: 

  - Red Hat Enterprise Linux 7 or higher
  - CentOS 7 or higher
  - Ubuntu 16.04 LTS or higher LTS
  - Debian 9 or higher
  - SUSE Linux Enterprise Server 12 or higher
  - Oracle Enterprise Linux 7

- Minimum kernel version 2.6.38
- The `fanotify` kernel option must be enabled
- Disk space: 650 MB

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

### Network connections

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an *allow* rule specifically for them.

| Service location                         | DNS record              |
| ---------------------------------------- | ----------------------- |
| Common URLs for all locations            |  x.cp.wd.microsoft.com <br/> cdn.x.cp.wd.microsoft.com <br/> eu-cdn.x.cp.wd.microsoft.com <br/> wu-cdn.x.cp.wd.microsoft.com <br/> *.blob.core.windows.net <br/> officecdn-microsoft-com.akamaized.net <br/> crl.microsoft.com <br/>  events.data.microsoft.com |
| European Union                           | europe.x.cp.wd.microsoft.com <br/> eu-v20.events.data.microsoft.com |
| United Kingdom                           | unitedkingdom.x.cp.wd.microsoft.com <br/> uk-v20.events.data.microsoft.com |
| United States                            | unitedstates.x.cp.wd.microsoft.com  <br/> us-v20.events.data.microsoft.com |

Microsoft Defender ATP can discover a proxy server by using the following discovery methods:
- Transparent proxy
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs. For transparent proxies, no additional configuration is needed for Microsoft Defender ATP. For static proxy, follow the steps in [Manual Static Proxy Configuration](linux-static-proxy-configuration.md).

## Validating cloud connectivity

To test that a connection is not blocked, open [https://x.cp.wd.microsoft.com/api/report](https://x.cp.wd.microsoft.com/api/report) and [https://cdn.x.cp.wd.microsoft.com/ping](https://cdn.x.cp.wd.microsoft.com/ping) in a browser.

If you prefer the command line, you can also check the connection by running the following command in Terminal:

```bash
$ curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to the following:

> `OK https://x.cp.wd.microsoft.com/api/report`  
> `OK https://cdn.x.cp.wd.microsoft.com/ping`

Once Microsoft Defender ATP is installed, connectivity can be validated by running the following command in Terminal:
```bash
$ mdatp --connectivity-test
```

## How to update Microsoft Defender ATP for Linux

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender ATP for Linux, refer to [Deploy updates for Microsoft Defender ATP for Linux](linux-updates.md).

## How to configure Microsoft Defender ATP for Linux

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender ATP for Linux](linux-preferences.md).

## Resources

- For more information about logging, uninstalling, or other topics, see the [Resources](linux-resources.md) page.
