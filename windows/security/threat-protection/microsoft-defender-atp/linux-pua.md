---
title: Detect and block potentially unwanted applications with Microsoft Defender ATP for Linux
description: Detect and block Potentially Unwanted Applications (PUA) using Microsoft Defender ATP for Linux.
keywords: microsoft, defender, atp, linux, pua, pus
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

# Detect and block potentially unwanted applications with Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

The potentially unwanted application (PUA) protection feature in Microsoft Defender ATP for Linux can detect and block PUA files on endpoints in your network.

These applications are not considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use. PUA can also refer to applications that are considered to have poor reputation.

These applications can increase the risk of your network being infected with malware, cause malware infections to be harder to identify, and can waste IT resources in cleaning up the applications.

## How it works

Microsoft Defender ATP for Linux can detect and report PUA files. When configured in blocking mode, PUA files are moved to the quarantine.

When a PUA is detected on an endpoint, Microsoft Defender ATP for Linux keeps a record of the infection in the threat history. The history can be visualized from the Microsoft Defender Security Center portal or through the `mdatp` command-line tool. The threat name will contain the word "Application".

## Configure PUA protection

PUA protection in Microsoft Defender ATP for Linux can be configured in one of the following ways:

- **Off**: PUA protection is disabled.
- **Audit**: PUA files are reported in the product logs, but not in Microsoft Defender Security Center. No record of the infection is stored in the threat history and no action is taken by the product.
- **Block**: PUA files are reported in the product logs and in Microsoft Defender Security Center. A record of the infection is stored in the threat history and action is taken by the product.

>[!WARNING]
>By default, PUA protection is configured in **Audit** mode.

You can configure how PUA files are handled from the command line or from the management console.

### Use the command-line tool to configure PUA protection:

In Terminal, execute the following command to configure PUA protection:

```bash
mdatp threat policy set --type potentially_unwanted_application --action [off|audit|block]
```

### Use the management console to configure PUA protection:

In your enterprise, you can configure PUA protection from a management console, such as Puppet or Ansible, similarly to how other product settings are configured. For more information, see the [Threat type settings](linux-preferences.md#threat-type-settings) section of the [Set preferences for Microsoft Defender ATP for Linux](linux-preferences.md) article.

## Related articles

- [Set preferences for Microsoft Defender ATP for Linux](linux-preferences.md)