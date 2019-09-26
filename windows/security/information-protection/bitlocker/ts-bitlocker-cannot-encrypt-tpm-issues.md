---
title: BitLocker cannot encrypt a drive  known TPM issues 
description: 
ms.reviewer: kaushika
ms.prod: w10
ms.sitesec: library
ms.localizationpriority: medium
author: Teresa-Motiv
ms.author: v-tea
manager: kaushika
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: troubleshooting
ms.date: 9/19/2019
---

# BitLocker cannot encrypt a drive&mdash;known TPM issues

The following list describes common issues that can involve the Trusted Platform Module (TPM) that prevent BitLocker from encrypting a drive, linked to guidance for addressing the issues.

> [!NOTE]
> If you have determined that your BitLocker issue does not involve the TPM, see [BitLocker cannot encrypt a drive--known issues](ts-bitlocker-cannot-encrypt-issues.md).

<a id="list"></a>

- [TPM is locked, message "The TPM is defending against dictionary attacks and is in a time-out period"](#scenario-1)
- [Cannot prepare the TPM, message "The TPM is defending against dictionary attacks and is in a time-out period"](#scenario-2)
- [Cannot prepare the TPM, error 0x80070005 "Insufficient Rights"](#scenario-3)
- [Cannot prepare the TPM, error 0x80072030 "There is no such object on the server"](#scenario-4)

## <a id="scenario-1"></a>TPM is locked, message "The TPM is defending against dictionary attacks and is in a time-out period"

Unable to enable BitLocker ,getting error msg "The TPM is defending against dictionary attacks and is in a time-out period."

### Cause

TPM Lockout

### Resolution

open Powershell as Admin $Tpm = Get-WmiObject -class Win32\_Tpm -namespace "root\\CIMv2\\Security\\MicrosoftTpm" $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(22)} - Reboot - if prompted at boot screen agree with F12 - Try again to configure BitLocker (we use some scripts, but the GUI is also ok J)

## <a id="scenario-2"></a>Cannot prepare the TPM, getting message "The TPM is defending against dictionary attacks and is in a time-out period"

[PTSMEDEP\PRE\W8.1\unable to enable bitlocker with error The TPM is defending against dictionary attacks and is in a time-out period.](https://internal.support.services.microsoft.com/help/4327939)

This Surface Pro 3 was shipped with Windows 10 and reimaged with Windows 8.1.  BitLocker can not be enabled.
The TPM on this computer is currently locked out.

Classification Path: Routing Surface Pro\Software Issues (Windows 8.1)\BitLocker or device encryption

### Resolution

When we tried to Prepare the TPM using tpm.msc console of the Surface Pro 3, we received the error "The TPM is defending against dictionary attacks and is in a time-out period." We rebooted into BIOS, disabled TPM and when we booted into OS, the tpm.msc showed “Compatible Trusted Platform Module (TPM) cannot be found on this computer. verify that this computer has 1.2 TPM and its is turned on in the BIOS “ We then booted into BIOS, enabled the TPM and then we found that it required us to clear the existing TPM keys and rebooted. Now, we were able to successfully prepare the TPM and the TPM state was “ready for use”. Now, we started the encryption on OS drive with TPM protector and the encryption was successful.

[Back to list](#list)

## <a id="scenario-3"></a>Cannot prepare the TPM, error 0x80070005 "Insufficient Rights"

Unable to backup TPM Information to ADDS.

### Cause

Insufficient permissions for SELF on TPM Devices Container.

### Resolution  

1. Problem - LDAP trace between client and DC to find cause of ACCESS DENIED error 0x80070005 - 12/20/2016 12:52 AM

Errors seen in the LDAP traces : ldap\_modify call for CN=TestOU,CN=TPM Devices,DC=XYZ,DC=com which is failing with Insufficient Rights.

1. Run following command to identify the TPM Attributes :

Get-ADComputer -Filter {Name -like "TPMTest"} -Property 1. | Format-Table name,msTPM-TPMInformationForComputer TPMTest – Is the name of my test computer which has the attribute filled.

1. Provided proper permissions of SELF:

Reference: [https://internal.support.services.microsoft.com/help/4337282](https://internal.support.services.microsoft.com/help/4337282)

[Back to list](#list)

## <a id="scenario-4"></a>Cannot prepare the TPM, Error 0x80072030 "There is no such object on the server"

Reference: [https://internal.support.services.microsoft.com/help/4319021](https://internal.support.services.microsoft.com/help/4319021)

Support Topic: Routing Windows V3\Group Policy\Managing BitLocker configuration through Group Policy

We have already run the adprep as mention when we did a upgrade to our domain a while ago.

We have GPO setup for storing the keys and tpm info as well.

Prepare the TPM gives error:

> 0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled

### Cause

Add-TPMSelfWriteACE.vbs {available?}

### Resolution

DC: Windows Server 2012 r2. The attributes include ms-TPM-OwnerInformation and msTPM-TpmInformationForComputer are present.

We noticed that he had not added the self-write permissions for the computer objects. So, we downloaded the script Add-TPMSelfWriteACE.vbs and modified the value of strPathToDomain to your domain.Post modification, ran Add-TPMSelfWriteACE.vbs and it ran successfully.We then discovered that the domain and forest functional level are still at 2008 R2 and we wanted to update them first Post updating the domain and forest functional level and setting the required permissions , he confirmed that he was able to successfully back up the TPM information to Active Directory without error : “0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled”.

- [Back up the TPM Recovery Information to AD DS](https://docs.microsoft.com/windows/security/information-protection/tpm/backup-tpm-recovery-information-to-ad-ds)
- [Prepare your organization for BitLocker: Planning and Policies](https://docs.microsoft.com/windows/security/information-protection/bitlocker/prepare-your-organization-for-bitlocker-planning-and-policies)


[Back to list](#list)
