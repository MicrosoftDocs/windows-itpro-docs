---
title: Mandatory tasks and settings required to turn on Windows Information Protection (WIP) (Windows 10)
description: This list provides all of the tasks that are required for the operating system to turn on Windows Information Protection (WIP), formerly known as enterprise data protection (EDP) in your enterprise.
keywords: Windows Information Protection, WIP, EDP, Enterprise Data Protection, protected apps, protected app list, App Rules, Protected apps list
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 03/05/2019
---

# Mandatory tasks and settings required to turn on Windows Information Protection (WIP)
**Applies to:**

- Windows 10, version 1607 and later
- Windows 10 Mobile, version 1607 and later

This list provides all of the tasks and settings that are required for the operating system to turn on Windows Information Protection (WIP), formerly known as enterprise data protection (EDP), in your enterprise.

|Task|Description|
|----|-----------|
|Add at least one app to the **Protected apps** list in your WIP policy.|You must have at least one app added to your **Protected apps** list. For more info about where this area is and how to add apps, see the **Add apps to your Protected apps list** section of the policy creation topics.|
|Choose your WIP protection level.|You must choose the level of protection you want to apply to your WIP-protected content, including **Allow Overrides**, **Silent**, or **Block**. For more info about where this area is and how to decide on your protection level, see the **Manage the WIP protection mode for your enterprise data** section of the policy creation topics. For info about how to collect your audit log files, see [How to collect Windows Information Protection (WIP) audit event logs](collect-wip-audit-event-logs.md).|
|Specify your corporate identity.|This field is automatically filled out for you by Microsoft Intune. However, you must manually correct it if it’s incorrect or if you need to add additional domains. For more info about where this area is and what it means, see the **Define your enterprise-managed corporate identity** section of the policy creation topics.
|Specify your network domain names.|Starting with Windows 10, version 1703, this field is optional.<br><br>Specify the DNS suffixes used in your environment. All traffic to the fully-qualified domains appearing in this list will be protected. For more info about where this area is and how to add your suffixes, see the table that appears in the **Choose where apps can access enterprise data** section of the policy creation topics.|
|Specify your enterprise IPv4 or IPv6 ranges.|Starting with Windows 10, version 1703, this field is optional.<br><br>Specify the addresses for a valid IPv4 or IPv6 value range within your intranet. These addresses, used with your Network domain names, define your corporate network boundaries. For more info about where this area is and what it means, see the table that appears in the **Define your enterprise-managed corporate identity** section of the policy creation topics.|
|Include your Data Recovery Agent (DRA) certificate.|Starting with Windows 10, version 1703, this field is optional. But we strongly recommend that you add a certificate.<br><br>This certificate makes sure that any of your WIP-encrypted data can be decrypted, even if the security keys are lost. For more info about where this area is and what it means, see the [Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](https://technet.microsoft.com/itpro/windows/keep-secure/create-and-verify-an-efs-dra-certificate) topic.|


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Editing Windows IT professional documentation](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
