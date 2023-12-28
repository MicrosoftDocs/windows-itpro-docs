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

> [!div class="checklist"]
>
> - [Public Key Infrastructure](index.md#public-key-infrastructure-pki)
> - [Authentication](index.md#authentication)
> - [Device configuration](index.md#device-configuration)
> - [Prepare users to use Windows Hello](index.md#prepare-users-to-use-windows-hello)

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

[AZ-4]: /azure/active-directory/devices/troubleshoot-device-dsregcmd
[AZ-5]: /azure/active-directory/connect/active-directory-aadconnectsync-feature-scheduler
