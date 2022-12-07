---
title: Configure federation between Google Workspace and Azure AD
description: Configuration of a federated trust between Google Workspace and Azure AD, with Google Workspace acting as an identity provider (IdP) for Azure AD.
ms.date: 12/06/2022
ms.topic: how-to
---

# Configure federation between Google Workspace and Azure AD

In this article, you'll learn the steps to configure Google Workspace as an identity provider (IdP) for Azure AD.\
Once configured, users will be able to sign in to Azure AD with their Google Workspace credentials.

## Prerequisites

To configure Google Workspace as an IdP for Azure AD, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple custom DNS domains (that is, domains that aren't in the format *.onmicrosoft.com)
    - If the federated domain has not yet been added to Azure AD, you must have access to the DNS domain to create a DNS record. This is required to verify the ownership of the DNS namespace
    - Learn how to [Add your custom domain name using the Azure Active Directory portal](/azure/active-directory/fundamentals/add-custom-domain)
1. Access to Azure AD as a *Global Administrator*
1. Access to Google Workspace as a *Super Admin*

To test federation, the following prerequisites must be met:

1. A Google Workspace environment, with users already created
    > [!IMPORTANT]
    > Users require an email address defined in Google Workspace, which is used to match the users in Azure AD
1. Individual Azure AD accounts already created: each Google Workspace user will require a matching account defined in Azure AD. These accounts are commonly created through automated solutions, for example:
    - School Data Sync (SDS)
    - Azure AD Connect sync for environment with on-premises AD DS
    - PowerShell scripts that call the Microsoft Graph API
    - Provisioning tools offered by the IdP - this capability is offered by Google Workspace through [auto-provisioning](https://support.google.com/a/answer/7365072)

## Configure Google Workspace and Azure AD

Follow the steps described in the [Google documentation](https://support.google.com/a/answer/6363817) to configure Google Workspace as an IdP for Azure AD. To simplify the configuration, note the following section regarding step 3 of Google documentation.

### Configure Azure AD as a Service Provider (SP) for Google Workspace

The configuration of Azure AD consists of changing the authentication method for the custom DNS domains. This configuration can be done using PowerShell.\
Using the **IdP metadata** XML file downloaded from Google Workspace, modify the `$DomainName` variable of the following script to match your environment, and then run it in an elevated PowerShell session:

```powershell
Install-Module -Name MSOnline
Import-Module MSOnline

$DomainName = "<your domain name>"

$xml = [Xml](Get-Content GoogleIDPMetadata.xml)

$cert = -join $xml.EntityDescriptor.IDPSSODescriptor.KeyDescriptor.KeyInfo.X509Data.X509Certificate.Split()
$issuerUri = $xml.EntityDescriptor.entityID
$logOnUri = $xml.EntityDescriptor.IDPSSODescriptor.SingleSignOnService | ? { $_.Binding.Contains('Redirect') } | % { $_.Location }
$LogOffUri = "https://accounts.google.com/logout"
$brand = "Google Workspace Identity"
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
ActiveLogOnUri                         : https://accounts.google.com/o/saml2/idp?<GUID>
DefaultInteractiveAuthenticationMethod : 
FederationBrandName                    : Google Workspace Identity
IssuerUri                              : https://accounts.google.com/o/saml2?idpid=<GUID>
LogOffUri                              : https://accounts.google.com/logout
MetadataExchangeUri                    : 
NextSigningCertificate                 : 
OpenIdConnectDiscoveryEndpoint         : 
PassiveLogOnUri                        : https://accounts.google.com/o/saml2/idp?idpid=<GUID>
SigningCertificate                     : <BASE64 encoded certificate>
SupportsMfa                            : 
```

## Verify federated authentication between Google Workspace and Azure AD

From a private browser session, navigate to https://portal.azure.com and sign in with a Google Workspace account:

1. As username, use the email as defined in Google Workspace
1. The user will be redirected to Google Workspace to sign in
1. After Google Workspace authentication, the user will be redirected back to Azure AD and signed in