---
title: Microsoft Defender ATP data storage and privacy
description: Learn about how Microsoft Defender ATP handles privacy and data that it collects.
keywords: Microsoft Defender ATP data storage and privacy, storage, privacy, licensing, geolocation, data retention, data
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
ms.topic: conceptual
---

# Microsoft Defender ATP data storage and privacy

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)



This section covers some of the most frequently asked questions regarding privacy and data handling for Microsoft Defender ATP.
> [!NOTE]
> This document explains the data storage and privacy details related to Microsoft Defender ATP. For more information related to Microsoft Defender ATP and other products and services like Windows Defender Antivirus and Windows 10, see [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=827576). See also [Windows 10 privacy FAQ](https://go.microsoft.com/fwlink/?linkid=827577) for more information.

## What data does Microsoft Defender ATP collect?

Microsoft Defender ATP will collect and store information from your configured machines in a customer dedicated and segregated tenant specific to the service for administration, tracking, and reporting purposes. 

Information collected includes file data (such as file names, sizes, and hashes), process data (running processes, hashes), registry data, network connection data (host IPs and ports), and machine details (such as machine identifiers, names, and the operating system version).

Microsoft stores this data securely in Microsoft Azure and maintains it in accordance with Microsoft privacy practices and [Microsoft Trust Center policies](https://go.microsoft.com/fwlink/?linkid=827578).

This data enables Microsoft Defender ATP to:
- Proactively identify indicators of attack (IOAs) in your organization
- Generate alerts if a possible attack was detected
- Provide your security operations with a view into machines, files, and URLs related to threat signals from your network, enabling you to investigate and explore the presence of security threats on the network.

Microsoft does not use your data for advertising.

## Data protection and encryption
The Microsoft Defender ATP service utilizes state of the art data protection technologies which are based on Microsoft Azure infrastructure. 


There are various aspects relevant to data protection that our service takes care of. Encryption is one of the most critical and it includes data encryption at rest, encryption in flight, and key management with Key Vault. For more information on other technologies used by the Microsoft Defender ATP service, see [Azure encryption overview](https://docs.microsoft.com/azure/security/security-azure-encryption-overview). 

In all scenarios, data is encrypted using 256-bit [AES encryption](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) at the minimum.


## Do I have the flexibility to select where to store my data?

When onboarding the service for the first time, you can choose to store your data in Microsoft Azure datacenters in the European Union, the United Kingdom, or the United States, or dedicated Azure Government data centers (soon to be in preview). Once configured, you cannot change the location where your data is stored. This provides a convenient way to minimize compliance risk by actively selecting the geographic locations where your data will reside. Customer data in pseudonymized form may also be stored in the central storage and processing systems in the United States.

## Is my data isolated from other customer data?
Yes, your data is isolated through access authentication and logical segregation based on customer identifier. Each customer can only access data collected from its own organization and generic data that Microsoft provides.

## How does Microsoft prevent malicious insider activities and abuse of high privilege roles?

Microsoft developers and administrators have, by design, been given sufficient privileges to carry out their assigned duties to operate and evolve the service. Microsoft deploys combinations of preventive, detective, and reactive controls including the following mechanisms to help protect against unauthorized developer and/or administrative activity:

- Tight access control to sensitive data
- Combinations of controls that greatly enhance independent detection of malicious activity
- Multiple levels of monitoring, logging, and reporting

Additionally, Microsoft conducts background verification checks of certain operations personnel, and limits access to applications, systems, and network infrastructure in proportion to the level of background verification. Operations personnel follow a formal process when they are required to access a customer’s account or related information in the performance of their duties.

Access to data for services deployed in Microsoft Azure Government data centers is only granted to operating personnel who have been screened and approved to handle data that is subject to certain government regulations and requirements, such as FedRAMP, NIST 800.171 (DIB), ITAR, IRS 1075, DoD L4, and CJIS.


## Is data shared with other customers?
No. Customer data is isolated from other customers and is not shared. However, insights on the data resulting from Microsoft processing, and which don’t contain any customer specific data, might be shared with other customers. Each customer can only access data collected from its own organization and generic data that Microsoft provides.

## How long will Microsoft store my data? What is Microsoft’s data retention policy?
**At service onboarding**<br>
You can choose the data retention policy for your data. This determines how long Window Defender ATP will store your data. There’s a flexibility of choosing in the range of 1 month to six months to meet your company’s regulatory compliance needs.

**At contract termination or expiration**<br>
Your data will be kept and will be available to you while the license is under grace period or suspended mode. At the end of this period, that data will be erased from Microsoft’s systems to make it unrecoverable, no later than 180 days from contract termination or expiration.


## Can Microsoft help us maintain regulatory compliance?
Microsoft provides customers with detailed information about Microsoft's security and compliance programs, including audit reports and compliance packages, to help customers assess Microsoft Defender ATP services against their own legal and regulatory requirements. Microsoft Defender ATP is ISO 27001 certified and has a roadmap for obtaining national, regional and industry-specific certifications.

Microsoft Defender ATP for Government (soon to be in preview) is currently undergoing audit for achieving FedRAMP High accreditation as well as Provisional Authorization (PA) at Impact Levels 4 and 5. 

By providing customers with compliant, independently-verified services, Microsoft makes it easier for customers to achieve compliance for the infrastructure and applications they run.

For more information on the Microsoft Defender ATP ISO certification reports, see [Microsoft Trust Center](https://www.microsoft.com/trustcenter/compliance/iso-iec-27001). 

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-datastorage-belowfoldlink) 
