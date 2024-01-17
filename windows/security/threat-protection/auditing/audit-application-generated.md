---
title: Audit Application Generated 
description: The policy setting, Audit Application Generated, determines if audit events are generated when applications attempt to use the Windows Auditing APIs.
ms.assetid: 6c58a365-b25b-42b8-98ab-819002e31871
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

# Audit Application Generated

Audit Application Generated generates events for actions related to Authorization Manager [applications](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc770563(v=ws.11)).

Audit Application Generated subcategory is out of scope of this document, because [Authorization Manager](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc726036(v=ws.11)) is very rarely in use and it is deprecated starting from Windows Server 2012.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments |
|-------------------|-----------------|-----------------|------------------|------------------|----------|
| Domain Controller | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc726036(v=ws.11)) in your environment and you need to monitor events related to Authorization Manager [applications](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc770563(v=ws.11)), enable this subcategory. |
| Member Server     | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc726036(v=ws.11)) in your environment and you need to monitor events related to Authorization Manager [applications](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc770563(v=ws.11)), enable this subcategory. |
| Workstation       | IF              | IF              | IF               | IF               | IF – if you use [Authorization Manager](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc726036(v=ws.11)) in your environment and you need to monitor events related to Authorization Manager [applications](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc770563(v=ws.11)), enable this subcategory. |

**Events List:**

- 4665: An attempt was made to create an application client context.

- 4666: An application attempted an operation.

- 4667: An application client context was deleted.

- 4668: An application was initialized.