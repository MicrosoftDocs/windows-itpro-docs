---
title: Audit account management
description: Determines whether to audit each event of account management on a device.
ms.assetid: 369197E1-7E0E-45A4-89EA-16D91EF01689
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: low
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 09/06/2021
---

# Audit account management


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
| :-----------------------: | :---------- |
| 4720 | A user account was created.      |
| 4723 | A user password was changed.     |
| 4724 | A user password was set.         |
| 4726 | A user account was deleted.      |
| 4727 | A global group was created.      |
| 4728 | A member was added to a global group. |
| 4729 | A member was removed from a global group. |
| 4730 | A global group was deleted. |
| 4731 | A new local group was created. |
| 4732 | A member was added to a local group. |
| 4733 | A member was removed from a local group. |
| 4734 | A local group was deleted.          |
| 4735 | A local group account was changed.  |
| 4737 | A global group account was changed. |
| 4738 | A user account was changed. |
| 4739 | A domain policy was modified. |
| 4740 | A user account was auto locked. |
| 4741 | A computer account was created. |
| 4742 | A computer account was changed. |
| 4743 | A computer account was deleted. |
| 4744 | A local security group with security disabled was created.<br> **Note:**  SECURITY_DISABLED in the formal name means that this group cannot be used to grant permissions in access checks |
| 4745 | A local security group with security disabled was changed. |
| 4746 | A member was added to a security-disabled local security group. |
| 4747 | A member was removed from a security-disabled local security group. |
| 4748 | A security-disabled local group was deleted. |
| 4749 | A security-disabled global group was created. |
| 4750 | A security-disabled global group was changed. |
| 4751 | A member was added to a security-disabled global group. |
| 4752 | A member was removed from a security-disabled global group. |
| 4753 | A security-disabled global group was deleted. |
| 4754 | A security-enabled universal group was created. |
| 4755 | A security-enabled universal group was changed. |
| 4756 | A member was added to a security-enabled universal group. |
| 4757 | A member was removed from a security-enabled universal group. |
| 4758 | A security-enabled universal group was deleted. |
| 4759 | A security-disabled universal group was created. |
| 4760 | A security-disabled universal group was changed. |
| 4761 | A member was added to a security-disabled universal group. |
| 4762 | A member was removed from a security-disabled universal group. |
| 4763 | A security-disabled universal group was deleted. |
| 4764 | A group type was changed. |
| 4780 | Set the security descriptor of members of administrative groups. |
|  685 | Set the security descriptor of members of administrative groups.<br> **Note:**  Every 60 minutes on a domain controller a background thread searches all members of administrative groups (such as domain, enterprise, and schema administrators) and applies a fixed security descriptor on them. This event is logged. |

## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)


