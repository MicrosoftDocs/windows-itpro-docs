---
title: Interactive logon Message title for users attempting to log on (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Interactive logon Message title for users attempting to log on security policy setting.
ms.assetid: f2596470-4cc0-4ef1-849c-bef9dc3533c6
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Interactive logon: Message title for users attempting to log on

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Interactive logon: Message title for users attempting to log on** security policy setting.

## Reference

This security setting allows you to specify a title that appears in the title bar of the window that contains the **Interactive logon: Message title for users attempting to log on**. This text is often used for legal reasons—for example, to warn users about the ramifications of misusing company information, or to warn them that their actions might be audited.

The **Interactive logon: Message title for users attempting to log on** and [Interactive logon: Message text for users attempting to log on](interactive-logon-message-text-for-users-attempting-to-log-on.md) policy settings are closely related. **Interactive logon: Message title for users attempting to log on** specifies a message title to be displayed to users when they log on.

Not using this warning-message policy setting leaves your organization legally vulnerable to trespassers who unlawfully penetrate your network. Legal precedents have established that organizations that display warnings to users who connect to their servers over a network have a higher rate of successfully prosecuting trespassers.

When these policy settings are configured, users will see a dialog box before they can log on to the server console.

### Possible values

-   *User-defined title*
-   Not defined

### Best practices

1.  It is advisable to set **Interactive logon: Message title for users attempting to log on** to a value similar to one the following:

    -   RESTRICTED SYSTEM

        or

    -   WARNING: This system is restricted to authorized users.

2.  Set the policy [Interactive logon: Message text for users attempting to log on](interactive-logon-message-text-for-users-attempting-to-log-on.md) to reinforce the meaning of the message’s title.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

|Server type or GPO | Default value|
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| DC Effective Default Settings | Not defined| 
| Member Server Effective Default Settings | Not defined| 
| Client Computer Effective Default Settings | Not defined| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

There are two policy settings that relate to logon displays:

-   [Interactive logon: Message text for users attempting to log on](interactive-logon-message-text-for-users-attempting-to-log-on.md)
-   **Interactive logon: Message title for users attempting to log on**

The first policy setting specifies a text message that displays to users when they log on, and the second policy setting specifies a title for the title bar of the text message window. Many organizations use this text for legal purposes; for example, to warn users about the ramifications of misuse of company information, or to warn them that their actions may be audited.

### Vulnerability

Users often do not understand the importance of security practices. However, the display of a warning message with an appropriate title before logon may help prevent an attack by warning malicious or uninformed users about the consequences of their misconduct before it happens. It may also help reinforce corporate policies by notifying employees of appropriate policies during the logon process.

### Countermeasure

Configure the [Interactive logon: Message text for users attempting to log on](interactive-logon-message-text-for-users-attempting-to-log-on.md) and **Interactive logon: Message title for users attempting to log on** settings to an appropriate value for your organization.

>**Note:**  Any warning message that displays should be approved by your organization's legal and human resources representatives.
 
### Potential impact

Users see a message in a dialog box before they can log on to the server console.

## Related topics

- [Security Options](security-options.md)
