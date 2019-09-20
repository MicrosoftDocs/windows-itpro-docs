---
title: Interactive logon Message text for users attempting to log on (Windows 10)
description: Describes the best practices, location, values, management, and security considerations for the Interactive logon Message text for users attempting to log on security policy setting.
ms.assetid: fcfe8a6d-ca65-4403-b9e6-2fa017a31c2e
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

# Interactive logon: Message text for users attempting to log on

**Applies to**
-   Windows 10

Describes the best practices, location, values, management, and security considerations for the **Interactive logon: Message text for users attempting to log on** security policy setting.

## Reference

The **Interactive logon: Message text for users attempting to log on** and [Interactive logon: Message title for users attempting to log on](interactive-logon-message-title-for-users-attempting-to-log-on.md) policy settings are closely related. **Interactive logon: Message text for users attempting to log on** specifies a text message to be displayed to users when they log on. Interactive logon: Message title for users attempting to log on specifies a title to appear in the title bar of the window that contains the text message. This text is often used for legal reasons—for example, to warn 
users about the ramifications of misusing company information, or to warn them that their actions might be audited.

Not using this warning-message policy setting leaves your organization legally vulnerable to trespassers who unlawfully penetrate your network. Legal precedents have established that organizations that display warnings to users who connect to their servers over a network have a higher rate of successfully prosecuting trespassers.

When these policy settings are configured, users will see a dialog box before they can log on to the server console.

### Possible values

The possible values for this setting are:

-   User-defined text
-   Not defined

### Best practices

- It is advisable to set **Interactive logon: Message text for users attempting to log on** to a value similar to one of the following:

  1. IT IS AN OFFENSE TO CONTINUE WITHOUT PROPER AUTHORIZATION.
  2. This system is restricted to authorized users. Individuals who attempt unauthorized access will be prosecuted. If you are unauthorized, terminate access now. Click OK to indicate your acceptance of this information.
     >**Important:**  Any warning that you display in the title or text should be approved by representatives from your organization's legal and human resources departments.
 
### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| DC Effective Default Settings | Not defined| 
| Member Server Effective Default Settings | Not defined| 
| Client Computer Effective Default Settings | Not defined| 
 
## Policy management

This section describes different requirements to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

There are two policy settings that relate to logon displays:

-   **Interactive logon: Message text for users attempting to log on**
-   [Interactive logon: Message title for users attempting to log on](interactive-logon-message-title-for-users-attempting-to-log-on.md)

The first policy setting specifies a text message that displays to users when they log on, and the second policy setting specifies a title for the title bar of the text message window. Many organizations use this text for legal purposes; for example, to warn users about the ramifications of misuse of company information, or to warn them that their actions may be audited.

### Vulnerability

Users often do not understand the importance of security practices. However, the display of a warning message before logon may help prevent an attack by warning malicious or uninformed users about the consequences of their misconduct before it happens. It may also help reinforce corporate policies by notifying employees of appropriate policies during the logon process.

### Countermeasure

Configure the **Interactive logon: Message text for users attempting to log on** and [Interactive logon: Message title for users attempting to log on](interactive-logon-message-title-for-users-attempting-to-log-on.md) settings to an appropriate value for your organization.

>**Note:**  Any warning message that displays should be approved by your organization's legal and human resources representatives.
 
### Potential impact

Users see a message in a dialog box before they can log on to the server console.

## Related topics

- [Security Options](security-options.md) 
