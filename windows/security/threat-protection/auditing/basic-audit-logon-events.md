---
title: Audit logon events (Windows 10)
description: Determines whether to audit each instance of a user logging on to or logging off from a device.
ms.assetid: 78B5AFCB-0BBD-4C38-9FE9-6B4571B94A35
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

# Audit logon events

**Applies to**
-   Windows 10

Determines whether to audit each instance of a user logging on to or logging off from a device.

Account logon events are generated on domain controllers for domain account activity and on local devices for local account activity. If both account logon and logon audit policy categories are enabled, logons that use a domain account generate a logon or logoff event on the workstation or server, and they generate an account logon event on the domain controller. Additionally, interactive logons to a member server or workstation that use a domain account generate a logon event on the domain controller as the logon scripts and policies are retrieved when a user logs on. For more info about account logon events, see [Audit account logon events](basic-audit-account-logon-events.md).

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a logon attempt succeeds. Failure audits generate an audit entry when a logon attempt fails.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.

For information about advanced security policy settings for logon events, see the [Logon/logoff](advanced-security-audit-policy-settings.md#logonlogoff) section in [Advanced security audit policy settings](advanced-security-audit-policy-settings.md).

## Configure this audit setting

You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Logon events | Description |
| - | - |
| 528          | A user successfully logged on to a computer. For information about the type of logon, see the Logon Types table below.                                                                                          |
| 529          | Logon failure. A logon attempt was made with an unknown user name or a known user name with a bad password.                                                                                                     |
| 530          | Logon failure. A logon attempt was made user account tried to log on outside of the allowed time.                                                                                                               |
| 531          | Logon failure. A logon attempt was made using a disabled account.                                                                                                                                               |
| 532          | Logon failure. A logon attempt was made using an expired account.                                                                                                                                               |
| 533          | Logon failure. A logon attempt was made by a user who is not allowed to log on at this computer.                                                                                                                |
| 534          | Logon failure. The user attempted to log on with a type that is not allowed.                                                                                                                                    |
| 535          | Logon failure. The password for the specified account has expired.                                                                                                                                              |
| 536          | Logon failure. The Net Logon service is not active.                                                                                                                                                             |
| 537          | Logon failure. The logon attempt failed for other reasons.                                                                                                                                                      |
| 538          | The logoff process was completed for a user.                                                                                                                                                                    |
| 539          | Logon failure. The account was locked out at the time the logon attempt was made.                                                                                                                               |
| 540          | A user successfully logged on to a network.                                                                                                                                                                     |
| 541          | Main mode Internet Key Exchange (IKE) authentication was completed between the local computer and the listed peer identity (establishing a security association), or quick mode has established a data channel. |
| 542          | A data channel was terminated.                                                                                                                                                                                  |
| 543          | Main mode was terminated.                                                                                                                                                                                       |
| 544          | Main mode authentication failed because the peer did not provide a valid certificate or the signature was not validated.                                                                                        |
| 545          | Main mode authentication failed because of a Kerberos failure or a password that is not valid.                                                                                                                  |
| 546          | IKE security association establishment failed because the peer sent a proposal that is not valid. A packet was received that contained data that is not valid.                                                  |
| 547          | A failure occurred during an IKE handshake.                                                                                                                                                                     |
| 548          | Logon failure. The security ID (SID) from a trusted domain does not match the account domain SID of the client.                                                                                                 |
| 549          | Logon failure. All SIDs corresponding to untrusted namespaces were filtered out during an authentication across forests.                                                                                        |
| 550          | Notification message that could indicate a possible denial-of-service attack.                                                                                                                                   |
| 551          | A user initiated the logoff process.                                                                                                                                                                            |
| 552          | A user successfully logged on to a computer using explicit credentials while already logged on as a different user.                                                                                             |
| 682          | A user has reconnected to a disconnected terminal server session.                                                                                                                                               |
| 683          | A user disconnected a terminal server session without logging off.                                                                                                                                              |
 

When event 528 is logged, a logon type is also listed in the event log. The following table describes each logon type.

| Logon type | Logon title | Description |
| - | - | - |
| 2          | Interactive       | A user logged on to this computer.|
| 3          | Network           | A user or computer logged on to this computer from the network.|
| 4          | Batch             | Batch logon type is used by batch servers, where processes may be executing on behalf of a user without their direct intervention.|
| 5          | Service           | A service was started by the Service Control Manager.|
| 7          | Unlock            | This workstation was unlocked.|
| 8          | NetworkCleartext  | A user logged on to this computer from the network. The user's password was passed to the authentication package in its unhashed form. The built-in authentication packages all hash credentials before sending them across the network. The credentials do not traverse the network in plaintext (also called cleartext). |
| 9          | NewCredentials    | A caller cloned its current token and specified new credentials for outbound connections. The new logon session has the same local identity, but uses different credentials for other network connections.|
| 10         | RemoteInteractive | A user logged on to this computer remotely using Terminal Services or Remote Desktop.|
| 11         | CachedInteractive | A user logged on to this computer with network credentials that were stored locally on the computer. The domain controller was not contacted to verify the credentials.|
 
## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
