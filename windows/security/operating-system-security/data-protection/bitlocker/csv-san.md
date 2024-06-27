---
title: Protect cluster shared volumes and storage area networks with BitLocker
description: Learn how to protect cluster shared volumes (CSV) and storage area networks (SAN) with BitLocker.
ms.topic: how-to
ms.date: 06/18/2024
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
---

# Protect cluster shared volumes and storage area networks with BitLocker

This article describes the procedure to protect cluster shared volumes (CSVs) and storage area networks (SANs) with BitLocker.

BitLocker protects both physical disk resources and cluster shared volumes version 2.0 (CSV2.0). BitLocker on clustered volumes provides an extra layer of protection that can be used to protect sensitive, highly available data. The administrators use this extra layer of protection to increase the security to resources. Only certain user accounts provided access to unlock the BitLocker volume.

## Configure BitLocker on cluster shared volumes

Volumes within a cluster are managed with the help of BitLocker based on how the cluster service *sees* the volume to be protected. The volume can be a physical disk resource such as a logical unit number (LUN) on a SAN, or network attached storage (NAS).

> [!IMPORTANT]
> SANs used with BitLocker must have obtained Windows Hardware Certification. For more information, check [Windows Hardware Lab Kit](/windows-hardware/drivers/).

The volumes that are designated for a cluster must do the following tasks:

- turn on BitLocker: only after this task is done, the volumes can be added to the storage pool
- must put the resource into maintenance mode before BitLocker operations are completed.

Windows PowerShell or the `manage-bde.exe` command-line tool is the preferred method to manage BitLocker on CSV2.0 volumes. This method is recommended over the BitLocker Control Panel item because CSV2.0 volumes are mount points. Mount points are an NTFS object that is used to provide an entry point to other volumes. Mount points don't require the use of a drive letter. Volumes that lack drive letters don't appear in the BitLocker Control Panel item. Additionally, the new Active Directory-based protector option required for cluster disk resource or CSV2.0 resources isn't available in the Control Panel item.

> [!NOTE]
> Mount points can be used to support remote mount points on SMB-based network shares. This type of share is not supported for BitLocker encryption.

If there's a thinly provisioned storage, such as a dynamic virtual hard disk (VHD), BitLocker runs in **Used Disk Space Only** encryption mode. The **`manage-bde.exe -WipeFreeSpace`** command can't be used to transition the volume to full-volume encryption on thinly provisioned storage volumes. The usage of **`manage-bde.exe -WipeFreeSpace`** command is blocked to avoid expanding thinly provisioned volumes to occupy the entire backing store while wiping the unoccupied (free) space.

### Active Directory-based protector

An Active Directory Domain Services (AD DS) protector can also be used for protecting clustered volumes held within the AD DS infrastructure. The **ADAccountOrGroup** protector is a domain security identifier (SID)-based protector that can be bound to a user account, machine account, or group. When an unlock request is made for a protected volume, the following events take place:

- BitLocker service interrupts the request and uses the BitLocker protect/unprotect APIs to unlock or deny the request.
- BitLocker will unlock protected volumes without user intervention by attempting protectors in the following order:

    1. Clear key
    2. Driver-based auto-unlock key
    3. **ADAccountOrGroup** protector

        a.  Service context protector

        b.  User protector

    4. Registry-based auto-unlock key

> [!NOTE]
> A Windows Server 2012 or later domain controller is required for this feature to work properly.

### Turning on BitLocker before adding disks to a cluster using Windows PowerShell

BitLocker encryption is available for disks before these disks are added to a cluster storage pool.
> [!NOTE]
> The advantage of The BitLocker encryption can even be made available for disks after they are added to a cluster storage pool.
The advantage of encrypting volumes prior to adding them to a cluster is that the disk resource need not be suspended to complete the operation.
To turn on BitLocker for a disk before adding it to a cluster:

1. Install the BitLocker Drive Encryption feature if it isn't already installed.

