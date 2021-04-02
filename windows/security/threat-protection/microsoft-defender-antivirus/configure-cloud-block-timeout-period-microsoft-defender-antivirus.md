---
title: Configure the Microsoft Defender AV cloud block timeout period
description: You can configure how long Microsoft Defender Antivirus will block a file from running while waiting for a cloud determination.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, cloud, timeout, block, period, seconds
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Configure the cloud block timeout period

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

When Microsoft Defender Antivirus finds a suspicious file, it can prevent the file from running while it queries the [Microsoft Defender Antivirus cloud service](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md).

The default period that the file will be [blocked](configure-block-at-first-sight-microsoft-defender-antivirus.md) is 10 seconds. You can specify an additional period of time to wait before the file is allowed to run. This can help ensure there is enough time to receive a proper determination from the Microsoft Defender Antivirus cloud service.

## Prerequisites to use the extended cloud block timeout

[Block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md) and its prerequisites must be enabled before you can specify an extended timeout period.

## Specify the extended timeout period

You can use Group Policy to specify an extended timeout for cloud checks.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Microsoft Defender Antivirus > MpEngine**

4. Double-click **Configure extended cloud check** and ensure the option is enabled. Specify the additional amount of time to prevent the file from running while waiting for a cloud determination. You can specify the additional time, in seconds, from 1 second to 50 seconds. This time will be added to the default 10 seconds.

5. Click **OK**.

## Related topics

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Use next-generation antivirus technologies through cloud-delivered protection](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md)
- [Configure block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md)
- [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)