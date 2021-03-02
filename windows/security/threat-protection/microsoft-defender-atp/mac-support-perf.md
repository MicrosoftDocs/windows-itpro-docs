---
title: Troubleshoot performance issues for Microsoft Defender ATP for Mac
description: Troubleshoot performance issues in Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, performance
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

# Troubleshoot performance issues for Microsoft Defender for Endpoint for Mac

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint for Mac](microsoft-defender-atp-mac.md)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic provides some general steps that can be used to narrow down performance issues related to Microsoft Defender for Endpoint for Mac.

Real-time protection (RTP) is a feature of Microsoft Defender for Endpoint for Mac that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

Depending on the applications that you are running and your device characteristics, you may experience suboptimal performance when running Microsoft Defender for Endpoint for Mac. In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Microsoft Defender for Endpoint for Mac.

The following steps can be used to troubleshoot and mitigate these issues:

1. Disable real-time protection using one of the following methods and observe whether the performance improves. This approach helps narrow down whether Microsoft Defender for Endpoint for Mac is contributing to the performance issues.

    If your device is not managed by your organization, real-time protection can be disabled using one of the following options:

    - From the user interface. Open Microsoft Defender for Endpoint for Mac and navigate to **Manage settings**.

      ![Manage real-time protection screenshot](../microsoft-defender-antivirus/images/mdatp-36-rtp.png)

    - From the Terminal. For security purposes, this operation requires elevation.

      ```bash
      mdatp config real-time-protection --value disabled
      ```

    If your device is managed by your organization, real-time protection can be disabled by your administrator using the instructions in [Set preferences for Microsoft Defender for Endpoint for Mac](mac-preferences.md).

2. Open Finder and navigate to **Applications** > **Utilities**. Open **Activity Monitor** and analyze which applications are using the resources on your system. Typical examples include software updaters and compilers.

3. Configure Microsoft Defender for Endpoint for Mac with exclusions for the processes or disk locations that contribute to the performance issues and re-enable real-time protection.

    See [Configure and validate exclusions for Microsoft Defender for Endpoint for Mac](mac-exclusions.md) for details.
