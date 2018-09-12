---
title: List of enlightened Microsoft apps for use with Windows Information Protection (WIP) (Windows 10)
description: Learn the difference between enlightened and unenlightened apps, and then review the list of enlightened apps provided by Microsoft along with the text you will need to use to add them to your allowed apps list.
ms.assetid: 17c85ea3-9b66-4b80-b511-8f277cb4345f
keywords: WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: justinha
ms.localizationpriority: medium
ms.date: 08/27/2018
---

# How Windows Information Protection works with other Microsoft Information Protection technologies 

Microsoft Information Protection technologies work together as an integrated solution to help enterprises:

- Discover corporate data on endpoint devices
- Classify and label information based on its content and context
- Protect corporate data from unintentionally leaving to non-business environments
- Enable audit reports of user interactions with corporate data on endpoint devices

This topic explains how Windows Information Protection works with the other Microsoft Information Protection technologies.

## What is Microsoft Information Protection?

- [Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) is built in to Windows 10 and protects data at rest on endpoint devices, and manages apps to protect data in use.

- [Office 365 Information Protection](https://docs.microsoft.com/office365/securitycompliance/office-365-info-protection-for-gdpr-overview) is a solution to classify, protect, and monitor personal data in Office 365 and other Software-as-a-Service (SaaS) apps.

- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/what-is-information-protection) is a cloud-based solution that can be purchased either standalone or as part of Microsoft 365 Enterprise helps an organization to classify and protect its documents and emails by applying labels.

  ![Sensitivity labels](images/sensitivity-labels.png)



## Default behaviors for a label

Enterprises can create and manage labels on the **Labels** page in the Office 365 Security & Compliance Center. When you create a label, you can specify that endpoint protection should apply to content with that label. 
<!-- Derek mentioned that the label can be configured so tyhat endpoint protection applies it. Ask Brendan how a label is configured so that endpoint protection will apply it 
-->

- When the label is configured for content that includes business data, the device enforces work protection for documents with the label
- When the label is *not configured* with any WIP policy, the device reverts to whatever WIP policy has been defined in Intune or System Center Configuration Manager (SCCM):
  - If the document is downloaded from a work site, the device enforces work protection
  - If the document is downloaded from a personal site, no work protection is applied

For more information about labels, see [Overview of labels](https://docs.microsoft.com/office365/securitycompliance/labels).


## User downloads or creates a document from a work site

If WIP policy is deployed, any document that is created or downloaded from a work site will have WIP protection, regradless of whether the document has a label.
If the document has a label, which includes Office and PDF files, then WIP protection is applied. 

## User downloads a confidential Office or PDF document from a personal site 

Windows Defender ATP scans for any file that gets modified or created, including files that were downloaded from or created on a personal site. 
If the file has a label, then the corresponding WIP protection gets applied, even though the file was created or downloaded from a personal site. 

For example: 

1. Sara creates a PDF file on a Mac device and labels it as Confidential.
2. She emails the PDF from her Gmail account to Laura, who is using a Windows 10 device.
3. When Laura opens the PDF file, WIP policy gets applied and the file is protected.

The PDF file doesn't need any other work context beyond the label. 

<!-- does not include PTXT 
-->

## Prerequisites

WIP 
- [Windows Defender Advanced Threat Protection (WDATP)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) scans content for a label and applies corresponding WIP protection
- Windows 10 version 1809
- [Labels](https://docs.microsoft.com/office365/securitycompliance/labels) need to be configured in the Office 365 Security & Compliance Center
- [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip) policy need to be applied to endpoint devices







