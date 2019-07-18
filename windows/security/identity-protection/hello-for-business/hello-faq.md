---
title: Windows Hello for Business Frequently Asked Questions
description: Windows Hello for Business FAQ 
keywords: identity, PIN, biometric, Hello, passport
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 08/19/2018
ms.reviewer: 
---
# Windows Hello for Business Frequently Asked Questions

**Applies to**
-   Windows 10

## What about virtual smart cards?
Windows Hello for Business is the modern, two-factor credential for Windows 10.  Microsoft will be deprecating virtual smart cards in the future but not date at this time.  Customers using Windows 10 and virtual smart cards should move to Windows Hello for Business.  Microsoft will publish the date early to ensure customers have adequate lead time to move to Windows Hello for Business.  Microsoft recommends new Windows 10 deployments to use Windows Hello for Business. Virtual smart card remain supported for Windows 7 and Windows 8.

## What about convenience PIN?
Microsoft is committed to its vision of a <u>world without passwords.</u> We recognize the *convenience* provided by convenience PIN, but it stills uses a password for authentication.  Microsoft recommends customers using Windows 10 and convenience PINs should move to Windows Hello for Business.  New Windows 10 deployments should deploy Windows Hello for Business and not convenience PINs.  Microsoft will be deprecating convenience PINs in the future and will publish the date early to ensure customers have adequate lead time to deploy Windows Hello for Business. 

## Can I use Windows Hello for Business key trust and RDP?
RDP currently does not support key based authentication and does not support self signed certificates. RDP with Windows Hello for Business is currently only supported with certificate based deployments.

## Can I deploy Windows Hello for Business using System Center Configuration Manager?
Windows Hello for Business deployments using System Center Configuration Manager need to move to the hybrid deployment model that uses Active Directory Federation Services. Deployments using System Center Configuration Manager will no longer be supported after November 2018.

## How many users can enroll for Windows Hello for Business on a single Windows 10 computer?
The maximum number of supported enrollments on a single Windows 10 computer is 10.  That enables 10 users to each enroll their face and up to 10 fingerprints.  While we support 10 enrollments, we will strongly encourage the use of Windows Hello security keys for the shared computer scenario when they become available.

## How can PIN be more secure than a Password?
When using Windows Hello for Business, the PIN is not a symmetric key where is the password is a symmetric key.  With passwords, there is a server that has some representation of the password.  With Windows Hello for Business, the PIN is user provided entropy used to load the private key in the TPM.  The server does not have a copy of the PIN.  For that matter, the Windows client does not have a copy of the current PIN either.  The user must provide the entropy, the TPM protected key, and the TPM that generated that key to successfully have access to the private key.

The statement "PIN is stronger than Password" is not directed at the strength of the entropy used by the PIN.  It is about the difference of providing entropy vs continuing the use of a symmetric key (the password).  The TPM has anti-hammering features which thwart brute-force PIN attacks (an attackers continuous attempt to try all combination of PINs).  Some organizations may worry about shoulder surfing.  For those organizations, rather than increased the complexity of the PIN, implement the [Multifactor Unlock](feature-multifactor-unlock.md) feature.

## Why is the Key Admins group missing, I have Windows Server 2016 domain controller(s)?
The **Key Admins** and **Enterprise Key Admins** groups are created when you install the first Windows Server 2016 domain controller into a domain. Domain controllers running previous versions of Windows Server cannot translate the security identifier (SID) to a name.  To resolve this, transfer the PDC emulator domain role to a domain controller running Windows Server 2016.

## Can I use convenience PIN with Azure AD?
No. If you want to use PIN or biometrics with Azure Active Directory identities on Azure AD registered, Azure AD joined, or hybrid Azure AD joined devices, then you must deploy Windows Hello for Business.

## Can I use an external camera when my laptop is closed or docked?
No. Windows 10 currently only supports one Windows Hello for Business camera and does not fluidly switch to an external camera when the computer is docked with the lid closed.  The product group is aware of this and is investigating this topic further.

