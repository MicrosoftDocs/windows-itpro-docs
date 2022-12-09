---
title: Breaking out of a BitLocker recovery loop
description: This article for IT professionals describes how to break out of a BitLocker recovery loop.
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: 
  - highpri
ms.topic: conceptual
ms.date: 11/08/2022
ms.custom: bitlocker
ms.technology: itpro-security
---

# Breaking out of a BitLocker recovery loop

Sometimes, following a crash, the operating system might not be able to successful boot due to the recovery screen repeatedly prompting to enter a recovery key. This experience can be frustrating.

If the correct BitLocker recovery key has been entered multiple times but are unable to continue past the initial recovery screen, follow these steps to break out of the loop:

> [!NOTE]
> Try these steps only after the device has been restarted at least once.

1. On the initial recovery screen, don't enter The recovery key. Instead, select **Skip this drive**.

2. Navigate to **Troubleshoot** > **Advanced options**, and select **Command prompt**.

3. From the WinRE command prompt, manually unlock the drive with the following command:

```cmd
manage-bde.exe -unlock C: -rp <recovery password>
```

4. Suspend the protection on the operating system with the following command:

```cmd
manage-bde.exe -protectors -disable C:
```

5. Once the command is run, exit the command prompt and continue to boot into the operating system.
