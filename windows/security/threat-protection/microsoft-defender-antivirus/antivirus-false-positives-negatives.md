---
title: What to do with false positives/negatives in Microsoft Defender Antivirus 
description: Did Microsoft Defender Antivirus miss or wrongly detect something? Find out what you can do.
keywords: Microsoft Defender Antivirus, false positives, false negatives, exclusions
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 02/05/2020
ms.reviewer: shwetaj
manager: dansimp
audience: ITPro
ms.topic: article
---

# What to do with false positives/negatives in Microsoft Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft Defender Antivirus is designed to keep your PC safe with built-in, trusted antivirus protection. With Microsoft Defender Antivirus, you get comprehensive, ongoing, and real-time protection against software threats like viruses, malware, and spyware across email, apps, the cloud, and the web.

What if something gets detected wrongly as malware, or something is missed? We call these false positives and false negatives. Fortunately, there are some steps you can take to deal with these issues. You can:
- [Submit a file to Microsoft for analysis](#submit-a-file-to-microsoft-for-analysis)
- [Create an "Allow" indicator to prevent a false positive from recurring](#create-an-allow-indicator-to-prevent-a-false-positive-from-recurring)
- [Define an exclusion on an individual Windows device to prevent an item from being scanned](#define-an-exclusion-on-an-individual-windows-device-to-prevent-an-item-from-being-scanned)

## Submit a file to Microsoft for analysis

1. Review the [submission guidelines](../intelligence/submission-guide.md).
2. [Submit your file or sample](https://www.microsoft.com/wdsi/filesubmission).

> [!TIP]
> We recommend signing in at the submission portal so you can track the results of your submissions.

## Create an "Allow" indicator to prevent a false positive from recurring

If a file, IP address, URL, or domain is treated as malware on a device, even though it's safe, you can create an "Allow" indicator. This indicator tells Microsoft Defender Antivirus (and Microsoft Defender Advanced Threat Protection) that the item is safe.

To set up your "Allow" indicator, follow the guidance in [Manage indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).

## Define an exclusion on an individual Windows device to prevent an item from being scanned

When you define an exclusion for Microsoft Defender Antivirus, you configure your antivirus to skip that item.

1. On your Windows 10 device, open the Windows Security app.
2. Select **Virus & threat protection** > **Virus & threat protection settings**.
3. Under **Exclusions**, select **Add or remove exclusions**.
4. Select **+ Add an exclusion**, and specify its type (**File**, **Folder**, **File type**, or **Process**).

The following table summarizes exclusion types, how they're defined, and what happens when they're in effect.

|Exclusion type  |Defined by  |What happens  |
|---------|---------|---------|
|**File** |Location <br/>Example: `c:\sample\sample.test` |The specified file is skipped by Microsoft Defender Antivirus. |
|**Folder**    |Location <br/>Example: `c:\test\sample`       |All items in the specified folder are skipped by Microsoft Defender Antivirus.         |
|**File type**   |File extension <br/>Example: `.test` |All files with the specified extension anywhere on your device are skipped by Microsoft Defender Antivirus.         |
|**Process**     |Executable file path <br>Example: `c:\test\process.exe`         |The specified process and any files that are opened by that process are skipped by Microsoft Defender Antivirus.         |

To learn more, see:
- [Configure and validate exclusions based on file extension and folder location](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-extension-file-exclusions-microsoft-defender-antivirus)
- [Configure exclusions for files opened by processes](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-process-opened-file-exclusions-microsoft-defender-antivirus)

## Related articles

[What is Microsoft Defender Advanced Threat Protection?](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)

[Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)
