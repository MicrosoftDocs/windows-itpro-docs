---
title: User Account Control
description: Learn how User Account Control (UAC) helps to prevent unauthorized changes to Windows devices.
ms.collection: 
  - highpri
  - tier2
ms.topic: conceptual
ms.date: 05/23/2023
---

# User Account Control overview

User Account Control (UAC) is a Windows security feature designed to protect the system from unauthorized changes, reducing the impact of malicious software executions. When changes to the system require administrator-level permission, UAC notifies the user, giving the opportunity to approve the change. UAC improves the security of your device by limiting the access that malicious code has to execute with administrator privileges. UAC empowers users to make informed decisions about actions that may affect the stability and security of their device.

Unless you disable UAC, malicious software is prevented from disabling or interfering with UAC settings. UAC is enabled by default and can only be disabled by a user with administrator privileges.

## Benefits of UAC

UAC allows all users to log on to their computers using a **standard user account**. Processes launched using a *standard user token* may perform tasks using access rights granted to a standard user. For instance, Windows Explorer automatically inherits standard user level permissions. Additionally, any apps that are started using Windows Explorer (for example, by opening a shortcut) also run with the standard set of user permissions. Most applications, including those that are included with the operating system, are designed to work properly in this way.

Other applications, especially those that were not specifically designed with security settings in mind, may require additional permissions to run successfully. These types of applications are referred to as *legacy apps*. When a user attempts to perform an action that requires administrative privileges, such as installing software, changing system settings, or modifying critical files, UAC triggers a **consent prompt**. The prompt notifies the user that a change is about to occur, asking for their permission to proceed:

- If the user approves the change, the action is performed with the highest available privilege
- If the user does not approve the change, the action is not performed and the application that requested the change is prevented from running

:::image type="content" source="images/uacconsentprompt.png" alt-text="UAC prompt in Windows 11.":::

When an app requires to run with more than standard user rights, UAC allows users to run apps with their *administrator token* (that is, with administrative rights and permissions) instead of their default, standard user token. Users continue to operate in the standard user security context, while enabling certain apps to run with elevated privileges, if needed.

[!INCLUDE [user-account-control-uac](../../../../../includes/licensing/user-account-control-uac.md)]

## Next steps

Learn more about UAC in the following articles:

- [How UAC works](how-user-account-control-works.md)
- [User Account Control policy settings](user-account-control-security-policy-settings.md): you can configure UAC using group policy or MDM
- [User Account Control Group Policy and registry key settings](user-account-control-group-policy-and-registry-key-settings.md): list of UAC group policy, CSP, and registry key settings that your organization can use to manage UAC
