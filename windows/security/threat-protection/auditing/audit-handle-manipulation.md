---
title: Audit Handle Manipulation 
description: The Advanced Security Audit policy setting, Audit Handle Manipulation, determines if audit events are generated when a handle to an object is opened or closed.
ms.assetid: 1fbb004a-ccdc-4c80-b3da-a4aa7a9f4091
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

# Audit Handle Manipulation


Audit Handle Manipulation enables generation of “4658: The handle to an object was closed” in [Audit File System](audit-file-system.md), [Audit Kernel Object](audit-kernel-object.md), [Audit Registry](audit-registry.md), [Audit Removable Storage](audit-removable-storage.md) and [Audit SAM](audit-sam.md) subcategories, and shows object’s handle duplication and close actions.

**Event volume**: High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments |
|-------------------|-----------------|-----------------|------------------|------------------|----------|
| Domain Controller | No              | No              | No               | No               | Typically, information about the duplication or closing of an object handle has little to no security relevance and is hard to parse or analyze.<br>There is no recommendation to enable this subcategory for Success or Failure auditing, unless you know exactly what you need to monitor in Object’s Handles level. |
| Member Server     | No              | No              | No               | No               | Typically, information about the duplication or closing of an object handle has little to no security relevance and is hard to parse or analyze.<br>There is no recommendation to enable this subcategory for Success or Failure auditing, unless you know exactly what you need to monitor in Object’s Handles level. |
| Workstation       | No              | No              | No               | No               | Typically, information about the duplication or closing of an object handle has little to no security relevance and is hard to parse or analyze.<br>There is no recommendation to enable this subcategory for Success or Failure auditing, unless you know exactly what you need to monitor in Object’s Handles level. |

**Events List:**

- [4658](event-4658.md)(S): The handle to an object was closed.

- [4690](event-4690.md)(S): An attempt was made to duplicate a handle to an object.

- 4658(S): The handle to an object was closed. For a description of the event, see _[4658](event-4658.md)(S): The handle to an object was closed._ in the Audit File System subcategory. This event doesn’t generate in the Audit Handle Manipulation subcategory, but you can use this subcategory to enable it.
