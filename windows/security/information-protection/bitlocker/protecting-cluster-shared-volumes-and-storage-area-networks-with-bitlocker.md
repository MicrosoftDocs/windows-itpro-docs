---
title: Protecting cluster shared volumes and storage area networks with BitLocker (Windows 10)
description: This topic for IT pros describes how to protect CSVs and SANs with BitLocker.
ms.assetid: ecd25a10-42c7-4d31-8a7e-ea52c8ebc092
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# Protecting cluster shared volumes and storage area networks with BitLocker

**Applies to**
-   Windows Server 2016

This topic for IT pros describes how to protect CSVs and SANs with BitLocker.

BitLocker can protect both physical disk resources and cluster shared volumes version 2.0 (CSV2.0). BitLocker on clustered volumes allows for an additional layer of protection for administrators wishing to protect sensitive, highly available data. By adding additional protectors to the clustered volume, administrators can also add an additional barrier of security to resources within an organization by allowing only certain user accounts access to unlock the BitLocker volume.

## <a href="" id="configuring-bitlocker-on-cluster-shared-volumes-"></a>Configuring BitLocker on Cluster Shared Volumes

### Using BitLocker with Clustered Volumes

BitLocker on volumes within a cluster are managed based on how the cluster service "views" the volume to be protected. The volume can be a physical disk resource such as a logical unit number (LUN) on a storage area network (SAN) or network attached storage (NAS).

