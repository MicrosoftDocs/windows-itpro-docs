---
title: Audit Other Policy Change Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Policy Change Events, which determines whether the operating system generates audit events for security policy changes that are not otherwise audited in the Policy Change category.
ms.assetid: 8618502e-c21c-41cc-8a49-3dc1eb359e60
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: Mir0sh
ms.date: 04/19/2017
---

# Audit Other Policy Change Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Other Policy Change Events contains events about EFS Data Recovery Agent policy changes, changes in Windows Filtering Platform filter, status on Security policy settings updates for local Group Policy settings, Central Access Policy changes, and detailed troubleshooting events for Cryptographic Next Generation (CNG) operations.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | Yes             | IF               | Yes              | IF - We do not recommend Success auditing because of event “5447: A Windows Filtering Platform filter has been changed”—this event generates many times during group policy updates and typically is used for troubleshooting purposes for Windows Filtering Platform filters. But you would still need to enable Success auditing for this subcategory if, for example, you must monitor changes in Boot Configuration Data or Central Access Policies.<br>We recommend Failure auditing, to detect errors in applied Security settings which came from Group Policy, and failure events related to Cryptographic Next Generation (CNG) functions. |
| Member Server     | IF              | Yes             | IF               | Yes              | IF - We do not recommend Success auditing because of event “5447: A Windows Filtering Platform filter has been changed”—this event generates many times during group policy updates and typically is used for troubleshooting purposes for Windows Filtering Platform filters. But you would still need to enable Success auditing for this subcategory if, for example, you must monitor changes in Boot Configuration Data or Central Access Policies.<br>We recommend Failure auditing, to detect errors in applied Security settings which came from Group Policy, and failure events related to Cryptographic Next Generation (CNG) functions. |
| Workstation       | IF              | Yes             | IF               | Yes              | IF - We do not recommend Success auditing because of event “5447: A Windows Filtering Platform filter has been changed”—this event generates many times during group policy updates and typically is used for troubleshooting purposes for Windows Filtering Platform filters. But you would still need to enable Success auditing for this subcategory if, for example, you must monitor changes in Boot Configuration Data or Central Access Policies.<br>We recommend Failure auditing, to detect errors in applied Security settings which came from Group Policy, and failure events related to Cryptographic Next Generation (CNG) functions. |

**Events List:**

-   [4714](event-4714.md)(S): Encrypted data recovery policy was changed.

-   [4819](event-4819.md)(S): Central Access Policies on the machine have been changed.

-   [4826](event-4826.md)(S): Boot Configuration Data loaded.

-   [4909](event-4909.md)(-): The local policy settings for the TBS were changed.

-   [4910](event-4910.md)(-): The group policy settings for the TBS were changed.

-   [5063](event-5063.md)(S, F): A cryptographic provider operation was attempted.

-   [5064](event-5064.md)(S, F): A cryptographic context operation was attempted.

-   [5065](event-5065.md)(S, F): A cryptographic context modification was attempted.

-   [5066](event-5066.md)(S, F): A cryptographic function operation was attempted.

-   [5067](event-5067.md)(S, F): A cryptographic function modification was attempted.

-   [5068](event-5068.md)(S, F): A cryptographic function provider operation was attempted.

-   [5069](event-5069.md)(S, F): A cryptographic function property operation was attempted.

-   [5070](event-5070.md)(S, F): A cryptographic function property modification was attempted.

-   [5447](event-5447.md)(S): A Windows Filtering Platform filter has been changed.

-   [6144](event-6144.md)(S): Security policy in the group policy objects has been applied successfully.

-   [6145](event-6145.md)(F): One or more errors occurred while processing security policy in the group policy objects.

