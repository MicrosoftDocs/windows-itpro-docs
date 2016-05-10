---
title: Windows Defender ATP data storage and privacy
description: Learn about how Windows Defender ATP handles privacy and data that it collects.
keywords: Windows Defender ATP data storage and privacy, storage, privacy
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Windows Defender ATP data storage and privacy

**Applies to:**

- Windows 10 Insider Preview
- Windows Defender Advanced Threat Protection

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

This section covers some of the most frequently asked questions regarding privacy and data handling for Windows Defender ATP.
> **Note**&nbsp;&nbsp;This document covers the information specific to the Windows Defender ATP service. Other data shared and stored by Windows Defender and Windows 10 is covered under the [Microsoft Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement). See the [Windows 10 privacy FAQ for more information](http://windows.microsoft.com/en-au/windows-10/windows-privacy-faq). 

## What data does Windows Defender ATP collect?

Microsoft will collect and store information from your configured endpoints in a database specific to the service for administration, tracking, and reporting purposes.

Information collected includes code file data (such as file names, sizes, and hashes), process data (running processes, hashes), registry data, network connection data (host IPs and ports), and machine details (such as GUIDs, names, and the operating system version).

Microsoft stores this data in a Microsoft Azure security-specific data store, and maintains it in accordance with Microsoft privacy practices and [Microsoft Trust Center policies](https://azure.microsoft.com/en-us/support/trust-center/).

Microsoft uses this data to:
- Proactively identify indicators of attack (IOAs) in your organization
- Generate alerts if a possible attack was detected
- Provide your security operations with a view into machines, files, and URLs related to threat signals from your network, enabling you to investigate and explore the presence of security threats on the network.

Microsoft does not mine your data for advertising or for any other purpose other than providing you the service.

## Do I have the flexibility to select where to store my data?

Data for this new service is stored in Microsoft Azure datacenters in the United States and European Union based on the geolocation properties. Subject to the relevant preview program you may be able to specify your preferred geolocation when you onboard to the service. This provides a convenient way to minimize compliance risk by actively selecting the geographic locations in which your data will reside. Microsoft will not transfer the data from the specified geolocation except in specific circumstances during the preview stage.

## Is my data isolated from other customer data?
Yes. The new cloud service provides appropriate segregation at a number of levels, such as isolation of files, configurations, and telemetry data. Aside from data access authentication, simply keeping different data appropriately segregated provides well-recognized protection.

## How does Microsoft prevent malicious insider activities and abuse of high privilege roles?

Microsoft developers and administrators have, by design, been given sufficient privileges to carry out their assigned duties to operate and evolve the service. Microsoft deploys combinations of preventive, detective, and reactive controls including the following mechanisms to help protect against unauthorized developer and/or administrative activity:

- Tight access control to sensitive data
- Combinations of controls that greatly enhance independent detection of malicious activity
- Multiple levels of monitoring, logging, and reporting

Additionally, Microsoft conducts background verification checks of certain operations personnel, and limits access to applications, systems, and network infrastructure in proportion to the level of background verification. Operations personnel follow a formal process when they are required to access a customer’s account or related information in the performance of their duties.

## Is data shared with other customers?
No. Customer data is isolated from other customers and is not shared. However, insights on the data resulting from Microsoft processing, and which don’t contain any customer specific data, might be shared with other customers. Each customer can only access data collected from its own organization and generic data that Microsoft provides.

## How long will Microsoft store my data? What is Microsoft’s data retention policy?
Your data privacy is one of Microsoft's key commitments for the cloud. For this service, at contract termination or expiration, your data will be erased from Microsoft’s systems to make it unrecoverable after 90 days (from contract termination or expiration).

## Can Microsoft help us maintain regulatory compliance?
Microsoft provides customers with detailed information about Microsoft's security and compliance programs, including audit reports and compliance packages, to help customers assess Windows Defender ATP services against their own legal and regulatory requirements. Windows Defender ATP has a roadmap for obtaining national, regional and industry-specific certifications, starting with ISO 27001. The service is designed, implemented, and maintained according to the compliance and privacy principles of ISO 27001, as well as Microsoft’s compliance standards.
By providing customers with compliant, independently-verified services, Microsoft makes it easier for customers to achieve compliance for the infrastructure and applications they run, including this new Microsoft cloud service.

## Is there a difference between how Microsoft handles data for the preview programs and for General Availability?
Subject to the preview program you are in, you could be asked to choose to store your data in a datacenter either in Europe or United States. Your data will not be copied or moved outside of the datacenter you choose, except in the following specific circumstance:

1.	You choose Europe as your datacenter, and
2.	You [submit a file for deep analysis](investigate-files-windows-defender-advanced-threat-protection.md#submit-files-for-analysis).

In this circumstance, the submitted file will be sent to the US deep analysis laboratory. The results of the analysis will be stored in the European datacenter, and the file and data will be deleted from the US deep analysis laboratory and datacenter.

This is a temporary measure as we work to integrate our deep analysis capabilities into the European datacenter. If you have any concerns or questions about submitting files for deep analysis and you are using a European datacenter, or if you’d like to be updated as to when the European deep analysis lab is online, email [winatp@microsoft.com](mailto:winatp@microsoft.com).
