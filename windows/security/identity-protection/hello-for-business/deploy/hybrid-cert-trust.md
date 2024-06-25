---
title: Windows Hello for Business hybrid certificate trust deployment guide
description: Learn how to deploy Windows Hello for Business in a hybrid certificate trust scenario.
ms.date: 06/23/2024
ms.topic: tutorial
---

# Hybrid certificate trust deployment guide

[!INCLUDE [apply-to-hybrid-cert-trust](includes/apply-to-hybrid-cert-trust.md)]

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. It is also the recommended deployment model if you don't need to deploy certificates to the end users. For more information, see [cloud Kerberos trust deployment](hybrid-cloud-kerberos-trust.md).

[!INCLUDE [requirements](includes/requirements.md)]

> [!div class="checklist"]
>
> - [Public Key Infrastructure](index.md#pki-requirements)
> - [Authentication](index.md#authentication-to-microsoft-entra-id)
> - [Device configuration](index.md#device-configuration-options)
> - [Licensing for cloud services](index.md#licensing-for-cloud-services-requirements)
> - [Prepare users to use Windows Hello](prepare-users.md)

## Deployment steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business consists of the following steps:
>
> - [Configure and validate the Public Key Infrastructure](hybrid-cert-trust-pki.md)
> - [Configure Active Directory Federation Services](hybrid-cert-trust-adfs.md)
> - [Configure and enroll in Windows Hello for Business](hybrid-cert-trust-enroll.md)
> - (optional) [Configure single sign-on for Microsoft Entra joined devices](../hello-hybrid-aadj-sso.md)

## Federated authentication to Microsoft Entra ID

Windows Hello for Business hybrid certificate trust requires Active Directory to be federated with Microsoft Entra ID using AD FS. You must also configure the AD FS farm to support Azure registered devices.

If you're new to AD FS and federation services:

- Review [key AD FS concepts][SER-3] prior to deploying the AD FS farm
- Review the [AD FS design guide][SER-4] to design and plan your federation service

Once you have your AD FS design ready, review [deploying a federation server farm][SER-2] to configure AD FS in your environment

The AD FS farm used with Windows Hello for Business must be Windows Server 2016 with minimum update of [KB4088889 (14393.2155)](https://support.microsoft.com/help/4088889).

## Device registration and device write-back

Windows devices must be registered in Microsoft Entra ID. Devices can be registered in Microsoft Entra ID using either *Microsoft Entra join* or *Microsoft Entra hybrid join*.\
For Microsoft Entra hybrid joined devices, review the guidance on the [plan your Microsoft Entra hybrid join implementation][AZ-8] page.

Refer to the [Configure Microsoft Entra hybrid join for federated domains][AZ-10] guide to learn more about using Microsoft Entra Connect Sync to configure Microsoft Entra device registration.\
For a **manual configuration** of your AD FS farm to support device registration, review the [Configure AD FS for Microsoft Entra device registration][AZ-11] guide.

Hybrid certificate trust deployments require the *device write-back* feature. Authentication to AD FS needs both the user and the device to authenticate. Typically the users are synchronized, but not devices. This prevents AD FS from authenticating the device and results in Windows Hello for Business certificate enrollment failures. For this reason, Windows Hello for Business deployments need device write-back.

> [!NOTE]
> Windows Hello for Business is tied between a user and a device. Both the user and device need to be synchronized between Microsoft Entra ID and Active Directory. Device write-back is used to update the `msDS-KeyCredentialLink` attribute on the computer object.

If you manually configured AD FS, or if you ran Microsoft Entra Connect Sync using *Custom Settings*, you must ensure to configure **device write-back** and **device authentication** in your AD FS farm. For more information, see [Configure Device Write Back and Device Authentication][SER-5].

### Public Key Infrastructure

An enterprise public key infrastructure (PKI) is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.\
The enterprise PKI and a certificate registration authority (CRA) are required to issue authentication certificates to users. Hybrid certificate trust deployment uses AD FS as a CRA.

During Windows Hello for Business provisioning, users receive a sign-in certificate through the CRA.

## Next steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:
>
> - Configure and validate the PKI
> - Configure AD FS
> - Configure Windows Hello for Business settings
> - Provision Windows Hello for Business on Windows clients
> - Configure single sign-on (SSO) for Microsoft Entra joined devices

> [!div class="nextstepaction"]
> [Next: configure and validate the Public Key Infrastructure >](hybrid-cert-trust-pki.md)

<!--links-->
[AZ-8]: /azure/active-directory/devices/hybrid-azuread-join-plan
[AZ-10]: /azure/active-directory/devices/howto-hybrid-azure-ad-join#federated-domains
[AZ-11]: /azure/active-directory/devices/hybrid-azuread-join-manual

[SER-2]: /windows-server/identity/ad-fs/deployment/deploying-a-federation-server-farm
[SER-3]: /windows-server/identity/ad-fs/technical-reference/understanding-key-ad-fs-concepts
[SER-4]: /windows-server/identity/ad-fs/design/ad-fs-design-guide-in-windows-server-2012-r2
[SER-5]: /windows-server/identity/ad-fs/operations/configure-device-based-conditional-access-on-premises#configure-device-write-back-and-device-authentication
