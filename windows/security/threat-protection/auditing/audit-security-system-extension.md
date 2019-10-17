---
title: Audit Security System Extension (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Security System Extension, which determines whether the operating system generates audit events related to security system extensions.
ms.assetid: 9f3c6bde-42b2-4a0a-b353-ed3106ebc005
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

# Audit Security System Extension

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Security System Extension contains information about the loading of an authentication package, notification package, or security package, plus information about trusted logon process registration events.

Changes to security system extensions in the operating system include the following activities:

-   Security extension code is loaded (for example, an authentication, notification, or security package). Security extension code registers with the Local Security Authority and will be used and trusted to authenticate logon attempts, submit logon requests, and be notified of any account or password changes. Examples of this extension code are Security Support Providers, such as Kerberos and NTLM.

-   A service is installed. An audit log is generated when a service is registered with the Service Control Manager. The audit log contains information about the service name, binary, type, start type, and service account.

Attempts to install or load security system extensions or services are critical system events that could indicate a security breach.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | The main reason why we recommend Success auditing for this subcategory is “[4697](event-4697.md)(S): A service was installed in the system.” <br>For other events we strongly recommend monitoring a whitelist of allowed security extensions (authenticated packages, logon processes, notification packages, and security packages). Otherwise it's hard to pull useful information from these events, except event 4611 which typically should have “SYSTEM” as value for **“Subject”** field.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | The main reason why we recommend Success auditing for this subcategory is “[4697](event-4697.md)(S): A service was installed in the system.” <br>For other events we strongly recommend monitoring a whitelist of allowed security extensions (authenticated packages, logon processes, notification packages, and security packages). Otherwise it's hard to pull useful information from these events, except event 4611 which typically should display “SYSTEM” for the **“Subject”** field.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.   |
| Workstation       | Yes             | No              | Yes              | No               | The main reason why we recommend Success auditing for this subcategory is “[4697](event-4697.md)(S): A service was installed in the system.” <br>For other events we strongly recommend monitoring a whitelist of allowed security extensions (authenticated packages, logon processes, notification packages, and security packages). Otherwise it's hard to pull useful information from these events, except event 4611 which typically should display “SYSTEM” for the **“Subject”** field.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.   |

**Events List:**

-   [4610](event-4610.md)(S): An authentication package has been loaded by the Local Security Authority.

-   [4611](event-4611.md)(S): A trusted logon process has been registered with the Local Security Authority.

-   [4614](event-4614.md)(S): A notification package has been loaded by the Security Account Manager.

-   [4622](event-4622.md)(S): A security package has been loaded by the Local Security Authority.

-   [4697](event-4697.md)(S): A service was installed in the system.

