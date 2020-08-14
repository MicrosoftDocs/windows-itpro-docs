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

If you can reproduce a problem, first increase the logging level, run the system for some time, and then restore the logging level to the default.

1. Increase logging level:

   ```bash
   mdatp log level set --level verbose
   ```
   ```Output
   Log level configured successfully
   ```

2. Reproduce the problem.

3. Run the following command to back up Microsoft Defender ATP's logs. The files will be stored inside of a .zip archive. 

   ```bash
   sudo mdatp diagnostic create
   ```
    This command will also print out the file path to the backup after the operation succeeds:
   ```Output
   Diagnostic file created: <path to file>
   ```

4. Restore logging level:

   ```bash
   mdatp log level set --level info
   ```
   ```Output
   Log level configured successfully
   ```

## Log installation issues

If an error occurs during installation, the installer will only report a general failure.

The detailed log will be saved to `/var/log/microsoft/mdatp_install.log`. If you experience issues during installation, send us this file so we can help diagnose the cause.

## Uninstall

There are several ways to uninstall Microsoft Defender ATP for Linux. If you are using a configuration tool such as Puppet, follow the package uninstallation instructions for the configuration tool.

### Manual uninstallation

- ```sudo yum remove mdatp``` for RHEL and variants(CentOS and Oracle Linux).
- ```sudo zypper remove mdatp``` for SLES and variants.
- ```sudo apt-get purge mdatp``` for Ubuntu and Debian systems.

## Configure from the command line

Important tasks, such as controlling product settings and triggering on-demand scans, can be done from the command line.

### Global options

By default, the command-line tool outputs the result in human-readable format. In addition, the tool also supports outputting the result as JSON, which is useful for automation scenarios. To change the output to JSON, pass `--output json` to any of the below commands.

### Supported commands

The following table lists commands for some of the most common scenarios. Run `mdatp help` from the Terminal to view the full list of supported commands.

|Group                 |Scenario                                                |Command                                                                |
|----------------------|--------------------------------------------------------|-----------------------------------------------------------------------|
|Configuration         |Turn on/off real-time protection                        |`mdatp config real-time-protection --value [enabled|disabled]`         |
|Configuration         |Turn on/off cloud protection                            |`mdatp config cloud --value [enabled|disabled]`                        |
|Configuration         |Turn on/off product diagnostics                         |`mdatp config cloud-diagnostic --value [enabled|disabled]`             |
|Configuration         |Turn on/off automatic sample submission                 |`mdatp config cloud-automatic-sample-submission [enabled|disabled]`    |
|Configuration         |Turn on/off AV passive mode                             |`mdatp config passive-mode [enabled|disabled]`                         |
|Configuration         |Add/remove an antivirus exclusion for a file extension  |`mdatp exclusion extension [add|remove] --name [extension]`            |
|Configuration         |Add/remove an antivirus exclusion for a file            |`mdatp exclusion file [add|remove] --path [path-to-file]`              |
|Configuration         |Add/remove an antivirus exclusion for a directory       |`mdatp exclusion folder [add|remove] --path [path-to-directory]`       |
|Configuration         |Add/remove an antivirus exclusion for a process         |`mdatp exclusion process [add|remove] --path [path-to-process]`<br/>`mdatp exclusion process [add|remove] --name [process-name]`   |
|Configuration         |List all antivirus exclusions                           |`mdatp exclusion list`                                                 |
|Configuration         |Add a threat name to the allowed list                   |`mdatp threat allowed add --name [threat-name]`                        |
|Configuration         |Remove a threat name from the allowed list              |`mdatp threat allowed remove --name [threat-name]`                     |
|Configuration         |List all allowed threat names                           |`mdatp threat allowed list`                                            |
|Configuration         |Turn on PUA protection                                  |`mdatp threat policy set --type potentially_unwanted_application --action block` |
|Configuration         |Turn off PUA protection                                 |`mdatp threat policy set --type potentially_unwanted_application --action off` |
|Configuration         |Turn on audit mode for PUA protection                   |`mdatp threat policy set --type potentially_unwanted_application --action audit` |
|Diagnostics           |Change the log level                                    |`mdatp log level set --level verbose [error|warning|info|verbose]`     |
|Diagnostics           |Generate diagnostic logs                                |`mdatp diagnostic create`                                              |
|Health                |Check the product's health                              |`mdatp health`                                                         |
|Protection            |Scan a path                                             |`mdatp scan custom --path [path]`                                      |
|Protection            |Do a quick scan                                         |`mdatp scan quick`                                                     |
|Protection            |Do a full scan                                          |`mdatp scan full`                                                      |
|Protection            |Cancel an ongoing on-demand scan                        |`mdatp scan cancel`                                                    |
|Protection            |Request a security intelligence update                  |`mdatp definitions update`                                             |
|Protection history    |Print the full protection history                       |`mdatp threat list`                                                    |
|Protection history    |Get threat details                                      |`mdatp threat get --id [threat-id]`                                    |
|Quarantine management |List all quarantined files                              |`mdatp threat quarantine list`                                         |
|Quarantine management |Remove all files from the quarantine                    |`mdatp threat quarantine remove-all`                                   |
|Quarantine management |Add a file detected as a threat to the quarantine       |`mdatp threat quarantine add --id [threat-id]`                         |
|Quarantine management |Remove a file detected as a threat from the quarantine  |`mdatp threat quarantine add --id [threat-id]`                         |
|Quarantine management |Restore a file from the quarantine                      |`mdatp threat quarantine add --id [threat-id]`                         |

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

- You might see "No sensor data, impaired communications" in the machine information page of the Microsoft Defender Security Center portal, even though the product is working as expected. We are working on addressing this issue.
- Logged on users do not appear in the Microsoft Defender Security Center portal.
- In SUSE distributions, if the installation of *libatomic1* fails, you should validate that your OS is registered:

    ```bash
   sudo SUSEConnect --status-text
    ```