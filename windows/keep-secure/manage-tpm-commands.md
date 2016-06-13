---
title: Manage TPM commands (Windows 10)
description: This topic for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.
ms.assetid: a78e751a-2806-43ae-9c20-2e7ca466b765
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Manage TPM commands

**Applies to**
-   Windows 10

This topic for the IT professional describes how to manage which Trusted Platform Module (TPM) commands are available to domain users and to local users.

## <a href="" id="bkmk-commands1"></a>

After a computer user takes ownership of the TPM, the TPM owner can limit which TPM commands can be run by creating a list of blocked TPM commands. The list can be created and applied to all computers in a domain by using Group Policy, or a list can be created for individual computers by using the TPM MMC. Because some hardware vendors might provide additional commands or the Trusted Computing Group may decide to add commands in the future, the TPM MMC also supports the ability to block new commands.

Domain administrators can configure a list of blocked TPM commands by using Group Policy. Local administrators cannot allow TPM commands that are blocked through Group Policy. For more information about this Group Policy setting, see [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md#bkmk-tpmgp-clbtc).

Local administrators can block commands by using the TPM MMC, and commands on the default block list are also blocked unless the Group Policy settings are changed from the default settings.

Two policy settings control the enforcement which allows TPM commands to run. For more information about these policy settings, see [TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md#bkmk-tpmgp-idlb).

The following procedures describe how to manage the TPM command lists. You must be a member of the local Administrators group.

**To block TPM commands by using the Local Group Policy Editor**

1.  Open the Local Group Policy Editor (gpedit.msc). If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**.
    
    >**Note:**  Administrators with appropriate rights in a domain can configure a Group Policy Object (GPO) that can be applied through Active Directory Domain Services (AD DS).
     
2.  In the console tree, under **Computer Configuration**, expand **Administrative Templates**, and then expand **System**.
3.  Under **System**, click **Trusted Platform Module Services**.
4.  In the details pane, double-click **Configure the list of blocked TPM commands**.
5.  Click **Enabled**, and then click **Show**.
6.  For each command that you want to block, click **Add**, enter the command number, and then click **OK**.
    
    >**Note:**  For a list of commands, see the [Trusted Platform Module (TPM) Specifications](http://go.microsoft.com/fwlink/p/?linkid=139770).
     
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

## <a href="" id="bkmk-tpmcmdlets"></a>Use the TPM cmdlets

If you are using Windows PowerShell to manage your computers, you can also manage the TPM by using Windows PowerShell. To install the TPM cmdlets, type the following command:

`dism /online /enable-feature /FeatureName:tpm-psh-cmdlets`

For details about the individual cmdlets, see [TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)

## Additional resources

For more info about TPM, see [Trusted Platform Module technology overview](trusted-platform-module-overview.md#bkmk-additionalresources).
