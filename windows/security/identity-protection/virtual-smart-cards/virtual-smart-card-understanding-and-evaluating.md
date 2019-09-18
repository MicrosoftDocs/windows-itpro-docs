---
title: Understanding and Evaluating Virtual Smart Cards (Windows 10)
description: This topic for IT professional provides information about how smart card technology can fit into your authentication design, and provides links to additional topics about virtual smart cards.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
ms.reviewer: 
---

# Understanding and Evaluating Virtual Smart Cards

Applies To: Windows 10, Windows Server 2016

This topic for the IT professional describes the virtual smart card technology that was developed by Microsoft; suggests how it can fit into your authentication design; and provides links to additional resources that you can use to design, deploy, and troubleshoot virtual smart cards.

Virtual smart card technology uses cryptographic keys that are stored on computers that have the Trusted Platform Module (TPM) installed. Virtual smart cards offer comparable security benefits to conventional smart cards by using two-factor authentication. The technology also offers more convenience for users and has a lower cost to deploy. By utilizing TPM devices that provide the same cryptographic capabilities as conventional smart cards, virtual smart cards accomplish the three key properties that are desired for smart cards: non-exportability, isolated cryptography, and anti-hammering.

Virtual smart cards are functionally similar to physical smart cards. They appear as always-inserted smart cards, and they can be used for authentication to external resources, protection of data by secure encryption, and integrity through reliable signing. Because TPM-enabled hardware is readily available and virtual smart cards can be easily deployed by using existing certificate enrollment methods, virtual smart cards can become a full replacement for other methods of strong authentication in a corporate setting of any scale.

This topic contains the following sections:

