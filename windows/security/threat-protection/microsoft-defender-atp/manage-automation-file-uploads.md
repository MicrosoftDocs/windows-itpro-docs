---
title: Manage automation file uploads
description: Enable content analysis and configure the file extension and email attachment extensions that will be sumitted for analysis
keywords: automation, file, uploads, content, analysis, file, extension, email, attachment
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage automation file uploads

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automationefileuploads-abovefoldlink)

Enable the content analysis capability so that certain files and email attachments can automatically be uploaded to the cloud for additional inspection in Automated investigation.

Identify the files and email attachments by specifying the file extension names and email attachment extension names. 

For example, if you add *exe* and *bat* as file or attachment extension names, then all files or attachments with those extensions will automatically be sent to the cloud for additional inspection during Automated investigation. 

## Add file extension names and attachment extension names.

1. In the navigation pane, select **Settings** > **Automation file uploads**. 

2. Toggle the content analysis setting between **On** and **Off**.

3. Configure the following extension names and separate extension names with a comma:
   - **File extension names** -  Suspicious files except email attachments will be submitted for additional inspection
  

## Related topics
- [Manage automation allowed/blocked lists](manage-automation-allowed-blocked-list.md)
- [Manage automation folder exclusions](manage-automation-folder-exclusions.md)