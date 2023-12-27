---
title: Windows Hello for Business hybrid key trust deployment
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/18/2023
ms.topic: tutorial
---

# Hybrid key trust deployment guide

[!INCLUDE [apply-to-hybrid-key-trust](includes/apply-to-hybrid-key-trust.md)]

> [!IMPORTANT]
> Windows Hello for Business *cloud Kerberos trust* is the recommended deployment model when compared to the *key trust model*. For more information, see [cloud Kerberos trust deployment](hybrid-cloud-kerberos-trust.md).

[!INCLUDE [requirements](includes/requirements.md)]
[!INCLUDE [requirement-directory-sync](includes/requirement-directory-sync.md)]
[!INCLUDE [requirement-auth-to-entra-id](includes/requirement-auth-to-entra-id.md)]
[!INCLUDE [requirement-device-registration](includes/requirement-device-registration.md)]


:::row-end:::

:::row:::
    :::column span="1":::
Public Key Infrastructure
    :::column-end:::
    :::column span="3":::
An enterprise PKI is required as *trust anchor* for authentication. Domain controllers require a certificate for Windows clients to trust them.
    :::column-end:::

:::row-end:::

:::row:::
    :::column span="1":::
Multifactor authentication
    :::column-end:::
    :::column span="3":::
The Windows Hello for Business provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.\
Hybrid deployments can use:

- [Microsoft Entra multifactor authentication][AZ-2]
- A multifactor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS

For more information how to configure Microsoft Entra multifactor authentication, see [Configure Microsoft Entra multifactor authentication settings][AZ-3].\
For more information how to configure AD FS to provide multifactor authentication, see [Configure Azure MFA as authentication provider with AD FS][SER-1].
    :::column-end:::
:::row-end:::

:::row:::
    :::column span="1":::
Device management
    :::column-end:::
    :::column span="3":::
To configure Windows Hello for Business, devices can be configured through a mobile device management (MDM) solution like Intune, or via group policy.
    :::column-end:::

:::row-end:::

## Next steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business with a hybrid key trust model consists of the following steps:
>
> - Configure and validate the PKI
> - Configure Windows Hello for Business settings
> - Provision Windows Hello for Business on Windows clients
> - Configure single sign-on (SSO) for Microsoft Entra joined devices

> [!div class="nextstepaction"]
> [Next: configure and validate the Public Key Infrastructure >](hybrid-key-trust-pki.md)

<!--links-->

[AZ-2]: /azure/multi-factor-authentication/multi-factor-authentication
[AZ-3]: /azure/multi-factor-authentication/multi-factor-authentication-whats-next
[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler

[SER-1]: /windows-server/identity/ad-fs/operations/configure-ad-fs-2016-and-azure-mfa
