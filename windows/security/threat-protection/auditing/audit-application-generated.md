---
title: Audit Application Generated (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Application Generated, which determines whether the operating system generates audit events when applications attempt to use the Windows Auditing application programming interfaces (APIs).
ms.assetid: 6c58a365-b25b-42b8-98ab-819002e31871
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

# Audit Application Generated

**Applies to**
-   Windows 10
-   Windows Server 2016

Audit Application Generated generates events for actions related to Authorization Manager [applications](https://technet.microsoft.com/library/cc770563.aspx).

Audit Application Generated subcategory is out of scope of this document, because [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx) is very rarely in use and it is deprecated starting from Windows Server 2012.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments |
|-------------------|-----------------|-----------------|------------------|------------------|----------|
| Domain Controller | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx) in your environment and you need to monitor events related to Authorization Manager [applications](https://technet.microsoft.com/library/cc770563.aspx), enable this subcategory. |
| Member Server     | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx) in your environment and you need to monitor events related to Authorization Manager [applications](https://technet.microsoft.com/library/cc770563.aspx), enable this subcategory. |
| Workstation       | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](https://technet.microsoft.com/library/cc726036.aspx) in your environment and you need to monitor events related to Authorization Manager [applications](https://technet.microsoft.com/library/cc770563.aspx), enable this subcategory. |

**Events List:**

- 4665: An attempt was made to create an application client context.

- 4666: An application attempted an operation.

- 4667: An application client context was deleted.

- 4668: An application was initialized.
