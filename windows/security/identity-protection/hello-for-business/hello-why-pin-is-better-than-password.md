---
title: Why a PIN is better than an online password
description: Windows Hello enables users to sign in to their devices using a PIN. Learn how is a PIN different from (and better than) an online password.
ms.date: 03/15/2023
ms.topic: concept-article
---
# Why a PIN is better than an online password

Windows Hello enables users to sign in to their device using a PIN. How is a PIN different from (and better than) a local password?
On the surface, a PIN looks much like a password. A PIN can be a set of numbers, but enterprise policy might enforce complex PINs that include special characters and letters, both upper-case and lower-case. Something like **t758A!** could be an account password or a complex Hello PIN. It isn't the structure of a PIN (length, complexity) that makes it better than an online password, it's how it works. First, we need to distinguish between two types of passwords: *local passwords* are validated against the machine's password store, whereas *online passwords* are validated against a server. This article mostly covers the benefits a PIN has over an online password, and also why it can be considered even better than a local password.

Watch Dana Huang explain why a Windows Hello for Business PIN is more secure than an online password.

> [!VIDEO https://www.youtube.com/embed/cC24rPBvdhA]

## A PIN is tied to the device

One important difference between an online password and a Hello PIN is that the PIN is tied to the specific device on which it was set up. That PIN is useless to anyone without that specific hardware. Someone who obtains your online password can sign in to your account from anywhere, but if they obtain your PIN, they'd have to access your device too.

The PIN can't be used anywhere except on that specific device. If you want to sign in on multiple devices, you have to set up Hello on each device.

## PIN is local to the device

An online password is transmitted to the server. The password can be intercepted in transmission or obtained from a server. A PIN is local to the device, never transmitted anywhere, and it isn't stored on the server.
When the PIN is created, it establishes a trusted relationship with the identity provider and creates an asymmetric key pair that is used for authentication. When you enter your PIN, you unlock the authentication key, which is used to sign the request that is sent to the authenticating server.
Even though local passwords are local to the device, they're less secure than a PIN, as described in the next section.

>[!NOTE]
>For details on how Hello uses asymmetric key pairs for authentication, see [Windows Hello for Business](index.md#benefits-of-windows-hello).

## PIN is backed by hardware

The Hello PIN is backed by a Trusted Platform Module (TPM) chip, which is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. Windows doesn't link local passwords to TPM, therefore PINs are considered more secure than local passwords.

User key material is generated and available within the TPM of the device. The TPM protects the key material from attackers who want to capture and reuse it. Since Hello uses asymmetric key pairs, users credentials can't be stolen in cases where the identity provider or websites the user accesses have been compromised.

The TPM protects against various known and potential attacks, including PIN brute-force attacks. After too many incorrect guesses, the device is locked.

## PIN can be complex

The Windows Hello for Business PIN is subject to the same set of IT management policies as a password, such as complexity, length, expiration, and history. Although we generally think of a PIN as a simple four-digit code, administrators can set [policies](hello-manage-in-organization.md) for managed devices to require a PIN complexity similar to a password. You can require or block: special characters, uppercase characters, lowercase characters, and digits.

## What if someone steals the device?

To compromise a Windows Hello credential that TPM protects, an attacker must have access to the physical device. Then, the attacker must find a way to spoof the user's biometrics or guess the PIN. All these actions must be done before [TPM anti-hammering](/windows/device-security/tpm/tpm-fundamentals#anti-hammering) protection locks the device.
You can provide more protection for laptops that don't have TPM by enabling BitLocker and setting a policy to limit failed sign-ins.

### Configure BitLocker without TPM

To enable BitLocker without TPM, follow these steps:

1. Open the Local Group Policy Editor (gpedit.msc) and enable the policy: **Computer Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives > Require additional authentication at startup**
1. In the policy option, select **Allow BitLocker without a compatible TPM > OK**
1. On the device, open **Control Panel > System and Security > BitLocker Drive Encryption**
1. Select the operating system drive to protect

### Set account lockout threshold

To configure account lockout threshold, follow these steps:

1. Open the Local Group Policy Editor (gpedit.msc) and enable the policy: **Computer Configuration > Windows Settings > Security Settings > Account Policies > Account Lockout Policy > Account lockout threshold**
1. Set the number of invalid logon attempts to allow, and then select OK

## Why do you need a PIN to use biometrics?

Windows Hello enables biometric sign-in for Windows: fingerprint, iris, or facial recognition. When you set up Windows Hello, you're asked to create a PIN after the biometric setup. The PIN enables you to sign in when you can't use your preferred biometric because of an injury or because the sensor is unavailable or not working properly.

If you only had a biometric sign-in configured and, for any reason, were unable to use that method to sign in, you would have to sign in using your account and password, which doesn't provide you with the same level of protection as Hello.
