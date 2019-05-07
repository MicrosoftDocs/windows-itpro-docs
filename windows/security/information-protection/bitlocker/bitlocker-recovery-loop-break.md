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

Sometimes, you can get stuck in a loop where you are repeatedly prompted to enter your Bitlocker recovery key. This can be very frustrating.

If you've entered the correct recovery key multiple times, follow these steps to break out of the loop.

> [!NOTE]
> Only try these steps after you have restarted your device at least once.

1. On the initial recovery screen, don't enter your recovery key. Instead, select **Skip this drive**.

![](placeholder-1.png)

2. On the next screen, select **Troubleshoot**.
 
![](placeholder-2.png)

3. On the Troubleshoot screen, select **Advanced options**.

![](placeholder-3.png)

4. On the Advanced options screen, select **Command prompt**.

![](placeholder-4.png)

5. From the WinRE command prompt, manually unlock your drive: `manage-bde.exe -unlock C: -rp <recovery password>`

6. Next, suspend operating system drive protection: `manage-bde.exe -protectors -disable C:`

7. Once the last command is run, you can safely exit the command prompt and continue booting.

After you exit the command prompt in step 7, you will be able to successfully boot into your operating system.