---
title: BitLocker and Active Directory Domain Services (AD DS) FAQ (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.assetid: c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker and Active Directory Domain Services (AD DS) FAQ

**Applies to**
-   Windows 10


## What type of information is stored in AD DS?

Stored information | Description
-------------------|------------
Hash of the TPM owner password | Beginning with Windows 10, the password hash is not stored in AD DS by default. The password hash can be stored only if the TPM is owned and the ownership was taken by using components of Windows 8.1 or earlier, such as the BitLocker Setup Wizard or the TPM snap-in.
BitLocker recovery password | The recovery password allows you to unlock and access the drive in the event of a recovery incident. Domain administrators can view the BitLocker recovery password by using the BitLocker Recovery Password Viewer. For more information about this tool, see [BitLocker: Use BitLocker Recovery Password Viewer](bitlocker-use-bitlocker-recovery-password-viewer.md).
BitLocker key package | The key package helps to repair damage to the hard disk that would otherwise prevent standard recovery. Using the key package for recovery requires the BitLocker Repair Tool, Repair-bde. 

## What if BitLocker is enabled on a computer before the computer has joined the domain?

If BitLocker is enabled on a drive before Group Policy has been applied to enforce backup, the recovery information will not be automatically backed up to AD DS when the computer joins the domain or when Group Policy is subsequently applied. However, you can use the **Choose how BitLocker-protected operating system drives can be recovered**, **Choose how BitLocker-protected fixed drives can be recovered** and **Choose how BitLocker-protected removable drives can be recovered** Group Policy settings to require that the computer be connected to a domain before BitLocker can be enabled to help ensure that recovery information for BitLocker-protected drives in your organization is backed up to AD DS.

For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

The BitLocker Windows Management Instrumentation (WMI) interface does allow administrators to write a script to back up or synchronize an online client's existing recovery information; however, BitLocker does not automatically manage this process. The manage-bde command-line tool can also be used to manually back up recovery information to AD DS. For example, to back up all of the recovery information for the C: drive to AD DS, you would use the following command from an elevated command prompt: **manage-bde -protectors -adbackup C:**.

> [!IMPORTANT]  
> Joining a computer to the domain should be the first step for new computers within an organization. After computers are joined to a domain, storing the BitLocker recovery key to AD DS is automatic (when enabled in Group Policy).
 
## Is there an event log entry recorded on the client computer to indicate the success or failure of the Active Directory backup?

Yes, an event log entry that indicates the success or failure of an Active Directory backup is recorded on the client computer. However, even if an event log entry says "Success," the information could have been subsequently removed from AD DS, or BitLocker could have been reconfigured in such a way that the Active Directory information can no longer unlock the drive (such as by removing the recovery password key protector). In addition, it is also possible that the log entry could be spoofed.

Ultimately, determining whether a legitimate backup exists in AD DS requires querying AD DS with domain administrator credentials by using the BitLocker password viewer tool.

## If I change the BitLocker recovery password on my computer and store the new password in AD DS, will AD DS overwrite the old password?

No. By design, BitLocker recovery password entries do not get deleted from AD DS; therefore, you might see multiple passwords for each drive. To identify the latest password, check the date on the object.

## What happens if the backup initially fails? Will BitLocker retry the backup?

If the backup initially fails, such as when a domain controller is unreachable at the time when the BitLocker setup wizard is run, BitLocker does not try again to back up the recovery information to AD DS.

When an administrator selects the **Require BitLocker backup to AD DS** check box of the **Store BitLocker recovery information in Active Directory Domain Service (Windows 2008 and Windows Vista)** policy setting, or the equivalent **Do not enable BitLocker until recovery information is stored in AD DS for (operating system | fixed data | removable data) drives** check box in any of the **Choose how BitLocker-protected operating system drives can be recovered**, **Choose how BitLocker-protected fixed data drives can be recovered**, **Choose how BitLocker-protected removable data drives can be recovered** policy settings, this prevents users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. With these settings configured if the backup fails, BitLocker cannot be enabled, ensuring that administrators will be able to recover BitLocker-protected drives in the organization.

For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

When an administrator clears these check boxes, the administrator is allowing a drive to be BitLocker-protected without having the recovery information successfully backed up to AD DS; however, BitLocker will not automatically retry the backup if it fails. Instead, administrators can create a script for the backup, as described earlier in [What if BitLocker is enabled on a computer before the computer has joined the domain?](#what-if-bitlocker-is-enabled-on-a-computer-before-the-computer-has-joined-the-domain) to capture the information after connectivity is restored.

