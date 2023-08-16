---
title: Remote Desktop
description: Learn how Windows Hello for Business supports using biometrics with remote desktop
ms.date: 02/24/2021
ms.topic: conceptual
ms.collection:
  - tier1
---

# Remote Desktop

**Requirements**

- Hybrid and On-premises Windows Hello for Business deployments
- Azure AD joined, Hybrid Azure AD joined, and Enterprise joined devices

Windows Hello for Business supports using a certificate deployed to a Windows Hello for Business container as a supplied credential to establish a remote desktop connection to a server or another device. This feature takes advantage of the redirected smart card capabilities of the remote desktop protocol. Windows Hello for Business key trust can be used with [Remote Credential Guard](../remote-credential-guard.md) to establish a remote desktop protocol connection.

Microsoft continues to investigate supporting using keys trust for supplied credentials in a future release.

## Remote Desktop with Biometrics

**Requirements**

- Hybrid and On-premises Windows Hello for Business deployments
- Azure AD joined, Hybrid Azure AD joined, and Enterprise joined devices
- Biometric enrollments

The ability for users to authenticate to a remote desktop session using their Windows Hello for Business biometric is on by default.

### How does it work

Windows generates and stores cryptographic keys using a software component called a key storage provider (KSP).  Software-based keys are created and stored using the Microsoft Software Key Storage Provider.  Smart card keys are created and stored using the Microsoft Smart Card Key Storage Provider.  Keys created and protected by Windows Hello for Business are created and stored using the Microsoft Passport Key Storage Provider.

A certificate on a smart card starts with creating an asymmetric key pair using the Microsoft Smart Card KSP.  Windows requests a certificate based on the key pair from your enterprises issuing certificate authority, which returns a certificate that is stored in the user's Personal certificate store.  The private key remains on the smart card and the public key is stored with the certificate.  Metadata on the certificate (and the key) store the key storage provider used to create the key (remember the certificate contains the public key).

This same concept applies to Windows Hello for Business. Except, the keys are created using the Microsoft Passport KSP and the user's private key remains protected by the device's security module (TPM) and the user's gesture (PIN/biometric).  The certificate APIs hide this complexity.  When an application uses a certificate, the certificate APIs locate the keys using the saved key storage provider.  The key storage providers directs the certificate APIs on which provider they use to find the private key associated with the certificate.  This is how Windows knows you have a smart card certificate without the smart card inserted (and prompts you to insert the smart card).

Windows Hello for Business emulates a smart card for application compatibility.  Versions of Windows 10 prior to version 1809, would redirect private key access for Windows Hello for Business certificate to use its emulated smart card using the Microsoft Smart Card KSP, which would enable the user to provide their PIN.  Windows 10, version 1809 or later no longer redirects private key access for Windows Hello for Business certificates to the Microsoft Smart Card KSP-- it continues using the Microsoft Passport KSP. The Microsoft Passport KSP enabled Windows to prompt the user for their biometric gesture or PIN.

### Compatibility

Users appreciate convenience of biometrics and administrators value the security however, you may experience compatibility issues with your applications and Windows Hello for Business certificates.  You can relax knowing a Group Policy setting and a [MDM URI](/windows/client-management/mdm/passportforwork-csp) exist to help you revert to the previous behavior for those users who need it.

> [!div class="mx-imgBorder"]
> ![WHFB Certificate GP Setting.](images/rdpbio/rdpbiopolicysetting.png)

> [!IMPORTANT]
> The remote desktop with biometric feature does not work with [Dual Enrollment](hello-feature-dual-enrollment.md) feature or scenarios where the user provides alternative credentials.  Microsoft continues to investigate supporting the feature.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](/windows/security/identity-protection/hello-for-business/hello-faq)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
