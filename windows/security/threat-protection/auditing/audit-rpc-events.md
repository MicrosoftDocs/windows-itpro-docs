---
title: Audit RPC Events (Windows 10)
description: Audit RPC Events is an audit policy setting that determines if audit events are generated when inbound remote procedure call (RPC) connections are made.
ms.assetid: 868aec2d-93b4-4bc8-a150-941f88838ba6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 09/06/2021
ms.technology: mde
---

# Audit RPC Events


Audit RPC Events determines whether the operating system generates audit events when inbound remote procedure call (RPC) connections are made.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                 |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------|
| Domain Controller | No              | No              | No               | No               | Events in this subcategory occur rarely. |
| Member Server     | No              | No              | No               | No               | Events in this subcategory occur rarely. |
| Workstation       | No              | No              | No               | No               | Events in this subcategory occur rarely. |

**Events List:**

-   [5712](event-5712.md)(S): A Remote Procedure Call (RPC) was attempted.

