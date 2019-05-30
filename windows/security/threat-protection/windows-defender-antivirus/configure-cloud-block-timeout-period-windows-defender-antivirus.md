---
title: Configure the Windows Defender AV cloud block timeout period
description: You can configure how long Windows Defender Antivirus will block a file from running while waiting for a cloud determination.
keywords: windows defender antivirus, antimalware, security, defender, cloud, timeout, block, period, seconds
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Configure the cloud block timeout period

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

When Windows Defender Antivirus finds a suspicious file, it can prevent the file from running while it queries the [Windows Defender Antivirus cloud service](utilize-microsoft-cloud-protection-windows-defender-antivirus.md).

The default period that the file will be [blocked](configure-block-at-first-sight-windows-defender-antivirus.md) is 10 seconds. You can specify an additional period of time to wait before the file is allowed to run. This can help ensure there is enough time to receive a proper determination from the Windows Defender Antivirus cloud service.

## Prerequisites to use the extended cloud block timeout

[Block at first sight](configure-block-at-first-sight-windows-defender-antivirus.md) and its prerequisites must be enabled before you can specify an extended timeout period.

## Specify the extended timeout period

You can use Group Policy to specify an extended timeout for cloud checks.

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus > MpEngine**

4. Double-click **Configure extended cloud check** and ensure the option is enabled. Specify the additional amount of time to prevent the file from running while waiting for a cloud determination. You can specify the additional time, in seconds, from 1 second to 50 seconds. This time will be added to the default 10 seconds.

5. Click **OK**.

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Use next-gen antivirus technologies through cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md)
- [Configure block at first sight](configure-block-at-first-sight-windows-defender-antivirus.md)
- [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
