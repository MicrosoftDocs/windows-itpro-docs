---
title: Audit System Integrity (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit System Integrity, which determines whether the operating system audits events that violate the integrity of the security subsystem.
ms.assetid: 942a9a7f-fa31-4067-88c7-f73978bf2034
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

# Audit System Integrity

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit System Integrity determines whether the operating system audits events that violate the integrity of the security subsystem.

Activities that violate the integrity of the security subsystem include the following:

-   Audited events are lost due to a failure of the auditing system.

-   A process uses an invalid local procedure call (LPC) port in an attempt to impersonate a client, reply to a client address space, read to a client address space, or write from a client address space.

-   A remote procedure call (RPC) integrity violation is detected.

-   A code integrity violation with an invalid hash value of an executable file is detected.

-   Cryptographic tasks are performed.

Violations of security subsystem integrity are critical and could indicate a potential security attack.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | The main reason why we recommend Success auditing for this subcategory is to be able to get RPC integrity violation errors and auditing subsystem errors (event 4612). However, if you are planning to manually invoke “[4618](event-4618.md)(S): A monitored security event pattern has occurred”, then you also need to enable Success auditing for this subcategory.<br>The main reason why we recommend Failure auditing for this subcategory is to be able to get [Code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) failure events. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | The main reason why we recommend Success auditing for this subcategory is to be able to get RPC integrity violation errors and auditing subsystem errors (event 4612). However, if you are planning to manually invoke “[4618](event-4618.md)(S): A monitored security event pattern has occurred”, then you also need to enable Success auditing for this subcategory.<br>The main reason why we recommend Failure auditing for this subcategory is to be able to get [Code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) failure events. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | The main reason why we recommend Success auditing for this subcategory is to be able to get RPC integrity violation errors and auditing subsystem errors (event 4612). However, if you are planning to manually invoke “[4618](event-4618.md)(S): A monitored security event pattern has occurred”, then you also need to enable Success auditing for this subcategory.<br>The main reason why we recommend Failure auditing for this subcategory is to be able to get [Code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) failure events. |

**Events List:**

-   [4612](event-4612.md)(S): Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits.

-   [4615](event-4615.md)(S): Invalid use of LPC port.

-   [4618](event-4618.md)(S): A monitored security event pattern has occurred.

-   [4816](event-4816.md)(S): RPC detected an integrity violation while decrypting an incoming message.

-   [5038](event-5038.md)(F): Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.

-   [5056](event-5056.md)(S): A cryptographic self-test was performed.

-   [5062](event-5062.md)(S): A kernel-mode cryptographic self-test was performed.

-   [5057](event-5057.md)(F): A cryptographic primitive operation failed.

-   [5060](event-5060.md)(F): Verification operation failed.

-   [5061](event-5061.md)(S, F): Cryptographic operation.

-   [6281](event-6281.md)(F): Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.

-   [6410](event-6410.md)(F): Code integrity determined that a file does not meet the security requirements to load into a process.

