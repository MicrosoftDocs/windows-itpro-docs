---
title: User Account Control
description: Learn how User Account Control (UAC) helps to prevent unauthorized changes to Windows devices.
ms.collection: 
  - highpri
  - tier2
ms.topic: overview
ms.date: 05/24/2023
---

# User Account Control overview

User Account Control (UAC) is a Windows security feature designed to protect the operating system from unauthorized changes. When changes to the system require administrator-level permission, UAC notifies the user, giving the opportunity to approve or deny the change. UAC improves the security of Windows devices by limiting the access that malicious code has to execute with administrator privileges. UAC empowers users to make informed decisions about actions that may affect the stability and security of their device.

Unless you disable UAC, malicious software is prevented from disabling or interfering with UAC settings. UAC is enabled by default, and you can configure it if you have administrative privileges.

## Benefits of UAC

UAC allows all users to sign in their devices using a *standard user account*. Processes launched using a *standard user token* may perform tasks using access rights granted to a standard user. For instance, Windows Explorer automatically inherits standard user level permissions. Any applications that are started using Windows Explorer (for example, by opening a shortcut) also run with the standard set of user permissions. Most applications, including the ones included with the operating system, are designed to work properly this way.\
Other applications, like ones that aren't designed with security settings in mind, may require more permissions to run successfully. These applications are referred to as *legacy apps*.

When a user tries to perform an action that requires administrative privileges, UAC triggers a *consent prompt*. The prompt notifies the user that a change is about to occur, asking for their permission to proceed:

- If the user approves the change, the action is performed with the highest available privilege
- If the user doesn't approve the change, the action isn't performed and the application that requested the change is prevented from running

:::image type="content" source="images/uac-consent-prompt-admin.png" alt-text="Screenshot showing the UAC consent prompt.":::

When an app requires to run with more than standard user rights, UAC allows users to run apps with their *administrator token* (that is, with administrative rights and permissions) instead of their default, standard user token. Users continue to operate in the standard user security context, while enabling certain apps to run with elevated privileges, if needed.

[!INCLUDE [user-account-control-uac](../../../../../includes/licensing/user-account-control-uac.md)]

## Next steps

- [How User Account Control works](how-it-works.md)
- [User Account Control settings and configuration](settings-and-configuration.md)