2. Ensure the disk is an NTFS-formatted one and has a drive letter assigned to it.

3. Identify the name of the cluster with Windows PowerShell.

    ```powershell
    Get-Cluster
    ```

4. Enable BitLocker on a volume with an **ADAccountOrGroup** protector, using the cluster name. For example, use a command such as:

    ```powershell
    Enable-BitLocker E: -ADAccountOrGroupProtector -ADAccountOrGroup CLUSTER$
    ```

    > [!WARNING]
    > An **ADAccountOrGroup** protector must be configured using the cluster CNO for a BitLocker enabled volume to either be shared in a Cluster Shared Volume or to fail over properly in a traditional failover cluster.

5. Repeat the preceding steps for each disk in the cluster.

6. Add the volume(s) to the cluster.

### Turning on BitLocker for a clustered disk using Windows PowerShell

When the cluster service owns a disk resource already, the disk resource needs to be set into maintenance mode before BitLocker can be enabled. To turn on the BitLocker for a clustered disk using Windows PowerShell, perform the following steps:

1. Install the BitLocker drive encryption feature if it isn't already installed.
2. Check the status of the cluster disk using Windows PowerShell.
    ```powershell
    Get-ClusterResource "Cluster Disk 1"
    ```
3. Put the physical disk resource into maintenance mode using Windows PowerShell.
    ```powershell
    Get-ClusterResource "Cluster Disk 1" | Suspend-ClusterResource
    ```
4. Identify the name of the cluster with Windows PowerShell.
    ```powershell
    Get-Cluster
    ```
5. Enable BitLocker a volume with an **ADAccountOrGroup** protector, using the cluster name. For example, use a command such as:
    ```powershell
    Enable-BitLocker E: -ADAccountOrGroupProtector -ADAccountOrGroup CLUSTER$
    ```

    > [!WARNING]
    > An **ADAccountOrGroup** protector must be configured using the cluster CNO for a BitLocker-enabled volume to either be shared in a cluster-shared Volume or to fail over properly in a traditional failover cluster.

6. Use **Resume-ClusterResource** to take back the physical disk resource out of maintenance mode:

    ```powershell
    Get-ClusterResource "Cluster Disk 1" | Resume-ClusterResource
    ```

7. Repeat the preceding steps for each disk in the cluster.

### Adding BitLocker-encrypted volumes to a cluster using `manage-bde.exe`

**`Manage-bde.exe`** can also be used to enable BitLocker on clustered volumes. The steps needed to add a physical disk resource or CSV2.0 volume to an existing cluster are:

1. Verify that the BitLocker drive encryption feature is installed on the computer.
2. Ensure new storage is formatted as NTFS.
3. Encrypt the volume, add a recovery key and add the cluster administrator as a protector key using **`manage-bde.exe`** in a Command Prompt window. For example:

    ```cmd
    manage-bde.exe -on -used <drive letter> -RP -sid domain\CNO$ -sync
    ```

    1. BitLocker will check to see if the disk is already part of a cluster. If it is, administrators will encounter a hard block. Otherwise, the encryption continues.
    2. Using the -sync parameter is optional. However, using the -sync parameter has the advantage of ensuring the command waits until the encryption for the volume is completed. The volume is then released for use in the cluster storage pool.

4. Open the Failover Cluster Manager snap-in or cluster PowerShell cmdlets to enable the disk to be clustered.

    - Once the disk is clustered, it's enabled for CSV.

5. During the resource online operation, cluster checks whether the disk is BitLocker encrypted.

    1. If the volume isn't BitLocker enabled, traditional cluster online operations occur.
    2. If the volume is BitLocker enabled, BitLocker checks if the volume is **locked**. If the volume is **locked**, BitLocker impersonates the CNO and unlocks the volume using the CNO protector. If these actions by BitLocker fail, an event is logged. The logged event will state that the volume couldn't be unlocked and the online operation has failed.

