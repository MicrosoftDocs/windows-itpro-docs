---
title: Configure and validate the Public Key Infrastructure in an hybrid key trust model
description: Configure and validate the Public Key Infrastructure when deploying Windows Hello for Business in an hybrid key trust model.
ms.date: 12/18/2023
ms.topic: tutorial
---

# Configure and validate the Public Key Infrastructure - hybrid key trust

[!INCLUDE [apply-to-hybrid-key-trust](includes/apply-to-hybrid-key-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* model. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Key trust deployments don't need client-issued certificates for on-premises authentication. Active Directory user accounts are configured for public key mapping by *Microsoft Entra Connect Sync*, which synchronizes the public key of the Windows Hello for Business credential to an attribute on the user's Active Directory object (`msDS-KeyCredentialLink`).

A Windows Server-based PKI or a third-party Enterprise certification authority can be used. For more details, see [Requirements for domain controller certificates from a third-party CA][SERV-1].

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

Before moving to the next section, ensure the following steps are complete:

> [!div class="checklist"]
>
> - Configure domain controller certificates
> - Supersede existing domain controller certificates
> - Unpublish superseded certificate templates
> - Publish the certificate template to the CA
> - Deploy certificates to the domain controllers
> - Validate the domain controllers configuration

> [!div class="nextstepaction"]
> [Next: configure and provision Windows Hello for Business >](hybrid-key-trust-enroll.md)

<!--links-->
[SERV-1]: /troubleshoot/windows-server/windows-security/requirements-domain-controller
