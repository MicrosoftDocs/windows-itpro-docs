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
ms.topic: troubleshooting
ms.date: 9/19/2019
---

# BitLocker and TPM&mdash;known issues

[Troubleshoot the TPM](https://docs.microsoft.com/windows/security/information-protection/tpm/initialize-and-configure-ownership-of-the-tpm)

<a id="list"></a>

- [Azure AD: Windows Hello for Business and single sign-on do not work](#scenario-1)
- [Loading the management console failed. The device that is required by the cryptographic provider is not ready for use](#scenario-2)
- [Azure AD-joined devices fail because of a TPM issue](#scenario-3)

## <a id="scenario-1"></a>Azure AD: Windows Hello for Business and single sign-on do not work

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

[Back to list](#list)

## <a id="scenario-2"></a>Loading the management console failed. The device that is required by the cryptographic provider is not ready for use

Reference: [https://internal.support.services.microsoft.com/help/4313961](https://internal.support.services.microsoft.com/help/4313961)

### Symptom

You are not able to view the TPM management console on your Windows 10 v1703 machine. Error message/code: Loading the management console failed. The device that is required by the cryptographic provider is not ready for use. HRESULT 0x800900300x80090030 - NTE\_DEVICE\_NOT\_READY The device that is required by this cryptographic provider is not ready for use.TPM Spec version: TPM v1.2Firmware type: {Namepii}OS: Windows 10 Enterprise v1703 Build 15063.540System Name: {NAMEPII}-5510System Model: {Namepii} Inc. Precision 5510

### Cause (suspected)

Hardware/firmware issues within TPM.

### Resolution

Recommended action plan: After consulting with the TPM feature team, We advised you to test this out on a different device of the same model. Apart from that we also suggested you to switch the TPM operation mode to Spec v1.2 to v2.0 and check if the issue continues to occur.Current status: As of now, you have reached out to {Namepii} to get the mainboard on the device replaced by 18th August. Post that you will be changing the operation mode of TPM to 2.0 to see if that resolves the problem. Since we don’t have any active troubleshooting plan we are closing this case temporarily for now and we will re-engage on 10 AM EST 26th Sept. to discuss this issue further. I will be sending you a meeting invite for the same.

## <a id="scenario-3"></a>Azure AD-joined devices fail because of a TPM issue

Reference: [https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current](https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-hybrid-join-windows-current)

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

Reference: [https://internal.support.services.microsoft.com/help/4467030](https://internal.support.services.microsoft.com/help/4467030)

#### Error 2: TPM\_E\_PCP\_INTERNAL\_ERROR (0x80290407/-2144795641)

- **Reason:** Generic TPM error.

- **Resolution:** Disable TPM on devices with this error. Windows 10 version 1809 and higher automatically detects TPM failures and completes hybrid Azure AD join without using the TPM.

#### Error 3: TPM\_E\_NOTFIPS (0x80280036/-2144862154)

- **Reason:** TPM in FIPS mode not currently supported.

- **Resolution:** Disable TPM on devices with this error. Windows 1809 automatically detects TPM failures and completes hybrid Azure AD join without using the TPM.

#### Error 4: NTE\_AUTHENTICATION\_IGNORED (0x80090031/-2146893775)

- **Reason:** TPM locked out.

- **Resolution:** Transient error. Wait for the cooldown period. Join attempt after some time should succeed. More Information can be found in the article [TPM fundamentals](https://docs.microsoft.com/windows/security/information-protection/tpm/tpm-fundamentals#anti-hammering)

[Back to list](#list)
