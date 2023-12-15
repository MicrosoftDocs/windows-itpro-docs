---
title: Validate and Deploy MFA for Windows Hello for Business with certificate trust
description: Validate and deploy multifactor authentication (MFA) for Windows Hello for Business in an on-premises certificate trust model.
ms.date: 12/15/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---

# Validate and deploy multifactor authentication - on-premises certificate trust

[!INCLUDE [hello-on-premises-cert-trust](includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business requires users perform multifactor authentication (MFA) prior to enroll in the service. On-premises deployments can use, as MFA option:

- third-party authentication providers for AD FS
- custom authentication provider for AD FS

> [!IMPORTANT]
> As of July 1, 2019, Microsoft will no longer offer MFA Server for new deployments. New customers who would like to require multifactor authentication from their users should use cloud-based Microsoft Entra multifactor authentication. Existing customers who have activated MFA Server prior to July 1 will be able to download the latest version, future updates and generate activation credentials as usual.

For information about third-party authentication methods, see [Configure Additional Authentication Methods for AD FS](/windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs). To create a custom authentication method, see [Build a Custom Authentication Method for AD FS in Windows Server](/windows-server/identity/ad-fs/development/ad-fs-build-custom-auth-method).

Follow the integration and deployment guide for the authentication provider you plan to integrate to AD FS. Make sure that the authentication provider is selected as a multifactor authentication option in the AD FS authentication policy. For information on configuring AD FS authentication policies, see [Configure Authentication Policies](/windows-server/identity/ad-fs/operations/configure-authentication-policies).

> [!div class="nextstepaction"]
> [Next: configure Windows Hello for Business Policy settings >](on-premises-cert-trust-policy-settings.md)
