---
title: Remote Desktop
description: Learn how Windows Hello for Business supports using biometrics with remote desktop
ms.date: 09/01/2023
ms.topic: conceptual
---

# Remote Desktop

**Requirements**

- Hybrid and On-premises Windows Hello for Business deployments
- Microsoft Entra joined, Microsoft Entra hybrid joined, and Enterprise joined devices

Windows Hello for Business supports using a certificate deployed to a Windows Hello for Business container as a supplied credential to establish a remote desktop connection to a server or another device. This feature takes advantage of the redirected smart card capabilities of the remote desktop protocol. Windows Hello for Business key trust can be used with [Remote Credential Guard](../remote-credential-guard.md) to establish a remote desktop protocol connection.

Microsoft continues to investigate supporting using keys trust for supplied credentials in a future release.

## Remote Desktop with Biometrics

**Requirements**

- Hybrid and On-premises Windows Hello for Business deployments
- Microsoft Entra joined, Microsoft Entra hybrid joined, and Enterprise joined devices
- Biometric enrollments

The ability for users to authenticate to a remote desktop session using their Windows Hello for Business biometric is on by default.

### How does it work

Windows generates and stores cryptographic keys using a software component called a key storage provider (KSP). Software-based keys are created and stored using the Microsoft Software Key Storage Provider. Smart card keys are created and stored using the Microsoft Smart Card Key Storage Provider. Keys created and protected by Windows Hello for Business are created and stored using the Microsoft Passport Key Storage Provider.

A certificate on a smart card starts with creating an asymmetric key pair using the Microsoft Smart Card KSP. Windows requests a certificate based on the key pair from your enterprises issuing certificate authority, which returns a certificate that is stored in the user's Personal certificate store. The private key remains on the smart card and the public key is stored with the certificate. Metadata on the certificate (and the key) stores the key storage provider used to create the key (remember the certificate contains the public key).

The same concept applies to Windows Hello for Business, except that the keys are created using the Microsoft Passport KSP. The user's private key remains protected by the device's security module (TPM) and the user's gesture (PIN/biometric). The certificate APIs hide the complexity. When an application uses a certificate, the certificate APIs locate the keys using the saved key storage provider. The key storage providers direct the certificate APIs on which provider they use to find the private key associated with the certificate. This is how Windows knows you have a smart card certificate without the smart card inserted (and prompts you to insert the smart card).

Windows Hello for Business emulates a smart card for application compatibility, and the Microsoft Passport KSP prompts the user for their biometric gesture or PIN.

### Compatibility

Users appreciate convenience of biometrics and administrators value the security however, you may experience compatibility issues with your applications and Windows Hello for Business certificates. You can relax knowing a Group Policy setting and a [MDM URI](/windows/client-management/mdm/passportforwork-csp) exist to help you revert to the previous behavior for those users who need it.

> [!div class="mx-imgBorder"]
> ![WHFB Certificate GP Setting.](images/rdpbio/rdpbiopolicysetting.png)

> [!IMPORTANT]
> The remote desktop with biometric feature does not work with [Dual Enrollment](hello-feature-dual-enrollment.md) feature or scenarios where the user provides alternative credentials. Microsoft continues to investigate supporting the feature.
