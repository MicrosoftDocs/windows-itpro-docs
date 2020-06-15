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

## Verify if installation succeeded

An error in installation may or may not result in a meaningful error message by the package manager. To verify if the installation succeeded, one can obtain and check the installation logs using:
```bash
$ sudo journalctl | grep 'microsoft-mdatp'  > installation.log
$ grep 'postinstall end' installation.log

microsoft-mdatp-installer[102243]: postinstall end [2020-03-26 07:04:43OURCE +0000] 102216
```
An output from the previous command with correct date and time of installation indicates success.

Also check the [Client configuration](linux-install-manually.md#client-configuration) to verify the health of the product and detect the EICAR text file.

## Installation failed

Check if the mdatp service is running
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

## Steps to troubleshoot if mdatp service isn't running

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

3. If mdatp.service isn't found upon running the previous command, run
```bash
$ sudo cp /opt/microsoft/mdatp/conf/mdatp.service <systemd_path>

where <systemd_path> is
/lib/systemd/system for Ubuntu and Debian distributions
/usr/lib/systemd/system for Rhel, CentOS, Oracle and SLES
```
and then rerun step 2.

4. If the above steps don’t work, check if SELinux is installed and in enforcing mode. If so, try setting it to permissive (preferably) or disabled mode. It can be done by setting the parameter `SELINUX` to "permissive" or "disabled" in `/etc/selinux/config` file, followed by reboot. Check the man-page of selinux for more details.
Now try restarting the mdatp service using step 2. Revert the configuration change immediately though for security reasons after trying it and reboot.

5. Ensure that the daemon has executable permission.
```bash
$ ls -l /opt/microsoft/mdatp/sbin/wdavdaemon

-rwxr-xr-x 2 root root 15502160 Mar  3 04:47 /opt/microsoft/mdatp/sbin/wdavdaemon
```
If the daemon doesn't have executable permissions, make it executable using:
```bash
$ sudo chmod 0755 /opt/microsoft/mdatp/sbin/wdavdaemon
```
and retry running step 2.

6. Ensure that the file system containing wdavdaemon isn't mounted with “noexec”.

## If mdatp service is running, but EICAR text file detection doesn't work

1. Check the file system type using:
```bash
$ findmnt -T <path_of_EICAR_file>
```
Currently supported file systems for on-access activity are listed [here](microsoft-defender-atp-linux.md#system-requirements). Any files outside these file systems won't be scanned.

## Command-line tool “mdatp” isn't working

1. If running the command-line tool `mdatp` gives an error `command not found`, run the following command:
```bash
$  sudo ln -sf /opt/microsoft/mdatp/sbin/wdavdaemonclient /usr/bin/mdatp
```
and try again.

If none of the above steps help, collect the diagnostic logs:
```bash
$ sudo mdatp --diagnostic --create
```
Path to a zip file that contains the logs will be displayed as an output. Reach out to our customer support with these logs.
