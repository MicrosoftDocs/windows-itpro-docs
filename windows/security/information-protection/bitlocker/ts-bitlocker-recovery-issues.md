---
title: BitLocker recovery known issues
description: Describes common issues that can occur that prevent BitLocker from behaving as expected when recovering a drive, or may cause BitLocker to start recovery unexpectedly. The article provides guidance for addressing those issues.
ms.reviewer: kaushika
ms.technology: windows
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 10/18/2019
ms.custom: bitlocker
---

# BitLocker recovery: known issues

This article describes common issues that may prevent BitLocker from behaving as expected when you recover a drive, or that may cause BitLocker to start recovery unexpectedly. The article provides guidance to address these issues.

> [!NOTE]
> In this article, "recovery password" refers to the 48-digit recovery password and "recovery key" refers to 32-digit recovery key. For more information, see [BitLocker key protectors](./prepare-your-organization-for-bitlocker-planning-and-policies.md#bitlocker-key-protectors).

## Windows 10 prompts for a non-existing BitLocker recovery password

Windows 10 prompts you for a BitLocker recovery password. However, you did not configure a BitLocker recovery password.

### Resolution

The BitLocker and Active Directory Domain Services (AD DS) FAQ addresses situations that may produce this symptom, and provides information about how to resolve the issue:

- [What if BitLocker is enabled on a computer before the computer has joined the domain?](./bitlocker-and-adds-faq.md#what-if-bitlocker-is-enabled-on-a-computer-before-the-computer-has-joined-the-domain)
- [What happens if the backup initially fails? Will BitLocker retry the backup?](./bitlocker-and-adds-faq.md)

## The recovery password for a laptop was not backed up, and the laptop is locked

You have a Windows 10 Home-based laptop, and you have to recover its hard disk. The disk was encrypted by using BitLocker Driver Encryption. However, the BitLocker recovery password was not backed up, and the usual user of the laptop is not available to provide the password.

### Resolution

You can use either of the following methods to manually back up or synchronize an online client's existing recovery information:

- Create a Windows Management Instrumentation (WMI) script that backs up the information. For more information, see [BitLocker Drive Encryption Provider](/windows/win32/secprov/bitlocker-drive-encryption-provider).

- In an elevated Command Prompt window, use the [manage-bde](/windows-server/administration/windows-commands/manage-bde) command to back up the information.

   For example, to back up all of the recovery information for the C: drive to AD DS, open an elevated Command Prompt window and run the following command:

   ```cmd
   manage-bde -protectors -adbackup C:
   ```

> [!NOTE]
> BitLocker does not automatically manage this backup process.  

## Tablet devices do not support using Manage-bde -forcerecovery to test recovery mode

You have a tablet or slate device, and you try to test BitLocker Recovery by running the following command:

```cmd
Manage-bde -forcerecovery
```

However, after you enter the recovery password, the device cannot start.

### Cause

> [!IMPORTANT]
> Tablet devices do not support the **manage-bde -forcerecovery** command.

This issue occurs because the Windows Boot Manager cannot process touch input during the pre-boot phase of startup. If Boot Manager detects that the device is a tablet, it redirects the startup process to the Windows Recovery Environment (WinRE), which can process touch input.

If WindowsRE detects the TPM protector on the hard disk, it does a PCR reseal. However, the **manage-bde -forcerecovery** command deletes the TPM protectors on the hard disk. Therefore, WinRE cannot reseal the PCRs. This failure triggers an infinite BitLocker recovery cycle and prevents Windows from starting.

This behavior is by design for all versions of Windows.

### Workaround

To resolve the restart loop, follow these steps:

1. On the BitLocker Recovery screen, select **Skip this drive**.
1. Select **Troubleshoot** \> **Advanced Options** \> **Command Prompt**.
1. In the Command Prompt window, run the following commands :
   ```cmd
   manage-bde –unlock C: -rp <48-digit BitLocker recovery password>
   manage-bde -protectors -disable C:
   ```
1. Close the Command Prompt window.
1. Shut down the device.
1. Start the device. Windows should start as usual.

## After you install UEFI or TPM firmware updates on Surface, BitLocker prompts for the recovery password

You have a Surface device that has BitLocker Drive Encryption turned on. You update the firmware of the device TPM or install an update that changes the signature of the system firmware. For example, you install the Surface TPM (IFX) update.

You experience one or more of the following symptoms on the Surface device:

- At startup, you are prompted for your BitLocker recovery password. You enter the correct recovery password, but Windows doesn’t start up.
- Startup progresses directly into the Surface Unified Extensible Firmware Interface (UEFI) settings.
- The Surface device appears to be in an infinite restart loop.

### Cause

This issue occurs if the Surface device TPM is configured to use Platform Configuration Register (PCR) values other than the default values of PCR 7 and PCR 11. For example, the following settings can configure the TPM this way:

- Secure Boot is turned off.
- PCR values have been explicitly defined, such as by Group Policy.

Devices that support Connected Standby (also known as *InstantGO* or *Always On, Always Connected PCs*), including Surface devices, must use PCR 7 of the TPM. In its default configuration on such systems, BitLocker binds to PCR 7 and PCR 11 if PCR 7 and Secure Boot are correctly configured. For more information, see "About the Platform Configuration Register (PCR)" at [BitLocker Group Policy Settings](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj679890(v=ws.11)#about-the-platform-configuration-register-pcr)).

### Resolution

To verify the PCR values that are in use on a device, open and elevated Command Prompt window and run the following command:

```cmd
manage-bde.exe -protectors -get <OSDriveLetter>:
```

In this command, &lt;*OSDriveLetter*&gt; represents the drive letter of the operating system drive.  

To resolve this issue and repair the device, follow these steps.

#### <a id="step-1"></a>Step 1: Disable the TPM protectors on the boot drive

If you have installed a TPM or UEFI update and your device cannot start, even if you enter the correct BitLocker recovery password, you can restore the ability to start by using the BitLocker recovery password and a Surface recovery image to remove the TPM protectors from the boot drive.

To do this, follow these steps:

1. Obtain your BitLocker recovery password from [your Microsoft.com account](https://account.microsoft.com/devices/recoverykey). If BitLocker is managed by a different method, such as Microsoft BitLocker Administration and Monitoring (MBAM), contact your administrator for help.
1. Use another computer to download the Surface recovery image from [Download a recovery image for your Surface](https://support.microsoft.com/surfacerecoveryimage). Use the downloaded image to create a USB recovery drive.
1. Insert the USB Surface recovery image drive into the Surface device, and start the device.
1. When you are prompted, select the following items:
   1. Your operating system language.
   1. Your keyboard layout.
1. Select **Troubleshoot** > **Advanced Options** > **Command Prompt**.
1. In the Command Prompt window, run the following commands:  
   ```cmd
   manage-bde -unlock -recoverypassword <Password> <DriveLetter>:  
   manage-bde -protectors -disable <DriveLetter>:  
   ```
   In these commands, \<*Password*\> is the BitLocker recovery password that you obtained in step 1, and \<*DriveLetter*> is the drive letter that is assigned to your operating system drive.  
   > [!NOTE]
   > For more information about how to use this command, see [manage-bde: unlock](/windows-server/administration/windows-commands/manage-bde-unlock).
1. Restart the computer.
1. When you are prompted, enter the BitLocker recovery password that you obtained in step 1.

> [!NOTE]
> After you disable the TPM protectors, BitLocker Drive Encryption no longer protects your device. To re-enable BitLocker Drive Encryption, select **Start**, type **Manage BitLocker**, and then press Enter. Follow the steps to encrypt your drive.

#### <a id="step-2"></a>Step 2: Use Surface BMR to recover data and reset your device

To recover data from your Surface device if you cannot start Windows, follow steps 1 through 5 of [Step 1](#step-1) to return to the Command Prompt window, and then follow these steps:

1. At the command prompt, run the following command:  
   ```cmd
   manage-bde -unlock -recoverypassword <Password> <DriveLetter>:  
   ```
   In this command, \<*Password*\> is the BitLocker recovery password that you obtained in step 1 of [Step 1](#step-1), and \<*DriveLetter*> is the drive letter that is assigned to your operating system drive.  
1. After the drive is unlocked, use the **copy** or **xcopy** command to copy the user data to another drive.  
   > [!NOTE]
   > For more information about the these commands, see the [Windows commands](/windows-server/administration/windows-commands/windows-commands).
  
1. To reset your device by using a Surface recovery image, follow the instructions in the "How to reset your Surface using your USB recovery drive" section in [Creating and using a USB recovery drive](https://support.microsoft.com/help/4023512).  

#### Step 3: Restore the default PCR values

To prevent this issue from recurring, we strongly recommend that you restore the default configuration of Secure Boot and the PCR values.

To enable Secure Boot on a Surface device, follow these steps:

1. Suspend BitLocker. to do this, open an elevated Windows PowerShell window, and run the following cmdlet:
   ```ps
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0  
   ```
   In this command, <*DriveLetter*> is the letter that is assigned to your drive.
1. Restart the device, and then edit the BIOS to set the **Secure Boot** option to **Microsoft Only**.
1. Restart the device.
1. Open an elevated PowerShell window, and run the following cmdlet:  
   ```ps
   Resume-BitLocker -MountPoint "<DriveLetter>:"
   ```

To reset the PCR settings on the TPM, follow these steps:

1. Disable any Group Policy Objects that configure the PCR settings, or remove the device from any groups that enforce such policies.  
   For more information, see [BitLocker Group Policy settings](./bitlocker-group-policy-settings.md).
1. Suspend BitLocker. To do this, open an elevated Windows PowerShell window, and run the following cmdlet:
   ```ps
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0  
   ```
   
   where <*DriveLetter*> is the letter assigned to your drive.
1. Run the following cmdlet:  
   ```ps
   Resume-BitLocker -MountPoint "<DriveLetter>:"

#### Step 4: Suspend BitLocker during TPM or UEFI firmware updates

You can avoid this scenario when you install updates to system firmware or TPM firmware by temporarily suspending BitLocker before you apply such updates.

> [!IMPORTANT]
> TPM and UEFI firmware updates may require multiple restarts while they install. To keep BitLocker suspended during this process, you must use [Suspend-BitLocker](https://docs.microsoft.com/powershell/module/bitlocker/suspend-bitlocker?view=winserver2012r2-ps) and set the **Reboot Count** parameter to either of the following values:
> - **2** or greater: This value sets the number of times the device can restart before BitLocker Device Encryption resumes.
> - **0**: This value suspends BitLocker Drive Encryption indefinitely, until you use [Resume-BitLocker](https://docs.microsoft.com/powershell/module/bitlocker/resume-bitlocker?view=winserver2012r2-ps) or another mechanism to resume protection.

To suspend BitLocker while you install TPM or UEFI firmware updates:

1. Open an elevated Windows PowerShell window, and run the following cmdlet:
   ```ps
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0  
   ```
   In this cmdlet <*DriveLetter*> is the letter that is assigned to your drive.
1. Install the Surface device driver and firmware updates.
1. After you install the firmware updates, restart the computer, open an elevated PowerShell window, and then run the following cmdlet:  
   ```ps
   Resume-BitLocker -MountPoint "<DriveLetter>:"
   ```

To re-enable BitLocker Drive Encryption, select **Start**, type **Manage BitLocker**, and then press Enter. Follow the steps to encrypt your drive.

## After you install an update to a Hyper V-enabled computer, BitLocker prompts for the recovery password and returns error 0xC0210000

You have a device that runs Windows 10, version 1703, Windows 10, version 1607, or Windows Server 2016. Also, Hyper-V is enabled on the device. After you install an affected update and restart the device, the device enters BitLocker Recovery mode and you see error code 0xC0210000.

### Workaround

If your device is already in this state, you can successfully start Windows after suspending BitLocker from the Windows Recovery Environment (WinRE). To do this, follow these steps:

1. Retrieve the 48-digit BitLocker recovery password for the operating system drive from your organization's portal or from wherever the password was stored when BitLocker Drive Encryption was first turned on.
1. On the Recovery screen, press Enter. When you are prompted, enter the recovery password.
1. If your device starts in the (WinRE) and prompts you for the recovery password again, select **Skip the drive**.
1. Select **Advanced options** > **Troubleshoot** > **Advanced options** > **Command Prompt**.
1. In the Command Prompt window, run the following commands:
   ```cmd
   Manage-bde -unlock c: -rp <48 digit numerical recovery password separated by “-“ in 6 digit group>
   Manage-bde -protectors -disable c:
   exit
   ```
   
   These commands unlock the drive and then suspend BitLocker by disabling the TPM protectors on the drive. The final command closes the Command Prompt window.
   > [!NOTE]
   > These commands suspend BitLocker for one restart of the device. The **-rc 1** option works only inside the operating system and does not work in the recovery environment.
1. Select **Continue**. Windows should start.
1. After Windows has started, open an elevated Command Prompt window and run the following command:
   ```cmd
   Manage-bde -protectors -enable c:
   ```

> [!IMPORTANT]
> Unless you suspend BitLocker before you start the device, this issue recurs.

To temporarily suspend BitLocker just before you restart the device, open an elevated Command Prompt window and run the following command:

```cmd
Manage-bde -protectors -disable c: -rc 1
```

### Resolution

To resolve this issue, install the appropriate update on the affected device:  

- For Windows 10, version 1703: [July 9, 2019—KB4507450 (OS Build 15063.1928)](https://support.microsoft.com/help/4507450/windows-10-update-kb4507450)
- For Windows 10, version 1607 and Windows Server 2016: [July 9, 2019—KB4507460 (OS Build 14393.3085)](https://support.microsoft.com/help/4507460/windows-10-update-kb4507460)

## Credential Guard/Device Guard on TPM 1.2: At every restart, BitLocker prompts for the recovery password and returns error 0xC0210000

You have a device that uses TPM 1.2 and runs Windows 10, version 1809. Also, the device uses [Virtualization-based Security](/windows-hardware/design/device-experiences/oem-vbs) features such as [Device Guard and Credential Guard](/windows-hardware/drivers/bringup/device-guard-and-credential-guard). Every time that you start the device, the device enters BitLocker Recovery mode and you see error code 0xc0210000, and a message that resembles the following.

> Recovery
> 
> Your PC/Device needs to be repaired.
> A required file couldn't be accessed because your BitLocker key wasn't loaded correctly.
>  
> Error code 0xc0210000
>  
> You'll need to use recovery tools. If you don't have any installation media (like a disc or USB device), contact your PC administrator or PC/Device manufacturer.

### Cause

TPM 1.2 does not support Secure Launch. For more information, see [System Guard Secure Launch and SMM protection: Requirements Met by System Guard Enabled Machines](../../threat-protection/windows-defender-system-guard/system-guard-secure-launch-and-smm-protection.md#requirements-met-by-system-guard-enabled-machines)

For more information about this technology, see [Windows Defender System Guard: How a hardware-based root of trust helps protect Windows 10](../../threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows.md)

### Resolution

To resolve this issue, do one of the following:

- Remove any device that uses TPM 1.2 from any group that is subject to Group Policy Objects (GPOs) that enforce Secure Launch.
- Edit the **Turn On Virtualization Based Security** GPO to set **Secure Launch Configuration** to **Disabled**.