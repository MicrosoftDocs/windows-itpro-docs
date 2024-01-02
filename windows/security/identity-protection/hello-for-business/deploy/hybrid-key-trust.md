---
title: Windows Hello for Business hybrid key trust deployment guide
description: Learn how to deploy Windows Hello for Business in a hybrid key trust scenario.
ms.date: 01/03/2024
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

## Deployment steps

> [!div class="checklist"]
> Once the prerequisites are met, deploying Windows Hello for Business consists of the following steps:
>
> - [Configure and validate the Public Key Infrastructure](#configure-and-validate-the-public-key-infrastructure)
> - [Configure and enroll in Windows Hello for Business](hybrid-key-trust-enroll.md)
> - (optional) [Configure single sign-on for Microsoft Entra joined devices](../hello-hybrid-aadj-sso.md)

## Configure and validate the Public Key Infrastructure

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* model. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Key trust deployments don't need client-issued certificates for on-premises authentication. *Microsoft Entra Connect Sync* configures Active Directory user accounts for public key mapping, by synchronizing the public key of the Windows Hello for Business credential to an attribute on the user's Active Directory object (`msDS-KeyCredentialLink` attribute).

A Windows Server-based PKI or a third-party Enterprise certification authority can be used. For more information, see [Requirements for domain controller certificates from a third-party CA][SERV-1].

[!INCLUDE [lab-based-pki-deploy](includes/lab-based-pki-deploy.md)]

## Configure the enterprise PKI

[!INCLUDE [dc-certificate-template](includes/certificate-template-dc.md)]

[!INCLUDE [dc-certificate-template-dc-hybrid-notes](includes/certificate-template-dc-hybrid-notes.md)]

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

### Publish the certificate template to the CA

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template to issue**
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)* template you created in the previous steps > select **OK**
1. Close the console

> [!IMPORTANT]
> If you plan to deploy **Microsoft Entra joined** devices, and require single sign-on (SSO) to on-premises resources when signing in with Windows Hello for Business, follow the procedures to [update your CA to include an http-based CRL distribution point](../hello-hybrid-aadj-sso.md).

## Configure and deploy certificates to domain controllers

[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

## Section review and next steps

> [!div class="checklist"]
> Before moving to the next section, ensure the following steps are complete:
>
> - Configure domain controller certificate template
> - Supersede existing domain controller certificates
> - Unpublish superseded certificate templates
> - Publish the certificate template to the CA
> - Deploy certificates to the domain controllers
> - Validate the domain controllers configuration

> [!div class="nextstepaction"]
> [Next: configure and enroll in Windows Hello for Business >](hybrid-key-trust-enroll.md)

<!--links-->
[SERV-1]: /troubleshoot/windows-server/windows-security/requirements-domain-controller
