---
title: BitLocker recovery known issues
description: 
ms.reviewer: 
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 9/19/2019
---

# BitLocker recovery--known issues

<a id="list"></a>

- [Windows 10 asks for a BitLocker recovery key even though you did not set up a recovery key](#scenario-1)
- [](#scenario-2)
- ["Manage-bde -forcerecovery" command is unsupported for testing recovery mode on tablet devices](#scenario-3)
- [Prompted for BitLocker recovery key after installing updates to Surface UEFI or TPM firmware on Surface device](#scenario-4)
- [Some devices running Windows 10 with Hyper-V enabled may start into BitLocker recovery with error 0xC0210000](#scenario-5)
- [Some devices running Windows 10 with Hyper-V enabled may start into BitLocker recovery with error 0xC0210000](#scenario-6)
- [Intune: Troubleshooting BitLocker enforcement](#scenario-7)

## <a id="scenario-1"></a>Windows 10 asks for a BitLocker recovery key even though you did not set up a recovery key

### Symptom

Windows 10 prompts you for a BitLocker recovery key. However, you have not configured a BitLocker recovery key.

### Resolution

The BitLocker and Active Directory Domain Services (AD DS) FAQ addresses two situations that may produce this symptom, and provides information about how to resolve the issue:

- [What if BitLocker is enabled on a computer before the computer has joined the domain?](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-and-adds-faq#what-if-bitlocker-is-enabled-on-a-computer-before-the-computer-has-joined-the-domain)
- [What happens if the backup initially fails? Will BitLocker retry the backup?](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-and-adds-faq#what-happens-if-the-backup-initially-fails-will-bitlocker-retry-the-backup)

[Back to list](#list)

## <a id="scenario-2"></a>Scenario 2

We have a Windows 10 Home laptop which is being used by one onsite engineers. He is in California and spilled Coffee in his laptop on Wednesday. The laptop will not work but the hard drive is good. When we hook it up to a docking station, it asks us for a bit locker encryption key to access the drive. Whomever used the laptop before must have turned on bit locker. We have no way of knowing the bit locker password. We need the data in My Documents. It is a SSD drive and is in good condition.

The BitLocker Windows Management Instrumentation (WMI) interface does allow administrators to write a script to back up or synchronize an online client's existing recovery information; however, BitLocker does not automatically manage this process. The manage-bde command-line tool can also be used to manually back up recovery information to AD DS. For example, to back up all of the recovery information for the C: drive to AD DS, you would use the following command from an elevated command prompt: **manage-bde -protectors -adbackup C:**.

[Back to list](#list)

## <a id="scenario-3"></a>"Manage-bde -forcerecovery" command is unsupported for testing recovery mode on tablet devices

Reference: <https://internal.support.services.microsoft.com/help/3119451/manage-bde-forcerecovery-command-is-unsupported-for-testing-recovery-m>

### Symptoms

Assume that you have a tablet or slate device, and you're trying to test the recovery method by running the following command:

```cmd
Manage-bde -forcerecovery
```

However, when you enter the recovery password, your device goes into a no-boot state.

> [!NOTE]
> Running **manage-bde -forcerecovery** is not supported on tablet devices.

### Cause

This issue occurs because boot manager cannot handle touch input during pre-boot time. If boot manager detects that the machine profile is for a tablet or slate device, it redirects to the Windows Recovery Environment (WinRE), which can handle touch input. WinRE then performs a PCR reseal if the TPM protector on the disk is present. If the **manage-bde -forcerecovery** command is used, the TPM protectors are deleted. Therefore, WinRE cannot reseal the PCRs. This triggers an infinite BitLocker recovery cycle, and therefore you can't boot to Windows.

This behavior is by design for all versions of Windows.

> [!NOTE]
> This issue may occur on any Windows 8-based tablet device, not just on Surface devices.

### Resolution

To resolve this issue, follow these steps:

1. On the BitLocker recovery screen, select **Skip this drive**.
1. Select **Troubleshoot** \> **Advanced Options** \> **Command Prompt**.
1. Enter the following commands in the Command Prompt window:
   ```cmd
   manage-bde –unlock C: -rp <48-digit numerical recovery key>
   manage-bde -protectors -disable C:
   ```
1. Exit the command prompt.
1. Shut down the device.
   When you restart the device, Windows should start.

[Back to list](#list)

## <a id="scenario-4"></a>Prompted for BitLocker recovery key after installing updates to Surface UEFI or TPM firmware on Surface device

Reference: <https://internal.support.services.microsoft.com/help/4057282/bitlocker-recovery-key-prompt-after-surface-uefi-tpm-firmware-update>

### Symptoms

You encounter one or more of the following symptoms on your Surface device:

- At startup, you are prompted for your BitLocker recovery key, and you enter the correct recovery key, but Windows doesn’t start up.
- You boot directly into the Surface Unified Extensible Firmware Interface (UEFI) settings.
- Your Surface device appears to be in an infinite restart loop.

### Cause

This behavior can occur in the following scenario:

1. BitLocker is enabled and configured to use Platform Configuration Register (PCR) values other than the default values of PCR 7 and PCR 11, for example when:

   - Secure Boot is turned off.
   - PCR values have been explicitly defined, such as by Group Policy.

1. You install a firmware update that updates the firmware of the device TPM or changes the signature of the system firmware. For example, you install the Surface dTPM (IFX) update.

> [!NOTE]
> You can verify the PCR values that are in use on a device by running the following command from an elevated command prompt:
> ```cmd
> manage-bde.exe -protectors -get \<OSDriveLetter\>:
> ```

> [!NOTE]
> PCR 7 is a requirement for devices that support Connected Standby (also known as InstantGO or Always On, Always Connected PCs), including Surface devices. On such systems, if the TPM with PCR 7 and Secure Boot are correctly configured, BitLocker binds to PCR 7 and PCR 11 by default. For more information see "About the Platform Configuration Register (PCR)" at [BitLocker Group Policy Settings](https://technet.microsoft.com/library/jj679890\(v=ws.11\).aspx?#About%20the%20Platform%20Configuration%20Register%20\(PCR\)).

### Workarounds

#### Method 1: Suspend BitLocker during TPM or UEFI firmware updates

You can avoid this scenario when installing updates to system firmware or TPM firmware by temporarily suspending BitLocker before applying updates to TPM or UEFI firmware by using [Suspend-BitLocker](https://technet.microsoft.com/library/jj649830\(v=wps.630\).aspx).

> [!NOTE]
> TPM and UEFI firmware updates may require multiple reboots during installation. So suspending BitLocker must be done through the [Suspend-BitLocker](https://technet.microsoft.com/library/jj649830\(v=wps.630\).aspx) cmdlet and using the Reboot Count parameter to specify a number of reboots greater than 2 to keep BitLocker suspended during the firmware update process. A Reboot Count of 0 will suspend BitLocker indefinitely, until BitLocker is resumed through the PowerShell cmdlet [Resume-BitLocker](https://technet.microsoft.com/library/jj649834\(v=wps.630\).aspx) or another mechanism.

To suspend BitLocker for installation of TPM or UEFI firmware updates:

1. Open an administrative PowerShell session.
1. Enter the following cmdlet and press Enter:  
   ```ps
   Suspend-BitLocker -MountPoint "*C*:" -RebootCount 0  
   ```
   where *C:* is the drive assigned to your disk
1. Install Surface device driver and firmware updates.
1. Following successful installation of the firmware updates, resume BitLocker by using the [Resume-BitLocker](https://technet.microsoft.com/library/jj649834\(v=wps.630\).aspx) cmdlet as follows:  
   ```ps
   Resume-BitLocker -MountPoint "*C*:"
   ```

#### Method 2: Enable Secure Boot and restore default PCR values

We strongly recommend that you restore the default and recommended configuration of Secure Boot and PCR values after BitLocker is suspended to prevent entering BitLocker Recovery when applying future updates to TPM or UEFI firmware.

To enable Secure Boot on a Surface device that has BitLocker enabled:

1. Suspend BitLocker by using the Suspend-BitLocker cmdlet as described in Method 1.
1. Boot your Surface device to UEFI by using one of the methods defined in [Using Surface UEFI on Surface Laptop, new Surface Pro, Surface Studio, Surface Book, and Surface Pro 4](https://support.microsoft.com/help/4023531/surface-using-surface-uefi-on-surface-laptop--new-surface-pro--surface).
1. Select the Security section.
1. Click Change Configuration under "Secure Boot."
1. Select Microsoft Only and click OK.
1. Select Exit, and then Restart to reboot the device.
1. Resume BitLocker by using the Resume-BitLocker cmdlet as described in Method 1.

To change the PCR values used to validate BitLocker Drive Encryption:

1. Disable any Group Policies that configure PCR, or remove the device from any groups where such policies apply. See "Deployment Options" at [BitLocker Group Policy Reference](https://technet.microsoft.com/library/ee706521\(v=ws.10\).aspx#BKMK_deployment) for more information.
1. Suspend BitLocker by using the Suspend-BitLocker cmdlet as described in Method 1.
1. Resume BitLocker by using the Resume-BitLocker cmdlet as described in Method 1.

#### Method 3: Remove protectors from the boot drive

If you have installed a TPM or UEFI update and your device is unable to boot, even when the correct BitLocker Recovery Key is entered, you can restore the ability to boot by using the BitLocker recovery key and a Surface recovery image to remove the BitLocker protectors from the boot drive.

To remove the protectors from the boot drive by using your BitLocker recovery key:

1. Obtain your BitLocker recovery key from [go.microsoft.com/fwlink/p/?LinkId=237614](http://go.microsoft.com/fwlink/p/?LinkId=237614), or if BitLocker is managed by other means such as Microsoft BitLocker Administration and Monitoring (MBAM), contact your administrator.
1. From another computer, download the Surface recovery image from [Download a recovery image for your Surface](https://support.microsoft.com/surfacerecoveryimage) and create a USB recovery drive.
1. Boot from the USB Surface recovery image drive.
1. Select your operating system language when you are prompted.
1. Select your keyboard layout.
1. Select Troubleshoot.
1. Select Advanced Options.
1. Select Command Prompt.
1. Run the following commands:  
   ```cmd
   manage-bde -unlock -recoverypassword *\<password\> C*:  
   manage-bde -protectors -disable *C*:  
   ```
   where *C:* is the drive assigned to your disk and *\<password\>* is your BitLocker recovery key as obtained in step 1.  
   > [!NOTE]
   > For more information about using this command, see the Microsoft Docs article [Manage-bde: unlock](https://technet.microsoft.com/library/ff829854\(v=ws.11\).aspx).
1. Reboot the computer.
1. When you are prompted, enter your BitLocker recovery key as obtained in step 1.

> [!NOTE]
> After disabling the BitLocker protectors from your boot drive, your device will no longer be protected by BitLocker Drive Encryption. You can re-enable BitLocker by selecting Start, typing Manage BitLocker and pressing Enter to launch the BitLocker Drive Encryption Control Panel applet and following the steps to encrypt your drive.

#### Method 4: Recover data and reset your device with Surface Bare Metal Recovery (BMR)

To recover data from your Surface device if you are unable to boot into Windows:

1. Obtain your BitLocker recovery key from <https://go.microsoft.com/fwlink/p/?LinkId=237614>, or if BitLocker is managed by other means such as Microsoft BitLocker Administration and Monitoring (MBAM), contact your administrator.
1. From another computer, download the Surface recovery image from [Download a recovery image for your Surface](https://support.microsoft.com/surfacerecoveryimage) and create a USB recovery drive.
1. Boot from the USB Surface recovery image drive.
1. Select your operating system language when you are prompted.
1. Select your keyboard layout.
1. Select Troubleshoot.
1. Select Advanced Options.
1. Select Command Prompt.
1. Run the following command:  
   ```cmd
   manage-bde -unlock *-*recoverypassword *\<password\> C*:  
   ```
   where *C:* is the drive assigned to your disk and *\<password\>* is your BitLocker recovery key as obtained in step 1
1. After the drive is unlocked, use copy or xcopy commands to copy the user data to another drive.  
   > [!NOTE]
   > For more information about the these commands, see the [Windows Command Line Reference](https://technet.microsoft.com/library/cc771254\(v=ws.11\).aspx).

To reset your device by using a Surface recovery image: Follow the instructions in  "How to reset your Surface using your USB recovery drive" at [Creating and using a USB recovery drive](https://support.microsoft.com/help/4023512).  

[Back to list](#list)

## <a id="scenario-5"></a>Some devices running Windows 10 with Hyper-V enabled may start into BitLocker recovery with error 0xC0210000

Reference: <https://internal.support.services.microsoft.com/help/4505821/some-devices-running-windows-10-with-hyper-v-enabled-may-start-into-bi>

### Symptoms

After installing an affected update and restarting, some devices running Windows 10, Version 1703, Windows 10, version 1607 or Windows Server 2016 with Hyper-V enabled may enter BitLocker recovery mode and receive an error, "0xC0210000".

### Workaround

If your device is already in this state, you can successfully start Windows after suspending BitLocker from the Windows Recovery Environment (WinRE) using the following steps:

1. Retrieve the 48-digit BitLocker recovery password for the OS volume from your organization's portal or from wherever the key was stored when BitLocker was first enabled.
1. From the recovery screen, press the enter key and enter the recovery password when prompted.
1. If your device starts in the Windows Recovery Environment and asks for recovery key again, select Skip the drive to continue to WinRE.
1. Select Advanced options then Troubleshoot then Advanced options then Command Prompt.
1. Unlock drive by using the following command: 
   ```cmd
   Manage-bde -unlock c: -rp <48 digit numerical recovery password separated by “-“ in 6 digit group>
   ```
1. Suspend BitLocker by using the following command:  
   ```cmd
   Manage-bde -protectors -disable c:
   ```
1. Exit the command window using the command: `exit`
1. Select Continue from recovery environment.
1. The device should now start Windows.  
1. Once started, launch an elevated Command Prompt (i.e. run Command Prompt as administrator) and resume the BitLocker to ensure the system remains protected, using the command: `Manage-bde -protectors -enable c:`  

> [!IMPORTANT]
> The steps in this workaround need to be followed on every system start unless BitLocker is suspended before restarting.**

To prevent this issue, execute the following command to temporarily suspend BitLocker just before restarting the system: 
   ```cmd
   Manage-bde -protectors -disable c: -rc 1
   ```

> [!NOTE]
> This command will suspend BitLocker for one restart of the device (`-rc 1` option only works inside OS and does not work from recovery environment).


{check update KBs--WA no longer needed with updates?}
This issue is now resolved for all platforms in the following updates:  

- [KB4507450](https://internal.support.services.microsoft.com/help/4507450) LCU for Windows 10, version 1703.
- [KB4507460](https://internal.support.services.microsoft.com/help/4507460) LCU for Windows 10, version 1607 and Windows Server 2016.

[Back to list](#list)

