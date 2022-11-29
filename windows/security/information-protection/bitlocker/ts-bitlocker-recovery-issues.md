---
title: BitLocker recovery known issues
description: Describes common issues that can occur that prevent BitLocker from behaving as expected when recovering a drive, or may cause BitLocker to start recovery unexpectedly. The article provides guidance for addressing those issues.
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: 
  - Windows Security Technologies\BitLocker
  - highpri
ms.topic: troubleshooting
ms.date: 11/08/2022
ms.custom: bitlocker
---

# BitLocker recovery: known issues

This article describes common issues that may prevent BitLocker from behaving as expected when a drive is recovered, or that may cause BitLocker to start recovery unexpectedly. The article also provides guidance to address these issues.

> [!NOTE]
> In this article, "recovery password" refers to the 48-digit recovery password and "recovery key" refers to 32-digit recovery key. For more information, see [BitLocker key protectors](./prepare-your-organization-for-bitlocker-planning-and-policies.md#bitlocker-key-protectors).

## Windows prompts for a non-existing BitLocker recovery password

Windows prompts for a BitLocker recovery password. However, a BitLocker recovery password wasn't configured.

### Resolution for Windows prompts for a non-existing BitLocker recovery password

The BitLocker and Active Directory Domain Services (AD DS) FAQ address situations that may produce this symptom, and provides information about the procedure to resolve the issue:

- [What if BitLocker is enabled on a computer before the computer has joined the domain?](./bitlocker-and-adds-faq.yml#what-if-bitlocker-is-enabled-on-a-computer-before-the-computer-has-joined-the-domain-)

- [What happens if the backup initially fails? Will BitLocker retry the backup?](./bitlocker-and-adds-faq.yml)

## The recovery password for a laptop wasn't backed up, and the laptop is locked

Consider the following scenario:

The hard disk of a Windows 11 or Windows 10 laptop has to be recovered. The disk was encrypted by using BitLocker Driver Encryption. However, the BitLocker recovery password wasn't backed up, and the usual user of the laptop isn't available to provide the password.

### Resolution for the recovery password for a laptop wasn't backed up

You can use either of the following methods to manually back up or synchronize an online client's existing recovery information:

- Create a Windows Management Instrumentation (WMI) script that backs up the information. For more information, see [BitLocker Drive Encryption Provider](/windows/win32/secprov/bitlocker-drive-encryption-provider).

- In an elevated Command Prompt window, use the [manage-bde.exe](/windows-server/administration/windows-commands/manage-bde) command to back up the information.

   For example, to back up all of the recovery information for the C: drive to AD DS, open an elevated Command Prompt window and run the following command:

   ```cmd
   manage-bde.exe -protectors -adbackup C:
   ```

> [!NOTE]
> BitLocker does not automatically manage this backup process.  

## Tablet devices don't support using `manage-bde.exe -forcerecovery` to test recovery mode

Consider the following scenario:

BitLocker recovery needs to be tested on a tablet or slate device by running the following command:

```cmd
manage-bde.exe -forcerecovery
```

However, after entering the recovery password, the device can't start.

### Cause of tablet devices don't support using `manage-bde.exe -forcerecovery` to test recovery mode

> [!IMPORTANT]
> Tablet devices do not support the **`manage-bde.exe -forcerecovery`** command.

This issue occurs because the Windows Boot Manager can't process touch-input during the pre-boot phase of startup. If Boot Manager detects that the device is a tablet, it redirects the startup process to the Windows Recovery Environment (WinRE), which can process touch-input.

If WindowsRE detects the TPM protector on the hard disk, it does a PCR reseal. However, the **`manage-bde.exe -forcerecovery`** command deletes the TPM protectors on the hard disk. Therefore, WinRE can't reseal the PCRs. This failure triggers an infinite BitLocker recovery cycle and prevents Windows from starting.

This behavior is by design for all versions of Windows.

### Workaround for tablet devices don't support using `manage-bde.exe -forcerecovery` to test recovery mode

To resolve the restart loop, follow these steps:

1. On the BitLocker Recovery screen, select **Skip this drive**.

2. Select **Troubleshoot** > **Advanced Options** > **Command Prompt**.

3. In the Command Prompt window, run the following commands:

   ```cmd
   manage-bde.exe -unlock C: -rp <48-digit BitLocker recovery password>
   manage-bde.exe -protectors -disable C:

   ```

4. Close the Command Prompt window.

5. Shut down the device.

6. Start the device. Windows should start as usual.

## After installing UEFI or TPM firmware updates on Surface, BitLocker prompts for the recovery password

Consider the following scenario:

A Surface device has BitLocker drive encryption turned on. The firmware of the Surface's TPM is updated or an update that changes the signature of the system firmware is installed. For example, the Surface TPM (IFX) update is installed.

You experience one or more of the following symptoms on the Surface device:

- At startup, the Surface device prompts for a BitLocker recovery password. The correct recovery password is entered, but Windows doesn't start up.

- Startup progresses directly into the Surface device's Unified Extensible Firmware Interface (UEFI) settings.

- The Surface device appears to be in an infinite restart loop.

### Cause of after installing UEFI or TPM firmware updates on Surface, BitLocker prompts for the recovery password

This issue occurs if the Surface device TPM is configured to use Platform Configuration Register (PCR) values other than the default values of PCR 7 and PCR 11. For example, the following settings can configure the TPM this way:

- Secure boot is turned off.
- PCR values have been explicitly defined, such as by group policy.

Devices that support Connected Standby (also known as *InstantGO* or *Always On, Always Connected PCs*), including Surface devices, must use PCR 7 of the TPM. In its default configuration on such systems, BitLocker binds to PCR 7 and PCR 11 if PCR 7 and Secure Boot are correctly configured. For more information, see the [About the Platform Configuration Register (PCR)](bitlocker-group-policy-settings.md#about-the-platform-configuration-register-pcr) section of the [BitLocker Group Policy Settings](bitlocker-group-policy-settings.md) article.

### Resolution for after installing UEFI or TPM firmware updates on Surface, BitLocker prompts for the recovery password

To verify the PCR values that are in use on a device, open an elevated Command Prompt window and run the following command:

```cmd
manage-bde.exe -protectors -get <OSDriveLetter>:
```

In this command, *\<OSDriveLetter\>* represents the drive letter of the operating system drive.  

To resolve this issue and repair the device, follow these steps:

#### Step 1: Disable the TPM protectors on the boot drive

If a TPM or UEFI update has been installed and the Surface device can't start, even if the correct BitLocker recovery password has been entered, the ability to start can be restored by using the BitLocker recovery password and a Surface recovery image to remove the TPM protectors from the boot drive.

To use the BitLocker recovery password and a Surface recovery image to remove the TPM protectors from the boot drive, follow these steps:

1. Obtain the BitLocker recovery password from the Surface user's [Microsoft.com account](https://account.microsoft.com/devices/recoverykey). If BitLocker is managed by a different method, such as Microsoft BitLocker Administration and Monitoring (MBAM), Configuration Manager BitLocker Management, or Intune, contact the administrator for help.

2. Use another computer to download the Surface recovery image from [Surface Recovery Image Download](https://support.microsoft.com/surface-recovery-image). Use the downloaded image to create a USB recovery drive.

3. Insert the USB Surface recovery image drive into the Surface device, and start the device.

4. When prompted, select the following items:

   1. The operating system language.

   2. The keyboard layout.

5. Select **Troubleshoot** > **Advanced Options** > **Command Prompt**.

6. In the Command Prompt window, run the following commands:  

   ```cmd
   manage-bde.exe -unlock -recoverypassword <Password> <DriveLetter>:  
   manage-bde.exe -protectors -disable <DriveLetter>:  

   ```

   where:

   - *\<Password\>* is the BitLocker recovery password that was obtained in Step 1
   - *\<DriveLetter\>* is the drive letter that is assigned to the operating system drive

   > [!NOTE]
   > For more information about how to use this command, see [manage-bde unlock](/windows-server/administration/windows-commands/manage-bde-unlock).

7. Restart the computer.

8. When prompted, enter the BitLocker recovery password that was obtained in Step 1.

> [!NOTE]
> After the TPM protectors are disabled, BitLocker drive encryption no longer protects the device. To re-enable BitLocker drive encryption, select **Start**, type **Manage BitLocker**, and then press **Enter**. Follow the steps to encrypt the drive.

#### Step 2: Use Surface BMR to recover data and reset the Surface device

To recover data from the Surface device if Windows doesn't start, follow steps 1 through 5 of the section [Step 1: Disable the TPM protectors on the boot drive](#step-1-disable-the-tpm-protectors-on-the-boot-drive) to get to a Command Prompt window. Once a Command Prompt window is open, follow these steps:

1. At the command prompt, run the following command:  

   ```cmd
   manage-bde.exe -unlock -recoverypassword <Password> <DriveLetter>:  
   ```

   In this command, *\<Password\>* is the BitLocker recovery password that was obtained in Step 1 of the section [Step 1: Disable the TPM protectors on the boot drive](#step-1-disable-the-tpm-protectors-on-the-boot-drive), and \<*DriveLetter*> is the drive letter that is assigned to the operating system drive.  

2. After the drive is unlocked, use the **`copy`** or **`xcopy.exe`** command to copy the user data to another drive.  

   > [!NOTE]
   > For more information about the these commands, see the [Windows commands](/windows-server/administration/windows-commands/windows-commands) article.
  
3. To reset the device by using a Surface recovery image, follow the instructions in the article [Creating and using a USB recovery drive for Surface](https://support.microsoft.com/surface/creating-and-using-a-usb-recovery-drive-for-surface-677852e2-ed34-45cb-40ef-398fc7d62c07).  

#### Step 3: Restore the default PCR values

To prevent this issue from recurring, it's recommended to restore the default configuration of Secure Boot and the PCR values.

To enable Secure Boot on a Surface device, follow these steps:

1. Suspend BitLocker by opening an elevated Windows PowerShell window and running the following PowerShell cmdlet:

   ```powershell
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0  
   ```

   In this command, *\<DriveLetter\>* is the letter that is assigned to the drive.

2. Restart the device, and then edit the UEFI settings to set the **Secure Boot** option to **Microsoft Only**.

3. Restart the device and sign into Windows.

4. Open an elevated PowerShell window and run the following PowerShell cmdlet:  

   ```powershell
   Resume-BitLocker -MountPoint "<DriveLetter>:"
   ```

To reset the PCR settings on the TPM, follow these steps:

1. Disable any Group Policy Objects that configure the PCR settings, or remove the device from any groups that enforce such policies.  

   For more information, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

2. Suspend BitLocker by opening an elevated Windows PowerShell window and running the following PowerShell cmdlet:

   ```powershell
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0  
   ```

   In this command, *\<DriveLetter\>* is the letter that is assigned to the drive.

3. Run the following PowerShell cmdlet:  

   ```powershell
   Resume-BitLocker -MountPoint "<DriveLetter>:"
   ```

#### Step 4: Suspend BitLocker during TPM or UEFI firmware updates

You can avoid this scenario when installing updates to system firmware or TPM firmware by temporarily suspending BitLocker before applying such updates.

> [!IMPORTANT]
> TPM and UEFI firmware updates may require multiple restarts while they install. To keep BitLocker suspended during this process, the PowerShell cmdlet [Suspend-BitLocker](/powershell/module/bitlocker/suspend-bitlocker) must be used and the **Reboot Count** parameter must be set to either of the following values:
>
> - **2** or greater: This value sets the number of times the device will restart before BitLocker Device Encryption resumes. For example, setting the value to **2** will cause BitLocker to resume after the device restarts twice.
>
> - **0**: This value suspends BitLocker Drive Encryption indefinitely. To resume BitLocker, the PowerShell cmdlet [Resume-BitLocker](/powershell/module/bitlocker/resume-bitlocker) or another mechanism needs to be used to resume BitLocker protection.

To suspend BitLocker while installing TPM or UEFI firmware updates:

1. Open an elevated Windows PowerShell window and run the following PowerShell cmdlet:

   ```powershell
   Suspend-BitLocker -MountPoint "<DriveLetter>:" -RebootCount 0
   ```

   In this PowerShell cmdlet, *\<DriveLetter\>* is the letter that is assigned to the drive.

2. Install the Surface device driver and firmware updates.

3. After installing the firmware updates, restart the computer, open an elevated PowerShell window, and then run the following PowerShell cmdlet:  

   ```powershell
   Resume-BitLocker -MountPoint "<DriveLetter>:"
   ```

<!--
REMOVING THIS STATEMENT SINCE THIS IS NOT NEEDED. BITLOCKER WAS ONLY SUSPENDED. IT WAS NOT DISABLED AND THE DRIVE WAS NEVER DECRYPTED. STEP 3 ABOVE ALREADY RESUMES BITLOCKER SO RE-ENABLING AND/OR REENCRYPTING IS NOT NEEDED.

To re-enable BitLocker drive encryption, select **Start**, type **Manage BitLocker**, and then press Enter. Follow the steps to encrypt your drive.
-->

<!--

REMOVING THIS SECTION SINCE IT ONLY APPLIES TO VERSIONS OF WINDOWS 10 THAT HAVE BEEN OUT OF SUPPORT FOR SEVERAL YEARS

## After installing an update to a Hyper V-enabled computer, BitLocker prompts for the recovery password and returns error 0xC0210000

Consider the following scenario:

A device is running Windows 10, version 1703, Windows 10, version 1607, or Windows Server 2016 and Hyper-V is enabled. After installing an affected update and restart the device, the device enters BitLocker Recovery mode and error code 0xC0210000 is displayed.

### Workaround

If the device is already in this state, Windows can be successfully started after suspending BitLocker from the Windows Recovery Environment (WinRE). To do this, follow these steps:

1. Retrieve the 48-digit BitLocker recovery password for the operating system drive from the organization's portal or from wherever the password was stored when BitLocker Drive Encryption was first turned on. Solutions that store the BitLocker password could include Microsoft BitLocker Administration and Monitoring (MBAM), Configuration Manager BitLocker Management, or Intune.

2. On the Recovery screen, press **Enter**. When prompted, enter the recovery password.

3. If the device starts in the (WinRE) and prompts for the recovery password again, select **Skip the drive**.

4. Select **Advanced options** > **Troubleshoot** > **Advanced options** > **Command Prompt**.

5. In the Command Prompt window, run the following commands:

   ```cmd
   manage-bde.exe -unlock c: -rp <48 digit numerical recovery password separated by "-" in 6 digit group>
   manage-bde.exe -protectors -disable c:
   exit
   ```

   These commands unlock the drive and then suspend BitLocker by disabling the TPM protectors on the drive. The final command closes the Command Prompt window.

   > [!NOTE]
   > These commands suspend BitLocker for one restart of the device. The **-rc 1** option works only inside the operating system and does not work in the recovery environment.

6. Select **Continue**. Windows should start.

7. After Windows has started, open an elevated Command Prompt window and run the following command:

   ```cmd
   manage-bde.exe -protectors -enable c:
   ```

> [!IMPORTANT]
> Unless BitLocker is suspended before restarting the device, this issue recurs.

To temporarily suspend BitLocker just before restarting the device, open an elevated Command Prompt window and run the following command:

```cmd
manage-bde.exe -protectors -disable c: -rc 1
```

### Resolution

To resolve this issue, install the appropriate update on the affected device:  

- For Windows 10, version 1703: [July 9, 2019—KB4507450 (OS Build 15063.1928)](https://support.microsoft.com/help/4507450/windows-10-update-kb4507450)
- For Windows 10, version 1607 and Windows Server 2016: [July 9, 2019—KB4507460 (OS Build 14393.3085)](https://support.microsoft.com/help/4507460/windows-10-update-kb4507460)

-->

## Credential Guard/Device Guard on TPM 1.2: At every restart, BitLocker prompts for the recovery password and returns error 0xC0210000

Consider the following scenario:

A device uses TPM 1.2 and runs Windows 10, version 1809. The device also uses [Virtualization-based Security](/windows-hardware/design/device-experiences/oem-vbs) features such as [Device Guard and Credential Guard](/windows-hardware/drivers/bringup/device-guard-and-credential-guard). Every time the device is started, the device enters BitLocker Recovery mode and an error message similar to the following error message is displayed:

> Recovery
>
> Your PC/Device needs to be repaired.
> A required file couldn't be accessed because your BitLocker key wasn't loaded correctly.
>  
> Error code 0xc0210000
>  
> You'll need to use recovery tools. If you don't have any installation media (like a disc or USB device), contact your PC administrator or PC/Device manufacturer.

### Cause of Credential Guard/Device Guard on TPM 1.2: At every restart, BitLocker prompts for the recovery password and returns error 0xC0210000

TPM 1.2 doesn't support Secure Launch. For more information, see [System Guard Secure Launch and SMM protection: Requirements Met by System Guard Enabled Machines](../../threat-protection/windows-defender-system-guard/system-guard-secure-launch-and-smm-protection.md)

For more information about this technology, see [Windows Defender System Guard: How a hardware-based root of trust helps protect Windows](../../threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows.md)

### Resolution for Credential Guard/Device Guard on TPM 1.2: At every restart, BitLocker prompts for the recovery password and returns error 0xC0210000

To resolve this issue, use one of the following two solutions:

- Remove any device that uses TPM 1.2 from any group that is subject to GPOs that enforce secure launch.
- Edit the **Turn On Virtualization Based Security** GPO to set **Secure Launch Configuration** to **Disabled**.
