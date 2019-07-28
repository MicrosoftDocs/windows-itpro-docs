---
title: Audit Authentication Policy Change (Windows 10)
description: This topic for the IT professional describes this Advanced Security Audit policy setting, Audit Authentication Policy Change, which determines whether the operating system generates audit events when changes are made to authentication policy.
ms.assetid: aa9cea7a-aadf-47b7-b704-ac253b8e79be
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

# Audit Authentication Policy Change

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Authentication Policy Change determines whether the operating system generates audit events when changes are made to authentication policy.

Changes made to authentication policy include:

-   Creation, modification, and removal of forest and domain trusts.

-   Changes to Kerberos policy under Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy.

-   When any of the following user logon rights is granted to a user or group:

    -   Access this computer from the network

    -   Allow logon locally

    -   Allow logon through Remote Desktop

    -   Logon as a batch job

    -   Logon as a service

-   Namespace collision, such as when an added trust collides with an existing namespace name.

This setting is useful for tracking changes in domain-level and forest-level trust and privileges that are granted to user accounts or groups.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                    |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | On domain controllers, it is important to enable Success audit for this subcategory to be able to get information related to operations with domain and forest trusts, changes in Kerberos policy and some other events included in this subcategory.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | On member servers it is important to enable Success audit for this subcategory to be able to get information related to changes in user logon rights policies and password policy changes.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.                                                            |
| Workstation       | Yes             | No              | Yes              | No               | On workstations it is important to enable Success audit for this subcategory to be able to get information related to changes in user logon rights policies and password policy changes.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.                                                              |

**Events List:**

-   [4670](event-4670.md)(S): Permissions on an object were changed

-   [4706](event-4706.md)(S): A new trust was created to a domain.

-   [4707](event-4707.md)(S): A trust to a domain was removed.

-   [4716](event-4716.md)(S): Trusted domain information was modified.

-   [4713](event-4713.md)(S): Kerberos policy was changed.

-   [4717](event-4717.md)(S): System security access was granted to an account.

-   [4718](event-4718.md)(S): System security access was removed from an account.

-   [4739](event-4739.md)(S): Domain Policy was changed.

-   [4864](event-4864.md)(S): A namespace collision was detected.

-   [4865](event-4865.md)(S): A trusted forest information entry was added.

-   [4866](event-4866.md)(S): A trusted forest information entry was removed.

-   [4867](event-4867.md)(S): A trusted forest information entry was modified.

