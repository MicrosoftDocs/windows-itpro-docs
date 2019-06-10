---
title: BitLocker Key Management FAQ (Windows 10)
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

# BitLocker Key Management FAQ

**Applies to**
-   Windows 10

## How can I authenticate or unlock my removable data drive?

You can unlock removable data drives by using a password, a smart card, or you can configure a SID protector to unlock a drive by using your domain credentials. After you've started encryption, the drive can also be automatically unlocked on a specific computer for a specific user account. System administrators can configure which options are available for users, as well as password complexity and minimum length requirements. To unlock by using a SID protector, use Manage-bde:

<code>Manage-bde -protectors -add e: -sid <i>domain\username</i></code>

## What is the difference between a recovery password, recovery key, PIN, enhanced PIN, and startup key?

For tables that list and describe elements such as a recovery password, recovery key, and PIN, see [BitLocker key protectors](prepare-your-organization-for-bitlocker-planning-and-policies.md#bitlocker-key-protectors) and [BitLocker authentication methods](prepare-your-organization-for-bitlocker-planning-and-policies.md#bitlocker-authentication-methods). 

## How can the recovery password and recovery key be stored?

The recovery password and recovery key for an operating system drive or a fixed data drive can be saved to a folder, saved to one or more USB devices, saved to your Microsoft Account, or printed.

For removable data drives, the recovery password and recovery key can be saved to a folder, saved to your Microsoft Account, or printed. By default, you cannot store a recovery key for a removable drive on a removable drive.

A domain administrator can additionally configure Group Policy to automatically generate recovery passwords and store them in Active Directory Domain Services (AD DS) for any BitLocker-protected drive.

## Is it possible to add an additional method of authentication without decrypting the drive if I only have the TPM authentication method enabled?

You can use the Manage-bde.exe command-line tool to replace your TPM-only authentication mode with a multifactor authentication mode. For example, if BitLocker is enabled with TPM authentication only and you want to add PIN authentication, use the following commands from an elevated command prompt, replacing *4-20 digit numeric PIN* with the numeric PIN you want to use:

<code>manage-bde –protectors –delete %systemdrive% -type tpm</code>

<code>manage-bde –protectors –add %systemdrive% -tpmandpin <i>4-20 digit numeric PIN</i></code>


## When should an additional method of authentication be considered?

New hardware that meets [Windows Hardware Compatibility Program](https://docs.microsoft.com/windows-hardware/design/compatibility/) requirements make a PIN less critical as a mitigation, and having a TPM-only protector is likely sufficient when combined with policies like device lockout. For example, Surface Pro and Surface Book do not have external DMA ports to attack. 
For older hardware, where a PIN may be needed, it’s recommended to enable [enhanced PINs](bitlocker-group-policy-settings.md#bkmk-unlockpol2) that allow non-numeric characters such as letters and punctuation marks, and to set the PIN length based on your risk tolerance and the hardware anti-hammering capabilities available to the TPMs in your computers. 

## If I lose my recovery information, will the BitLocker-protected data be unrecoverable?

BitLocker is designed to make the encrypted drive unrecoverable without the required authentication. When in recovery mode, the user needs the recovery password or recovery key to unlock the encrypted drive.

> [!IMPORTANT]
> Store the recovery information in AD DS, along with your Microsoft Account, or another safe location.
 
## Can the USB flash drive that is used as the startup key also be used to store the recovery key?

While this is technically possible, it is not a best practice to use one USB flash drive to store both keys. If the USB flash drive that contains your startup key is lost or stolen, you also lose access to your recovery key. In addition, inserting this key would cause your computer to automatically boot from the recovery key even if TPM-measured files have changed, which circumvents the TPM's system integrity check.

## Can I save the startup key on multiple USB flash drives?

Yes, you can save a computer's startup key on multiple USB flash drives. Right-clicking a BitLocker-protected drive and selecting **Manage BitLocker** will provide you the options to duplicate the recovery keys as needed.

## Can I save multiple (different) startup keys on the same USB flash drive?

Yes, you can save BitLocker startup keys for different computers on the same USB flash drive.

## Can I generate multiple (different) startup keys for the same computer?

You can generate different startup keys for the same computer through scripting. However, for computers that have a TPM, creating different startup keys prevents BitLocker from using the TPM's system integrity check.

## Can I generate multiple PIN combinations?

You cannot generate multiple PIN combinations.

## What encryption keys are used in BitLocker? How do they work together?

Raw data is encrypted with the full volume encryption key, which is then encrypted with the volume master key. The volume master key is in turn encrypted by one of several possible methods depending on your authentication (that is, key protectors or TPM) and recovery scenarios.

## Where are the encryption keys stored?

The full volume encryption key is encrypted by the volume master key and stored in the encrypted drive. The volume master key is encrypted by the appropriate key protector and stored in the encrypted drive. If BitLocker has been suspended, the clear key that is used to encrypt the volume master key is also stored in the encrypted drive, along with the encrypted volume master key.

This storage process ensures that the volume master key is never stored unencrypted and is protected unless you disable BitLocker. The keys are also saved to two additional locations on the drive for redundancy. The keys can be read and processed by the boot manager.

## Why do I have to use the function keys to enter the PIN or the 48-character recovery password?

The F1 through F10 keys are universally mapped scan codes available in the pre-boot environment on all computers and in all languages. The numeric keys 0 through 9 are not usable in the pre-boot environment on all keyboards.

When using an enhanced PIN, users should run the optional system check during the BitLocker setup process to ensure that the PIN can be entered correctly in the pre-boot environment.

## How does BitLocker help prevent an attacker from discovering the PIN that unlocks my operating system drive?

It is possible that a personal identification number (PIN) can be discovered by an attacker performing a brute force attack. A brute force attack occurs when an attacker uses an automated tool to try different PIN combinations until the correct one is discovered. For BitLocker-protected computers, this type of attack, also known as a dictionary attack, requires that the attacker have physical access to the computer.

The TPM has the built-in ability to detect and react to these types of attacks. Because different manufacturers' TPMs may support different PIN and attack mitigations, contact your TPM's manufacturer to determine how your computer's TPM mitigates PIN brute force attacks.
After you have determined your TPM's manufacturer, contact the manufacturer to gather the TPM's vendor-specific information. Most manufacturers use the PIN authentication failure count to exponentially increase lockout time to the PIN interface. However, each manufacturer has different policies regarding when and how the failure counter is decreased or reset.

## How can I determine the manufacturer of my TPM?

You can determine your TPM manufacturer in **Windows Defender Security Center** > **Device Security** > **Security processor details**.

## How can I evaluate a TPM's dictionary attack mitigation mechanism?

The following questions can assist you when asking a TPM manufacturer about the design of a dictionary attack mitigation mechanism:

-   How many failed authorization attempts can occur before lockout?
-   What is the algorithm for determining the duration of a lockout based on the number of failed attempts and any other relevant parameters?
-   What actions can cause the failure count and lockout duration to be decreased or reset?

## Can PIN length and complexity be managed with Group Policy?

Yes and No. You can configure the minimum personal identification number (PIN) length by using the **Configure minimum PIN length for startup** Group Policy setting and allow the use of alphanumeric PINs by enabling the **Allow enhanced PINs for startup** Group Policy setting. However, you cannot require PIN complexity by Group Policy.

For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

