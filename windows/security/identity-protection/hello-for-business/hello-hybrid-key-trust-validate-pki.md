---
title: Configure and validate the Public Key Infrastructure in an hybrid key trust model
description: Configure and validate the Public Key Infrastructure when deploying Windows Hello for Business in an hybrid key trust model.
ms.date: 01/03/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---
# Configure and validate the Public Key Infrastructure - hybrid key trust

[!INCLUDE [hello-hybrid-key-trust](./includes/hello-hybrid-key-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* model. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Key trust deployments do not need client-issued certificates for on-premises authentication. Active Directory user accounts are configured for public key mapping by *Microsoft Entra Connect Sync*, which synchronizes the public key of the Windows Hello for Business credential to an attribute on the user's Active Directory object (`msDS-KeyCredentialLink`).

A Windows Server-based PKI or a third-party Enterprise certification authority can be used. The requirements for the domain controller certificate are shown below. For more details, see [Requirements for domain controller certificates from a third-party CA][SERV-1].

## Deploy an enterprise certification authority

This guide assumes most enterprises have an existing public key infrastructure. Windows Hello for Business depends on an enterprise PKI running the Windows Server *Active Directory Certificate Services* role.\
If you don't have an existing PKI, review [Certification Authority Guidance][PREV-1] to properly design your infrastructure. Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy][PREV-2] for instructions on how to configure your PKI using the information from your design session.

### Lab-based PKI

The following instructions may be used to deploy simple public key infrastructure that is suitable **for a lab environment**.

Sign in using *Enterprise Administrator* equivalent credentials on a Windows Server where you want the certification authority (CA) installed.

>[!NOTE]
>Never install a certification authority on a domain controller in a production environment.

1. Open an elevated Windows PowerShell prompt
1. Use the following command to install the Active Directory Certificate Services role.
    ```PowerShell
    Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
    ```
1. Use the following command to configure the CA using a basic certification authority configuration
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```

## Configure the enterprise PKI

[!INCLUDE [dc-certificate-template](includes/dc-certificate-template.md)]

> [!NOTE]
> Inclusion of the *KDC Authentication* OID in domain controller certificate is not required for Microsoft Entra hybrid joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Microsoft Entra joined devices.

> [!IMPORTANT]
> For Microsoft Entra joined devices to authenticate to on-premises resources, ensure to:
> - Install the root CA certificate in the device's trusted root certificate store. See [how to deploy a trusted certificate profile](/mem/intune/protect/certificates-trusted-root#to-create-a-trusted-certificate-profile) via Intune
> - Publish your certificate revocation list to a location that is available to Microsoft Entra joined devices, such as a web-based URL

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
> If you plan to deploy **Microsoft Entra joined** devices, and require single sign-on (SSO) to on-premises resources when signing in with Windows Hello for Business, follow the procedures to [update your CA to include an http-based CRL distribution point](hello-hybrid-aadj-sso.md).

## Configure and deploy certificates to domain controllers

[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

## Section review and next steps

Before moving to the next section, ensure the following steps are complete:

> [!div class="checklist"]
> - Configure domain controller certificates
> - Supersede existing domain controller certificates
> - Unpublish superseded certificate templates
> - Publish the certificate template to the CA
> - Deploy certificates to the domain controllers
> - Validate the domain controllers configuration

> [!div class="nextstepaction"]
> [Next: configure and provision Windows Hello for Business >](hello-hybrid-key-trust-provision.md)

<!--links-->
[SERV-1]: /troubleshoot/windows-server/windows-security/requirements-domain-controller
[PREV-1]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)
[PREV-2]: /previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)
