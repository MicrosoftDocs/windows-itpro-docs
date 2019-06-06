---
title: Configure security policy settings (Windows 10)
description: Describes steps to configure a security policy setting on the local device, on a domain-joined device, and on a domain controller.
ms.assetid: 63b0967b-a9fe-4d92-90af-67469ee20320
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
# Configure security policy settings

**Applies to**
-   Windows 10

Describes steps to configure a security policy setting on the local device, on a domain-joined device, and on a domain controller.

You must have Administrators rights on the local device, or you must have the appropriate permissions to update a Group Policy Object (GPO) on the domain controller to perform these procedures.

When a local setting is inaccessible, it indicates that a GPO currently controls that setting.

## <a href="" id="bkmk-local"></a>To configure a setting using the Local Security Policy console

1.  To open Local Security Policy, on the **Start** screen, type **secpol.msc**, and then press ENTER.
2.  Under **Security Settings** of the console tree, do one of the following:

    -   Click **Account Policies** to edit the **Password Policy** or **Account Lockout Policy**.
    -   Click **Local Policies** to edit an **Audit Policy**, a **User Rights Assignment**, or **Security Options**.

3.  When you find the policy setting in the details pane, double-click the security policy that you want to modify.
4.  Modify the security policy setting, and then click **OK**.

    > [!NOTE]
    > -   Some security policy settings require that the device be restarted before the setting takes effect.
    > -   Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.
     
## <a href="" id="bkmk-domain"></a>To configure a security policy setting using the Local Group Policy Editor console

You must have the appropriate permissions to install and use the Microsoft Management Console (MMC), and to update a Group Policy Object (GPO) on the domain controller to perform these procedures.

1.  Open the Local Group Policy Editor (gpedit.msc).
2.  In the console tree, click **Computer Configuration**, click **Windows Settings**, and then click **Security Settings**.
3.  Do one of the following:

    -   Click **Account Policies** to edit the **Password Policy** or **Account Lockout Policy**.
    -   Click **Local Policies** to edit an **Audit Policy**, a **User Rights Assignment**, or **Security Options**.

4.  In the details pane, double-click the security policy setting that you want to modify.

    > [!NOTE]
    > If this security policy has not yet been defined, select the **Define these policy settings** check box.
     
5.  Modify the security policy setting, and then click **OK**.

> [!NOTE]
> If you want to configure security settings for many devices on your network, you can use the Group Policy Management Console.
 
## <a href="" id="bkmk-dc"></a>To configure a setting for a domain controller

The following procedure describes how to configure a security policy setting for only a domain controller (from the domain controller).

1.  To open the domain controller security policy, in the console tree, locate *GroupPolicyObject \[ComputerName\]* Policy, click **Computer Configuration**, click **Windows Settings**, and then click **Security Settings**.
2.  Do one of the following:

    -   Double-click **Account Policies** to edit the **Password Policy**, **Account Lockout Policy**, or **Kerberos Policy**.
    -   Click **Local Policies** to edit the **Audit Policy**, a **User Rights Assignment**, or **Security Options**.

3.  In the details pane, double-click the security policy that you want to modify.

    > [!NOTE]
    > If this security policy has not yet been defined, select the **Define these policy settings** check box.
     
4.  Modify the security policy setting, and then click **OK**.

> [!IMPORTANT]  
> -   Always test a newly created policy in a test organizational unit before you apply it to your network.
> -   When you change a security setting through a GPO and click **OK**, that setting will take effect the next time you refresh the settings.
 
## Related topics

- [Security policy settings reference](security-policy-settings-reference.md)