>**Important**  SANs used with BitLocker must have obtained Windows Hardware Certification. For more info, see [Windows Hardware Lab Kit](https://msdn.microsoft.com/library/windows/hardware/dn930814.aspx).
 
Alternatively, the volume can be a cluster-shared volume, a shared namespace, within the cluster. Windows Server 2012 expanded the CSV architecture, now known as CSV2.0, to enable support for BitLocker. When using BitLocker with volumes designated for a cluster, the volume will need to turn on 
BitLocker before its addition to the storage pool within cluster or put the resource into maintenance mode before BitLocker operations will complete.

Windows PowerShell or the manage-bde command line interface is the preferred method to manage BitLocker on CSV2.0 volumes. This is recommended over the BitLocker Control Panel item because CSV2.0 volumes are mount points. Mount points are an NTFS object that is used to provide an entry point to other volumes. Mount points do not require the use of a drive letter. Volumes that lack drive letters do not appear in the BitLocker Control Panel item. Additionally, the new Active Directory-based protector option required for cluster disk resource or CSV2.0 resources is not available in the Control Panel item.

>**Note:**  Mount points can be used to support remote mount points on SMB based network shares. This type of share is not supported for BitLocker encryption.
 
For thinly provisioned storage, such as a Dynamic Virtual Hard Disk (VHD), BitLocker runs in Used Disk Space Only encryption mode. You cannot use the **manage-bde -WipeFreeSpace** command to transition the volume to full-volume encryption on these types of volumes. This is blocked in order to avoid expanding thinly provisioned volumes to occupy the entire backing store while wiping the unoccupied (free) space.

### Active Directory-based protector

You can also use an Active Directory Domain Services (AD DS) protector for protecting clustered volumes held within your AD DS infrastructure. The **ADAccountOrGroup** protector is a domain security identifier (SID)-based protector that can be bound to a user account, machine account or group. When an unlock request is made for a protected volume, the BitLocker service interrupts the request and uses the BitLocker protect/unprotect APIs to unlock or deny the request. BitLocker will unlock protected volumes without user intervention by attempting protectors in the following order:

1.  Clear key
2.  Driver-based auto-unlock key
3.  ADAccountOrGroup protector

    1.  Service context protector
    2.  User protector

4.  Registry-based auto-unlock key

>**Note:**  A Windows Server 2012 or later domain controller is required for this feature to work properly.
 
### Turning on BitLocker before adding disks to a cluster using Windows PowerShell

BitLocker encryption is available for disks before or after addition to a cluster storage pool. The advantage of encrypting volumes prior to adding them to a cluster is that the disk resource does not require suspending the resource to complete the operation. To turn on BitLocker for a disk before adding it to a cluster, do the following:

1.  Install the BitLocker Drive Encryption feature if it is not already installed.
2.  Ensure the disk is formatted NTFS and has a drive letter assigned to it.
3.  Identify the name of the cluster with Windows PowerShell.

    ```powershell
    Get-Cluster
    ```

4.  Enable BitLocker on the volume of your choice with an **ADAccountOrGroup** protector, using the cluster name. For example, use a command such as:

    ```powershell
    Enable-BitLocker E: -ADAccountOrGroupProtector -ADAccountOrGroup CLUSTER$
    ```

    >**Warning:**  You must configure an **ADAccountOrGroup** protector using the cluster CNO for a BitLocker enabled volume to either be shared in a Cluster Shared Volume or to fail over properly in a traditional failover cluster.
     
5.  Repeat the preceding steps for each disk in the cluster.
6.  Add the volume(s) to the cluster.

### Turning on BitLocker for a clustered disk using Windows PowerShell

When the cluster service owns a disk resource already, it needs to be set into maintenance mode before BitLocker can be enabled. Use the following steps for turning BitLocker on for a clustered disk:

1.  Install the BitLocker Drive Encryption feature if it is not already installed.
2.  Check the status of the cluster disk using Windows PowerShell.

    ```powershell
    Get-ClusterResource "Cluster Disk 1"
    ```

3.  Put the physical disk resource into maintenance mode using Windows PowerShell.

    ```powershell
    Get-ClusterResource "Cluster Disk 1" | Suspend-ClusterResource
    ```

4.  Identify the name of the cluster with Windows PowerShell.

    ```powershell
    Get-Cluster
    ```

5.  Enable BitLocker on the volume of your choice with an **ADAccountOrGroup** protector, using the cluster name. For example, use a command such as:

    ```powershell
    Enable-BitLocker E: -ADAccountOrGroupProtector -ADAccountOrGroup CLUSTER$
    ```
    >**Warning:**  You must configure an **ADAccountOrGroup** protector using the cluster CNO for a BitLocker enabled volume to either be shared in a Cluster Shared Volume or to fail over properly in a traditional failover cluster.
     
6.  Use **Resume-ClusterResource** to take the physical disk resource back out of maintenance mode:

    ```powershell
    Get-ClusterResource "Cluster Disk 1" | Resume-ClusterResource
    ```

7.  Repeat the preceding steps for each disk in the cluster.

### Adding BitLocker encrypted volumes to a cluster using manage-bde

You can also use manage-bde to enable BitLocker on clustered volumes. The steps needed to add a physical disk resource or CSV2.0 volume to an existing cluster includes the following:

1.  Verify the BitLocker Drive Encryption feature is installed on the computer.
2.  Ensure new storage is formatted as NTFS.
3.  Encrypt the volume, add a recovery key and add the cluster administrator as a protector key using the manage-bde command line interface (see example):

    -   `Manage-bde -on -used <drive letter> -RP -sid domain\CNO$ -sync`

        1.  BitLocker will check to see if the disk is already part of a cluster. If it is, administrators will encounter a hard block. Otherwise, the encryption will continue.
        2.  Using the -sync parameter is optional. Using it ensures the command waits until the encryption for the volume is completed before releasing the volume for use in the cluster storage pool.

4.  Open the Failover Cluster Manager snap-in or cluster PowerShell cmdlets to enable the disk to be clustered

    -   Once the disk is clustered it can also be enabled for CSV.

5.  During the resource online operation, cluster will check to see if the disk is BitLocker encrypted.

    1.  If the volume is not BitLocker enabled, traditional cluster online operations occur.
    2.  If the volume is BitLocker enabled, the following check occurs:

        -   If volume is **locked**, BitLocker will impersonate the CNO and unlock the volume using the CNO protector. If this operation fails an event will be logged that the volume could not be unlocked and the online operation will fail.

6.  Once the disk is online in the storage pool, it can be added to a CSV by right clicking on the disk resource and choosing "**Add to cluster shared volumes**".
CSVs can include both encrypted and unencrypted volumes. To check the status of a particular volume for BitLocker encryption, administrators can utilize the manage-bde -status command with a path to the volume inside the CSV namespace as seen in the example command line below.

```powershell
manage-bde -status "C:\ClusterStorage\volume1"
```

### Physical Disk Resources

Unlike CSV2.0 volumes, physical disk resources can only be accessed by one cluster node at a time. This means that operations such as encrypting, decrypting, locking or unlocking volumes require context to perform. For example, you cannot unlock or decrypt a physical disk resource if you are not administering the cluster node that owns the disk resource because the disk resource is not available.

### Restrictions on BitLocker actions with cluster volumes

The following table contains information about both Physical Disk Resources (i.e. traditional failover cluster volumes) and Cluster Shared Volumes (CSV) and the actions that are allowed by BitLocker in each situation.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Action</strong></p></td>
<td align="left"><p><strong>On owner node of failover volume</strong></p></td>
<td align="left"><p><strong>On Metadata Server (MDS) of CSV</strong></p></td>
<td align="left"><p><strong>On (Data Server) DS of CSV</strong></p></td>
<td align="left"><p><strong>Maintenance Mode</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Manage-bde –on</strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Manage-bde –off</strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Manage-bde Pause/Resume</strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked<strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Manage-bde –lock</strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>manage-bde –wipe</strong></p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Unlock</strong></p></td>
<td align="left"><p>Automatic via cluster service</p></td>
<td align="left"><p>Automatic via cluster service</p></td>
<td align="left"><p>Automatic via cluster service</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>manage-bde –protector –add</strong></p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>manage-bde -protector -delete</strong></p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>manage-bde –autounlock</strong></p></td>
<td align="left"><p>Allowed (not recommended)</p></td>
<td align="left"><p>Allowed (not recommended)</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed (not recommended)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Manage-bde -upgrade</strong></p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Shrink</strong></p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Extend</strong></p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Allowed</p></td>
<td align="left"><p>Blocked</p></td>
<td align="left"><p>Allowed</p></td>
</tr>
</tbody>
</table>
 
&gt;</strong>Note:**  Although the manage-bde -pause command is Blocked in clusters, the cluster service will automatically resume a paused encryption or decryption from the MDS node
 
In the case where a physical disk resource experiences a failover event during conversion, the new owning node will detect the conversion is not complete and will complete the conversion process.

### Other considerations when using BitLocker on CSV2.0

Some other considerations to take into account for BitLocker on clustered storage include the following:
-   BitLocker volumes have to be initialized and beginning encryption before they are available to add to a CSV2.0 volume.
-   If an administrator needs to decrypt a CSV volume, remove the volume from the cluster or put into disk maintenance mode. You can add the CSV back to the cluster while waiting for decryption to complete.
-   If an administrator needs to start encrypting a CSV volume, remove the volume from the cluster or put it in maintenance mode.
-   If conversion is paused with encryption in progress and the CSV volume is offline from the cluster, the cluster thread (health check) will automatically resume conversion when the volume is online to the cluster.
-   If conversion is paused with encryption in progress and a physical disk resource volume is offline from the cluster, the BitLocker driver will automatically resume conversion when the volume is online to the cluster.
-   If conversion is paused with encryption in progress, while the CSV volume is in maintenance mode, the cluster thread (health check) will automatically resume conversion when moving the volume back from maintenance.
-   If conversion is paused with encryption in progress, while the disk resource volume is in maintenance mode, the BitLocker driver will automatically resume conversion when the volume is moved back from maintenance mode.
