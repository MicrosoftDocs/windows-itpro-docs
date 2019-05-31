---
title: User Account Control Behavior of the elevation prompt for administrators in Admin Approval Mode (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the User Account Control Behavior of the elevation prompt for administrators in Admin Approval Mode security policy setting.
ms.assetid: 46a3c3a2-1d2e-4a6f-b5e6-29f9592f535d
ms.reviewer: 
ms.author: dansimp
ms.prod: ws10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2017
---

# User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode** security policy setting.

## Reference

This policy setting determines the behavior of the elevation prompt for accounts that have administrative credentials.

### Possible values

-   **Elevate without prompting**

    Assumes that the administrator will permit an operation that requires elevation, and additional consent or credentials are not required.

    **Note**  Selecting **Elevate without prompting** minimizes the protection that is provided by UAC. We do not recommend selecting this value unless administrator accounts are tightly controlled and the operating environment is highly secure.
     
-   **Prompt for credentials on the secure desktop**

    When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege.

-   **Prompt for consent on the secure desktop**

    When an operation requires elevation of privilege, the user is prompted on the secure desktop to select **Permit** or **Deny**. If the user selects **Permit**, the operation continues with the user's highest available privilege.*

-   **Prompt for credential**s

    An operation that requires elevation of privilege prompts the administrator to type the user name and password. If the administrator enters valid credentials, the operation continues with the applicable privilege.

-   **Prompt for consent**

    An operation that requires elevation of privilege prompts the administrator to select **Permit** or **Deny**. If the administrator selects **Permit**, the operation continues with the administrator's highest available privilege.

-   **Prompt for consent for non-Windows binaries**

    This is the default. When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select **Permit** or **Deny**. If the user selects **Permit**, the operation continues with the user's highest available privilege.

\*If you have enabled the built-in Administrator account and have configured Admin Approval Mode, you must also configure the option **Prompt for consent on the secure desktop**. You can also configure this option from User Account Control, by typing **UAC** in the search box. From the User Account Control Settings dialog box, set the slider control to **Notify me only when apps try to make changes to my computer (default)**.

> [!NOTE]
> After enabling Admin Approval Mode, to activate the setting, you must first log in and out. Alternatively, You may perform **gpupdate /force** from an elevated command prompt. 

### Best practices

-   Selecting the option **Elevate without prompting** minimizes the protection that is provided by UAC. We do not recommend selecting this value unless administrator accounts are tightly controlled and the operating environment is highly secure.

-   It is recommended not to enable the built-in Administrator account on the client computer, but to use the standard user account and User Account Control (UAC) instead. If you want to enable the built-in Administrator account to carry out administrative tasks, for security reasons you should also enable Admin Approval Mode. For further information, see [UAC-Admin-Approval-Mode-for-the-Built-in-Administrator-account](https://docs.microsoft.com/windows/device-security/security-policy-settings/user-account-control-admin-approval-mode-for-the-built-in-administrator-account)

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values


| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings | Prompt for consent for non-Windows binaries| 
| DC Effective Default Settings | Prompt for consent for non-Windows binaries| 
| Member Server Effective Default Settings | Prompt for consent for non-Windows binaries| 
| Client Computer Effective Default Settings | Prompt for consent for non-Windows binaries| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

### Group Policy

All auditing capabilities are integrated in Group Policy. You can configure, deploy, and manage these settings in the Group Policy Management Console (GPMC) or Local Security Policy snap-in for a domain, site, or organizational unit (OU).

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

One of the risks that the UAC feature tries to mitigate is that of malicious software running under elevated credentials without the user or administrator being aware of its activity. This setting raises awareness to the administrator of elevated privilege operations, and it permits the administrator to prevent a malicious program from elevating its privilege when the program attempts to do so.

### Countermeasure

Configure the **User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode** setting to **Prompt for consent**.

### Potential impact

Administrators should be made aware that they will be prompted for consent when all binaries attempt to run.

## Related topics

- [Security Options](/windows/device-security/security-policy-settings/security-options)
