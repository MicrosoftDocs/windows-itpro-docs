---
title: Configure VDA for Windows subscription activation
description: Learn how to configure virtual machines (VMs) to enable Windows 10 Subscription Activation in a Windows Virtual Desktop Access (VDA) scenario.
ms.reviewer: nganguly
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.service: windows-client
ms.subservice: activation
ms.localizationpriority: medium
ms.topic: how-to
ms.date: 11/14/2023
---

# Configure VDA for Windows subscription activation

*Applies to:*

- Windows 10
- Windows 11

This document describes how to configure virtual machines (VMs) to enable [Windows subscription activation](windows-10-subscription-activation.md) in a Windows Virtual Desktop Access (VDA) scenario. Windows VDA is a device or user-based licensing mechanism for managing access to virtual desktops.

Deployment instructions are provided for the following scenarios:

1. [Active Directory-joined VMs](#active-directory-joined-vms)
2. [Microsoft Entra joined VMs](#azure-active-directory-joined-vms)
3. [Azure Gallery VMs](#azure-gallery-vms)

## Requirements

- VMs must be running a supported version of Windows Pro edition.
- VMs must be joined to Active Directory or Microsoft Entra ID.
- VMs must be hosted by a Qualified Multitenant Hoster (QMTH).

## Activation

### Scenario 1

- The VM is running a supported version of Windows.
- The VM is hosted in Azure, an authorized outsourcer, or another Qualified Multitenant Hoster (QMTH).

    When a user with VDA rights signs in to the VM using their Microsoft Entra credentials, the VM is automatically stepped-up to Enterprise and activated. There's no need to do Windows Pro activation. This functionality eliminates the need to maintain KMS or MAK in the qualifying cloud infrastructure.

### Scenario 2

- The Hyper-V host and the VM are both running a supported version of Windows.

    [Inherited Activation](./windows-10-subscription-activation.md#inherited-activation) is enabled. All VMs created by a user with a Windows E3 or E5 license are automatically activated independent of whether a user signs in with a local account or using a Microsoft Entra account.

### Scenario 3

- The hoster isn't an authorized QMTH partner.

    In this scenario, the underlying Windows Pro license must be activated prior to using subscription activation Windows Enterprise. Activation is accomplished using a generic volume license key (GVLK) and a volume license KMS activation server provided by the hoster. Alternatively, a KMS activation server can be used. KMS activation is provided for Azure VMs. For more information, see [Troubleshoot Azure Windows virtual machine activation problems](/troubleshoot/azure/virtual-machines/troubleshoot-activation-problems).

For examples of activation issues, see [Troubleshoot the user experience](./deploy-enterprise-licenses.md#troubleshoot-the-user-experience).

## Active Directory-joined VMs

1. Use the following instructions to prepare the VM for Azure: [Prepare a Windows VHD or VHDX to upload to Azure](/azure/virtual-machines/windows/prepare-for-upload-vhd-image)

2. (Optional) To disable network level authentication, enter the following command at an elevated command prompt:

    ```cmd
    REG.exe ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f
    ```

3. At an elevated command prompt, enter **sysdm.cpl**.

4. On the Remote tab, choose **Allow remote connections to this computer** and then select **Select Users**.

5. Select **Add**, enter **Authenticated users**, and then select **OK** three times.

6. Follow the instructions to use sysprep at [Steps to generalize a VHD](/azure/virtual-machines/windows/prepare-for-upload-vhd-image#generalize-a-vhd) and then start the VM again.

7. If you must activate Windows Pro as described for [scenario 3](#scenario-3), complete the following steps to use Windows Configuration Designer and inject an activation key. Otherwise, skip to step 8.
    1. [Install Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).

    2. Open Windows Configuration Designer and select **Provision desktop services**.

    3. Under **Name**, enter **Desktop AD Enrollment Pro GVLK**, select **Finish**, and then on the **Set up device** page enter a device name.

        > [!NOTE]
        > You can use a different project name, but this name is also used with dism.exe in a later step.

    4. Under **Enter product key** enter the Pro GVLK key: `W269N-WFGWX-YVC9B-4J6C9-T83GX`.

    5. On the Set up network page, choose **Off**.

    6. On the Account Management page, choose **Enroll into Active Directory** and then enter the account details.

        > [!NOTE]
        > This step is different for [Microsoft Entra joined VMs](#azure-active-directory-joined-vms).

    7. On the Add applications page, add applications if desired. This step is optional.

    8. On the Add certificates page, add certificates if desired. This step is optional.

    9. On the Finish page, select **Create**.

    10. In file explorer, open the VHD to mount the disk image. Determine the drive letter of the mounted image.

    11. Enter the following command at an elevated command prompt. Replace the letter `G` with the drive letter of the mounted image, and enter the project name you used if it's different than the one suggested:

        ```cmd
        Dism.exe /Image=G:\ /Add-ProvisioningPackage /PackagePath: "Desktop AD Enrollment Pro GVLK.ppkg"
        ```

    12. Right-click the mounted image in file explorer and select **Eject**.

8. See the instructions at [Upload and create VM from generalized VHD](/azure/virtual-machines/windows/upload-generalized-managed#upload-the-vhd) to sign in to Azure, get your storage account details, upload the VHD, and create a managed image.

<a name='azure-active-directory-joined-vms'></a>

## Microsoft Entra joined VMs

> [!IMPORTANT]
> Microsoft Entra provisioning packages have a 180 day limit on bulk token usage. After 180 days, you'll need to update the provisioning package and re-inject it into the image. Existing virtual machines that are Microsoft Entra joined and deployed won't need to be recreated.

For Microsoft Entra joined VMs, follow the same instructions as for [Active Directory-joined VMs](#active-directory-joined-vms) with the following exceptions:

- During setup with Windows Configuration Designer, under **Name**, enter a name for the project that indicates it isn't for Active Directory-joined VMs, such as **Desktop Bulk Enrollment Token Pro GVLK**.

- During setup with Windows Configuration Designer, on the Account Management page, instead of enrolling in Active Directory, choose **Enroll in Microsoft Entra ID**, select **Get Bulk Token**, sign in, and add the bulk token using your organization's credentials.

- When entering the PackagePath, use the project name you previously entered. For example, **Desktop Bulk Enrollment Token Pro GVLK.ppkg**

- When attempting to access the VM using remote desktop, you'll need to create a custom RDP settings file as described below in [Create custom RDP settings for Azure](#create-custom-rdp-settings-for-azure).

## Azure Gallery VMs

1. (Optional) To disable network level authentication, enter the following command at an elevated command prompt:

    ```cmd
    REG.exe ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f
    ```

2. At an elevated command prompt, enter `sysdm.cpl`.

3. On the Remote tab, choose **Allow remote connections to this computer** and then select **Select Users**.

4. Select **Add**, enter **Authenticated users**, and then select **OK** three times.

5. [Install Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).

6. Open Windows Configuration Designer and select **Provision desktop services**.

7. If you must activate Windows Pro as described for [scenario 3](#scenario-3), complete the following steps. Otherwise, skip to step 8.

    1. Under **Name**, enter **Desktop Bulk Enrollment Token Pro GVLK**, select **Finish**, and then on the **Set up device** page enter a device name.

    2. Under **Enter product key** enter the Pro GVLK key: `W269N-WFGWX-YVC9B-4J6C9-T83GX`.

8. Under **Name**, enter **Desktop Bulk Enrollment**, select **Finish**, and then on the **Set up device** page enter a device name.

9. On the Set up network page, choose **Off**.

10. On the Account Management page, choose **Enroll in Microsoft Entra ID**, select **Get Bulk Token**, sign in, and add the bulk token using your organizations credentials.

11. On the Add applications page, add applications if desired. This step is optional.

12. On the Add certificates page, add certificates if desired. This step is optional.

13. On the Finish page, select **Create**.

14. Copy the PPKG file to the remote virtual machine. Open the provisioning package to install it. This process will restart the system.

> [!NOTE]
> When you try to access the VM using remote desktop, you'll need to [create a custom RDP settings file](#create-custom-rdp-settings-for-azure).

## Create custom RDP settings for Azure

1. Open Remote Desktop Connection and enter the IP address or DNS name for the remote host.

2. Select **Show Options**, and then under Connection settings select **Save As**. Save the RDP file to the location where you'll use it.

3. Close the Remote Desktop Connection window and open Notepad.

4. Open the RDP file in Notepad to edit it.

5. Enter or replace the line that specifies authentication level with the following two lines of text:

    ```text
    enablecredsspsupport:i:0
    authentication level:i:2
    ```

    The values `enablecredsspsupport` and `authentication level` should each appear only once in the file.

6. Save your changes, and then use this custom RDP file with your Microsoft Entra credentials to connect to the Azure VM.

## Related articles

[Windows subscription activation](windows-10-subscription-activation.md)

[Recommended settings for VDI desktops](/windows-server/remote/remote-desktop-services/rds-vdi-recommendations)

[Whitepaper on licensing the Windows desktop for VDI environments](https://download.microsoft.com/download/9/8/d/98d6a56c-4d79-40f4-8462-da3ecba2dc2c/licensing_windows_desktop_os_for_virtual_machines.pdf)
