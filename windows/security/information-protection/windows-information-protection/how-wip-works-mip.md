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

# How Windows Information Protection works with Microsoft Information Protection labels

Microsoft Information Protection technologies work together as an integrated solution to help enterprises:

- Discover corporate data on endpoint devices
- Classify and label information based on its content and context
- Protect corporate data from unintentionally leaving to non-business environments
- Enable audit reports of user interactions with corporate data on endpoint devices

This topic explains how Windows Information Protection works with the other Microsoft Information Protection technologies.

## What is Microsoft Information Protection?

- [Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) is built in to Windows 10 and protects data at rest on endpoint devices, and manages apps to protect data in use.

- [Azure Information Protection](https://docs.microsoft.com/azure/information-protection/what-is-information-protection) is a cloud-based solution that can be purchased either standalone or as part of Microsoft 365 Enterprise helps an organization to classify and protect its documents and emails by applying labels.

- [Office 365 Information Protection](https://docs.microsoft.com/office365/securitycompliance/office-365-info-protection-for-gdpr-overview) is a solution to classify, protect, and monitor personal data in Office 365 and other Software-as-a-Service (SaaS) apps.


## Default behaviors for a MIP label

- When the label is configured with WIP=Work, the device enforces Work protection for documents with the MIP label
- When the label is *not configured* with any WIP policy, the device reverts to whatever WIP policy has been defined in Intune or System Center Configuration Manager (SCCM):
  - If the document is downloaded from a work site, the device enforces Work protection
  - If the document is downloaded from a personal site, no work protection is applied


## User downloads any document from a work site

## User downloads a Confidential Office or PDF document from a personal site (find out if this include PTXT)

## Prerequisites

WDATP
Windows 10 version 1809
Label configuration (via SCC in Office 365)
WIP policy







