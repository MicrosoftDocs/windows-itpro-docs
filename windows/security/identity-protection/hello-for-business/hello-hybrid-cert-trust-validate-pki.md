---
title: Configure and validate the Public Key Infrastructure in an hybrid certificate trust model
description: Configure and validate the Public Key Infrastructure when deploying Windows Hello for Business in a hybrid certificate trust model.
ms.date: 01/03/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: tutorial
---
# Configure and validate the Public Key Infrastructure - hybrid certificate trust

[!INCLUDE [hello-hybrid-key-trust](./includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *certificate trust* model. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Hybrid certificate trust deployments issue users with a sign-in certificate that enables them to authenticate using Windows Hello for Business credentials to the domain controllers. Additionally, hybrid certificate trust deployments issue certificates to registration authorities to provide defense-in-depth security when issuing user authentication certificates.

[!INCLUDE [lab-based-pki-deploy](includes/lab-based-pki-deploy.md)]

## Configure the enterprise PKI

Expand the following sections to configure the PKI for Windows Hello for Business.

<br>

[!INCLUDE [dc-certificate-template](includes/dc-certificate-template.md)]

> [!NOTE]
> Inclusion of the *KDC Authentication* OID in domain controller certificate is not required for hybrid Azure AD-joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Azure AD-joined devices.

> [!IMPORTANT]
> For Azure AD joined devices to authenticate to on-premises resources, ensure to:
> - Install the root CA certificate in the device's trusted root certificate store. See [how to deploy a trusted certificate profile](/mem/intune/protect/certificates-trusted-root#to-create-a-trusted-certificate-profile) via Intune
> - Publish your certificate revocation list to a location that is available to Azure AD-joined devices, such as a web-based URL

<br>

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

<br>

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

<br>
<details>

<summary><b>Publish the certificate templates to the CA</b></summary>

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template to issue**
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)*, *WHFB Enrollment Agent*  and *WHFB Authentication* templates you created in the previous steps > select **OK**
1. Close the console

</details>

> [!IMPORTANT]
> If you plan to deploy **Azure AD joined** devices, and require single sign-on (SSO) to on-premises resources when signing in with Windows Hello for Business, follow the procedures to [update your CA to include an http-based CRL distribution point](hello-hybrid-aadj-sso.md).

## Configure and deploy certificates to domain controllers

[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

## Section review and next steps

Before moving to the next section, ensure the following steps are complete:

> [!div class="checklist"]
> - Configure domain controller certificates
> -_ Supersede existing domain controller certificates
> - Unpublish superseded certificate templates
> - Publish the certificate template to the CA
> - Deploy certificates to the domain controllers
> - Validate the domain controllers configuration

> [!div class="nextstepaction"]
> [Next: configure and provision Windows Hello for Business >](hello-hybrid-cert-trust-provision.md)

<!--links-->
[SERV-1]: /troubleshoot/windows-server/windows-security/requirements-domain-controller