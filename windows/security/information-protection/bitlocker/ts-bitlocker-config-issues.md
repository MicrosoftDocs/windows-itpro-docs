---
title: BitLocker configuration known issues
description: Describes common issues that involve BitLocker configuration and BitLocker's general functionality, and provides guidance for addressing those issues.
ms.reviewer: kaushika
ms.technology: itpro-security
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: Windows Security Technologies\BitLocker
ms.topic: troubleshooting
ms.date: 11/08/2022
ms.custom: bitlocker
---

# BitLocker configuration: known issues

This article describes common issues that affect BitLocker's configuration and general functionality. This article also provides guidance to address these issues.

## BitLocker encryption is slower in Windows 10 and Windows 11

BitLocker runs in the background to encrypt drives. However, in Windows 11 and Windows 10, BitLocker is less aggressive about requesting resources than in previous versions of Windows. This behavior reduces the chance that BitLocker will affect the computer's performance.

To compensate for these changes, BitLocker uses a conversion model called Encrypt-On-Write. This model makes sure that any new disk writes are encrypted as soon as BitLocker is enabled. This behavior happens on all client editions and for any internal drives.

> [!IMPORTANT]
> To preserve backward compatibility, BitLocker uses the previous conversion model to encrypt removable drives.

### Benefits of using the new conversion model

By using the previous conversion model, an internal drive can't be considered protected and compliant with data protection standards until the BitLocker conversion is 100 percent complete. Before the process finishes, the data that existed on the drive before encryption began - that is, potentially compromised data - can still be read and written without encryption. Therefore, for data to be considered protected and compliant with data protection standards, the encryption process has to finish before sensitive data is stored on the drive. Depending on the size of the drive, this delay can be substantial.

By using the new conversion model, sensitive data can be stored on the drive as soon as BitLocker is turned on. The encryption process doesn't need to finish first, and encryption doesn't adversely affect performance. The tradeoff is that the encryption process for pre-existing data takes more time.

### Other BitLocker enhancements

Several other areas of BitLocker were improved in versions of Windows released after Windows 7:

- **New encryption algorithm, XTS-AES** - Added in Windows 10 version 1511, this algorithm provides additional protection from a class of attacks on encrypted data that rely on manipulating cipher text to cause predictable changes in plain text.

   By default, this algorithm complies with the Federal Information Processing Standards (FIPS). FIPS is a United States Government standard that provides a benchmark for implementing cryptographic software.

- **Improved administration features**. BitLocker can be managed on PCs or other devices by using the following interfaces:

  - BitLocker Wizard
  - manage-bde.exe
  - Group Policy Objects (GPOs)
  - Mobile Device Management (MDM) policy
  - Windows PowerShell
  - Windows Management Interface (WMI)

- **Integration with Azure Active Directory** (Azure AD) -  BitLocker can store recovery information in Azure AD to make it easier to recover.

- **[Direct memory access (DMA) Port Protection](../kernel-dma-protection-for-thunderbolt.md)** - By using MDM policies to manage BitLocker, a device's DMA ports can be blocked which secures the device during its startup.

- **[BitLocker Network Unlock](./bitlocker-how-to-enable-network-unlock.md)** - If the BitLocker-enabled desktop or server computer is connected to a wired corporate network in a domain environment, its operating system volume can be automatically unlocked during a system restart.

- **Support for [Encrypted Hard Drives](../encrypted-hard-drive.md)** - Encrypted Hard Drives are a new class of hard drives that are self-encrypting at a hardware level and allow for full disk hardware encryption. By taking on that workload, Encrypted Hard Drives increase BitLocker performance and reduce CPU usage and power consumption.

- **Support for classes of HDD/SSD hybrid disks** - BitLocker can encrypt a disk that uses a small SSD as a non-volatile cache in front of the HDD, such as Intel Rapid Storage Technology.

## Hyper-V Gen 2 VM: Can't access the volume after BitLocker encryption

Consider the following scenario:

