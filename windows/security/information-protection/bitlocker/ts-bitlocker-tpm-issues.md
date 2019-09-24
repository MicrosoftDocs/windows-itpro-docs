---
title: BitLocker and TPM known issues
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



# BitLocker and TPM--known issues

[Troubleshoot the TPM](https://docs.microsoft.com/en-us/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm)

<a id="list"></a>

- [](#scenario-1)
- [](#scenario-2)

## Scenario 1


### Symptom: The TPM is defending against dictionary attacks and is in a time-out period (specific to AAD)

Not able to acquire a PRT can lead to various issues

- Windows Hello for business not working
- Conditional access failing
- SSO not working.

On the client machine collect the output of DSREGCMD /STATUS, under User state or SSO State look for AzureAdPrt, if the Value is "NO" then the user did not get a PRT. One of the reason the PRT was not issued is the Device authentication failed. The device was not able to present it's certificate for some reason.

> Log Name: System  
> Source: Microsoft-Windows-TPM-WMI  
> Date: \<Date and Time\>  
> Event ID: 1026  
> Task Category: None  
> Level: Information  
> Keywords:  
> User: SYSTEM  
> Computer: \<Computer name\>  
> Description:  
> The Trusted Platform Module (TPM) hardware on this computer cannot be provisioned for use automatically.  To set up the TPM interactively use the TPM management console (Start-\>tpm.msc) and use the action to make the TPM ready.  
> Error: The TPM is defending against dictionary attacks and is in a time-out period.  
> Additional Information: 0x840000  
>  

#### Resolution

The above events are indicating the TPM is not ready or has some setting that is preventing from accessing the TPM keys.

Launch TPM.MSC and see if you get the option to unlock the TPM or reset the lockout. If not then the only option is to initialize the TPM. Before you do this,

1. Check the BIOS settings for TPM for any setting to reset the lockout or disable it.

1. Have the customer engage the hardware vendor on getting this fixed.

Initializing the TPM or clearing the TPM might break other applications like bitlocker. if customer is not using bitlocker or no other service depends on TPM the below steps can be followed to clear the TPM

To clear / reset the TPM:  

1. Open the Windows Defender Security Center app.

1. Click Device security.

1. Click Security processor details.

1. Click Security processor troubleshooting.

1. Click Clear TPM.

   You will be prompted to restart the computer. During the restart, you might be prompted by the UEFI to press a button to confirm that you wish to clear the TPM. After the PC restarts, your TPM will be automatically prepared for use by Windows 10.  


### EST/WIN8.1/ Unable to enable Bitlocker ,getting error msg "The TPM is defending against dictionary attacks and is in a time-out period." on Surface pro 3 named "{NAMEPII}-8744853".

Unable to enable Bitlocker ,getting error msg "The TPM is defending against dictionary attacks and is in a time-out period." on Surface pro 3 named "{NAMEPII}-8744853".

### Cause

TPM Lockout

### Resolution

open Powershell as Admin $Tpm = Get-WmiObject -class Win32\_Tpm -namespace "root\\CIMv2\\Security\\MicrosoftTpm" $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(22)} - Reboot - if prompted at boot screen agree with F12 - Try again to configure Bitlocker (we use some scripts, but the GUI is also ok J)

### PTSMEDEP\PRE\W8.1\unable to enable bitlocker with error The TPM is defending against dictionary attacks and is in a time-out period

[PTSMEDEP\PRE\W8.1\unable to enable bitlocker with error The TPM is defending against dictionary attacks and is in a time-out period.](https://internal.support.services.microsoft.com/en-us/help/4327939)

This Surface Pro 3 was shipped with Windows 10 and reimaged with Windows 8.1.  Bitlocker can not be enabled.
The TPM on this computer is currently locked out.

Classification Path: Routing Surface Pro\Software Issues (Windows 8.1)\BitLocker or device encryption

### Resolution

When we tried to Prepare the TPM using tpm.msc console of the Surface Pro 3, we received the error "The TPM is defending against dictionary attacks and is in a time-out period." We rebooted into BIOS, disabled TPM and when we booted into OS, the tpm.msc showed “Compatible Trusted Platform Module (TPM) cannot be found on this computer. verify that this computer has 1.2 TPM and its is turned on in the BIOS “ We then booted into BIOS, enabled the TPM and then we found that it required us to clear the existing TPM keys and rebooted. Now, we were able to successfully prepare the TPM and the TPM state was “ready for use”. Now, we started the encryption on OS drive with TPM protector and the encryption was successful.

## Scenario 2: Loading the management console failed. The device that is required by the cryptographic provider is not ready for use.

Reference: [https://internal.support.services.microsoft.com/en-us/help/4313961](https://internal.support.services.microsoft.com/en-us/help/4313961)

### Symptom

You are not able to view the TPM management console on your Windows 10 v1703 machine. Error message/code: Loading the management console failed. The device that is required by the cryptographic provider is not ready for use. HRESULT 0x800900300x80090030 - NTE\_DEVICE\_NOT\_READY The device that is required by this cryptographic provider is not ready for use.TPM Spec version: TPM v1.2Firmware type: {Namepii}OS: Windows 10 Enterprise v1703 Build 15063.540System Name: {NAMEPII}-5510System Model: {Namepii} Inc. Precision 5510

### Cause (suspected)

Hardware/firmware issues within TPM.

### Resolution

Recommended action plan: After consulting with the TPM feature team, We advised you to test this out on a different device of the same model. Apart from that we also suggested you to switch the TPM operation mode to Spec v1.2 to v2.0 and check if the issue continues to occur.Current status: As of now, you have reached out to {Namepii} to get the mainboard on the device replaced by 18th August. Post that you will be changing the operation mode of TPM to 2.0 to see if that resolves the problem. Since we don’t have any active troubleshooting plan we are closing this case temporarily for now and we will re-engage on 10 AM EST 26th Sept. to discuss this issue further. I will be sending you a meeting invite for the same.



## Scenario 3: Troubleshooting hybrid Azure Active Directory joined devices failure due to TPM

Reference: [https://docs.microsoft.com/en-us/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current](https://docs.microsoft.com/en-us/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current)

### Symptom: 

Get the device status to see if the device is Hybrid Joined or failed to Hybrid Join. Execute the command **DSREGCMD /STATUS **

If the device is Hybrid Joined the following will be set:

- **AzureAdJoined: YES**
- **DomainName: \<on-prem Domain name\>**

If AzureAdJoined is set to **NO** then the device is not Hybrid Azure AD Joined.

### Cause

Windows operating system is not the owner of the TPM

#### Error 1: NTE\_BAD\_KEYSET (0x80090016/-2146893802)  
 
- **Reason:** TPM operation failed or was invalid

- **Resolution:** Likely due to a bad sysprep image. Ensure the machine from which the sysprep image was created is not Azure AD joined, hybrid Azure AD joined, or Azure AD registered.

Reference: [https://internal.support.services.microsoft.com/en-us/help/4467030](https://internal.support.services.microsoft.com/en-us/help/4467030)

#### Error 2: TPM\_E\_PCP\_INTERNAL\_ERROR (0x80290407/-2144795641)

- **Reason:** Generic TPM error.

- **Resolution:** Disable TPM on devices with this error. Windows 10 version 1809 and higher automatically detects TPM failures and completes hybrid Azure AD join without using the TPM.

#### Error 3: TPM\_E\_NOTFIPS (0x80280036/-2144862154)

- **Reason:** TPM in FIPS mode not currently supported.

- **Resolution:** Disable TPM on devices with this error. Windows 1809 automatically detects TPM failures and completes hybrid Azure AD join without using the TPM.

#### Error 4: NTE\_AUTHENTICATION\_IGNORED (0x80090031/-2146893775)

- **Reason:** TPM locked out.

- **Resolution:** Transient error. Wait for the cooldown period. Join attempt after some time should succeed. More Information can be found in the article [TPM fundamentals](https://docs.microsoft.com/windows/security/information-protection/tpm/tpm-fundamentals#anti-hammering)

## Scenario 4: Failed to backup TPM Owner Authorization information to Active Directory Domain Services. Errorcode: 0x80070005


### Symptom: 
Unable to backup TPM Information to ADDS.

### Cause

Insufficient permissions for SELF on TPM Devices Container.

### Resolution  

1. Problem - LDAP trace between client and DC to find cause of ACCESS DENIED error 0x80070005 - 12/20/2016 12:52 AM

Errors seen in the LDAP traces : ldap\_modify call for CN=TestOU,CN=TPM Devices,DC=XYZ,DC=com which is failing with Insufficient Rights.

1. Run following command to identify the TPM Attributes :

Get-ADComputer -Filter {Name -like "TPMTest"} -Property 1. | Format-Table name,msTPM-TPMInformationForComputer TPMTest – Is the name of my test computer which has the attribute filled.

1. Provided proper permissions of SELF:

Reference: [https://internal.support.services.microsoft.com/en-us/help/4337282](https://internal.support.services.microsoft.com/en-us/help/4337282)

## Scenario 5: 0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled

Reference: [https://internal.support.services.microsoft.com/en-us/help/4319021](https://internal.support.services.microsoft.com/en-us/help/4319021)

Support Topic: Routing Windows V3\Group Policy\Managing BitLocker configuration through Group Policy

### Symptom: 

We have already run the adprep as mention when we did a upgrade to our domain a while ago.

We have GPO setup for storing the keys and tpm info as well.

Prepare the TPM gives error:

> 0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled



### Cause

Add-TPMSelfWriteACE.vbs {available?}

### Resolution

DC: Windows Server 2012 r2. The attributes include ms-TPM-OwnerInformation and msTPM-TpmInformationForComputer are present.

We noticed that he had not added the self-write permissions for the computer objects. So, we downloaded the script Add-TPMSelfWriteACE.vbs and modified the value of strPathToDomain to your domain.Post modification, ran Add-TPMSelfWriteACE.vbs and it ran successfully.We then discovered that the domain and forest functional level are still at 2008 R2 and we wanted to update them first Post updating the domain and forest functional level and setting the required permissions , he confirmed that he was able to successfully back up the TPM information to Active Directory without error : “0x80072030 There is no such object on the server when a policy to back up TPM information to active directory is enabled”.

- [Back up the TPM Recovery Information to AD DS](https://docs.microsoft.com/en-us/windows/security/information-protection/tpm/backup-tpm-recovery-information-to-ad-ds)
- [Prepare your organization for BitLocker: Planning and Policies](https://docs.microsoft.com/en-us/windows/security/information-protection/bitlocker/prepare-your-organization-for-bitlocker-planning-and-policies)
