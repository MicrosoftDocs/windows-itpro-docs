---
title: Breaking out of a Bitlocker recovery loop
description: This topic  for IT professionals describes how to break out of a Bitlocker recovery loop.
ms.assetid: #c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: #medium
ms.author: v-maave
author: martyav
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 05/07/2019
---

# Breaking out of a Bitlocker recovery loop

Sometimes, when you attempt to perform a Bitlocker recovery, you can get stuck in a loop where you are repeatedly prompted to enter your recovery key. The key may be correct, yet you are unable to boot into your operating system, no matter what.

If you have entered your key several times and are unable to break out of the recovery loop by successfully booting into your operating system, you can break the loop with the following steps.

## Alternate recovery steps

Only try these steps after you have restarted your device at least once.

1. On the initial recovery screen, do not enter your recovery key. Select '''Skip this drive'''.

2. On the next screen, select '''Troubleshoot'''.

3. On the Troubleshoot screen, select '''Advanced options'''.

4. On the Advanced options screen, select '''Command prompt'''.

5. At the WinRE command prompt, you need to manually run an unlock command with your recovery password: `manage-bde.exe -unlock C: -rp <recovery password>`

6. After running this command, suspend operating system drive protection: `manage-bde.exe -protectors -disable C:`

7. Once this is run, you can safely exit and continue booting.

After you exit the command prompt in step 7, you will be able to boot into your operating system.