1. BitLocker is turned on a generation 2 virtual machine (VM) that runs on Hyper-V.

2. Data is added to the data disk as it encrypts.

3. The VM is restarted and the following behavior is observed:

   - The system volume isn't encrypted.

   - The encrypted volume isn't accessible, and the computer lists the volume's file system as **Unknown**.

   - A message similar to the following message is displayed:

      > **You need to format the disk in \<*drive_letter:*> drive before you can use it**

### Cause of not being able to access the volume after BitLocker encryption on a Hyper-V Gen 2 VM

This issue occurs because the third-party filter driver `Stcvsm.sys` (from StorageCraft) is installed on the VM.

### Resolution for not being able to access the volume after BitLocker encryption on a Hyper-V Gen 2 VM

To resolve this issue, remove the third-party software.

## Production snapshots fail for virtualized domain controllers that use BitLocker-encrypted disks

Consider the following scenario:

A Windows Server 2019 or 2016 Hyper-V Server is hosting VMs (guests) that are configured as Windows domain controllers. On a domain controller guest VM, BitLocker has encrypted the disks that store the Active Directory database and log files. When a "production snapshot" of the domain controller guest VM is attempted, the Volume Snap-Shot (VSS) service doesn't correctly process the backup.

This issue occurs regardless of any of the following variations in the environment:

- How the domain controller volumes are unlocked.
- Whether the VMs are generation 1 or generation 2.
- Whether the guest operating system is Windows Server 2019, 2016 or 2012 R2.

In the guest VM domain controller **Windows Logs** > **Application** Event Viewer log, the VSS event source records event **ID 8229**:

> ID: 8229<br>
> Level: Warning<br>
> Source: VSS<br>
> Message: A VSS writer has rejected an event with error 0x800423f4. The writer experienced a non-transient error. If the backup process is retried, the error is likely to reoccur.<br>
>
> Changes that the writer made to the writer components while handling the event will not be available to the requester.<br>
>
> Check the event log for related events from the application hosting the VSS writer.
>
> Operation:<br>
> PostSnapshot Event
>
> Context:<br>
> Execution Context: Writer<br>
> Writer Class Id: {b2014c9e-8711-4c5c-a5a9-3cf384484757}<br>
> Writer Name: NTDS<br>
> Writer Instance ID: {d170b355-a523-47ba-a5c8-732244f70e75}<br>
> Command Line: C:\\Windows\\system32\\lsass.exe<br>
>
> Process ID: 680

In the guest VM domain controller **Applications and Services Logs** > **Directory Service** Event Viewer log, there's an event logged similar to the following event:

> Error Microsoft-Windows-ActiveDirectory\_DomainService 1168<br>
> Internal Processing Internal error: An Active Directory Domain Services error has occurred.
>
>  Additional Data<br>
>  Error value (decimal):  -1022<br>
>
> Error value (hex): fffffc02
>
> Internal ID: 160207d9

> [!NOTE]
> The internal ID of this event may differ based on the operating system release version and patch level.

When this issue occurs, the **Active Directory Domain Services (NTDS) VSS Writer** will display the following error when the **`vssadmin.exe list writers`** command is run:

``` Error
Writer name: 'NTDS'
 Writer Id: {b2014c9e-8711-4c5c-a5a9-3cf384484757}
 Writer Instance Id: {08321e53-4032-44dc-9b03-7a1a15ad3eb8}
 State: [11] Failed
 Last error: Non-retryable error
```

Additionally, the VMs can't be backed up until they're restarted.

### Cause of production snapshots fail for virtualized domain controllers that use BitLocker-encrypted disks

After VSS creates a snapshot of a volume, the VSS writer takes "post snapshot" actions. When a "production snapshot" is initiated from the host server, Hyper-V tries to mount the snapshotted volume. However, it can't unlock the volume for unencrypted access. BitLocker on the Hyper-V server doesn't recognize the volume. Therefore, the access attempt fails and then the snapshot operation fails.

This behavior is by design.

