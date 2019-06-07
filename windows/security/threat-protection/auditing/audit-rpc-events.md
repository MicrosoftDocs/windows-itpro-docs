---
title: Audit RPC Events (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit RPC Events, which determines whether the operating system generates audit events when inbound remote procedure call (RPC) connections are made.
ms.assetid: 868aec2d-93b4-4bc8-a150-941f88838ba6
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# Audit RPC Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit RPC Events determines whether the operating system generates audit events when inbound remote procedure call (RPC) connections are made.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                 |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------|
| Domain Controller | No              | No              | No               | No               | Events in this subcategory occur rarely. |
| Member Server     | No              | No              | No               | No               | Events in this subcategory occur rarely. |
| Workstation       | No              | No              | No               | No               | Events in this subcategory occur rarely. |

**Events List:**

-   [5712](event-5712.md)(S): A Remote Procedure Call (RPC) was attempted.

