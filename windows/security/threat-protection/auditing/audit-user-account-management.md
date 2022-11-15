---
title: Audit User Account Management (Windows 10)
description: Audit User Account Management is an audit policy setting that determines if the operating system generates audit events when certain tasks are performed.
ms.assetid: f7e72998-3858-4197-a443-19586ecc4bfb
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.technology: itpro-security
---

# Audit User Account Management


Audit User Account Management determines whether the operating system generates audit events when specific user account management tasks are performed.

**Event volume**: Low.

This policy setting allows you to audit changes to user accounts. Events include the following:

-   A user account is created, changed, deleted, renamed, disabled, enabled, locked out or unlocked.

-   A user account’s password is set or changed.

-   A security identifier (SID) is added to the SID History of a user account, or fails to be added.

-   The Directory Services Restore Mode password is configured.

-   Permissions on administrative user accounts are changed.

-   A user's local group membership was enumerated.

-   Credential Manager credentials are backed up or restored.

Some events in this subcategory, for example 4722, 4725, 4724, and 4781, are also generated for computer accounts.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                     |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | This subcategory contains many useful events for monitoring, especially for critical domain accounts, such as domain admins, service accounts, database admins, and so on.<br>We recommend Failure auditing, mostly to see invalid password change and reset attempts for domain accounts, DSRM account password change failures, and failed SID History add attempts. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend monitoring all changes related to local user accounts, especially built-in local Administrator and other critical accounts.<br>We recommend Failure auditing, mostly to see invalid password change and reset attempts for local accounts.                                                                                                                |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend monitoring all changes related to local user accounts, especially built-in local Administrator and other critical accounts.<br>We recommend Failure auditing, mostly to see invalid password change and reset attempts for local accounts.                                                                                                                |

**Events List:**

-   [4720](event-4720.md)(S): A user account was created.

-   [4722](event-4722.md)(S): A user account was enabled.

-   [4723](event-4723.md)(S, F): An attempt was made to change an account's password.

-   [4724](event-4724.md)(S, F): An attempt was made to reset an account's password.

-   [4725](event-4725.md)(S): A user account was disabled.

-   [4726](event-4726.md)(S): A user account was deleted.

-   [4738](event-4738.md)(S): A user account was changed.

-   [4740](event-4740.md)(S): A user account was locked out.

-   [4765](event-4765.md)(S): SID History was added to an account.

-   [4766](event-4766.md)(F): An attempt to add SID History to an account failed.

-   [4767](event-4767.md)(S): A user account was unlocked.

-   [4780](event-4780.md)(S): The ACL was set on accounts which are members of administrators groups.

-   [4781](event-4781.md)(S): The name of an account was changed.

-   [4794](event-4794.md)(S, F): An attempt was made to set the Directory Services Restore Mode administrator password.

-   [4798](event-4798.md)(S): A user's local group membership was enumerated.

-   [5376](event-5376.md)(S): Credential Manager credentials were backed up.

-   [5377](event-5377.md)(S): Credential Manager credentials were restored from a backup.

