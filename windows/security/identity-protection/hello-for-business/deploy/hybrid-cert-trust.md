---
title: Windows Hello for Business hybrid certificate trust deployment
description: Learn how to deploy Windows Hello for Business in a hybrid certificate trust scenario.
ms.date: 12/15/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: how-to
---

# Hybrid certificate trust deployment

[!INCLUDE [hello-hybrid-cert-trust](../includes/hello-hybrid-cert-trust.md)]

Hybrid environments are distributed systems that enable organizations to use on-premises and Microsoft Entra protected resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication and single sign-on to modern resources.

This deployment guide describes how to deploy Windows Hello for Business in a hybrid certificate trust scenario.

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. It is also the recommended deployment model if you don't need to deploy certificates to the end users. For more information, see [cloud Kerberos trust deployment](hello-hybrid-cloud-kerberos-trust.md).

It's recommended that you review the [Windows Hello for Business planning guide](hello-planning-guide.md) prior to using the deployment guide. The planning guide helps you make decisions by explaining the available options with each aspect of the deployment and explains the potential outcomes based on each of these decisions.

## Prerequisites
The following prerequisites must be met for a hybrid certificate trust deployment:

> [!div class="checklist"]
> * Directories and directory synchronization
> * Federated authentication to Microsoft Entra ID
> * Device registration
> * Public Key Infrastructure
> * Multifactor authentication
> * Device management

### Directories and directory synchronization

Hybrid Windows Hello for Business needs two directories:

- An on-premises Active Directory
- A Microsoft Entra tenant with a Microsoft Entra ID P1 or P2 subscription

The two directories must be synchronized with [Microsoft Entra Connect Sync][AZ-1], which synchronizes user accounts from the on-premises Active Directory to Microsoft Entra ID.
The hybrid-certificate trust deployment needs an *Microsoft Entra ID P1 or P2* subscription because it uses the device write-back synchronization feature.

> [!NOTE]
> Windows Hello for Business hybrid certificate trust is not supported if the users' on-premises UPN suffix cannot be added as a verified domain in Microsoft Entra ID.

> [!IMPORTANT]
> Windows Hello for Business is tied between a user and a device. Both the user and device object must be synchronized between Microsoft Entra ID and Active Directory.

### Federated authentication to Microsoft Entra ID

Windows Hello for Business hybrid certificate trust doesn't support Microsoft Entra ID *Pass-through Authentication* (PTA) or *password hash sync* (PHS).\
Windows Hello for Business hybrid certificate trust requires Active Directory to be federated with Microsoft Entra ID using AD FS. Additionally, you need to configure your AD FS farm to support Azure registered devices.

If you're new to AD FS and federation services:

- Review [key AD FS concepts][SER-3] prior to deploying the AD FS farm
- Review the [AD FS design guide][SER-4] to design and plan your federation service

Once you have your AD FS design ready:

- Review [deploying a federation server farm][SER-2] to configure AD FS in your environment

The AD FS farm used with Windows Hello for Business must be Windows Server 2016 with minimum update of [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889).

### Device registration and device write-back

Windows devices must be registered in Microsoft Entra ID. Devices can be registered in Microsoft Entra ID using either *Microsoft Entra join* or *Microsoft Entra hybrid join*.\
For Microsoft Entra hybrid joined devices, review the guidance on the [plan your Microsoft Entra hybrid join implementation][AZ-8] page.

Refer to the [Configure Microsoft Entra hybrid join for federated domains][AZ-10] guide to learn more about using Microsoft Entra Connect Sync to configure Microsoft Entra device registration.\
For a **manual configuration** of your AD FS farm to support device registration, review the [Configure AD FS for Microsoft Entra device registration][AZ-11] guide.

Hybrid certificate trust deployments require the *device write-back* feature. Authentication to AD FS needs both the user and the device to authenticate. Typically the users are synchronized, but not devices. This prevents AD FS from authenticating the device and results in Windows Hello for Business certificate enrollment failures. For this reason, Windows Hello for Business deployments need device write-back.

> [!NOTE]
> Windows Hello for Business is tied between a user and a device. Both the user and device need to be synchronized between Microsoft Entra ID and Active Directory. Device write-back is used to update the *msDS-KeyCredentialLink* attribute on the computer object.

If you manually configured AD FS, or if you ran Microsoft Entra Connect Sync using *Custom Settings*, you must ensure that you have configured **device write-back** and **device authentication** in your AD FS farm. For more information, see [Configure Device Write Back and Device Authentication][SER-5].

### Public Key Infrastructure

An enterprise public key infrastructure (PKI) is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.\
The enterprise PKI and a certificate registration authority (CRA) are required to issue authentication certificates to users. Hybrid certificate trust deployment uses AD FS as a CRA.

During Windows Hello for Business provisioning, users receive a sign-in certificate through the CRA.

### Multifactor authentication

The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.\
Hybrid deployments can use:

- [Microsoft Entra multifactor authentication][AZ-2]
- A multifactor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS

For more information how to configure Microsoft Entra multifactor authentication, see [Configure Microsoft Entra multifactor authentication settings][AZ-3].\
For more information how to configure AD FS to provide multifactor authentication, see [Configure Azure MFA as authentication provider with AD FS][SER-1].

### Device management

To configure Windows Hello for Business, devices can be configured through a mobile device management (MDM) solution like Intune, or via group policy.

## Next steps

Once the prerequisites are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:

> [!div class="checklist"]
> * Configure and validate the PKI
> * Configure AD FS
> * Configure Windows Hello for Business settings
> * Provision Windows Hello for Business on Windows clients
> * Configure single sign-on (SSO) for Microsoft Entra joined devices

> [!div class="nextstepaction"]
> [Next: configure and validate the Public Key Infrastructure >](hello-hybrid-cert-trust-validate-pki.md)

<!--links-->
[AZ-1]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
[AZ-2]: /azure/multi-factor-authentication/multi-factor-authentication
[AZ-3]: /azure/multi-factor-authentication/multi-factor-authentication-whats-next
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler
[AZ-6]: /azure/active-directory/hybrid/whatis-phs
[AZ-7]: /azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication
[AZ-8]: /azure/active-directory/devices/hybrid-azuread-join-plan
[AZ-9]: /azure/active-directory/devices/hybrid-azuread-join-federated-domains
[AZ-10]: /azure/active-directory/devices/howto-hybrid-azure-ad-join#federated-domains
[AZ-11]: /azure/active-directory/devices/hybrid-azuread-join-manual

[SER-1]: /windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa
[SER-2]: /windows-server/identity/ad-fs/deployment/deploying-a-federation-server-farm
[SER-3]: /windows-server/identity/ad-fs/technical-reference/understanding-key-ad-fs-concepts
[SER-4]: /windows-server/identity/ad-fs/design/ad-fs-design-guide-in-windows-server-2012-r2
[SER-5]: /windows-server/identity/ad-fs/operations/configure-device-based-conditional-access-on-premises#configure-device-write-back-and-device-authentication
