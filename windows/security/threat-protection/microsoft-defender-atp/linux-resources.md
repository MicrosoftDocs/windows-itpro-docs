---
title: Microsoft Defender ATP for Linux resources
ms.reviewer: 
description: Describes resources for Microsoft Defender ATP for Linux, including how to uninstall it, how to collect diagnostic logs, CLI commands, and known issues with the product.
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

# Resources

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

## Collect diagnostic information

If you can reproduce a problem, please increase the logging level, run the system for some time, and restore the logging level to the default.

1. Increase logging level:

   ```bash
   $ mdatp log level set --level verbose
   Log level configured successfully
   ```

2. Reproduce the problem.

3. Run `sudo mdatp diagnostic create` to back up Microsoft Defender ATP's logs. The files will be stored inside of a .zip archive. This command will also print out the file path to the backup after the operation succeeds:

   ```bash
   $ sudo mdatp diagnostic create
   Diagnostic file created: <path to file>
   ```

4. Restore logging level:

   ```bash
   $ mdatp log level set --level info
   Log level configured successfully
   ```

## Log installation issues

If an error occurs during installation, the installer will only report a general failure.

The detailed log will be saved to `/var/log/microsoft/mdatp_install.log`. If you experience issues during installation, send us this file so we can help diagnose the cause.

## Uninstall

There are several ways to uninstall Microsoft Defender ATP for Linux. If you are using a configuration tool such as Puppet, please follow the package uninstallation instructions for the configuration tool.

### Manual uninstallation

- ```sudo yum remove mdatp``` for RHEL and variants(CentOS and Oracle Linux).
- ```sudo zypper remove mdatp``` for SLES and variants.
- ```sudo apt-get purge mdatp``` for Ubuntu and Debian systems.

## Configure from the command line

Important tasks, such as controlling product settings and triggering on-demand scans, can be done from the command line:

|Group        |Scenario                                   |Command                                                                |
|-------------|-------------------------------------------|-----------------------------------------------------------------------|
|Configuration|Turn on/off real-time protection           |`mdatp config real_time_protection --value [enabled|disabled]`         |
|Configuration|Turn on/off cloud protection               |`mdatp config cloud --value [enabled|disabled]`                        |
|Configuration|Turn on/off product diagnostics            |`mdatp config cloud-diagnostic --value [enabled|disabled]`             |
|Configuration|Turn on/off automatic sample submission    |`mdatp config cloud-automatic-sample-submission [enabled|disabled]`    |
|Configuration|Turn on/off AV passive mode                |`mdatp config passive-mode [enabled|disabled]`                         |
|Configuration|Turn on PUA protection                     |`mdatp threat policy set --type potentially_unwanted_application --action block` |
|Configuration|Turn off PUA protection                    |`mdatp threat policy set --type potentially_unwanted_application --action off` |
|Configuration|Turn on audit mode for PUA protection      |`mdatp threat policy set --type potentially_unwanted_application --action audit` |
|Diagnostics  |Change the log level                       |`mdatp log level set --level verbose [error|warning|info|verbose]`     |
|Diagnostics  |Generate diagnostic logs                   |`mdatp diagnostic create`                                              |
|Health       |Check the product's health                 |`mdatp health`                                                         |
|Protection   |Scan a path                                |`mdatp scan custom --path [path]`                                      |
|Protection   |Do a quick scan                            |`mdatp scan quick`                                                     |
|Protection   |Do a full scan                             |`mdatp scan full`                                                      |
|Protection   |Cancel an ongoing on-demand scan           |`mdatp scan cancel`                                                    |
|Protection   |Request a security intelligence update     |`mdatp definitions update`                                             |

## Microsoft Defender ATP portal information

In the Microsoft Defender ATP portal, you'll see two categories of information:

- Antivirus alerts, including:
  - Severity
  - Scan type
  - Device information (hostname, device identifier, tenant identifier, app version, and OS type)
  - File information (name, path, size, and hash)
  - Threat information (name, type, and state)
- Device information, including:
  - Device identifier
  - Tenant identifier
  - App version
  - Hostname
  - OS type
  - OS version
  - Computer model
  - Processor architecture
  - Whether the device is a virtual machine

### Known issues

- Logged on users do not appear in the Microsoft Defender Security Center portal.
- In SUSE distributions, if the installation of *libatomic1* fails, you should validate that your OS is registered:

    ```bash
    $ sudo SUSEConnect --status-text
    ```