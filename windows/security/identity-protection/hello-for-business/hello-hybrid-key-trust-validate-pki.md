---
title: Configure and validate the Public Key Infrastructure in a hybrid key trust model
description: Configure and validate the Public Key Infrastructure when deploying Windows Hello for Business in a hybrid key trust model.
ms.date: 12/21/2022
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10 and later</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016 and later</a>
ms.topic: tutorial
---
# Configure and validate the Public Key Infrastructure - hybrid key trust

[!INCLUDE [hello-hybrid-key-trust](./includes/hello-hybrid-key-trust.md)]

Windows Hello for Business must have a Public Key Infrastructure (PKI) when using the *key trust* or *certificate trust* models. The domain controllers must have a certificate, which serves as a *root of trust* for clients. The certificate ensures that clients don't communicate with rogue domain controllers.

Key trust deployments do not need client issued certificates for on-premises authentication. Active Directory user accounts are automatically configured for public key mapping by Azure AD Connect synchronizing the public key of the registered Windows Hello for Business credential to an attribute on the user's Active Directory object.

You can use a Windows Server-based PKI or a third-party Enterprise certification authority. The requirements for the domain controller certificate are shown below. For more details, see [Requirements for domain controller certificates from a third-party CA](/troubleshoot/windows-server/windows-security/requirements-domain-controller).

## Deploy an enterprise certification authority

This guide assumes most enterprises have an existing public key infrastructure. Windows Hello for Business depends on an enterprise PKI running the Windows Server *Active Directory Certificate Services* role.

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
3. Use the following command to configure the CA using a basic certification authority configuration
    ```PowerShell
    Install-AdcsCertificationAuthority
    ```

## Configure the enterprise PKI

If you don't have an existing PKI, review [Certification Authority Guidance](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831574(v=ws.11)) to properly design your infrastructure. Then, consult the [Test Lab Guide: Deploying an AD CS Two-Tier PKI Hierarchy](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831348(v=ws.11)) for instructions on how to configure your PKI using the information from your design session.

Expand the following sections to configure the PKI for Windows Hello for Business.

<details>
<summary><b>Configure domain controller certificates</b></summary>

[!INCLUDE [dc-certificate-template](includes/dc-certificate-template.md)]

> [!NOTE]
> Inclusion of the *KDC Authentication* OID in domain controller certificate is not required for hybrid Azure AD-joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Azure AD-joined devices.

</details>
<br>

<details>
<summary><b>Supersede existing domain controller certificates</b></summary>

[!INCLUDE [dc-certificate-template-supersede](includes/dc-certificate-supersede.md)]

</details>
<br>

<details>
<summary><b>Unpublish Superseded Certificate Templates</b></summary>

[!INCLUDE [unpublish-superseded-templates](includes/unpublish-superseded-templates.md)]

</details>
<br>

<details>
<summary><b>Publish certificate templates to the CA</b></summary>

A certification authority can only issue certificates for certificate templates that are published to it. If you have more than one CA, and you want more CAs to issue certificates based on the certificate template, then you must publish the certificate template to them.

Sign in to the CA or management workstations with **Enterprise Admin** equivalent credentials.

1. Open the **Certification Authority** management console
1. Expand the parent node from the navigation pane
1. Select **Certificate Templates** in the navigation pane
1. Right-click the **Certificate Templates** node. Select **New > Certificate Template** to issue
1. In the **Enable Certificates Templates** window, select the *Domain Controller Authentication (Kerberos)* template you created in the previous steps > select **OK**
1. If you published the *Domain Controller Authentication (Kerberos)* certificate template, then unpublish the certificate templates you included in the superseded templates list
   - To unpublish a certificate template, right-click the certificate template you want to unpublish and select **Delete**. Select **Yes** to confirm the operation
1. Close the console

</details>
<br>

## Configure and deploy certificates to domain controllers


[!INCLUDE [dc-certificate-deployment](includes/dc-certificate-deployment.md)]

## Validate the configuration

[!INCLUDE [dc-certificate-validate](includes/dc-certificate-validate.md)]

> [!div class="nextstepaction"]
> [Next: configure and provision Windows Hello for Business >](hello-hybrid-key-trust-provision.md)



<!-- 
- The certificate must have a Certificate Revocation List (CRL) distribution point extension that points to a valid CRL, or an Authority Information Access (AIA) extension that points to an Online Certificate Status Protocol (OCSP) responder
- Optionally, the certificate Subject section could contain the directory path of the server object (the distinguished name)
- The certificate Key Usage section must contain Digital Signature and Key Encipherment
- Optionally, the certificate Basic Constraints section should contain: [Subject Type=End Entity, Path Length Constraint=None]
- The certificate Enhanced Key Usage section must contain Client Authentication (`1.3.6.1.5.5.7.3.2`), Server Authentication (`1.3.6.1.5.5.7.3.1`), and KDC Authentication (`1.3.6.1.5.2.3.5`)
- The certificate Subject Alternative Name section must contain the Domain Name System (DNS) name. 
- The certificate template must have an extension that has the value "DomainController", encoded as a [BMPstring](/windows/win32/seccertenroll/about-bmpstring). If you are using Windows Server Enterprise Certificate Authority, this extension is already included in the domain controller certificate template
- The domain controller certificate must be installed in the local computer's certificate store. See [Configure Hybrid Windows Hello for Business: Public Key Infrastructure](./hello-hybrid-key-whfb-settings-pki.md) for details -->

> [!IMPORTANT]
> For Azure AD joined device to authenticate to and use on-premises resources, ensure you:
> - Install the root certificate authority certificate for your organization in the user's trusted root certificate store
> - Publish your certificate revocation list to a location that is available to Azure AD-joined devices, such as a web-based URL