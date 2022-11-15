---
title: Audit Process Creation (Windows 10)
description: The Advanced Security Audit policy setting, Audit Process Creation, determines if audit events are generated when a process is created (starts).
ms.assetid: 67e39fcd-ded6-45e8-b1b6-d411e4e93019
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 03/16/2022
ms.technology: itpro-security
---

# Audit Process Creation


Audit Process Creation determines whether the operating system generates audit events when a process is created (starts).

These audit events can help you track user activity and understand how a computer is being used. Information includes the name of the program or the user that created the process.

**Event volume**: Medium to High, depending on the process activity on the computer.

This subcategory allows you to audit events generated when a process is created or starts. The name of the application and user that created the process is also audited.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | It is typically useful to collect Success auditing information for this subcategory for forensic investigations, to find information who, when and with which options\\parameters ran specific process. <br>Additionally, you can analyse process creation events for elevated credentials use, potential malicious process names and so on.<br>The event volume is typically medium-high level, depending on the process activity on the computer.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | It is typically useful to collect Success auditing information for this subcategory for forensic investigations, to find information who, when and with which options\\parameters ran specific process. <br>Additionally, you can analyse process creation events for elevated credentials use, potential malicious process names and so on.<br>The event volume is typically medium-high level, depending on the process activity on the computer.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | Yes             | No              | Yes              | No               | It is typically useful to collect Success auditing information for this subcategory for forensic investigations, to find information who, when and with which options\\parameters ran specific process. <br>Additionally, you can analyse process creation events for elevated credentials use, potential malicious process names and so on.<br>The event volume is typically medium-high level, depending on the process activity on the computer.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4688](event-4688.md)(S): A new process has been created.

-   [4696](event-4696.md)(S): A primary token was assigned to process.

