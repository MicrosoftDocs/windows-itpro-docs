---
title: User Account Control Allow UIAccess applications to prompt for elevation without using the secure desktop (Windows 10)
description: Describes the best practices, location, values, and security considerations for the User Account Control Allow UIAccess applications to prompt for elevation without using the secure desktop security policy setting.
ms.assetid: fce20472-3c93-449d-b520-13c4c74a9892
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

# User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop** security policy setting.

## Reference

This security setting controls whether User Interface Accessibility (UIAccess or UIA) programs can automatically disable the secure desktop for elevation prompts that are used by a standard user.

>**Note:**  This setting does not change the behavior of the UAC elevation prompt for administrators.
 
**Background**

User Interface Privilege Isolation (UIPI) implements restrictions in the Windows subsystem that prevent lower-privilege applications from sending messages or installing hooks in higher-privilege processes. Higher-privilege applications are permitted to send messages to lower-privilege processes. UIPI does not interfere with or change the behavior of messages between applications at the same privilege (or integrity) level.

Microsoft UI Automation is the current model to support accessibility requirements in the Windows operating systems. Applications that are designed to support an accessible user experience control the behavior of other Windows applications on behalf of the user. When all applications on the automation client computer and server are running as a standard user (that is, at a medium integrity level), the UIPI restrictions do not interfere with the Microsoft UI automation model.

However, there might be times when an administrative user runs an application with elevated privilege based on UAC in Admin Approval Mode. Microsoft UI Automation cannot drive the UI graphics of elevated applications on the desktop without the ability to bypass the restrictions that UIPI implements. The ability to bypass UIPI restrictions across privilege levels is available for UI automation programs by using UIAccess.

If an application presents a UIAccess attribute when it requests privileges, the application is stating a requirement to bypass UIPI restrictions for sending messages across privilege levels. Devices implement the following policy 
checks before starting an application with UIAccess privilege.

1.  The application must have a digital signature that can be verified by using a digital certificate that is associated with the Trusted Root Certification Authorities store on the local computer.
2.  The application must be installed in a local folder that is writeable only by administrators, such as the Program Files directory. The allowed directories for UI automation applications are:

    1.  %ProgramFiles% and its subdirectories.
    2.  %WinDir% and its subdirectories, except a few subdirectories that are excluded because standard users have write access.

**Resulting behavior**

When this setting is enabled, UIAccess programs (including Windows Remote Assistance) can automatically disable the secure desktop for elevation prompts. Unless you have also disabled elevation prompts, the prompts appear on the interactive user's desktop instead of on the secure desktop. The prompts also appear on the remote administrator's view of the desktop during a Windows Remote Assistance session, and the remote administrator can provide the appropriate credentials for elevation.

If you disable this setting, the secure desktop can only be disabled by the user of the interactive desktop or by disabling the [User Account Control: Switch to the secure desktop when prompting for elevation](user-account-control-switch-to-the-secure-desktop-when-prompting-for-elevation.md) setting, which by default is enabled.

### Possible values

-   Enabled

    UIA programs can automatically disable the secure desktop for elevation prompts, and unless you have also disabled elevation prompts, the prompts appear on the interactive user's desktop instead of on the secure desktop. Prompts will also appear on the remote administrator's view of the desktop during a Windows Remote Assistance session, and the remote administrator can provide the appropriate credentials for elevation.

-   Disabled

    The secure desktop can be disabled only by the user of the interactive desktop or by disabling the **User Account Control: Switch to the secure desktop when prompting for elevation** policy setting.

### Best practices

-   Best practices are dependent on your security policies and your remote operational requirements.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

Server type or GPO| Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Disabled| 
| DC Effective Default Settings | Disabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

### Policy interactions

If you plan to enable this setting, you should also review the effect of the [User Account Control: Behavior of the elevation prompt for standard users](user-account-control-behavior-of-the-elevation-prompt-for-standard-users.md) setting. If it is configured as **Automatically deny elevation requests**, elevation requests are not presented to the user. If you disable this setting, the secure desktop can only be disabled by the user of the interactive desktop or by disabling the [User Account Control: Switch to the secure desktop when prompting for elevation](user-account-control-switch-to-the-secure-desktop-when-prompting-for-elevation.md) setting, which by default is enabled.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

UIA programs are designed to interact with Windows and application programs on behalf of a user. This setting allows UIA programs to bypass the secure desktop to increase usability in certain cases, but it allows elevation requests to appear on the regular interactive desktop instead of on the secure desktop. This increases the risk that a malicious program could intercept data that is being transferred between the UI and the application. Because UIA programs must be able to respond to prompts regarding security issues, such as the UAC elevation prompt, UIA programs must be highly trusted. To be considered trusted, a UIA program must be digitally signed. By default, UIA programs can be run only from the following protected paths:

-   ..\\Program Files\\ (and subfolders)
-   ..\\Program Files (x86)\\ (and subfolders, in 64-bit versions of Windows only)
-   ..\\Windows\\System32\\

The requirement to be in a protected path can be disabled by the [User Account Control: Only elevate UIAccess applications that are installed in secure locations](user-account-control-only-elevate-uiaccess-applications-that-are-installed-in-secure-locations.md) setting. Although this setting applies to any UIA program, it is used primarily in certain Windows Remote Assistance scenarios.

### Countermeasure

Disable the **User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop** setting.

### Potential impact

If a user requests remote assistance from an administrator and the remote assistance session is established, elevation prompts appear on the interactive user's secure desktop and the administrator's remote session is paused. To avoid pausing the remote administrator’s session during elevation requests, the user can select the "Allow IT Expert to respond to User Account Control prompts" check box when setting up the remote assistance session. However, selecting this check box requires that the interactive user respond to an elevation prompt on the secure desktop. If the interactive user is a standard user, the user does not have the required credentials to allow elevation.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
