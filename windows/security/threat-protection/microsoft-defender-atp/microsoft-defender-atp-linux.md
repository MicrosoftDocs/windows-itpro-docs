---
title: Microsoft Defender ATP for Linux
ms.reviewer: 
description: Describes how to install and use Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint for Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic describes how to install, configure, update, and use Microsoft Defender for Endpoint for Linux.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender for Endpoint for Linux is likely to cause performance problems and unpredictable system errors.

## How to install Microsoft Defender for Endpoint for Linux

### Prerequisites

- Access to the Microsoft Defender Security Center portal
- Linux distribution using the [systemd](https://systemd.io/) system manager
- Beginner-level experience in Linux and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender for Endpoint for Linux.

In general you need to take the following steps:

- Ensure that you have a Microsoft Defender for Endpoint subscription, and that you have access to the [Microsoft Defender for Endpoint portal](microsoft-defender-security-center.md).
- Deploy Microsoft Defender for Endpoint for Linux using one of the following deployment methods:
  - The command-line tool:
    - [Manual deployment](linux-install-manually.md)
  - Third-party management tools:
    - [Deploy using Puppet configuration management tool](linux-install-with-puppet.md)
    - [Deploy using Ansible configuration management tool](linux-install-with-ansible.md)

If you experience any installation failures, refer to [Troubleshooting installation failures in Microsoft Defender for Endpoint for Linux](linux-support-install.md).

### System requirements

- Supported Linux server distributions and versions:

  - Red Hat Enterprise Linux 7.2 or higher
  - CentOS 7.2 or higher
  - Ubuntu 16.04 LTS or higher LTS
  - Debian 9 or higher
  - SUSE Linux Enterprise Server 12 or higher
  - Oracle Linux 7.2 or higher

- Minimum kernel version 3.10.0-327
- The `fanotify` kernel option must be enabled
  > [!CAUTION]
  > Running Defender for Endpoint for Linux side by side with other `fanotify`-based security solutions is not supported. It can lead to unpredictable results, including hanging the operating system.

- Disk space: 1GB
- The solution currently provides real-time protection for the following file system types:

  - `btrfs`
  - `ecryptfs`
  - `ext2`
  - `ext3`
  - `ext4`
  - `fuse`
  - `fuseblk`
  - `jfs`
  - `nfs`
  - `overlay`
  - `ramfs`
  - `reiserfs`
  - `tmpfs`
  - `udf`
  - `vfat`
  - `xfs`

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

- Audit framework (`auditd`) must be enabled.
  >[!NOTE]
  > System events captured by rules added to `audit.logs` will add to audit logs and might affect host auditing and upstream collection. Events added by Microsoft Defender for Endopoint for Linux will be tagged with `mdatp` key.

### Network connections

The following downloadable spreadsheet lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs. If there are, you may need to create an *allow* rule specifically for them.

|**Spreadsheet of domains list**|**Description**|
|:-----|:-----|
|![Thumb image for Microsoft Defender for Endpoint URLs spreadsheet](images/mdatp-urls.png)<br/>  | Spreadsheet of specific DNS records for service locations, geographic locations, and OS. <br><br>[Download the spreadsheet here.](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx)

> [!NOTE]
> For a more specific URL list, see [Configure proxy and internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet#enable-access-to-microsoft-defender-atp-service-urls-in-the-proxy-server).

Defender for Endpoint can discover a proxy server by using the following discovery methods:
- Transparent proxy
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs. For transparent proxies, no additional configuration is needed for Defender for Endpoint. For static proxy, follow the steps in [Manual Static Proxy Configuration](linux-static-proxy-configuration.md).

> [!WARNING]
> PAC, WPAD, and authenticated proxies are not supported. Ensure that only a static proxy or transparent proxy is being used.
>
> SSL inspection and intercepting proxies are also not supported for security reasons. Configure an exception for SSL inspection and your proxy server to directly pass through data from Defender for Endpoint for Linux to the relevant URLs without interception. Adding your interception certificate to the global store will not allow for interception.

For troubleshooting steps, see [Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint for Linux](linux-support-connectivity.md).

## How to update Microsoft Defender for Endpoint for Linux

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender for Endpoint for Linux, refer to [Deploy updates for Microsoft Defender for Endpoint for Linux](linux-updates.md).

## How to configure Microsoft Defender for Endpoint for Linux

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender for Endpoint for Linux](linux-preferences.md).

## Resources

- For more information about logging, uninstalling, or other topics, see [Resources](linux-resources.md).
