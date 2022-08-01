---
title: Why a PIN is better than an online password (Windows)
description: Windows Hello in Windows 10 enables users to sign in to their device using a PIN. How is a PIN different from (and better than) an online password .
ms.prod: m365-security
author: GitPrakhar13
ms.author: prsriva
manager: dansimp
ms.collection:
  - M365-identity-device-management
  - highpri
ms.topic: article
ms.localizationpriority: medium
ms.date: 10/23/2017
---

# Why a PIN is better than an online password

**Applies to**

- Windows 10
- Windows 11

Windows Hello in Windows 10 enables users to sign in to their device using a PIN. How is a PIN different from (and better than) a local password?
On the surface, a PIN looks much like a password. A PIN can be a set of numbers, but enterprise policy might allow complex PINs that include special characters and letters, both upper-case and lower-case. Something like **t758A!** could be an account password or a complex Hello PIN. It isn't the structure of a PIN (length, complexity) that makes it better than an online password, it's how it works. First we need to distinguish between two types of passwords: `local` passwords are validated against the machine's password store, whereas `online` passwords are validated against a server. This article mostly covers the benefits a PIN has over an online password, and also why it can be considered even better than a local password. 

Watch Dana Huang explain why a Windows Hello for Business PIN is more secure than an online password.

> [!VIDEO https://www.youtube.com/embed/cC24rPBvdhA]

## PIN is tied to the device

One important difference between an online password and a Hello PIN is that the PIN is tied to the specific device on which it was set up. That PIN is useless to anyone without that specific hardware. Someone who steals your online password can sign in to your account from anywhere, but if they steal your PIN, they'd have to steal your physical device too!

Even you can't use that PIN anywhere except on that specific device. If you want to sign in on multiple devices, you have to set up Hello on each device.

## PIN is local to the device

An online password is transmitted to the server -- it can be intercepted in transmission or stolen from a server. A PIN is local to the device -- it isn't transmitted anywhere and it isn't stored on the server.
When the PIN is created, it establishes a trusted relationship with the identity provider and creates an asymmetric key pair that is used for authentication. When you enter your PIN, it unlocks the authentication key and uses the key to sign the request that is sent to the authenticating server.
However, note that even though local passwords are also local to the device, they are still less secure than a PIN, as described in the next section.

>[!NOTE]
>For details on how Hello uses asymetric key pairs for authentication, see [Windows Hello for Business](hello-overview.md#benefits-of-windows-hello).
 
## PIN is backed by hardware

The Hello PIN is backed by a Trusted Platform Module (TPM) chip, which is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. Many modern devices have TPM. Windows 10, on the other hand, has a defect of not linking local passwords to TPM. This is the reason why PINs are considered more secure than local passwords.

User key material is generated and available within the Trusted Platform Module (TPM) of the user device, which protects it from attackers who want to capture the key material and reuse it. Because Hello uses asymmetric key pairs, users credentials can't be stolen in cases where the identity provider or websites the user accesses have been compromised.

The TPM protects against a variety of known and potential attacks, including PIN brute-force attacks. After too many incorrect guesses, the device is locked.


## PIN can be complex

The Windows Hello for Business PIN is subject to the same set of IT management policies as a password, such as complexity, length, expiration, and history. Although we generally think of a PIN as a simple four-digit code, administrators can set [policies](hello-manage-in-organization.md) for managed devices to require a PIN complexity similar to a password. You can require or block: special characters, uppercase characters, lowercase characters, and digits.

## What if someone steals the laptop or phone?

To compromise a Windows Hello credential that TPM protects, an attacker must have access to the physical device, and then must find a way to spoof the user's biometrics or guess his or her PIN—and all of this must be done before [TPM anti-hammering](/windows/device-security/tpm/tpm-fundamentals#anti-hammering) protection locks the device.
You can provide additional protection for laptops that don't have TPM by enabling BitLocker and setting a policy to limit failed sign-ins.

### Configure BitLocker without TPM

1.  Use the Local Group Policy Editor (gpedit.msc) to enable the following policy:

    **Computer Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives > Require additional authentication at startup**
    
2.  In the policy option, select **Allow BitLocker without a compatible TPM**, and then click **OK.**
3.  Go to Control Panel > **System and Security > BitLocker Drive Encryption** and select the operating system drive to protect.

### Set account lockout threshold

1.  Use the Local Group Policy Editor (gpedit.msc) to enable the following policy:

    **Computer Configuration > Windows Settings > Security Settings > Account Policies > Account Lockout Policy > Account lockout threshold**
    
2.  Set the number of invalid logon attempts to allow, and then click OK.

## Why do you need a PIN to use biometrics?

Windows Hello enables biometric sign-in for Windows 10: fingerprint, iris, or facial recognition. When you set up Windows Hello, you're asked to create a PIN first. This PIN enables you to sign in using the PIN when you can't use your preferred biometric because of an injury or because the sensor is unavailable or not working properly.

If you only had a biometric sign-in configured and, for any reason, were unable to use that method to sign in, you would have to sign in using your account and password, which doesn't provide you the same level of protection as Hello.

## Explanation of GPO related to Interactive logon: Do not require CNTL+ALT+Delete 

There is a vulnerability explained in the below article it applicable to Pasword login. 

- [Interactive logon Do not require CTRL+ALT+DEL (Windows 10) - Windows security | Microsoft Docs ](https://docs.microsoft.com/windows/security/threat-protection/security-policy-settings/interactive-logon-do-not-require-ctrl-alt-del)
     
However, with WHFB setup this vulnerability no longer applicable due to WHFB credentials are not equal to Password as explained above in this article.   

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
