---
title: Manage TPM commands
description: This article for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.
ms.topic: conceptual
ms.date: 07/10/2024
---

# Manage TPM commands

This article for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.

After a computer user takes ownership of the TPM, the TPM owner can limit which TPM commands can be run by creating a list of blocked TPM commands. The list can be created and applied to all computers in a domain by using Group Policy, or a list can be created for individual computers by using the TPM MMC. Because some hardware vendors might provide more commands or the Trusted Computing Group might decide to add commands in the future, the TPM MMC also supports the ability to block new commands.

The following procedures describe how to manage the TPM command lists. You must be a member of the local Administrators group.

## Block TPM commands by using the Local Group Policy Editor

1. Open the Local Group Policy Editor (`gpedit.msc`). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.

    > [!NOTE]
    > Administrators with appropriate rights in a domain can configure a Group Policy Object (GPO) that can be applied through Active Directory Domain Services (AD DS).

1. In the console tree, under **Computer Configuration**, expand **Administrative Templates**, and then expand **System**.

1. Under **System**, select **Trusted Platform Module Services**.

1. In the details pane, double-click **Configure the list of blocked TPM commands**.

1. Select **Enabled**, and then select **Show**.

1. For each command that you want to block, select **Add**, enter the command number, and then select **OK**.

    > [!NOTE]
    > For a list of commands, see links in the [TPM Specification](https://www.trustedcomputinggroup.org/tpm-main-specification/).

1. After adding numbers for each command that you want to block, select **OK** twice.

1. Close the Local Group Policy Editor.

## Block or allow TPM commands by using the TPM MMC

1. Open the TPM MMC (`tpm.msc`). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.
1. In the console tree, select **Command Management**. A list of TPM commands is displayed.
1. In the list, select a command that you want to block or allow.
1. Under **Actions**, select **Block Selected Command** or **Allow Selected Command** as needed. If **Allow Selected Command** is unavailable, that command is currently blocked by Group Policy.

## Block new commands

1. Open the TPM MMC (`tpm.msc`). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then select **Yes**.
1. In the console tree, select **Command Management**. A list of TPM commands is displayed.
1. In the **Action** pane, select **Block New Command**. The **Block New Command** dialog box is displayed.
1. In the **Command Number** text box, type the number of the new command that you want to block, and then select **OK**. The command number you entered is added to the blocked list.

## Use the TPM cmdlets

You can manage the TPM using Windows PowerShell. For details, see [TrustedPlatformModule PowerShell cmdlets](/powershell/module/trustedplatformmodule/?view=win10-ps&preserve-view=true).
