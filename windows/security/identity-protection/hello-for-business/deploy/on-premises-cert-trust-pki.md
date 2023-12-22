---
title: Configure and validate the Public Key Infrastructure in an on-premises certificate trust model
description: Configure and validate the Public Key Infrastructure the Public Key Infrastructure when deploying Windows Hello for Business in a certificate trust model.
ms.date: 12/18/2023
ms.topic: tutorial
---

# Configure and validate the Public Key Infrastructure - on-premises certificate trust

[!INCLUDE [apply-to-on-premises-cert-trust-entra](includes/apply-to-on-premises-cert-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* or *certificate trust* models. The domain controllers must have a certificate, which serves as a root of trust for clients. The certificate ensures that clients don't communicate with rogue domain controllers. The certificate trust model extends certificate issuance to client computers. During Windows Hello for Business provisioning, the user receives a sign-in certificate.

[!INCLUDE [lab-based-pki-deploy](includes/lab-based-pki-deploy.md)]

## Configure the enterprise PKI

[!INCLUDE [dc-certificate-template](includes/certificate-template-dc.md)]

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

[!INCLUDE [web-server-certificate-template](includes/certificate-template-web-server.md)]

[!INCLUDE [enrollment-agent-certificate-template](includes/certificate-template-enrollment-agent.md)]

[!INCLUDE [auth-certificate-template](includes/certificate-template-auth.md)]

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

### Publish certificate templates to the CA

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)*, *Internal Web Server*, *WHFB Enrollment Agent* and *WHFB Authentication* templates you created in the previous steps. Select **OK** to publish the selected certificate templates to the certification authority
1. If you published the *Domain Controller Authentication (Kerberos)* certificate template, then unpublish the certificate templates you included in the superseded templates list
   - To unpublish a certificate template, right-click the certificate template you want to unpublish and select **Delete**. Select **Yes** to confirm the operation
1. Close the console

## Configure and deploy certificates to domain controllers

[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

> [!div class="nextstepaction"]
> [Next: prepare and deploy AD FS >](on-premises-cert-trust-adfs.md)
