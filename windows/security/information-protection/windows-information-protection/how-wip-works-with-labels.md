---
title: How Windows Information Protection (WIP) protects files with a sensitivity label (Windows 10)
description: Explains how Windows Information Protection works with other Microsoft information protection technologies to protect files that have a sensitivity label.
keywords: sensitivity, labels, WIP, Windows Information Protection, EDP, Enterprise Data Protection
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: justinha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/26/2019
---

# How Windows Information Protection (WIP) protects a file that has a sensitivity label 

**Applies to:**

- Windows 10, version 1809

This topic explains how Windows Information Protection works with other Microsoft information protection technologies to protect files that have a sensitivity label. 
Microsoft information protection technologies work together as an integrated solution to help enterprises:

- Discover corporate data on endpoint devices
- Classify and label information based on its content and context
- Protect corporate data from unintentionally leaving to non-business environments
- Enable audit reports of user interactions with corporate data on endpoint devices

Microsoft information protection technologies include:

- [Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) is built in to Windows 10 and protects local data at rest on endpoint devices, and manages apps to protect local data in use. Data that leaves the endpoint device, such as email attachment, is not protected by WIP. 

- [Office 365 Information Protection](https://docs.microsoft.com/office365/securitycompliance/office-365-info-protection-for-gdpr-overview) is a solution to classify, protect, and monitor personal data in Office 365.

- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/what-is-information-protection) is a cloud-based solution that can be purchased either standalone or as part of Microsoft 365 Enterprise. It helps an organization classify and protect its documents and emails by applying labels. Azure Information Protection is applied directly to content, and roams with the content as it's moved between locations and cloud services.

- [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) is a cloud access security broker (CASB) solution that allows you to discover, classify, protect, and monitor user data in first-party and third-party Software-as-a-Service (SaaS) apps used by your organization.

End users can choose and apply sensitivity labels from a bar that appears below the ribbon in Office apps:

![Sensitivity labels](images/sensitivity-labels.png)

## Default WIP behaviors for a sensitivity label

Enterprises can create and manage sensitivity labels on the **Labels** page in the Office 365 Security & Compliance Center. 
When you create a sensitivity label, you can specify that endpoint protection should apply to content with that label. 
WIP enforces default endpoint protection depending on how the sensitivity label is configured:

- When the sensitivity label is configured for endpoint protection of content that includes business data, the device enforces work protection for documents with the label
- When the sensitivity label is *not configured* for endpoint protection, the device reverts to whatever WIP policy has been defined in Intune or System Center Configuration Manager (SCCM):
  - If the document is downloaded from a work site, the device enforces work protection
  - If the document is downloaded from a personal site, no work protection is applied

For more information about labels, see [Overview of labels](https://docs.microsoft.com/office365/securitycompliance/labels).

## Use cases 

This section covers how WIP works with sensitivity labels in specific use cases. 

### User downloads from or creates a document on a work site

If WIP policy is deployed, any document that is downloaded from a work site, or created on a work site, will have WIP protection regardless of whether the document has a sensitivity label.

If the document also has a sensitivity label, which can be Office or PDF files, WIP protection is applied according to the label. 

### User downloads a confidential Office or PDF document from a personal site 

Windows Defender Advanced Threat Protection (Windows Defender ATP) scans for any file that gets modified or created, including files that were created on a personal site. 
If the file has a sensitivity label, the corresponding WIP protection gets applied even though the file came from a personal site. 
For example: 

1. Sara creates a PDF file on a Mac and labels it as **Confidential**.
2. She emails the PDF from her Gmail account to Laura.
3. Laura opens the PDF file on her Windows 10 device. 
4. WIP policy gets applied and the file is protected.

The PDF file doesn't need any work context beyond the sensitivity label. 

## Prerequisites

- Windows 10, version 1809
- [Windows Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) scans content for a label and applies corresponding WIP protection
- [Sensitivity labels](https://docs.microsoft.com/office365/securitycompliance/labels) need to be configured in the Office 365 Security & Compliance Center
- WIP policy needs to be applied to endpoint devices by using [Intune](create-wip-policy-using-intune-azure.md) or [System Center Configuration Manager (SCCM)](overview-create-wip-policy-sccm.md).









