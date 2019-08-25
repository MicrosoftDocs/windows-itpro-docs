---
title: Audit account logon events (Windows 10)
description: Determines whether to audit each instance of a user logging on to or logging off from another device in which this device is used to validate the account.
ms.assetid: 84B44181-E325-49A1-8398-AECC3CE0A516
ms.reviewer: 
ms.author: dolmont
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

# Audit account logon events

**Applies to**
-   Windows 10

Determines whether to audit each instance of a user logging on to or logging off from another device in which this device is used to validate the account.

This security setting determines whether to audit each instance of a user logging on to or logging off from another computer in which this computer is used to validate the account. Account logon events are generated when a domain user account is authenticated on a domain controller. The event is logged in the domain controller's security log. Logon events are generated when a local user is authenticated on a local computer. The event is logged in the local security log. Account logoff events are not generated.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when an account logon attempt succeeds. Failure audits generate an audit entry when an account logon attempt fails.
To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.

**Default**: Success

## Configure this audit setting

You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Logon events | Description                                                                                                                          |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------|
| 672          | An authentication service (AS) ticket was successfully issued and validated.                                                         |
| 673          | A ticket granting service (TGS) ticket was granted.                                                                                  |
| 674          | A security principal renewed an AS ticket or TGS ticket.                                                                             |
| 675          | Preauthentication failed. This event is generated on a Key Distribution Center (KDC) when a user types in an incorrect password.     |
| 676          | Authentication ticket request failed. This event is not generated in Windows XP or in the Windows Server 2003 family.                |
| 677          | A TGS ticket was not granted. This event is not generated in Windows XP or in the Windows Server 2003 family.                        |
| 678          | An account was successfully mapped to a domain account.                                                                              |
| 681          | Logon failure. A domain account logon was attempted. This event is not generated in Windows XP or in the Windows Server 2003 family. |
| 682          | A user has reconnected to a disconnected terminal server session.                                                                    |
| 683          | A user disconnected a terminal server session without logging off.                                                                   |
 
## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
