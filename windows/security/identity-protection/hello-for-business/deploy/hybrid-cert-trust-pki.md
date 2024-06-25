---
title: Configure and validate the PKI in a hybrid certificate trust model
description: Configure and validate the Public Key Infrastructure when deploying Windows Hello for Business in a hybrid certificate trust model.
ms.date: 06/23/2024
ms.topic: tutorial
---

# Configure and validate the PKI in a hybrid certificate trust model

[!INCLUDE [apply-to-hybrid-cert-trust](includes/apply-to-hybrid-cert-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *certificate trust* models. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Hybrid certificate trust deployments issue users a sign-in certificate, enabling them to authenticate to Active Directory using Windows Hello for Business credentials. Additionally, hybrid certificate trust deployments issue certificates to registration authorities to provide defense-in-depth security when issuing user authentication certificates.

[!INCLUDE [lab-based-pki-deploy](includes/lab-based-pki-deploy.md)]

## Configure the enterprise PKI

[!INCLUDE [dc-certificate-template](includes/certificate-template-dc.md)]

[!INCLUDE [dc-certificate-template-dc-hybrid-notes](includes/certificate-template-dc-hybrid-notes.md)]

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

[!INCLUDE [enrollment-agent-certificate-template](includes/certificate-template-enrollment-agent.md)]

[!INCLUDE [auth-certificate-template](includes/certificate-template-auth.md)]

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

### Publish the certificate templates to the CA

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template to issue**
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)*, *WHFB Enrollment Agent*  and *WHFB Authentication* templates you created in the previous steps > select **OK**
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
> - Configure domain controller certificates
> - Supersede existing domain controller certificates
> - Unpublish superseded certificate templates
> - Configure an enrollment agent certificate template
> - Configure an authentication certificate template
> - Publish the certificate templates to the CA
> - Deploy certificates to the domain controllers
> - Validate the domain controllers configuration

> [!div class="nextstepaction"]
> [Next: configure AD FS >](hybrid-cert-trust-adfs.md)

<!--links-->
