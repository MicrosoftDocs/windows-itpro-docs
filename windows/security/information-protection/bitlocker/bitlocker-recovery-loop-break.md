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
ms.date: 10/28/2019
ms.custom: bitlocker
---

# Breaking out of a Bitlocker recovery loop

Sometimes, following a crash, you might be unable to successfully boot into your operating system, due to the recovery screen repeatedly prompting you to enter your recovery key. This scenario can be very frustrating.

If you've entered the correct Bitlocker recovery key multiple times, and are still unable to continue past the initial recovery screen, follow these steps to come out of the loop.

> [!NOTE]
> Try these steps only after you have restarted your device at least once.

1. On the initial recovery screen, don't enter your recovery key, instead, select **Skip this drive**.

2. Navigate to **Troubleshoot** > **Advanced options**, and select **Command prompt**.

3. From the WinRE command prompt, manually unlock your drive: `manage-bde.exe -unlock C: -rp <recovery password>`

4. Suspend operating system drive protection: `manage-bde.exe -protectors -disable C:`

5. Once the last command is run, you can exit the command prompt and continue to boot into your operating system.
