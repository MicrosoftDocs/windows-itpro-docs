---
title: Audit Credential Validation (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Credential Validation, which determines whether the operating system generates audit events on credentials that are submitted for a user account logon request.
ms.assetid: 6654b33a-922e-4a43-8223-ec5086dfc926
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

# Audit Credential Validation

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Credential Validation determines whether the operating system generates audit events on credentials that are submitted for a user account logon request.

These events occur on the computer that is authoritative for the credentials as follows:

-   For domain accounts, the domain controller is authoritative.

-   For local accounts, the local computer is authoritative.

**Event volume**:

-   High on domain controllers.

-   Low on member servers and workstations.

Because domain accounts are used much more frequently than local accounts in enterprise environments, most of the Account Logon events in a domain environment occur on the domain controllers that are authoritative for the domain accounts. However, these events can occur on any computer, and they may occur in conjunction with or on separate computers from Logon and Logoff events.

The main reason to enable this auditing subcategory is to handle local accounts authentication attempts and, for domain accounts, NTLM authentication in the domain. It is especially useful for monitoring unsuccessful attempts, to find brute-force attacks, account enumeration, and potential account compromise events on domain controllers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | Yes             | Yes              | Yes              | Expected volume of events is high for domain controllers, because this subcategory will generate events when an authentication attempt is made using any domain account and NTLM authentication. <br>IF – We recommend Success auditing to keep track of domain-account authentication events using the NTLM protocol. Expect a high volume of events. For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections. Just collecting Success auditing events in this subcategory for future use in case of a security incident is not very useful, because events in this subcategory are not always informative.<br>We recommend Failure auditing, to collect information about failed authentication attempts using domain accounts and the NTLM authentication protocol. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | Expected volume of events is low for member servers, because this subcategory will generate events when an authentication attempt is made using a local account, which should not happen too often.<br>We recommend Success auditing, to keep track of authentication events by local accounts.<br>We recommend Failure auditing, to collect information about failed authentication attempts by local accounts.                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Workstation       | Yes             | Yes             | Yes              | Yes              | Expected volume of events is low for workstations, because this subcategory will generate events when an authentication attempt is made using a local account, which should not happen too often.<br>We recommend Success auditing, to keep track of authentication events by local accounts.<br>We recommend Failure auditing, to collect information about failed authentication attempts by local accounts.                                                                                                                                                                                                                                                                                                                                                                                                                                   |

**Events List:**

-   [4774](event-4774.md)(S, F): An account was mapped for logon.

-   [4775](event-4775.md)(F): An account could not be mapped for logon.

-   [4776](event-4776.md)(S, F): The computer attempted to validate the credentials for an account.

-   [4777](event-4777.md)(F): The domain controller failed to validate the credentials for an account.

