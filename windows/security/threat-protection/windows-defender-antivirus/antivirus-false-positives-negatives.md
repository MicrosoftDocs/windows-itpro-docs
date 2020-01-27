---
title: Handling false positives/negatives in Windows Defender Antivirus 
description: Did Windows Defender Antivirus miss or wrongly detect something? Find out what you can do.
keywords: Windows Defender Antivirus, false positives, false negatives, exclusions
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
ms.date: 01/27/2020
ms.reviewer: 
manager: dansimp
---

# Handling false positives/negatives in Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus is designed to keep your PC safe with built-in, trusted antivirus protection. With Windows Defender Antivirus, you get comprehensive, ongoing, and real-time protection against software threats like viruses, malware and spyware across email, apps, the cloud and the web. 

But what if something gets detected wrongly as malware, or something is missed? We call these false positives and false negatives, and there are some steps you can take to deal with these things. You can [submit a file to Microsoft for analysis](#submit-a-file-to-microsoft-for-analysis), and potentially, [define an exclusion](#define-an-exclusion-on-a-windows-device) in your Windows Defender Antivirus settings.

## Submit a file to Microsoft for analysis

1. Review the [submission guidelines](../intelligence/submission-guide.md).
2. [Submit your file or sample](https://www.microsoft.com/wdsi/filesubmission). 

> [!TIP]
> We recommend signing in at the submission portal so you can track the results of your submissions.

## Define an exclusion on a Windows device

When you define an exclusion for Windows Defender Antivirus, you configure your antivirus to skip that item. 

1. On your Windows 10 device, open the Windows Security app.
2. Select **Virus & threat protection** > **Virus & threat protection settings**.
3. Under **Exclusions**, select **Add or remove exclusions**.
4. Select **+ Add an exclusion**, and specify its type (**File**, **Folder**, **File type**, or **Process**.)