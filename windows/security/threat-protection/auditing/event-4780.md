---
title: 4780(S) The ACL was set on accounts which are members of administrators groups. 
description: Describes security event 4780(S) The ACL was set on accounts which are members of administrators groups.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4780(S): The ACL was set on accounts which are members of administrators groups.


Every hour, the domain controller that holds the primary domain controller (PDC) Flexible Single Master Operation (FSMO) role compares the ACL on all security principal accounts (users, groups, and machine accounts) present for its domain in Active Directory and that are in administrative or security-sensitive groups and which have AdminCount attribute = 1 against the ACL on the [AdminSDHolder](/previous-versions/technet-magazine/ee361593(v=msdn.10)) object. If the ACL on the principal account differs from the ACL on the AdminSDHolder object, then the ACL on the principal account is reset to match the ACL on the AdminSDHolder object and this event is generated.

For some reason, this event doesn’t generate on some OS versions.

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Schema:***

*The ACL was set on accounts which are members of administrators groups.*

*Subject:*

> *Security ID:%4*
>
> *Account Name:%5*
>
> *Account Domain:%6*
>
> *Logon ID:%7*

*Target Account:*

> *Security ID:%3*
>
> *Account Name:%1*
>
> *Account Domain:%2*

*Additional Information:*

> *Privileges:%8*

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Monitor for this event and investigate why the object’s ACL was changed.