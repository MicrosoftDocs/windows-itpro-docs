---
title: Troubleshoot installation issues for Microsoft Defender ATP for Linux
ms.reviewer:
description: Troubleshoot installation issues for Microsoft Defender ATP for Linux
keywords: microsoft, defender, atp, linux, installation
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

# Troubleshoot installation issues for Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

## Installation failed

An error in installation may or may not result in a meaningful error message by the package manager. One can obtain the installation logs using:
```bash
$ sudo journalctl | grep 'microsoft-mdatp'  > installation.log
$ grep 'postinstall end' installation.log

microsoft-mdatp-installer[102243]: postinstall end [2020-03-26 07:04:43OURCE +0000] 102216
```
An output from the previous command with correct date and time indicates success.

Check if the daemon is running:
```bash
$ systemctl status mdatp

● mdatp.service - Microsoft Defender ATP
   Loaded: loaded (/lib/systemd/system/mdatp.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-03-26 10:37:30 IST; 23h ago
 Main PID: 1966 (wdavdaemon)
    Tasks: 105 (limit: 4915)
   CGroup: /system.slice/mdatp.service
           ├─1966 /opt/microsoft/mdatp/sbin/wdavdaemon
           ├─1967 /opt/microsoft/mdatp/sbin/wdavdaemon
           └─1968 /opt/microsoft/mdatp/sbin/wdavdaemon
```

## Steps to troubleshoot if wdavdaemon is not running

1. Check if “mdatp” user exists:
```bash
$ id “mdatp”
```
If there’s no output, run
```bash
$ sudo useradd --system --no-create-home --user-group --shell /usr/sbin/nologin mdatp
```

2. Try enabling and restarting the service using:
```bash
$ sudo systemctl enable mdatp
$ sudo systemctl restart mdatp
```

3. If mdatp.service is not found upon running the previous command, run
```bash
$ sudo cp /opt/microsoft/mdatp/conf/mdatp.service <systemd_path>

where <systemd_path> is
/lib/systemd/system for Ubuntu and Debian distributions
/usr/lib/systemd/system for Rhel, CentOS, Oracle and SLES
```
and then re-run step 2.

4. If the above steps don’t work, try disabling SELinux, and then starting the service using step 2. Please re-enable immediately though for security reasons after trying this.

5. Ensure that the filesystem containing wdavdaemon is not mounted with “noexec”

## If wdavdaemon is running but eicar detection doesn't work

1. Check the filesystem type using:
```bash
$ mount
```
Currently supported filesystems for on-access activity are ext2, ext3, ext4, temps, btrfs and xfs. Any files outside these filesystems will not be scanned.

2. Collect diagnostic logs:
```bash
$ mdatp --diagnostic --create
```

## Command line tool “mdatp” is not working

1. If running the command line tool `mdatp` gives an error `command not found`, run the following:
```bash
$  sudo ln -sf /opt/microsoft/mdatp/sbin/wdavdaemonclient /usr/bin/mdatp
```
and try again.

2. If step 1 doesn't work, please collect the diagnostic logs as indicated in the previous section.
