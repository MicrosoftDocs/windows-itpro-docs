---
title: Troubleshoot performance issues for Microsoft Defender ATP for Linux
description: Troubleshoot performance issues in Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, performance
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

# Troubleshoot performance issues for Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

This topic provides some general steps that can be used to narrow down performance issues related to Microsoft Defender ATP for Linux.

Real-time protection (RTP) is a feature of Microsoft Defender ATP for Linux that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

Depending on the applications that you are running and your device characteristics, you may experience suboptimal performance when running Microsoft Defender ATP for Linux. In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Microsoft Defender ATP for Linux.

The following steps can be used to troubleshoot and mitigate these issues:

1. Disable real-time protection using one of the following methods and observe whether the performance improves. This approach helps narrow down whether Microsoft Defender ATP for Linux is contributing to the performance issues.

    If your device is not managed by your organization, real-time protection can be disabled from the command line:

    ```bash
    $ mdatp --config realTimeProtectionEnabled false
    ```

    If your device is managed by your organization, real-time protection can be disabled by your administrator using the instructions in [Set preferences for Microsoft Defender ATP for Linux](linux-preferences.md).

2. To find the applications that are triggering the most scans, you can use real-time statistics gathered by Microsoft Defender ATP for Linux. 

    > [!NOTE]
    > This feature is available in version 100.90.70 or newer.

    This feature is enabled by default on the `Dogfood` and `InsisderFast` channels. If you're using a different update channel, this feature can be enabled from the command line:
 
    ```bash
    $ mdatp config real_time_protection_statistics_enabled on
    ```

    This feature requires real-time protection to be enabled. To check the status of real-time protection, run the following command:

    ```bash
    $ mdatp health
    ```

    Verify that the `real_time_protection_enabled` entry is `true`. Otherwise, run the following command to enable it:

    ```bash
    $ mdatp --config realTimeProtectionEnabled true
    ```

    To collect current statistics, run:

    ```bash
    $ mdatp diagnostic real_time_protection_statistics # you can use ‘> stat.log’ to redirect to file
    ```

    The output of this command will show all processes and their associated scan activity. To improve the performance of Microsoft Defender ATP for Linux, locate the one with the highest number under the `Total files scanned` row and add an exclusion for it. For more information, see [Configure and validate exclusions for Microsoft Defender ATP for Linux](linux-exclusions.md).

    > [!NOTE]
    > The application stores statistics in memory and only keeps track of file activity since it was started and real-time protection was enabled. Processes that were launched before or during periods when real time protection was off are not counted. Additionally, only events which triggered scans are counted.

3. Use the `top` command-line tool and analyze which applications are using the resources on your system. Typical examples include software updaters and compilers.

4. Configure Microsoft Defender ATP for Linux with exclusions for the processes or disk locations that contribute to the performance issues and re-enable real-time protection.

    See [Configure and validate exclusions for Microsoft Defender ATP for Linux](linux-exclusions.md) for details.
