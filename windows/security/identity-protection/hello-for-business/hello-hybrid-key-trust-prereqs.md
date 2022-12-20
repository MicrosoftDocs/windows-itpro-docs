---
title: Deploy Windows Hello for Business hybrid key trust
description: Learn about the prerequisites for the deployment of Windows Hello for Business in a hybrid key trust scenario.
ms.date: 12/20/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: how-to
---
# Deploy Windows Hello for Business hybrid key trust

[!INCLUDE [hello-hybrid-key-trust](../../includes/hello-hybrid-key-trust.md)]

Hybrid environments are distributed systems that enable organizations to use on-premises and Azure AD-based identities and resources. Windows Hello for Business uses the existing distributed system as a foundation on which organizations can provide two-factor authentication that provides a single sign-in like experience to modern resources.

## Prerequisites
### Directories

Hybrid Windows Hello for Business needs two directories: on-premises Active Directory and a cloud Azure Active Directory.

### Directory synchronization

The two directories used in hybrid deployments must be synchronized. You need Azure Active Directory Connect to synchronize user accounts in the on-premises Active Directory with Azure Active Directory.

### Public Key Infrastructure

The Windows Hello for Business deployment depends on an enterprise public key infrastructure as trust anchor for authentication. Domain controllers for hybrid deployments need a certificate in order for Windows devices to trust the domain controller.

Key trust deployments do not need client issued certificates for on-premises authentication. Active Directory user accounts are automatically configured for public key mapping by Azure AD Connect synchronizing the public key of the registered Windows Hello for Business credential to an attribute on the user's Active Directory object.

You can use a Windows Server-based PKI or a third-party Enterprise certification authority. The requirements for the domain controller certificate are shown below. For more details, see [Requirements for domain controller certificates from a third-party CA](/troubleshoot/windows-server/windows-security/requirements-domain-controller).

- The certificate must have a Certificate Revocation List (CRL) distribution point extension that points to a valid CRL, or an Authority Information Access (AIA) extension that points to an Online Certificate Status Protocol (OCSP) responder
- Optionally, the certificate Subject section could contain the directory path of the server object (the distinguished name)
- The certificate Key Usage section must contain Digital Signature and Key Encipherment
- Optionally, the certificate Basic Constraints section should contain: [Subject Type=End Entity, Path Length Constraint=None]
- The certificate Enhanced Key Usage section must contain Client Authentication (`1.3.6.1.5.5.7.3.2`), Server Authentication (`1.3.6.1.5.5.7.3.1`), and KDC Authentication (`1.3.6.1.5.2.3.5`)
- The certificate Subject Alternative Name section must contain the Domain Name System (DNS) name. 
- The certificate template must have an extension that has the value "DomainController", encoded as a [BMPstring](/windows/win32/seccertenroll/about-bmpstring). If you are using Windows Server Enterprise Certificate Authority, this extension is already included in the domain controller certificate template
- The domain controller certificate must be installed in the local computer's certificate store. See [Configure Hybrid Windows Hello for Business: Public Key Infrastructure](./hello-hybrid-key-whfb-settings-pki.md) for details

> [!IMPORTANT]
> For Azure AD joined device to authenticate to and use on-premises resources, ensure you:
> - Install the root certificate authority certificate for your organization in the user's trusted root certificate store
> - Publish your certificate revocation list to a location that is available to Azure AD-joined devices, such as a web-based url

### Federation with Azure

You can deploy Windows Hello for Business key trust in non-federated or federated environments:
- for non-federated environments, key trust deployments work iif you have deployed [Password Synchronization with Azure AD Connect](/azure/active-directory/hybrid/whatis-phs) or [Azure Active Directory Pass-through-Authentication](/azure/active-directory/connect/active-directory-aadconnect-pass-through-authentication)
- for federated environments, you can deploy Windows Hello for Business key trust using Active Directory Federation Services (AD FS) or third-party federation services

### Multi-factor authentication

Windows Hello for Business is a strong, two-factor credential the helps organizations reduce their dependency on passwords. The provisioning process lets a user enroll in Windows Hello for Business using their user name and password as one factor, but requires a second factor of authentication.

Hybrid Windows Hello for Business deployments can use Azure Multifactor Authentication (MFA) service or a multi-factor authentication provided by AD FS, which includes an adapter model that enables third parties to integrate their MFA into AD FS.

### Device Registration

Organizations wanting to deploy hybrid key trust need their domain joined devices to register to Azure Active Directory.  Just as a computer has an identity in Active Directory, that same computer has an identity in the cloud.  This ensures that only approved computers are used with that Azure Active Directory.  Each computer registers its identity in Azure Active Directory.

### Provisioning

You need to allow access to the URL account.microsoft.com to initiate Windows Hello for Business provisioning. This URL launches the subsequent steps in the provisioning process and is required to successfully complete Windows Hello for Business provisioning. This URL does not require any authentication and as such, does not collect any user data.

## Next Steps

Follow the Windows Hello for Business hybrid key trust deployment guide:

- for proof-of-concepts, labs, and new installations, choose the **New Installation Baseline**
- for environments transitioning from on-premises to hybrid, start with  **Configure Azure Directory Synchronization**
- for federated and non-federated environments, start with **Configure Windows Hello for Business settings**

> [!div class="op_single_selector"]
> - [New Installation Baseline](hello-hybrid-key-new-install.md)
> - [Configure Directory Synchronization](hello-hybrid-key-trust-dirsync.md)
> - [Configure Windows Hello for Business settings](hello-hybrid-key-whfb-settings.md)
