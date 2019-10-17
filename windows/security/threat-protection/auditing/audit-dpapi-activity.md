---
title: Audit DPAPI Activity (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit DPAPI Activity, which determines whether the operating system generates audit events when encryption or decryption calls are made into the data protection application interface (DPAPI).
ms.assetid: be4d4c83-c857-4e3d-a84e-8bcc3f2c99cd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit DPAPI Activity

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit [DPAPI](https://msdn.microsoft.com/library/ms995355.aspx) Activity determines whether the operating system generates audit events when encryption or decryption calls are made into the data protection application interface ([DPAPI](https://msdn.microsoft.com/library/ms995355.aspx)).

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