### Workaround for production snapshots fail for virtualized domain controllers that use BitLocker-encrypted disks

A supported way to perform backup and restore of a virtualized domain controller is to run **Windows Server Backup** in the guest operating system.

If a production snapshot of a virtualized domain controller needs to be taken, BitLocker can be suspended in the guest operating system before the production snapshot is started. However, this approach isn't recommended.

For more information and recommendations about backing up virtualized domain controllers, see [Virtualizing Domain Controllers using Hyper-V: Backup and Restore Considerations for Virtualized Domain Controllers](/windows-server/identity/ad-ds/get-started/virtual-dc/virtualized-domain-controllers-hyper-v#backup-and-restore-considerations-for-virtualized-domain-controllers)

### More information

When the VSS NTDS writer requests access to the encrypted drive, the Local Security Authority Subsystem Service (LSASS) generates an error entry similar to the following error:

``` console
\# for hex 0xc0210000 / decimal -1071579136
STATUS\_FVE\_LOCKED\_VOLUME ntstatus.h
\# This volume is locked by BitLocker Drive Encryption.
```

The operation produces the following call stack:

```console
\# Child-SP RetAddr Call Site
 00 00000086\`b357a800 00007ffc\`ea6e7a4c KERNELBASE\!FindFirstFileExW+0x1ba \[d:\\rs1\\minkernel\\kernelbase\\filefind.c @ 872\]
 01 00000086\`b357abd0 00007ffc\`e824accb KERNELBASE\!FindFirstFileW+0x1c \[d:\\rs1\\minkernel\\kernelbase\\filefind.c @ 208\]
 02 00000086\`b357ac10 00007ffc\`e824afa1 ESENT\!COSFileFind::ErrInit+0x10b \[d:\\rs1\\onecore\\ds\\esent\\src\\os\\osfs.cxx @ 2476\]
 03 00000086\`b357b700 00007ffc\`e827bf02 ESENT\!COSFileSystem::ErrFileFind+0xa1 \[d:\\rs1\\onecore\\ds\\esent\\src\\os\\osfs.cxx @ 1443\]
 04 00000086\`b357b960 00007ffc\`e82882a9 ESENT\!JetGetDatabaseFileInfoEx+0xa2 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 11503\]
 05 00000086\`b357c260 00007ffc\`e8288166 ESENT\!JetGetDatabaseFileInfoExA+0x59 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 11759\]
 06 00000086\`b357c390 00007ffc\`e84c64fb ESENT\!JetGetDatabaseFileInfoA+0x46 \[d:\\rs1\\onecore\\ds\\esent\\src\\ese\\jetapi.cxx @ 12076\]
 07 00000086\`b357c3f0 00007ffc\`e84c5f23 ntdsbsrv\!CVssJetWriterLocal::RecoverJetDB+0x12f \[d:\\rs1\\ds\\ds\\src\\jetback\\snapshot.cxx @ 2009\]
 08 00000086\`b357c710 00007ffc\`e80339e0 ntdsbsrv\!CVssJetWriterLocal::OnPostSnapshot+0x293 \[d:\\rs1\\ds\\ds\\src\\jetback\\snapshot.cxx @ 2190\]
 09 00000086\`b357cad0 00007ffc\`e801fe6d VSSAPI\!CVssIJetWriter::OnPostSnapshot+0x300 \[d:\\rs1\\base\\stor\\vss\\modules\\jetwriter\\ijetwriter.cpp @ 1704\]
 0a 00000086\`b357ccc0 00007ffc\`e8022193 VSSAPI\!CVssWriterImpl::OnPostSnapshotGuard+0x1d \[d:\\rs1\\base\\stor\\vss\\modules\\vswriter\\vswrtimp.cpp @ 5228\]
 0b 00000086\`b357ccf0 00007ffc\`e80214f0 VSSAPI\!CVssWriterImpl::PostSnapshotInternal+0xc3b \[d:\\rs1\\base\\stor\\vss\\modules\\vswriter\\vswrtimp.cpp @ 3552\]
```