-   [Comparing virtual smart cards with physical smart cards](#comparing-virtual-smart-cards-with-physical-smart-cards):
    Compares properties, functional aspects, security, and cost.

-   [Authentication design options](#authentication-design-options):
    Describes how passwords, smart cards, and virtual smart cards can be used to reach authentication goals in your organization.

-   [See also](#see-also):
    Links to other topics that can help you design, deploy, and troubleshoot virtual smart cards.

## Comparing virtual smart cards with physical smart cards

Virtual smart cards function much like physical smart cards, but they differ in that they protect private keys by using the TPM of the computer instead of smart card media.

A virtual smart card appears to applications as a conventional smart card. Private keys in the virtual smart card are protected, not by isolation of physical memory, but by the cryptographic capabilities of the TPM. All sensitive information is encrypted by using the TPM and then stored on the hard drive in its encrypted form.

All cryptographic operations occur in the secure, isolated environment of the TPM, and the unencrypted private keys are never used outside this environment. So like physical smart cards, virtual smart cards remain secure from any malware on the host. Additionally, if the hard drive is compromised in some way, a malicious user will not be able to access keys that are stored in the virtual smart card because they are securely encrypted by using the TPM. Keys can also be protected by BitLocker Drive Encryption.

Virtual smart cards maintain the three key properties of physical smart cards:

-   **Non-exportability**: Because all private information on the virtual smart card is encrypted by using the TPM on the host computer, it cannot be used on a different computer with a different TPM. Additionally, TPMs are designed to be tamper-resistant and non-exportable, so a malicious user cannot reverse engineer an identical TPM or install the same TPM on a different computer.
    For more information, see [Evaluate Virtual Smart Card Security](virtual-smart-card-evaluate-security.md).

-   **Isolated cryptography**: TPMs provide the same properties of isolated cryptography that are offered by physical smart cards, and this is utilized by virtual smart cards. Unencrypted copies of private keys are loaded only within the TPM and never into memory that is accessible by the operating system. All cryptographic operations with these private keys occur inside the TPM.

-   **Anti-hammering**: If a user enters a PIN incorrectly, the virtual smart card responds by using the anti-hammering logic of the TPM, which rejects further attempts for a period of time instead of blocking the card. This is also known as lockout.
    For more information, see [Evaluate Virtual Smart Card Security](virtual-smart-card-evaluate-security.md).

The following subsections compare the functionality, security, and cost of virtual smart cards and physical smart cards.

**Functionality**

The virtual smart card system that was designed by Microsoft closely mimics the functionality of conventional smart cards. The most striking difference to the end user is that the virtual smart card is essentially a smart card that is always inserted into the computer. There is no method to export the user’s virtual smart card for use on other computers, which adds to the security of virtual smart cards. If a user requires access to network resources on multiple computers, multiple virtual smart cards can be issued for that user. Additionally, a computer that is shared among multiple users can host multiple virtual smart cards for different users.

The basic user experience for a virtual smart card is as simple as using a password to access a network. Because the smart card is loaded by default, the user must simply enter the PIN that is tied to the card to gain access. Users are no longer required to carry cards and readers or to take physical action to use the card.

Additionally, although the anti-hammering functionality of the virtual smart card is equally secure to that of a physical smart card, virtual smart card users are never required to contact an administrator to unblock the card. Instead, they simply wait a period of time (depending on the TPM specifications) before they reattempt to enter the PIN. Alternatively, the administrator can reset the lockout by providing owner authentication data to the TPM on the host computer.

**Security**

Physical smart cards and virtual smart cards offer comparable levels of security. They both implement two-factor authentication for using network resources. However, they differ in certain aspects, including physical security and the practicality of an attack. Due to their compact and portable design, conventional smart cards are most frequently kept close to their intended user. They offer little opportunity for acquisition by a potential adversary, so any sort of interaction with the card is difficult without committing some variety of theft.

TPM virtual smart cards, however, reside on a user’s computer that may frequently be left unattended, which provides an opportunity for a malicious user to hammer the TPM. Although virtual smart cards are fully protected from hammering (as are physical smart cards), this accessibility makes the logistics of an attack somewhat simpler. Additionally, the anti-hammering behavior of a TPM smart card differs in that it only presents a time delay in response to repeated PIN failures, as opposed to fully blocking the user.

However, there are several advantages provided by virtual smart cards to mitigate these slight security deficits. Most importantly, a virtual smart card is much less likely to be lost. Virtual smart cards are integrated into computers and devices that the user already owns for other purposes and has incentive to keep safe. If the computer or device that hosts the virtual smart card is lost or stolen, a user will more immediately notice its loss than the loss of a physical smart card. When a computer or device is identified as lost, the user can notify the administrator of the system, who can revoke the certificate that is associated with the virtual smart card on that device. This precludes any future unauthorized access on that computer or device if the PIN for the virtual smart card is compromised.

**Cost**

If a company wants to deploy physical smart cards, they need to purchase smart cards and smart card readers for all employees. Although relatively inexpensive options can be found, options that ensure the three key properties of smart card security (most notably, non-exportability) are more expensive. If employees have computers with a built-in TPM, virtual smart cards can be deployed with no additional material costs. These computers and devices are relatively common in the market.

Additionally, the maintenance cost of virtual smart cards is less than that for physical smart cards, which are easily lost, stolen, or broken from normal wear. TPM virtual smart cards are only lost or broken if the host computer or device is lost or broken, which in most cases is much less frequently.

**Comparison summary**

| Physical Smart Cards                        | TPM virtual smart cards           |
|---------------------|-------------------|
| Protects private keys by using the built-in cryptographic functionality of the card.                        | Protects private keys by using the cryptographic functionality of the TPM.     |
| Stores private keys in isolated non-volatile memory on the card, which means that access to private keys is only from the card, and access is never allowed to the operating system.                                          | Stores encrypted private keys on the hard drive. The encryption ensures that these keys can only be decrypted and used in the TPM, not in the accessible memory of the operating system.         |
| Guarantees non-exportability through the card manufacturer, which includes isolating private information from operating system access.                             | Guarantees non-exportability through the TPM manufacturer, which includes the inability of an adversary to replicate or remove the TPM.        |
| Performs and isolates cryptographic operations within the built-in capabilities of the card.                | Performs and isolates cryptographic operations in the TPM of the user’s computer or device.                                           |
| Provides anti-hammering through the card. After a certain number of failed PIN entry attempts, the card blocks further access until administrative action is taken.         | Provides anti-hammering through the TPM. Successive failed attempts increase the device lockout time (the time the user has to wait before trying again). This can be reset by an administrator. |
| Requires that users carry their smart card and smart card reader with them to access network resources.     | Allows users to access their TPM-enabled computers or devices, and potentially access the network, without additional equipment.      |
| Enables credential portability by inserting the smart card into smart card readers that are attached to other computers.                                           | Prevents exporting credentials from a given computer or device. However, virtual smart cards can be issued for the same user on multiple computers or devices by using additional certificates.  |
| Enables multiple users to access network resources through the same computer by inserting their personal smart cards.      | Enables multiple users to access network resources through the same computer or device by issuing a virtual smart card for each user on that computer or device.                                 |
| Requires the user to carry the card, making it more difficult for an attacker to access the device and launch a hammering attempt.                                 | Stores virtual smart card on the user’s computer, which may be left unattended and allow a greater risk window for hammering attempts.         |
| Provides a generally single-purpose device that is carried explicitly for the purpose of authentication. The smart card can be easily misplaced or forgotten.      | Installs the virtual smart card on a device that has other purposes for the user, so the user has greater incentive to be responsible for the computer or device.                                |
| Alerts users that their card is lost or stolen only when they need to sign in and notice it is missing.     | Installs the virtual smart card on a device that the user likely needs for other purposes, so users will notice its loss much more quickly. This reduces the associated risk window.             |
| Requires companies to invest in smart cards and smart card readers for all employees.                       | Requires that companies ensure all employees have TPM-enabled computers, which are relatively common.                                 |
| Enables using a smart card removal policy to affect system behavior when the smart card is removed. For example, the policy can dictate if the user’s sign-in session is locked or terminated when the user removes the card. | Eliminates the necessity for a smart card removal policy because a TPM virtual smart card is always present and cannot be removed from the computer.     |

## Authentication design options

The following section presents several commonly used options and their respective strengths and weaknesses, which organizations can consider for authentication.

**Passwords**

A password is a secret string of characters that is tied to the identification credentials for a user’s account. This establishes the user’s identity. Although passwords are the most commonly used form of authentication, they are also the weakest. In a system where passwords are used as the sole method of user authentication, only individuals who know their passwords are considered valid users.

Password authentication places a great deal of responsibility on the user. Passwords must be sufficiently complex so they cannot be easily guessed, but they must be simple enough to be committed to memory and not stored in a physical location. Even if this balance is successfully achieved, a wide variety of attacks exist (such as brute force attacks, eavesdropping, and social engineering tactics) where a malicious user can acquire a user’s password and impersonate that person’s identity. A user often will not realize that the password is compromised, which makes it is easy for a malicious user to maintain access to a system if a valid password has been obtained.

**One-time passwords**

A one-time password (OTP) is similar to a traditional password, but it is more secure in that it can be used only once to authenticate a user. The method for determining each new password varies by implementation. However, assuming a secure deployment of each new password, OTPs have several advantages over the classic password model of authentication. Most importantly, if a given OTP token is intercepted in transmission between the user and the system, the interceptor cannot use it for any future transactions. Similarly, if a malicious user obtains a valid user’s OTP, the interceptor will have limited access to the system (only one session).

**Smart cards**

Smart cards are physical authentication devices, which improve on the concept of a password by requiring that users actually have their smart card device with them to access the system, in addition to knowing the PIN that provides access to the smart card. Smart cards have three key properties that help maintain their security:

-   **Non-exportability**: Information stored on the card, such as the user’s private keys, cannot be extracted from one device and used in another medium.

-   **Isolated cryptography**: Any cryptographic operations that are related to the card (such as secure encryption and decryption of data) occur in a cryptographic processor on the card, so malicious software on the host computer cannot observe the transactions.

-   **Anti-hammering**: To prevent access to the card by a brute-force attack, a set number of consecutive unsuccessful PIN entry attempts blocks the card until administrative action is taken.

Smart cards provide greatly enhanced security over passwords alone, because it is much more difficult for a malicious user to gain and maintain access to a system. Most importantly, access to a smart card system requires that users have a valid card and that they know the PIN that provides access to that card. It is extremely difficult for a thief to acquire the card and the PIN.

Additional security is achieved by the singular nature of the card because only one copy of the card exists, only one individual can use the sign-in credentials, and users will quickly notice if the card has been lost or stolen. This greatly reduces the risk window of credential theft when compared to using a password alone.

Unfortunately, this additional security comes with added material and support costs. Traditional smart cards are expensive to purchase (cards and card readers must be supplied to employees), and they also can be easily misplaced or stolen.

**Virtual smart cards**

To address these issues, virtual smart cards emulate the functionality of traditional smart cards, but instead of requiring the purchase of additional hardware, they utilize technology that users already own and are more likely to have with them at all times. Theoretically, any device that can provide the three key properties of smart cards (non-exportability, isolated cryptography, and anti-hammering) can be commissioned as a virtual smart card. However, the virtual smart card platform developed by Microsoft is currently limited to the use of the Trusted Platform Module (TPM) chip, which is installed on most modern computers.

Virtual smart cards that utilize a TPM provide the three main security principles of traditional smart cards (non-exportability, isolated cryptography, and anti-hammering). They are also less expensive to implement and more convenient for users. Because many corporate computers already have a built-in TPM, there is no cost associated with purchasing new hardware. The user’s possession of a computer or device is equivalent to the possession of a smart card, and a user’s identity cannot be assumed from any other computer or device without administrative provisioning of further credentials. Thus, two-factor authentication is achieved because the user must have a computer that is set up with a virtual smart card and know the PIN to use the virtual smart card.

## See also

-   [Get Started with Virtual Smart Cards: Walkthrough Guide](virtual-smart-card-get-started.md)

-   [Use Virtual Smart Cards](virtual-smart-card-use-virtual-smart-cards.md)

-   [Deploy Virtual Smart Cards](virtual-smart-card-deploy-virtual-smart-cards.md)

-   [Evaluate Virtual Smart Card Security](virtual-smart-card-evaluate-security.md)
