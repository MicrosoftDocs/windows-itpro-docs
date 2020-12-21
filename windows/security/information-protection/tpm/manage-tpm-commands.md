---
title: Manage TPM commands (Windows 10)
description: This topic for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.
ms.assetid: a78e751a-2806-43ae-9c20-2e7ca466b765
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dulcemontemayor
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 11/30/2017
---

# Manage TPM commands

**Applies to**
-   Windows 10
-   Windows Server 2016

This topic for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.

After a computer user takes ownership of the TPM, the TPM owner can limit which TPM commands can be run by creating a list of blocked TPM commands. The list can be created and applied to all computers in a domain by using Group Policy, or a list can be created for individual computers by using the TPM MMC. Because some hardware vendors might provide additional commands or the Trusted Computing Group may decide to add commands in the future, the TPM MMC also supports the ability to block new commands.

The following procedures describe how to manage the TPM command lists. You must be a member of the local Administrators group.

**To block TPM commands by using the Local Group Policy Editor**

1.  Open the Local Group Policy Editor (gpedit.msc). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

    > [!NOTE]
    > Administrators with appropriate rights in a domain can configure a Group Policy Object (GPO) that can be applied through Active Directory Domain Services (AD DS).

2.  In the console tree, under **Computer Configuration**, expand **Administrative Templates**, and then expand **System**.

3.  Under **System**, click **Trusted Platform Module Services**.

4.  In the details pane, double-click **Configure the list of blocked TPM commands**.

5.  Click **Enabled**, and then click **Show**.

6.  For each command that you want to block, click **Add**, enter the command number, and then click **OK**.

    > [!NOTE]
    > For a list of commands, see links in the [TPM Specification](https://www.trustedcomputinggroup.org/tpm-main-specification/).

7.  After you have added numbers for each command that you want to block, click **OK** twice.

8.  Close the Local Group Policy Editor.

**To block or allow TPM commands by using the TPM MMC**

1.  Open the TPM MMC (tpm.msc)

2.  If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

3.  In the console tree, click **Command Management**. A list of TPM commands is displayed.

4.  In the list, select a command that you want to block or allow.

5.  Under **Actions**, click **Block Selected Command** or **Allow Selected Command** as needed. If **Allow Selected Command** is unavailable, that command is currently blocked by Group Policy.

**To block new commands**

1.  Open the TPM MMC (tpm.msc).

    If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.

2.  In the console tree, click **Command Management**. A list of TPM commands is displayed.

3.  In the **Action** pane, click **Block New Command**. The **Block New Command** dialog box is displayed.

4.  In the **Command Number** text box, type the number of the new command that you want to block, and then click **OK**. The command number you entered is added to the blocked list.

## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TrustedPlatformModule PowerShell cmdlets](https://docs.microsoft.com/powershell/module/trustedplatformmodule/?view=win10-ps).

## Related topics

- [Trusted Platform Module](trusted-platform-module-top-node.md) (list of topics)
