---
title: BitLocker cannot encrypt a drive  known issues
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

# BitLocker cannot encrypt a drive--known issues

<a id="list"></a>
- ["Access is denied" message when you try to encrypt removable drives](#scenario-1)
- [In Windows 10, BitLocker takes more time to encrypt a drive than in Windows 7](#scenario-2)
- [Hyper-V Gen 2 VM: Cannot access the volume after BitLocker encryption](#scenario-3)
- [Production snapshots fail for virtualized domain controllers that use BitLocker-encrypted disks](#scenario-4)
- [Cannot turn on BitLocker encryption on Windows 10 Professional](#scenario-5)

## <a id="scenario-1"></a>"Access is denied" message when you try to encrypt removable drives

### Symptoms

You have a computer that is running Windows 10, version 1607 or version 1709.

You try to encrypt a USB drive by following these steps:

1. In Windows Explorer, right-click the USB drive and select **Turn on BitLocker**.
1. On the **Choose how you want to unlock this drive** page, select **Use a password to unlock the drive**.
1. Follow the instructions on the page to enter your password and then re-enter it.
1. On the **are you ready to encrypt this drive?** page, select **Start encrypting**.
1. The **Starting encryption** page displays the message "Access is denied."

You receive this message on any computer that runs Windows 10 version 1607 or version 1709, and with any USB drive.

### Cause

The security descriptor of the BitLocker Drive Encryption service (BDESvc) has an incorrect entry. Instead of NT AUTHORITY\Authenticated Users, the security descriptor uses NT AUTHORITY\INTERACTIVE.

To verify the presence of this issue, follow these steps:

1. On an affected computer, open an elevated Command Prompt window and an elevated Powershell window.

1. In the Command Prompt window, enter the following command:

   ```cmd
   C:\>sc sdshow bdesvc
   ```

   The output of this command resembles the following:

   > D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)

1. Copy this output, and then use it as part of the [**ConvertFrom-SddlString**](https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/convertfrom-sddlstring?view=powershell-6) command in the PowerShell window, as follows:

   ![](./images/ts-bitlocker-usb-sddl.png)

   If you see NT AUTHORITY\INTERACTIVE (as highlighted), in the output of this command, this is the cause of the problem. Under normal conditions, the output should resemble the following:

   ![default](./images/ts-bitlocker-usb-default-sddl.png)

> [!NOTE]
> Group Policy Objects that change the security descriptors of services have been known to cause this issue.

### Resolution

1. To repair the security descriptor of BDESvc, open an elevated PowerShell window and enter the following command:

   ```ps
   sc sdset bdesvc D:(A;;CCDCLCSWRPWPDTLORCWDWO;;;SY)(A;;CCDCLCSWRPWPDTLORCWDWO;;;BA)(A;;CCLCSWRPLORC;;;BU)(A;;CCLCSWRPLORC;;;AU)S:(AU;FA;CCDCLCSWRPWPDTLOSDRCWDWO;;;WD)
   ```

1. Restart the computer.

The issue should now be resolved.

[Back to list](#list)

## <a id="scenario-2"></a>In Windows 10, BitLocker takes more time to encrypt a drive than in Windows 7

Reference: <https://internal.support.services.microsoft.com/help/3217793>

### Symptoms

Encryption on the same hardware takes longer on Window 10 as compared to Windows 7.

### Cause

In both Windows 10 and Windows 7, BitLocker runs in the background to encrypt drives. However, in Windows 10, BitLocker is less aggressive about requesting resources. this behavior reduces the chance of BitLocker affecting the computer's performance.

To compensate for these changes, BitLocker uses a new conversion model. This model, (referred to as Encrypt-On-Write), ensures that on all client SKUs and on any internal drives, any new disk writes are always encrypted *as soon as you turn on BitLocker*.

> [!IMPORTANT]
> To preserve backward compatibility, BitLocker uses the previous conversion model to encrypt removable drives.

#### Benefits of using the new conversion model

Using the previous conversion model, you cannot consider an internal drive to be protected (and compliant with data protection standards) until the BitLocker conversion is 100% complete. Before the process completes, the data that existed on the drive before encryption began&mdash;potentially compromised data&mdash;can still be read and written without encryption. Therefore, you must wait for the encryption process to complete before you store sensitive data on the drive. Depending on the size of the drive, this wait time can be substantial.

Using the new conversion model, you can safely store sensitive data on the drive as soon as you turn on BitLocker, before the encryption process finishes. You can use the drive immediately, and the encryption process does not adversely affect performance. The tradeoff is that the encryption process for pre-existing data takes more time.

#### Other BitLocker enhancements

After Windows 7 was released, several other areas of BitLocker were improved:

- **New encryption algorithm, XTS-AES**. The new algorithm provides additional protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text.

   By default, this algorithm complies with the Federal Information Processing Standards (FIPS). FIPS are United States Government standards that provide a benchmark for implementing cryptographic software.

- **Improved administration features**. You can manage BitLocker on PCs or other devices by using the following interfaces:
   -  BitLocker Wizard
   - manage-bde
   - Group Policy Objects (GPOs)
   - Mobile Device Managment (MDM) policy
   - Windows PowerShell
   - Windows Management Interface (WMI)

- **Integration with Azure Active Directory**. BitLocker can store keys in Azure AD, which makes them easier to recover.

- **[Direct memory access (DMA) port protection](https://docs.microsoft.com/windows/security/information-protection/kernel-dma-protection-for-thunderbolt)**. By using MDM policies to manage BitLocker, you can block a device's DMA ports and secure the device during its startup.

- **[BitLocker Network Unlock](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-how-to-enable-network-unlock)**. If your BitLocker-enabled desktop or server computer is connected to a wired corporate network in a domain environment, you can automatically unlock its operating system volume during a system restart.

- **Support for [Encrypted Hard Drives](https://docs.microsoft.com/windows/security/information-protection/encrypted-hard-drive)**. Encrypted Hard Drives are a new class of hard drives that are self-encrypting at a hardware level and allow for full disk hardware encryption. By offloading the cryptographic operations to hardware, Encrypted Hard Drives increase BitLocker performance and reduce CPU usage and power consumption.

- **Support for classes of HDD/SSD hybrid disks**. BitLocker can encrypt a disk that uses a small SSD as a non-volatile cache in front of the HDD, such as Intel Rapid Storage Technology.

[Back to list](#list)

## <a id="scenario-3"></a>Hyper-V Gen 2 VM: Cannot access the volume after BitLocker encryption

### Symptoms

1. You turn on BitLocker on a generation-2 virtual machine that runs on Hyper-V.
1. You add data to the data disk as it encrypts.
1. You restart the virtual machine, and observe the following:
   - The system volume is not encrypted.
   - The encrypted volume is not accessible, and the computer lists the volume's file system as "Unknown."
   - You see a message that resembles: "You need to format the disk in \<*x:*> drive before you can use it"


### Cause

The third-party filter driver Stcvsm.sys (from StorageCraft) is installed on the virtual machine.

### Resolution

To resolve this issue, remove the third-party software.

{Note to reviewers: the original text says "We uninstalled the 3rd party Storage craft software and could fix the issue." This section needs to include *how* to fix the issue. Does the VM recognize the drive as soon as the 3rd-party app is gone? Do you have to restore the drive from a backup, then re-encrypt it?}

[Back to list](#list)

## <a id="scenario-4"></a>Production snapshots fail for virtualized domain controllers that use BitLocker-encrypted disks

### Symptoms

You have a Windows Server 2019 or 2016 Hyper-V Server that is hosting virtual machines (guests) that are configured as Windows domain controllers. BitLocker has encrypted the disks that store the Active Directory database and log files. When you run a “production snapshot” of the domain controller guests, the Volume Snap-Shot (VSS) service does not correctly process the backup.

This issue occurs regardless of any of the following variations in the environment:

- How the domain controller volumes are unlocked.
- Whether the virtual machines are generation 1 or generation 2.
- whether the guest operating system is Windows Server 2019, 2016 or 2012 R2.

In the domain controller Application Event Log, the VSS event source records Event ID 8229:

> ID: 8229  
> Level: Warning  
> ‎Source: VSS  
> Message: A VSS writer has rejected an event with error 0x800423f4, The writer experienced a non-transient error. If the backup process is retried, the error is likely to reoccur.  
>  
> Changes that the writer made to the writer components while handling the event will not be available to the requester.  
>  
> Check the event log for related events from the application hosting the VSS writer.  
>  
> Operation:  
> PostSnapshot Event
>  
> Context:  
> Execution Context: Writer
> Writer Class Id: {b2014c9e-8711-4c5c-a5a9-3cf384484757}  
> Writer Name: NTDS  
>  Writer Instance ID: {d170b355-a523-47ba-a5c8-732244f70e75}
> Command Line: C:\\Windows\\system32\\lsass.exe
>  
> Process ID: 680  

In the domain controller Directory Services Event Log, you see an event that resembles the following:

> Error Microsoft-Windows-ActiveDirectory\_DomainService 1168  
> Internal Processing Internal error: An Active Directory Domain Services error has occurred.
>  
>‎ &nbsp;Additional Data  
> ‎&nbsp;&nbsp;Error value (decimal):  -1022  
>  
> Error value (hex): fffffc02  
>  
> Internal ID: 160207d9  

The internal ID of this event may differ based on your operating system release and path level.

After this issue occurs, if you run the **VSSADMIN list writers** command, you see output that resembles the following for the Active Directory Domain Services (NTDS) VSS Writer:  

> Writer name: 'NTDS'  
> &nbsp;&nbsp;Writer Id: {b2014c9e-8711-4c5c-a5a9-3cf384484757}  
> &nbsp;&nbsp;Writer Instance Id: {08321e53-4032-44dc-9b03-7a1a15ad3eb8}  
> &nbsp;&nbsp;State: \[11\] Failed  
> &nbsp;&nbsp;Last error: Non-retryable error  

Additionally, you cannot back up the virtual machines until you restart them.

### Cause

After VSS creates a snapshot of a volume, the VSS writer performs "post snapshot" actions. In the case of a "production snapshot", which you initiate from the host server, Hyper-V attempts to mount the snapshotted volume. However, it cannot unlock the volume for unencrypted access. BitLocker on the Hyper-V server does not recognize the volume. Therefore, the access attempt fails and eventually fails the snapshot.

This behavior is by design.

### Workaround

There is one supported way to perform backup and restore of a virtualized domain controller:

- Run Windows Server Backup in the guest operating system.

If you have to take a production snapshot of a virtualized domain controller, you can suspend BitLocker in the guest operating system before you start the production snapshot. However, this approach is not recommended.

For more information and recommendations about backing up virtualized domain controllers, see [Virtualizing Domain Controllers using Hyper-V: Backup and Restore Considerations for Virtualized Domain Controllers](https://docs.microsoft.com/windows-server/identity/ad-ds/get-started/virtual-dc/virtualized-domain-controllers-hyper-v#backup-and-restore-considerations-for-virtualized-domain-controllers)

### More information

When LSASS processes the access request of the VSS NTDS writer, the result is an error that resembles the following:

```
\# for hex 0xc0210000 / decimal -1071579136
‎ STATUS\_FVE\_LOCKED\_VOLUME ntstatus.h
‎ \# This volume is locked by BitLocker Drive Encryption.
```

The operation produces the following callstack:

```
\# Child-SP RetAddr Call Site
‎ 00 00000086\`b357a800 00007ffc\`ea6e7a4c KERNELBASE\!FindFirstFileExW+0x1ba \[d:\\rs1\\minkernel\\kernelbase\\filefind.c @ 872\]
‎ 01 00000086\`b357abd0 00007ffc\`e824accb KERNELBASE\!FindFirstFileW+0x1c \[d:\\rs1\\minkernel\\kernelbase\\filefind.c @ 208\]
‎ 02 00000086\`b357ac10 00007ffc\`e824afa1 ESENT\!COSFileFind::ErrInit+0x10b \[d:\\rs1\\onecore\\ds\\esent\\src\\os\\osfs.cxx @ 2476\]
‎ 03 00000086\`b357b700 00007ffc\`e827bf02 ESENT\!COSFileSystem::ErrFileFind+0xa1 \[d:\\rs1\\onecore\\ds\\esent\\src\\os\\osfs.cxx @ 1443\]
‎ 04 00000086\`b357b960 00007ffc\`e82882a9 ESENT\!JetGetDatabaseFileInfoEx+0xa2 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 11503\]
‎ 05 00000086\`b357c260 00007ffc\`e8288166 ESENT\!JetGetDatabaseFileInfoExA+0x59 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 11759\]
‎ 06 00000086\`b357c390 00007ffc\`e84c64fb ESENT\!JetGetDatabaseFileInfoA+0x46 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 12076\]
‎ 07 00000086\`b357c3f0 00007ffc\`e84c5f23 ntdsbsrv\!CVssJetWriterLocal::RecoverJetDB+0x12f \[d:\\rs1\\ds\\ds\\src\\jetback\\snapshot.cxx @ 2009\]
‎ 08 00000086\`b357c710 00007ffc\`e80339e0 ntdsbsrv\!CVssJetWriterLocal::OnPostSnapshot+0x293 \[d:\\rs1\\ds\\ds\\src\\jetback\\snapshot.cxx @ 2190\]
‎ 09 00000086\`b357cad0 00007ffc\`e801fe6d VSSAPI\!CVssIJetWriter::OnPostSnapshot+0x300 \[d:\\rs1\\base\\stor\\vss\\modules\\jetwriter\\ijetwriter.cpp @ 1704\]
‎ 0a 00000086\`b357ccc0 00007ffc\`e8022193 VSSAPI\!CVssWriterImpl::OnPostSnapshotGuard+0x1d \[d:\\rs1\\base\\stor\\vss\\modules\\vswriter\\vswrtimp.cpp @ 5228\]
‎ 0b 00000086\`b357ccf0 00007ffc\`e80214f0 VSSAPI\!CVssWriterImpl::PostSnapshotInternal+0xc3b \[d:\\rs1\\base\\stor\\vss\\modules\\vswriter\\vswrtimp.cpp @ 3552\]
```

## <a id="scenario-5"></a>Cannot turn on BitLocker encryption on Windows 10 Professional

### Symptom

When you turn on BitLocker encryption on a computer that is running Windows 10 Professional, you receive a message that resembles the following:

> ERROR: An error occurred (code 0x80310059):BitLocker Drive Encryption is already performing an operation on this drive. Please complete all operations before continuing.NOTE: If the -on switch has failed to add key protectors or start encryption,you may need to call manage-bde -off before attempting -on again.

### Cause

Settings that are controlled by Group Policy Objects (GPOs) may be responsible for this issue.

### Resolution

> [!IMPORTANT]
> Follow the steps in this section carefully. Serious problems might occur if you modify the registry incorrectly. Before you modify it, [back up the registry for restoration](https://support.microsoft.com/help/322756) in case problems occur.

To resolve this issue, follow these steps:

1. Open Registry Editor, and navigate to **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE**

1. Delete the following sub-keys:
   - **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE\\OSPlatformValidation\_BIOS**
   - **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE\\OSPlatformValidation\_UEFI**
   - **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\FVE\\PlatformValidation**

1. Exit Registry Editor, and turn on BitLocker encryption again.

[Back to list](#list)
