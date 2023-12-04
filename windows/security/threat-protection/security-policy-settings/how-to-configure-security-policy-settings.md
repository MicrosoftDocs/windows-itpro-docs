---
title: Configure security policy settings
description: Describes steps to configure a security policy setting on the local device, on a domain-joined device, and on a domain controller.
ms.author: vinpa
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.collection:
- highpri
- tier3
ms.topic: reference
ms.date: 06/07/2023
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Configure security policy settings

This article describes steps to configure a security policy setting on the local device, on a domain-joined device, and on a domain controller. You must have Administrators rights on the local device, or you must have the appropriate permissions to update a Group Policy Object (GPO) on the domain controller to perform these procedures.

When a local setting is inaccessible, it indicates that a GPO currently controls that setting.

## To configure a setting using the Local Security Policy console

1. To open Local Security Policy, on the **Start** screen, type **secpol.msc**, and then press ENTER.
1. Under **Security Settings** of the console tree, do one of the following:
   - Select **Account Policies** to edit the **Password Policy** or **Account Lockout Policy**.
   - Select **Local Policies** to edit an **Audit Policy**, a **User Rights Assignment**, or **Security Options**.
1. When you find the policy setting in the details pane, double-click the security policy that you want to modify.
1. Modify the security policy setting, and then select **OK**.

> [!NOTE]
>
> - Some security policy settings require that the device be restarted before the setting takes effect.
> - Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

## To configure a security policy setting using the Local Group Policy Editor console

You must have the appropriate permissions to install and use the Microsoft Management Console (MMC), and to update a Group Policy Object (GPO) on the domain controller to perform these procedures.

1. Open the Local Group Policy Editor (gpedit.msc).
1. In the console tree, click **Computer Configuration**, select **Windows Settings**, and then select **Security Settings**.
1. Do one of the following:
   - Select **Account Policies** to edit the **Password Policy** or **Account Lockout Policy**.
   - Select **Local Policies** to edit an **Audit Policy**, a **User Rights Assignment**, or **Security Options**.
1. In the details pane, double-click the security policy setting that you want to modify.

   > [!NOTE]
   > If this security policy has not yet been defined, select the **Define these policy settings** check box.

1. Modify the security policy setting, and then select **OK**.

> [!NOTE]
> If you want to configure security settings for many devices on your network, you can use the Group Policy Management Console.

## To configure a setting for a domain controller

The following procedure describes how to configure a security policy setting for only a domain controller (from the domain controller).

1. To open the domain controller security policy, in the console tree, locate *GroupPolicyObject \[ComputerName\]* Policy, click **Computer Configuration**, click **Windows Settings**, and then click **Security Settings**.
1. Do one of the following:

   - Double-click **Account Policies** to edit the **Password Policy**, **Account Lockout Policy**, or **Kerberos Policy**.
   - Select **Local Policies** to edit the **Audit Policy**, a **User Rights Assignment**, or **Security Options**.

1. In the details pane, double-click the security policy that you want to modify.

   > [!NOTE]
   > If this security policy has not yet been defined, select the **Define these policy settings** check box.

1. Modify the security policy setting, and then select **OK**.

> [!IMPORTANT]
>
> - Always test a newly created policy in a test organizational unit before you apply it to your network.
> - When you change a security setting through a GPO and click **OK**, that setting will take effect the next time you refresh the settings.

## Related articles

- [Security policy settings reference](security-policy-settings-reference.md)
