---
ms.date: 06/23/2024
ms.topic: include
---

## Validate and deploy multifactor authentication (MFA)

Windows Hello for Business requires users perform multifactor authentication (MFA) prior to enroll in the service. On-premises deployments can use, as MFA option:

- certificates
    > [!NOTE]
    > When using this option, the certificates must be deployed to the users. For example, users can use their smart card or virtual smart card as a certificate authentication option.
- non-Microsoft authentication providers for AD FS
- custom authentication provider for AD FS

> [!IMPORTANT]
> As of July 1, 2019, Microsoft will no longer offer MFA Server for new deployments. New customers who would like to require multifactor authentication from their users should use cloud-based Microsoft Entra multifactor authentication. Existing customers who have activated MFA Server prior to July 1 will be able to download the latest version, future updates and generate activation credentials as usual.

For information on available non-Microsoft authentication methods see [Configure Additional Authentication Methods for AD FS](/windows-server/identity/ad-fs/operations/configure-additional-authentication-methods-for-ad-fs). For creating a custom authentication method see [Build a Custom Authentication Method for AD FS in Windows Server](/windows-server/identity/ad-fs/development/ad-fs-build-custom-auth-method)

Follow the integration and deployment guide for the authentication provider you select to integrate and deploy it to AD FS. Make sure that the authentication provider is selected as a multifactor authentication option in the AD FS authentication policy. For information on configuring AD FS authentication policies see [Configure Authentication Policies](/windows-server/identity/ad-fs/operations/configure-authentication-policies).
