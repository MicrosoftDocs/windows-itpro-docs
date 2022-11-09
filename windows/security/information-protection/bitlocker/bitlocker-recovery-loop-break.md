---
title: Breaking out of a BitLocker recovery loop
description: This article for IT professionals describes how to break out of a BitLocker recovery loop.
ms.prod: windows-client
ms.localizationpriority: medium
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.collection: 
  - M365-security-compliance
  - highpri
ms.topic: conceptual
ms.date: 10/28/2019
ms.custom: bitlocker
ms.technology: itpro-security
---

# Breaking out of a BitLocker recovery loop

Sometimes, following a crash, you might be unable to successfully boot into your operating system, due to the recovery screen repeatedly prompting you to enter your recovery key. This experience can be frustrating.

If you've entered the correct BitLocker recovery key multiple times, and are still unable to continue past the initial recovery screen, follow these steps to break out of the loop.

> [!NOTE]
> Try these steps only after you have restarted your device at least once.

1. On the initial recovery screen, don't enter your recovery key, instead, select **Skip this drive**.

2. Navigate to **Troubleshoot** > **Advanced options**, and select **Command prompt**.

3. From the WinRE command prompt, manually unlock your drive: `manage-bde.exe -unlock C: -rp <recovery password>`

4. Suspend operating system drive protection: `manage-bde.exe -protectors -disable C:`

5. Once the last command is run, you can exit the command prompt and continue to boot into your operating system.
