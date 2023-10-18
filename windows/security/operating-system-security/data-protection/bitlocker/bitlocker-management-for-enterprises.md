---
title: BitLocker management
description: Refer to relevant documentation, products, and services to learn about managing BitLocker and see recommendations for different computers.
ms.topic: conceptual
ms.date: 11/08/2022
---

# BitLocker management

The ideal solution for BitLocker management is to eliminate the need for IT administrators to set management policies using tools or other mechanisms by having Windows perform tasks that are more practical to automate. This vision leverages modern hardware developments. The growth of TPM 2.0, secure boot, and other hardware improvements, for example, have helped to alleviate the support burden on help desks and a decrease in support-call volumes, yielding improved user satisfaction. Windows continues to be the focus for new features and improvements for built-in encryption management, such as automatically enabling encryption on devices that support Modern Standby beginning with Windows 8.1.

Though much Windows [BitLocker documentation](index.md) has been published, customers frequently ask for recommendations and pointers to specific, task-oriented documentation that is both easy to digest and focused on how to deploy and manage BitLocker. This article links to relevant documentation, products, and services to help answer this and other related frequently asked questions, and also provides BitLocker recommendations for different types of computers.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-management.md)]

## Managing domain-joined computers and moving to cloud  

Companies that image their own computers using Configuration Manager can use an existing task sequence to [pre-provision BitLocker](/configmgr/osd/understand/task-sequence-steps#BKMK_PreProvisionBitLocker) encryption while in Windows Preinstallation Environment (WinPE) and can then [enable protection](/configmgr/osd/understand/task-sequence-steps#BKMK_EnableBitLocker). These steps during an operating system deployment can help ensure that computers are encrypted from the start, even before users receive them. As part of the imaging process, a company could also decide to use Configuration Manager to pre-set any desired [BitLocker Group Policy](bitlocker-group-policy-settings.md).

Enterprises can use [Microsoft BitLocker Administration and Monitoring (MBAM)](/microsoft-desktop-optimization-pack/mbam-v25/) to manage client computers with BitLocker that are domain-joined on-premises until [mainstream support ends in July 2019](/lifecycle/products/?alpha=Microsoft%20BitLocker%20Administration%20and%20Monitoring%202.5%20Service%20Pack%201%2F) or they can receive extended support until April 2026. Thus, over the next few years, a good strategy for enterprises will be to plan and move to cloud-based management for BitLocker. Refer to the [PowerShell examples](#powershell-examples) to see how to store recovery keys in Microsoft Entra ID.

> [!IMPORTANT]
> Microsoft BitLocker Administration and Monitoring (MBAM) capabilities are offered through Configuration Manager BitLocker Management. See [Plan for BitLocker management](/mem/configmgr/protect/plan-design/bitlocker-management) in the Configuration Manager documentation for additional information.

<a name='managing-devices-joined-to-azure-active-directory'></a>

## Managing devices joined to Microsoft Entra ID

Devices joined to Microsoft Entra ID are managed using Mobile Device Management (MDM) policy from an MDM solution such as Microsoft Intune. Prior to Windows 10, version 1809, only local administrators can enable BitLocker via Intune policy. Starting with Windows 10, version 1809, Intune can enable BitLocker for standard users. [BitLocker Device Encryption](bitlocker-device-encryption-overview-windows-10.md#bitlocker-device-encryption) status can be queried from managed machines via the [Policy Configuration Settings Provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider/), which reports on whether BitLocker Device Encryption is enabled on the device. Compliance with BitLocker Device Encryption policy can be a requirement for [Conditional Access](https://www.microsoft.com/cloud-platform/conditional-access/) to services like Exchange Online and SharePoint Online.

Starting with Windows 10 version 1703, the enablement of BitLocker can be triggered over MDM either by the [Policy CSP](/windows/client-management/mdm/policy-configuration-service-provider/) or the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp/). The BitLocker CSP adds policy options that go beyond ensuring that encryption has occurred, and is available on computers that run Windows 11, Windows 10, and on Windows phones.

For hardware that is compliant with Modern Standby and HSTI, when using either of these features, [BitLocker Device Encryption](bitlocker-device-encryption-overview-windows-10.md#bitlocker-device-encryption) is automatically turned on whenever the user joins a device to Microsoft Entra ID. Microsoft Entra ID provides a portal where recovery keys are also backed up, so users can retrieve their own recovery key for self-service, if necessary. For older devices that aren't yet encrypted, beginning with Windows 10 version 1703, admins can use the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp/) to trigger encryption and store the recovery key in Microsoft Entra ID. This process and feature is applicable to Azure Hybrid AD as well.

## Managing workplace-joined PCs and phones

For Windows PCs and Windows Phones that are enrolled using **Connect to work or school account**, BitLocker Device Encryption is managed over MDM, the same as devices joined to Microsoft Entra ID.

## Managing servers

Servers are often installed, configured, and deployed using PowerShell; therefore, the recommendation is to also use [PowerShell to enable BitLocker on a server](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md#bitlocker-cmdlets-for-windows-powershell), ideally as part of the initial setup. BitLocker is an Optional Component (OC) in Windows Server; therefore, follow the directions in [BitLocker: How to deploy on Windows Server 2012 and later](bitlocker-how-to-deploy-on-windows-server.md) to add the BitLocker OC.

The Minimal Server Interface is a prerequisite for some of the BitLocker administration tools. On a [Server Core](/windows-server/get-started/getting-started-with-server-core/) installation, the necessary GUI components must be added first. The steps to add shell components to Server Core are described in [Using Features on Demand with Updated Systems and Patched Images](/archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images) and [How to update local source media to add roles and features](/archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features).  

If a server is being installed manually, such as a stand-alone server, then choosing [Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience/) is the easiest path because it avoids performing the steps to add a GUI to Server Core.

 Additionally, lights-out data centers can take advantage of the enhanced security of a second factor while avoiding the need for user intervention during reboots by optionally using a combination of BitLocker (TPM+PIN) and BitLocker Network Unlock. BitLocker Network Unlock brings together the best of hardware protection, location dependence, and automatic unlock, while in the trusted location. For the configuration steps, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).
 For more information, see the BitLocker FAQs article and other useful links in [Related Articles](#related-articles).

## PowerShell examples

For Microsoft Entra joined computers, including virtual machines, the recovery password should be stored in Microsoft Entra ID.  

**Example**: *Use PowerShell to add a recovery password and back it up to Microsoft Entra ID before enabling BitLocker*

```powershell
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"

BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
```

For domain-joined computers, including servers, the recovery password should be stored in Active Directory Domain Services (AD DS).

**Example**: *Use PowerShell to add a recovery password and back it up to AD DS before enabling BitLocker*

```powershell
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"

Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
```

PowerShell can then be used to enable BitLocker:

**Example**: *Use PowerShell to enable BitLocker with a TPM protector*

```powershell
Enable-BitLocker -MountPoint "D:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -TpmProtector 
```

**Example**: *Use PowerShell to enable BitLocker with a TPM+PIN protector, in this case with a PIN set to 123456*

```powershell
$SecureString = ConvertTo-SecureString "123456" -AsPlainText -Force

Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -Pin $SecureString -TPMandPinProtector
```

## Related Articles

- [BitLocker: FAQs](faq.yml)
- [Microsoft BitLocker Administration and Management (MBAM)](/microsoft-desktop-optimization-pack/mbam-v25/)
- [Overview of BitLocker Device Encryption in Windows](bitlocker-device-encryption-overview-windows-10.md#bitlocker-device-encryption)
- [BitLocker Group Policy Reference](bitlocker-group-policy-settings.md)
- [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune/)
*(Overview)*
- [Configuration Settings Providers](/windows/client-management/mdm/policy-configuration-service-provider)
*(Policy CSP: See [Security-RequireDeviceEncryption](/windows/client-management/mdm/policy-csp-security#security-policies))*
- [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp/)

### Windows Server setup tools

- [Windows Server Installation Options](/windows-server/get-started-19/install-upgrade-migrate-19/)
- [How to update local source media to add roles and features](/archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features)
- [How to add or remove optional components on Server Core](/archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images) *(Features on Demand)*
- [How to deploy BitLocker on Windows Server](bitlocker-how-to-deploy-on-windows-server.md)  
- [How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md)
- [Shielded VMs and Guarded Fabric](https://blogs.technet.microsoft.com/windowsserver/2016/05/10/a-closer-look-at-shielded-vms-in-windows-server-2016/)

### PowerShell

- [BitLocker cmdlets for Windows PowerShell](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md#bitlocker-cmdlets-for-windows-powershell)
