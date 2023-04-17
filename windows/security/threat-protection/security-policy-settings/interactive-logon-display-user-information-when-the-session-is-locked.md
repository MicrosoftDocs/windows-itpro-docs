---
title: Interactive logon Display user information when the session is locked (Windows 10)
description: Best practices, security considerations, and more for the security policy setting, Interactive logon Display user information when the session is locked.
ms.assetid: 9146aa3d-9b2f-47ba-ac03-ff43efb10530
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Interactive logon: Display user information when the session is locked

**Applies to**
-   Windows 11
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Interactive logon: Display user information when the session is locked** security policy setting.

## Reference
This security setting controls whether details such as email address or domain\username appear with the username on the sign-in screen.
For clients that run Windows 10 version 1511 and 1507 (RTM), this setting works similarly to previous versions of Windows.
However, because of a new **Privacy** setting introduced in Windows 10 version 1607, this security setting affects those clients differently.

### Changes beginning with Windows 10 version 1607

Beginning with Windows 10 version 1607, new functionality was added to Windows 10 to hide username details such as email address by default, with the ability to change the default to show the details.
This functionality is controlled by a new **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**.
The Privacy setting is off by default, which hides the details.

![Privacy setting.](images/privacy-setting-in-sign-in-options.png)

The **Interactive logon: Display user information when the session is locked** Group Policy setting controls the same functionality.

This setting has these possible values:

-   **User display name, domain and user names**

    For a local sign in, the user's full name is displayed.
    If the user signed in using a Microsoft account, the user's email address is displayed.
    For a domain sign in, the domain\username is displayed.
    This setting has the same effect as turning on the **Privacy** setting.

-   **User display name only**

    The full name of the user who locked the session is displayed.
    This setting has the same effect as turning off the **Privacy** setting.

-   **Do not display user information**

    No names are displayed.
    Beginning with Windows 10 version 1607, this option isn't supported.
    If this option is chosen, the full name of the user who locked the session is displayed instead.
    This change makes this setting consistent with the functionality of the new **Privacy** setting.
    To display no user information, enable the Group Policy setting **Interactive logon: Don't display last signed-in**.

-   **Domain and user names only**

    For a domain sign in only, the domain\username is displayed.
    The **Privacy** setting is automatically on and grayed out.
    
-   **Blank**

    Default setting.
    This setting translates to “Not defined,” but it will display the user's full name in the same manner as the option **User display name only**.
    When an option is set, you can't reset this policy to blank, or not defined.

### Hotfix for Windows 10 version 1607

Clients that run Windows 10 version 1607 won't show details on the sign-in screen even if the **User display name, domain and user names** option is chosen because the **Privacy** setting is off.
If the **Privacy** setting is turned on, details will show.

The **Privacy** setting can't be changed for clients in bulk.
Instead, apply [KB 4013429](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4013429) to clients that run Windows 10 version 1607 so they behave similarly to previous versions of Windows.
Clients that run later versions of Windows 10 don't require a hotfix.

There are related Group Policy settings:

- **Computer Configuration\Policies\Administrative Templates\System\Logon\Block user from showing account details on sign-in** prevents users from showing account details on the sign-in screen.
- **Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Don’t display last signed-in** prevents the username of the last user to sign in from being shown.
- **Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options\Don’t display username at sign-in** prevents the username from being shown at Windows sign-in and immediately after credentials are entered and before the desktop appears.

### Interaction with related Group Policy settings

For all versions of Windows 10, only the user display name is shown by default.

If **Block user from showing account details on sign-in** is enabled, then only the user display name is shown regardless of any other Group Policy settings.
Users won't be able to show details.

If **Block user from showing account details on sign-in** isn't enabled, then you can set **Interactive logon: Display user information when the session is locked** to **User display name, domain and user names** or **Domain and user names only** to show other details such as domain\username.
In this case, clients that run Windows 10 version 1607 need [KB 4013429](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4013429) applied.
Users won't be able to hide other details.

If **Block user from showing account details on sign-in** isn't enabled and **Don’t display last signed-in** is enabled, the username won't be shown.

### Best practices

Your implementation of this policy depends on your security requirements for displayed sign-in information. If you run computers that store sensitive data, with monitors displayed in unsecured locations, or if you have computers with sensitive data that are remotely accessed, revealing logged on user’s full names or domain account names might contradict your overall security policy.

Depending on your security policy, you might also want to enable the [Interactive logon: Don't display last user name](interactive-logon-do-not-display-last-user-name.md) policy.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or Group Policy object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined|
| Default domain controller policy | Not defined|
| Stand-alone server default settings | Not defined|
| Domain controller effective default settings | **User display name, domain and user names**|
| Member server effective default settings | **User display name, domain and user names**|
| Effective GPO default settings on client computers | **User display name, domain and user names**|

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

### Policy conflict considerations

None

### Group Policy

This policy setting can be configured by using the Group Policy Management Console (GPMC) to be distributed through Group Policy Objects (GPOs). If this policy isn't contained in a distributed GPO, this policy can be configured on the local computer by using the Local Security Policy snap-in.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When a computer displays the Secure Desktop in an unsecured area, certain user information can be readily available to anyone looking at the monitor, either physically or through a remote connection. The displayed user information could include the domain user account name or the full name of the user who locked the session or who had logged on last.

### Countermeasure

Enabling this policy setting allows the operating system to hide certain user information from being displayed on the Secure Desktop (after the device has been booted or when the session has been locked by using CTRL+ALT+DEL). However, user information is displayed if the **Switch user** feature is used so that the sign-in tiles are displayed for each signed-in user.

You might also want to enable the [Interactive logon: Don't display last signed-in](interactive-logon-do-not-display-last-user-name.md) policy, which will prevent the Windows operating system from displaying the sign-in name and sign-in tile of the last user to sign in.

## Related topics

- [Security Options](security-options.md)
