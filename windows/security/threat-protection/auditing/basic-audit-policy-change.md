---
title: Audit policy change (Windows 10)
description: Determines whether to audit every incident of a change to user rights assignment policies, audit policies, or trust policies.
ms.assetid: 1025A648-6B22-4C85-9F47-FE0897F1FA31
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit policy change

**Applies to**
-   Windows 10

Determines whether to audit every incident of a change to user rights assignment policies, audit policies, or trust policies.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a change to user rights assignment policies, audit policies, or trust policies is successful. Failure audits generate an audit entry when a change to user rights assignment policies, audit policies, or trust policies fails.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.

**Default:**

-   Success on domain controllers.
-   No auditing on member servers.

## Configure this audit setting

You can configure this security setting under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Policy change events | Description |
| - | - |
| 608 | A user right was assigned.| 
| 609 | A user right was removed. |
| 610 | A trust relationship with another domain was created.| 
| 611 | A trust relationship with another domain was removed.| 
| 612 | An audit policy was changed.| 
| 613 | An Internet Protocol security (IPSec) policy agent started.| 
| 614 | An IPSec policy agent was disabled. |
| 615 | An IPSec policy agent changed. |
| 616 | An IPSec policy agent encountered a potentially serious failure.| 
| 617 | A Kerberos policy changed. |
| 618 | Encrypted Data Recovery policy changed.| 
| 620 | A trust relationship with another domain was modified.| 
| 621 | System access was granted to an account. |
| 622 | System access was removed from an account.| 
| 623 | Per user auditing policy was set for a user.| 
| 625 | Per user audit policy was refreshed. |
| 768 | A collision was detected between a namespace element in one forest and a namespace element in another forest.<br>**Note**  When a namespace element in one forest overlaps a namespace element in another forest, it can lead to ambiguity in resolving a name belonging to one of the namespace elements. This overlap is also called a collision. Not all parameters are valid for each entry type. For example, fields such as DNS name, NetBIOS name, and SID are not valid for an entry of type 'TopLevelName'.|
| 769 | Trusted forest information was added.<br>**Note:**  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.|
| 770 | Trusted forest information was deleted.<br>**Note:**  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.|
| 771 | Trusted forest information was modified.<br>**Note:**  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.|
| 805 | The event log service read the security log configuration for a session. 
 
## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
