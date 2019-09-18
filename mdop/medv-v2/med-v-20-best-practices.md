---
title: MED-V 2.0 Best Practices
description: MED-V 2.0 Best Practices
author: dansimp
ms.assetid: 47ba2dd1-6c6e-4d6e-8e18-b42291f8e02a
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MED-V 2.0 Best Practices


When you are planning, deploying, and managing MED-V in your enterprise, you may find the best practice recommendations to be useful.

### Configure first time setup to run unattended

Although you can specify any settings that you prefer, a MED-V best practice is that you create the Sysprep.inf file so that first time setup can be run in **Unattended** mode. This requires you to provide all the required settings information as you continue through the **Setup Manager** wizard. For more information about how to configure the MED-V image, see [Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md).

### Disable restore points on the virtual machine

Before you create the MED-V workspace package, we recommend that you disable restore points on the virtual machine to prevent the differencing disk from growing unbounded. For more information, see [How to turn off and turn on System Restore in Windows XP](https://go.microsoft.com/fwlink/?LinkId=195927) (https://go.microsoft.com/fwlink/?LinkId=195927).

### Configure MED-V image to use local profiles

We recommend that you apply only those policies that make sense in an application compatibility environment for Windows XP. For example, desktop customization policies do not typically have to be applied and should be disabled. For more information about how to allow only local profiles, see [Group Policy Settings for Roaming User Profiles](https://go.microsoft.com/fwlink/?LinkId=205072) (https://go.microsoft.com/fwlink/?LinkId=205072).

### Configure a Group Policy performance update

By default, Group Policy is downloaded to a computer one byte at a time. This causes delays when MED-V is being joined to the domain. To increase the performance of Group Policy, we recommend that you set the following registry key value to the registry:

Registry subkey: HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon

Entry: BufferPolicyReads

Type: DWORD

Value: 1

### Distribute legal notice through Group Policy instead of in the MED-V image

If you want end users to see a service level agreement (SLA) before they access MED-V, we recommend that you enforce the SLA through Group Policy later so that the SLA is displayed to the end user after the first time setup is finished.

**Caution**  
Even though a best practice is to run first time setup in **Unattended** mode, if you decide to set the local policy or registry entry to include an SLA in your image (virtual hard disk), you must also specify that first time setup is run in **Attended** mode, or first time setup can fail.

 

### Compact the virtual hard disk

We recommend that you compact your virtual hard disk to reclaim empty disk space and reduce the size of the virtual hard disk. For more information about how to compact your virtual hard disk, see [Compacting the MED-V Virtual Hard Disk](compacting-the-med-v-virtual-hard-disk.md).

### Configure virtual machine to restart on blue screen crash

We recommend that you configure the MED-V workspace virtual machine to automatically restart when it encounters a blue screen crash. To configure this setting in the guest, set the AutoReboot value in the HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\CrashControl key to “1”.

You can also configure this setting by clicking **Start**, clicking **Control Panel**, and then clicking **System**. Then, in the **Startup and Recovery** area of the **Advanced** tab, click **Settings**. Select the **Automatically restart** check box and click **OK**.

### Back up MED-V image before sealing it

We recommend that you create a backup copy of the MED-V image before you seal it. For more information about sealing your MED-V image, see [Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md).

### Install Windows Virtual PC last when installing from a batch file

When you install the MED-V components by using a batch file, specify that Windows Virtual PC and the Windows Virtual PC hotfix are installed after the MED-V Host Agent and the MED-V workspace package files. This ensures that Windows Update will not cause any interference with the installation process by requiring a restart.

### Install MED-V workspace from local folder

Because of problems that can occur when you install MED-V from a network location, we recommend that you copy the MED-V workspace setup files locally and then run setup.exe.

### <a href="" id="manage-printer-redirection-in-one-manner-only-"></a>Manage printer redirection in one manner only

If a printer is manually installed on the MED-V guest virtual machine, and the same printer is later installed on the host computer, the result is that it is installed two times in the guest. To avoid this situation, we recommend as MED-V best practice that you manage printer redirection in one manner only: either disable redirection and install printers manually on the guest, or enable redirection and do not install printers manually on the guest.

### <a href="" id="configure-settings-for-med-v-guest-patching-"></a>Configure settings for MED-V guest patching

You can control when and for how long the MED-V virtual machine awakens to receive automatic updates by defining the relevant configuration values in the registry. A MED-V best practice is to set your wake-up interval to match the time when you have scheduled regular updates for MED-V virtual machines. In addition, we recommend that you configure these settings to resemble the host computer’s behavior.

For more information about how to configure settings for MED-V guest patching, see [Managing Automatic Updates for MED-V Workspaces](managing-automatic-updates-for-med-v-workspaces.md).

### Configure antivirus/backup software

To prevent antivirus activity from affecting the performance of the virtual desktop, we recommend that when you can, you exclude the following virtual machine file types from any antivirus or backup process that is running on the MED-V host computer:

-   \*.VMC

-   \*.VUD

-   \*.VSV

-   \*.VHD

## Related topics


[Security and Protection for MED-V](security-and-protection-for-med-v.md)

 

 





