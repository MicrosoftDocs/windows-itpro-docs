---
title: Evaluate Virtual Smart Card Security (Windows 10)
description: This topic for the IT professional describes security characteristics and considerations when deploying TPM virtual smart cards.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
---

# Evaluate Virtual Smart Card Security

Applies To: Windows 10, Windows Server 2016

This topic for the IT professional describes security characteristics and considerations when deploying TPM virtual smart cards.

## Virtual smart card non-exportability details

A crucial aspect of TPM virtual smart cards is their ability to securely store and use secret data, specifically that the secured data is non-exportable. Data can be accessed and used within the virtual smart card system, but it is meaningless outside of its intended environment. In TPM virtual smart cards, security is ensured with a secure key hierarchy, which includes several chains of encryption. This originates with the TPM storage root key, which is generated and stored within the TPM and never exposed outside the chip. The TPM key hierarchy is designed to allow encryption of user data with the storage root key, but it authorizes decryption with the user PIN in such a way that changing the PIN doesn’t require re-encryption of the data.

The following diagram illustrates the secure key hierarchy and the process of accessing the user key.

![Diagram of the process of accessing the user key](images/vsc-process-of-accessing-user-key.png)

The following keys are stored on the hard disk:

-   User key

-   Smart card key, which is encrypted by the storage root key

-   Authorization key for the user key decryption, which is encrypted by the public portion of the smart card key

When the user enters a PIN, the use of the decrypted smart card key is authorized with this PIN. If this authorization succeeds, the decrypted smart card key is used to decrypt the auth key. The auth key is then provided to the TPM to authorize the decryption and use of the user’s key that is stored on the virtual smart card.

The auth key is the only sensitive data that is used as plaintext outside the TPM, but its presence in memory is protected by Microsoft Data Protection API (DPAPI), such that before being stored in any way, it is encrypted. All data other than the auth key is processed only as plaintext within the TPM, which is completely isolated from external access.

## Virtual smart card anti-hammering details

The anti-hammering functionality of virtual smart cards relies on the anti-hammering functionality of the TPM that is enabling the virtual smart card. However, the TPM version 1.2 and subsequent specifications (as designed by the Trusted Computing Group) provide very flexible guidelines for responding to hammering. The spec requires only that the TPM implement protection against trial-and-error attacks on the user PIN, PUK, and challenge/response mechanism.

The Trusted Computing Group also specifies that if the response to attacks involves suspending proper function of the TPM for some period of time or until administrative action is taken, the TPM must prevent running the authorized TPM commands. The TPM can prevent running any TPM commands until the termination of the attack response. Beyond using a time delay or requiring administrative action, a TPM could also force a reboot when an attack is detected. The Trusted Computing Group allows manufacturers a level of creativity in their choice of implementation. Whatever methodology is chosen by TPM manufacturers determines the anti-hammering response of TPM virtual smart cards. Some typical aspects of protection from attacks include:

1.  Allow only a limited number of wrong PIN attempts before enabling a lockout that enforces a time delay before any further commands are accepted by the TPM.

    > **Note**&nbsp;&nbsp;Introduced in Windows Server 2012 R2 and Windows 8.1, if the user enters the wrong PIN five consecutive times for a virtual smart card (which works in conjunction with the TPM), the card is blocked. When the card is blocked, it has to be unblocked by using the administrative key or the PUK.

1.  Increase the time delay exponentially as the user enters the wrong PIN so that an excessive number of wrong PIN attempts quickly trigger long delays in accepting commands.

2.  Have a failure leakage mechanism to allow the TPM to reset the timed delays over a period of time. This is useful in cases where a valid user has entered the wrong PIN occasionally, for example, due to complexity of the PIN.

As an example, it will take 14 years to guess an 8-character PIN for a TPM that implements the following protection:

1.  Number of wrong PINs allowed before entering lockout (threshold): 9

2.  Time the TPM is in lockout after the threshold is reached: 10 seconds

3.  Timed delay doubles for each wrong PIN after the threshold is reached

## See also

[Understanding and Evaluating Virtual Smart Cards](virtual-smart-card-understanding-and-evaluating.md)