6. Once the disk is online in the storage pool, it can be added to a CSV by right-clicking the disk resource, and choosing "**Add to cluster shared volumes**".

CSVs include both encrypted and unencrypted volumes. To check the status of a particular volume for BitLocker encryption run the `manage-bde.exe -status` command as an administrator with a path to the volume. The path must be one that is inside the CSV namespace. For example:

```cmd
manage-bde.exe -status "C:\ClusterStorage\volume1"
```

### Physical disk resources

Unlike CSV2.0 volumes, physical disk resources can only be accessed by one cluster node at a time. This condition means that operations such as encrypting, decrypting, locking, or unlocking volumes require a context to perform. For example, a physical disk resource can't unlock or decrypt if it isn't administering the cluster node that owns the disk resource because the disk resource isn't available.

### Restrictions on BitLocker actions with cluster volumes

The following table contains information about both physical disk resources (that is, traditional failover cluster volumes) and cluster shared volumes (CSV) and the actions that are allowed by BitLocker in each situation.

| Action | On owner node of failover volume | On Metadata Server (MDS) of CSV | On (Data Server) DS of CSV | Maintenance Mode |
|--- |--- |--- |--- |--- |
|**`Manage-bde.exe -on`**|Blocked|Blocked|Blocked|Allowed|
|**`Manage-bde.exe -off`**|Blocked|Blocked|Blocked|Allowed|
|**`Manage-bde.exe Pause/Resume`**|Blocked|Blocked**|Blocked|Allowed|
|**`Manage-bde.exe -lock`**|Blocked|Blocked|Blocked|Allowed|
|**`Manage-bde.exe -wipe`**|Blocked|Blocked|Blocked|Allowed|
|**Unlock**|Automatic via cluster service|Automatic via cluster service|Automatic via cluster service|Allowed|
|**`Manage-bde.exe -protector -add`**|Allowed|Allowed|Blocked|Allowed|
|**`Manage-bde.exe -protector -delete`**|Allowed|Allowed|Blocked|Allowed|
|**`Manage-bde.exe -autounlock`**|Allowed (not recommended)|Allowed (not recommended)|Blocked|Allowed (not recommended)|
|**`Manage-bde.exe -upgrade`**|Allowed|Allowed|Blocked|Allowed|
|**Shrink**|Allowed|Allowed|Blocked|Allowed|
|**Extend**|Allowed|Allowed|Blocked|Allowed|

> [!NOTE]
> Although the **`manage-bde.exe -pause`** command is blocked in clusters, the cluster service automatically resumes a paused encryption or decryption from the MDS node.

In the case where a physical disk resource experiences a failover event during conversion, the new owning node detects that the conversion isn't complete and completes the conversion process.

### Other considerations when using BitLocker on CSV2.0

Some other considerations to take into account for BitLocker on clustered storage include:

- BitLocker volumes have to be initialized and begin encryption before they're available to add to a CSV2.0 volume
- If an administrator needs to decrypt a CSV volume, remove the volume from the cluster or put it into disk maintenance mode. The CSV can be added back to the cluster while waiting for decryption to complete
- If an administrator needs to start encrypting a CSV volume, remove the volume from the cluster or put it into maintenance mode
- If conversion is paused with encryption in progress and the CSV volume is offline from the cluster, the cluster thread (health check) automatically resumes conversion when the volume is online to the cluster
- If conversion is paused with encryption in progress and a physical disk resource volume is offline from the cluster, the BitLocker driver automatically resumes conversion when the volume is online to the cluster
- If conversion is paused with encryption in progress, while the CSV volume is in maintenance mode, the cluster thread (health check) automatically resumes conversion when moving the volume back from maintenance
- If conversion is paused with encryption in progress, while the disk resource volume is in maintenance mode, the BitLocker driver automatically resumes conversion when the volume is moved back from maintenance mode