## What is the password-less strategy?
Watch Principal Program Manager Karanbir Singh's Ignite 2017 presentation **Microsoft's guide for going password-less**

[Microsoft's password-less strategy](hello-videos.md#microsofts-passwordless-strategy)

## What is the user experience for Windows Hello for Business?
The user experience for Windows Hello for Business occurs after user sign-in, after you deploy Windows Hello for Business policy settings to your environment.

[Windows Hello for Business user enrollment experience](hello-videos.md#windows-hello-for-business-user-enrollment-experience)

## What happens when my user forgets their PIN?
If the user can sign-in with a password, they can reset their PIN by clicking the "I forgot my PIN" link in settings.  Beginning with the Fall Creators Update, users can reset their PIN above the lock screen by clicking the "I forgot my PIN" link on the PIN credential provider.

[Windows Hello for Business forgotten PIN user experience](hello-videos.md#windows-hello-for-business-forgotten-pin-user-experience)

For on-premises deployments, devices must be well connected to their on-premises network (domain controllers and/or certificate authority) to reset their PINs.  Hybrid customers can on-board their Azure tenant to use the Windows Hello for Business PIN reset service to reset their PINs without access to their corporate network.

## What URLs do I need to allow for a hybrid deployment?
Communicating with Azure Active Directory uses the following URLs:
- enterpriseregistration.windows.net
- login.microsoftonline.com
- login.windows.net

If your environment uses Microsoft Intune, you need these additional URLs:
- enrollment.manage-beta.microsoft.com
- enrollment.manage.microsoft.com
- portal.manage-beta.microsoft.com
- portal.manage.microsoft.com

## What is the difference between non-destructive and destructive PIN Reset?
Windows Hello for Business has two types of PIN reset: non-destructive and destructive.  Organizations running Windows 10 Enterprise and Azure Active Directory can take advantage of the Microsoft PIN Reset service.  Once on-boarded to a tenant and deployed to computers, users who have forgotten their PINs can authenticate to Azure, provided a second factor of authentication, and reset their PIN without re-provisioning a new Windows Hello for Business enrollment. This is a non-destructive PIN reset because the user does not delete the current credential and obtain a new one.  Read [PIN Reset](hello-features.md#pin-reset) from our [Windows Hello for Business Features](hello-features.md) page for more information.

Organizations that have the on-premises deployment of Windows Hello for Business, or those not using Windows 10 Enterprise can use destructive PIN reset.  with destructive PIN reset, users that have forgotten their PIN can authenticate using their password, perform a second factor of authentication to re-provision their Windows Hello for Business credential. Re-provisioning deletes the old credential and requests a new credential and certificate.  On-premises deployments need network connectivity to their domain controllers, Active Directory Federation Services, and their issuing certificate authority to perform a destructive PIN reset. Also, for hybrid deployments, destructive PIN reset is only supported with the certificate trust model and the latest updates to Active Directory Federation Services.

## Which is better or more secure: Key trust or Certificate trust?
The trust models of your deployment determine how you authenticate to Active Directory (on-premises). Both key trust and certificate trust use the same hardware backed, two-factor credential. The difference between the two trust types are:
- Required domain controllers 
- Issuing end entity certificates

The **key trust** model authenticates to Active Directory using a raw key.  Windows Server 2016 domain controllers enables this authentication.  Key trust authenticate does not require an enterprise issued certificate, therefore you do not need to issue certificates to your end users (domain controller certificates are still needed).
The **certificate trust** model authenticates to Active Directory using a certificate.  Because this authentication uses a certificate, domain controllers running previous versions of Windows Server can authenticate the user. Therefore, you need to issue certificates to your end users, but you do not need Windows Server 2016 domain controllers.  The certificate used in certificate trust uses the TPM protected private key to request a certificate from your enterprise's issuing certificate authority. 

## Do I need Windows Server 2016 domain controllers?
There are many deployment options from which to choose. Some of those options require an adequate number of Windows Server 2016 domain controllers in the site where you have deployed Windows Hello for Business. There are other deployment options that use existing Windows Server 2008 R2 or later domain controllers. Choose the deployment option that best suits your environment

## What attributes are synchronized by Azure AD Connect with Windows Hello for Business?
Review [Azure AD Connect sync: Attributes synchronized to Azure Active Directory](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-attributes-synchronized) for a list of attributes that are sync based on scenarios.  The base scenarios that include Windows Hello for Business are [Windows 10](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-attributes-synchronized#windows-10) scenario and the [Device writeback](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnectsync-attributes-synchronized#device-writeback) scenario. Your environment may include additional attributes.

## Is Windows Hello for Business multifactor authentication?
Windows Hello for Business is two-factor authentication based the observed authentication factors of: something you have, something you know, and something part of you.  Windows Hello for Business incorporates two of these factors: something you have (the user's private key protected by the device's security module) and something you know (your PIN). With the proper hardware, you can enhance the user experience by introducing biometrics. Using biometrics, you can replace the "something you know" authentication factor with the "something that is part of you" factor, with the assurances that users can fall back to the "something you know factor".

## What are the biometric requirements for Windows Hello for Business?
Read [Windows Hello biometric requirements](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements) for more information.

## Can I use PIN and biometrics to unlock my device?
Starting in Windows 10, version 1709, you can use multi-factor unlock to require the user to provide an additional factor to unlock the device.  Authentication remains two-factor, but another factor is required before Windows allows the user to reach the desktop.  Read more about [multifactor unlock](feature-multifactor-unlock.md).

## What is the difference between Windows Hello and Windows Hello for Business?
Windows Hello represents the biometric framework provided in Windows 10.  Windows Hello enables users to use biometrics to sign into their devices by securely storing their user name and password and releasing it for authentication when the user successfully identifies themselves using biometrics.  Windows Hello for Business uses asymmetric keys protected by the device's security module that requires a user gesture (PIN or biometrics) to authenticate.

## Why can I not enroll biometrics for my local built-in Administrator?
Windows 10 does not allow the local administrator to enroll biometric gestures(face or fingerprint).

## I have extended Active Directory to Azure Active Directory.  Can I use the on-premises deployment model?
No. If your organization is federated or using on-line services, such as Azure AD Connect, Office 365, or OneDrive, then you must use a hybrid deployment model.  On-premises deployments are exclusive to organization who need more time before moving to the cloud and exclusively use Active Directory.

## Does Windows Hello for Business prevent the use of simple PINs?
Yes. Our simple PIN algorithm looks for and disallows any PIN that has a constant delta from one digit to the next.  This prevents repeating numbers, sequential numbers and simple patterns.
So, for example:
* 1111 has a constant delta of 0, so it is not allowed
* 1234 has a constant delta of 1, so it is not allowed
* 1357 has a constant delta of 2, so it is not allowed
* 9630 has a constant delta of -3, so it is not allowed
* 1231 does not have a constant delta, so it is okay
* 1593 does not have a constant delta, so it is okay

This algorithm does not apply to alphanumeric PINs.

## How does PIN caching work with Windows Hello for Business?

Windows Hello for Business provides a PIN caching user experience using a ticketing system. Rather than caching a PIN, processes cache a ticket they can use to request private key operations.  Azure AD and Active Directory sign-in keys are cached under lock.  This means the keys remain available for use without prompting as long as the user is interactively signed-in.  Microsoft Account sign-in keys are considered transactional keys, which means the user is always prompted when accessing the key.  

Beginning with Windows 10, version 1709, Windows Hello for Business used as a smart card (smart card emulation that is enabled by default) provides the same user experience of default smart card PIN caching.  Each process requesting a private key operation will prompt the user for the PIN on first use.  Subsequent private key operations will not prompt the user for the PIN.  

The smart card emulation feature of Windows Hello for Business verifies the PIN and then discards the PIN in exchange for a ticket.  The process does not receive the PIN, but rather the ticket that grants them private key operations.  Windows 10 does not provide any Group Policy settings to adjust this caching.

## Can I disable the PIN while using Windows Hello for Business?
No. The movement away from passwords is accomplished by gradually reducing the use of the password.  In the occurrence where you cannot authenticate with biometrics, you need a fall back mechanism that is not a password.  The PIN is the fall back mechanism.  Disabling or hiding the PIN credential provider disabled the use of biometrics.

## How keys are protected?
Wherever possible, Windows Hello for Business takes advantage of trusted platform module (TPM) 2.0 hardware to generate and protect keys. However, Windows Hello and Windows Hello for Business does not require a TPM. Administrators can choose to allow key operations in software  

Whenever possible, Microsoft strongly recommends the use of TPM hardware. The TPM protects against a variety of known and potential attacks, including PIN brute-force attacks. The TPM provides an additional layer of protection after an account lockout, too. When the TPM has locked the key material, the user will have to reset the PIN (which means he or she will have to use MFA to re-authenticate to the IDP before the IDP allows him or her to re-register).

## Can Windows Hello for Business work in air gapped environments?
Yes.  You can use the on-premises Windows Hello for Business deployment and combine it with a third-party MFA provider that does not require Internet connectivity to achieve an air-gapped Windows Hello for Business deployment.

## Can I use third-party authentication providers with Windows Hello for Business?
Yes, if you are federated hybrid deployment, you can use any third-party that provides an Active Directory Federation Services (AD FS) multi-factor authentication adapter.  A list of third-party MFA adapters can be found [here](https://docs.microsoft.com/windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs#microsoft-and-third-party-additional-authentication-methods).

## Does Windows Hello for Business work with third party federation servers?
Windows Hello for Business can work with any third-party federation servers that support the protocols used during provisioning experience.  Interested third-parties can inquiry at [whfbfeedback@microsoft.com](mailto:whfbfeedback@microsoft.com?subject=collaboration)

| Protocol | Description |
| :---: | :--- |
| [[MS-KPP]: Key Provisioning Protocol](https://msdn.microsoft.com/library/mt739755.aspx) | Specifies the Key Provisioning Protocol, which defines a mechanism for a client to register a set of cryptographic keys on a user and device pair. |
| [[MS-OAPX]: OAuth 2.0 Protocol Extensions](https://msdn.microsoft.com/library/dn392779.aspx)| Specifies the OAuth 2.0 Protocol Extensions, which are used to extend the OAuth 2.0 Authorization Framework. These extensions enable authorization features such as resource specification, request identifiers, and login hints. |  
| [[MS-OAPXBC]: OAuth 2.0 Protocol Extensions for Broker Clients](https://msdn.microsoft.com/library/mt590278.aspx) | Specifies the OAuth 2.0 Protocol Extensions for Broker Clients, extensions to RFC6749 (The OAuth 2.0 Authorization Framework) that allow a broker client to obtain access tokens on behalf of calling clients. |
| [[MS-OIDCE]: OpenID Connect 1.0 Protocol Extensions](https://msdn.microsoft.com/library/mt766592.aspx) | Specifies the OpenID Connect 1.0 Protocol Extensions. These extensions define additional claims to carry information about the end user, including the user principal name, a locally unique identifier, a time for password expiration, and a URL for password change. These extensions also define additional provider meta-data that enable the discovery of the issuer of access tokens and give additional information about provider capabilities. |

## Does Windows Hello for Business work with Mac and Linux clients?
Windows Hello for Business is a feature of Windows 10. At this time, Microsoft is not developing clients for other platforms.  However, Microsoft is open to third parties who are interested in moving these platforms away from passwords.  Interested third parties can get more information by emailing [whfbfeedback@microsoft.com](mailto:whfbfeedback@microsoft.com?subject=collaboration)

