---
title: Audit DPAPI Activity 
description: The policy setting, Audit DPAPI Activity, decides if encryption/decryption calls  to the data protection application interface (DPAPI) generate audit events.
ms.assetid: be4d4c83-c857-4e3d-a84e-8bcc3f2c99cd
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit DPAPI Activity


Audit [DPAPI](/previous-versions/ms995355(v=msdn.10)) Activity determines whether the operating system generates audit events when encryption or decryption calls are made into the data protection application interface ([DPAPI](/previous-versions/ms995355(v=msdn.10))).

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                     |
|-------------------|-----------------|-----------------|------------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | IF              | IF               | IF               | IF – Events in this subcategory typically have an informational purpose and it is difficult to detect any malicious activity using these events. It’s mainly used for DPAPI troubleshooting. |
| Member Server     | IF              | IF              | IF               | IF               | IF – Events in this subcategory typically have an informational purpose and it is difficult to detect any malicious activity using these events. It’s mainly used for DPAPI troubleshooting. |
| Workstation       | IF              | IF              | IF               | IF               | IF – Events in this subcategory typically have an informational purpose and it is difficult to detect any malicious activity using these events. It’s mainly used for DPAPI troubleshooting. |

**Events List:**

-   [4692](event-4692.md)(S, F): Backup of data protection master key was attempted.

-   [4693](event-4693.md)(S, F): Recovery of data protection master key was attempted.

-   [4694](event-4694.md)(S, F): Protection of auditable protected data was attempted.

-   [4695](event-4695.md)(S, F): Unprotection of auditable protected data was attempted.