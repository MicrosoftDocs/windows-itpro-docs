---
title: Troubleshoot missing events or alerts issues for Microsoft Defender ATP for Linux
description: Troubleshoot missing events or alerts issues in Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, events
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
mms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Troubleshoot missing events or alerts issues for Microsoft Defender for Endpoint for Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint for Linux](microsoft-defender-atp-linux.md)

This article provides some general steps to mitigate missing events or alerts in the [security center](https://securitycenter.windows.com/) portal.

Once **Microsoft Defender for Endpoint** has been installed properly on a device, a _device page_ will be generated in the portal. You can review all recorded events in the timeline tab in the device page, or in advanced hunting page. This section troubleshoots the case of some or all expected events are missing.
For instance, if all _CreatedFile_ events are missing.

## Missing network and login events

Microsoft Defender for Endpoint utilized `audit` framework from linux to track network and login activity.

1. Make sure audit framework is working.

    ```bash
    service auditd status
    ```

    expected output:

    ```output
    ● auditd.service - Security Auditing Service
    Loaded: loaded (/usr/lib/systemd/system/auditd.service; enabled; vendor preset: enabled)
    Active: active (running) since Mon 2020-12-21 10:48:02 IST; 2 weeks 0 days ago
        Docs: man:auditd(8)
            https://github.com/linux-audit/audit-documentation
    Process: 16689 ExecStartPost=/sbin/augenrules --load (code=exited, status=1/FAILURE)
    Process: 16665 ExecStart=/sbin/auditd (code=exited, status=0/SUCCESS)
    Main PID: 16666 (auditd)
        Tasks: 25
    CGroup: /system.slice/auditd.service
            ├─16666 /sbin/auditd
            ├─16668 /sbin/audispd
            ├─16670 /usr/sbin/sedispatch
            └─16671 /opt/microsoft/mdatp/sbin/mdatp_audisp_plugin -d
    ```

2. If `auditd` is marked as stopped, start it.

    ```bash
    service auditd start
    ```

**On SLES** systems, SYSCALL auditing in `auditd` might be disabled by default and can be accounted for missing events.

1. To validate that SYSCALL auditing is not disabled, list the current audit rules:

    ```bash
    sudo auditctl -l
    ```

    if the following line is present, remove it or edit it to enable Microsoft Defender for Endpoint to track specific SYSCALLs.

    ```output
    -a task, never
    ```

    audit rules are located at `/etc/audit/rules.d/audit.rules`.

## Missing file events

File events are collected with `fanotify` framework. In case some or all file events are missing, make sure `fanotify` is enabled on the device and that the file system is [supported](microsoft-defender-atp-linux.md#system-requirements).

List the filesystems on the machine with:

```bash
df -Th
```
