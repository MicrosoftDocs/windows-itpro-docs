---
title: Audit account management (Windows 10)
description: Determines whether to audit each event of account management on a device.
ms.assetid: 369197E1-7E0E-45A4-89EA-16D91EF01689
ms.reviewer: 
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: dulcemontemayor
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit account management

**Applies to**
-   Windows 10

Determines whether to audit each event of account management on a device.

Examples of account management events include:

-   A user account or group is created, changed, or deleted.
-   A user account is renamed, disabled, or enabled.
-   A password is set or changed.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when any account management event succeeds. Failure audits generate an audit entry when any account management event fails. To 
set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.

**Default:**

-   Success on domain controllers.
-   No auditing on member servers.

## Configure this audit setting

You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Account management events | Description |
| - | - |
| 624 | A user account was created.| 
| 627 | A user password was changed.| 
| 628 | A user password was set. |
| 630 | A user account was deleted.| 
| 631 | A global group was created. |
| 632 | A member was added to a global group.| 
| 633 | A member was removed from a global group.| 
| 634 | A global group was deleted. |
| 635 | A new local group was created.| 
| 636 | A member was added to a local group.| 
| 637 | A member was removed from a local group.| 
| 638 | A local group was deleted. |
| 639 | A local group account was changed.| 
| 641 | A global group account was changed.| 
| 642 | A user account was changed. |
| 643 | A domain policy was modified. | 
| 644 | A user account was auto locked. | 
| 645 | A computer account was created.  |
| 646 | A computer account was changed.  |
| 647 | A computer account was deleted.  |
| 648 | A local security group with security disabled was created.<br>**Note:**  SECURITY_DISABLED in the formal name means that this group cannot be used to grant permissions in access checks. | |
| 649 | A local security group with security disabled was changed.  |
| 650 | A member was added to a security-disabled local security group. | 
| 651 | A member was removed from a security-disabled local security group. | 
| 652 | A security-disabled local group was deleted. | 
| 653 | A security-disabled global group was created.  |
| 645 | A security-disabled global group was changed.  |
| 655 | A member was added to a security-disabled global group. | 
| 656 | A member was removed from a security-disabled global group. | 
| 657 | A security-disabled global group was deleted. | 
| 658 | A security-enabled universal group was created.  |
| 659 | A security-enabled universal group was changed. | 
| 660 | A member was added to a security-enabled universal group. | 
| 661 | A member was removed from a security-enabled universal group. | 
| 662 | A security-enabled universal group was deleted. | 
| 663 | A security-disabled universal group was created. | 
| 664 | A security-disabled universal group was changed. | 
| 665 | A member was added to a security-disabled universal group. | 
| 666 | A member was removed from a security-disabled universal group. | 
| 667 | A security-disabled universal group was deleted. | 
| 668 | A group type was changed. | 
| 684 | Set the security descriptor of members of administrative groups. | 
| 685 | Set the security descriptor of members of administrative groups.<br>**Note:**  Every 60 minutes on a domain controller a background thread searches all members of administrative groups (such as domain, enterprise, and schema administrators) and applies a fixed security descriptor on them. This event is logged.|
 
## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
