---
title: Configure federation between Clever and Azure AD
description: Configuration of a federated trust between Clever and Azure AD, with Clever acting as an identity provider (IdP) for Azure AD.
ms.date: 12/06/2022
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
---

<!-- MAXADO-6286399 -->
# Configure federation between Clever and Azure AD

In this article, you will learn the steps to configure Clever as an identity provider (IdP) for Azure AD.\
Once configured, users will be able to sign in to Azure AD with their Clever credentials (e.g. using QR code login).

## Prerequisites

To configure Clever as an IdP for Azure AD, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple custom DNS domains (i.e. domains that are not in the format *.onmicrosoft.com)
1. A Clever environment, with students and faculty members already created
    - Users require an email address defined in Clever, which is used to match the users in Azure AD
1. Individual Azure AD accounts already created: each Clever user will require a matching account defined in Azure AD. These accounts are commonly created through automated solutions, for example:
    - School Data Sync (SDS)
    - Azure AD Connect sync for environment with on-premises AD DS
    - PowerShell scripts that call the Microsoft Graph API
    - Provisioning tools offered by the IdP - this capability is offered by Clever as a dedicated offering

## Configure Clever

1. Reach out to Clever Support to request the creation of the *Azure AD SAML app* in your environment
1. Once the app is ready, you will be notified via email to accept the invitation to the app
:::image type="content" source="images/clever/invitation.png" alt-text="email invitation from Clever":::
1. [Sign in to Clever](https://schools.clever.com/applications/saml-azure-ad/settings) as an administrator, and configure the *Azure AD SAML app* with the following details:

:::image type="content" source="images/clever/clever-aad-saml-app.png" alt-text="Clever dashboard":::

| Variables | Value |
|-|-|
|ASSERTION CONSUMER SERVICE URL|`https://login.microsoftonline.com/login.srf`|
|ENTITY ID|`urn:federation:MicrosoftOnline`|
|NAME ID FORMAT|`urn:oasis:names:tc:SAML:2.0:nameid-format:email`|

The other parameters should already be pre-configured. Verify that the attribute mapping is correct, using the *email* as NAMEID:
:::image type="content" source="images/clever/clever-aad-saml-app-2.png" alt-text="Clever admin console":::
  
Take note of the *IDENTITY PROVIDER METADATA URL* value, as it will be required in the next step. For example: `https://samlidp.clever.com/saml-azure-ad/metadata/<GUID>`

> [!NOTE]
> Federation will not work if the app has a launch date set in the future. Once the application is ready to be used, ask Clever Support to change the launch date.

## Configure Azure AD

The configuration of Azure AD consists of changing the authentication method for the custom DNS domains. This configuration can be done using PowerShell.\ 
Modify the `$idpMetadataUrl` and `$DomainName` variables of the following script to match your environment, and then run it in an elevated PowerShell session:

```powershell
Install-Module -Name AzureAD
Install-Module -Name MSOnline
Import-Module MSOnline

$idpMetadataUrl = "https://samlidp.clever.com/saml-azure-ad/metadata/<GUID>"
$DomainName = "<your domain name>"

$xml = [Xml](Invoke-WebRequest -Uri $idpMetadataUrl -ContentType "application/xml").content

$cert = -join $xml.EntityDescriptor.IDPSSODescriptor.KeyDescriptor.KeyInfo.X509Data.X509Certificate.Split()
$issuerUri = $xml.EntityDescriptor.entityID
$logOnUri = $xml.EntityDescriptor.IDPSSODescriptor.SingleSignOnService | ? { $_.Binding.Contains('Redirect') } | % { $_.Location }
$LogOffUri = "https://clever.com/logout"
Connect-MsolService
$DomainAuthParams = @{
    DomainName = $DomainName
    Authentication = "Federated"
    IssuerUri = $issuerUri
    FederationBrandName = $brand
    ActiveLogOnUri = $logOnUri
    PassiveLogOnUri = $logOnUri
    LogOffUri = $LogOffUri
    SigningCertificate = $cert
    PreferredAuthenticationProtocol = "SAMLP"
}
Set-MsolDomainAuthentication @DomainAuthParams
```

To verify that the configuration is correct, you can use the following PowerShell command:

```powershell
Get-MsolDomainFederationSettings -DomainName $DomainName
```

```output
ActiveLogOnUri                         : https://samlidp.clever.com/saml-azure-ad/assert/<GUID>
DefaultInteractiveAuthenticationMethod : 
FederationBrandName                    : 
IssuerUri                              : http://samlidp.clever.com/services/trust/<GUID>
LogOffUri                              : https://clever.com/logout
MetadataExchangeUri                    : 
NextSigningCertificate                 : 
OpenIdConnectDiscoveryEndpoint         : 
PassiveLogOnUri                        : https://samlidp.clever.com/saml-azure-ad/assert/<GUID>
SigningCertificate                     : <BASE64 encoded certificate>
SupportsMfa                            : 
```

## Verify federated authentication between Clever and Azure AD

From a private browser session, navigate to https://portal.azure.com and sign in with a Clever account:

1. As username, use the email as defined in Clever
1. The user will be redirected to Clever to sign in
1. After Clever authentication (e.g. using QR code), the user will be redirected back to Azure AD and signed in

:::image type="content" source="images/clever/clever-sso.gif" alt-text="Clever SSO":::