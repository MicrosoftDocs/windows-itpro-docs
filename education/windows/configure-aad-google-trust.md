---
title: Configure federation between Google Workspace and Microsoft Entra ID
description: Configuration of a federated trust between Google Workspace and Microsoft Entra ID, with Google Workspace acting as an identity provider (IdP) for Microsoft Entra ID.
ms.date: 04/10/2024
ms.topic: how-to
appliesto:
---

# Configure federation between Google Workspace and Microsoft Entra ID

This article describes the steps required to configure Google Workspace as an identity provider (IdP) for Microsoft Entra ID.\
Once configured, users can sign in to Microsoft Entra ID with their Google Workspace credentials.

## Prerequisites

To configure Google Workspace as an IdP for Microsoft Entra ID, the following prerequisites must be met:

1. A Microsoft Entra tenant, with one or multiple custom DNS domains (that is, domains that aren't in the format \**.onmicrosoft.com*)
    - If the federated domain hasn't yet been added to Microsoft Entra ID, you must have access to the DNS domain to create a DNS record. This is required to verify the ownership of the DNS namespace
    - Learn how to [Add your custom domain name using the Microsoft Entra admin center](/azure/active-directory/fundamentals/add-custom-domain)
1. Access to the [Microsoft Entra admin center](https://entra.microsoft.com) as at least a [External Identity Provider Administrator](/entra/identity/role-based-access-control/permissions-reference#external-identity-provider-administrator)
1. Access to Google Workspace with an account with *super admin* privileges

To test federation, the following prerequisites must be met:

1. A Google Workspace environment, with users already created
    > [!IMPORTANT]
    > Users require an email address defined in Google Workspace, which is used to match the users in Microsoft Entra ID.
    > For more information about identity matching, see [Identity matching in Microsoft Entra ID](federated-sign-in.md#identity-matching-in-microsoft-entra-id).
1. Individual Microsoft Entra accounts already created: each Google Workspace user requires a matching account defined in Microsoft Entra ID. These accounts are commonly created through automated solutions, for example:
    - School Data Sync (SDS)
    - Microsoft Entra Connect Sync for environment with on-premises AD DS
    - PowerShell scripts that call the Microsoft Graph API
    - Provisioning tools offered by the IdP - Google Workspace offers [autoprovisioning](https://support.google.com/a/answer/7365072)

<a name='configure-google-workspace-as-an-idp-for-azure-ad'></a>

## Configure Google Workspace as an IdP for Microsoft Entra ID

1. Sign in to the [Google Workspace Admin Console](https://admin.google.com) with an account with *super admin* privileges
1. Select **Apps > Web and mobile apps**
1. Select **Add app > Search for apps** and search for *microsoft*
1. In the search results page, hover over the *Microsoft Office 365 - Web (SAML)* app and select **Select**
   :::image type="content" source="images/google/google-admin-search-app.png" alt-text="Screenshot showing Google Workspace and the search button for Microsoft Office 365 SAML app.":::
1. On the **Google Identity Provider details** page, select **Download Metadata** and take note of the location where the **IdP metadata** - *GoogleIDPMetadata.xml* - file is saved, as it's used to set up Microsoft Entra ID later
1. On the **Service provider detail's** page
      - Select the option **Signed response**
      - Verify that the Name ID format is set to **PERSISTENT**
      - Depending on how the Microsoft Entra users have been provisioned in Microsoft Entra ID, you might need to adjust the **Name ID** mapping.\
        If using Google autoprovisioning, select **Basic Information > Primary email**
      - Select **Continue**
1. On the **Attribute mapping** page, map the Google attributes to the Microsoft Entra attributes

    |Google Directory attributes|Microsoft Entra attributes|
    |-|-|
    |Basic Information: Primary Email|App attributes: IDPEmail|

    > [!IMPORTANT]
    > You must ensure that your Microsoft Entra user account's email matches that in your Google Workspace.

1. Select **Finish**

Now that the app is configured, you must enable it for the users in Google Workspace:

1. Sign in to the [Google Workspace Admin Console](https://admin.google.com) with an account with *super admin* privileges
1. Select **Apps > Web and mobile apps**
1. Select **Microsoft Office 365**
1. Select **User access**
1. Select **ON for everyone > Save**

<a name='configure-azure-ad-as-a-service-provider-sp-for-google-workspace'></a>

## Configure Microsoft Entra ID as a Service Provider (SP) for Google Workspace

The configuration of Microsoft Entra ID consists of changing the authentication method for the custom DNS domains. This configuration can be done using PowerShell.\
Using the **IdP metadata** XML file downloaded from Google Workspace, modify the *$DomainName* variable of the following script to match your environment, and then run it in a PowerShell session. When prompted to authenticate to Microsoft Entra ID, sign in as at least a [External Identity Provider Administrator](/entra/identity/role-based-access-control/permissions-reference#external-identity-provider-administrator)

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Install-Module Microsoft.Graph -Scope CurrentUser
Import-Module Microsoft.Graph

$domainId = "<your domain name>"

$xml = [Xml](Get-Content GoogleIDPMetadata.xml)

$cert = -join $xml.EntityDescriptor.IDPSSODescriptor.KeyDescriptor.KeyInfo.X509Data.X509Certificate.Split()
$issuerUri = $xml.EntityDescriptor.entityID
$signinUri = $xml.EntityDescriptor.IDPSSODescriptor.SingleSignOnService | ? { $_.Binding.Contains('Redirect') } | % { $_.Location }
$signoutUri = "https://accounts.google.com/logout"
$displayName = "Google Workspace Identity"
Connect-MGGraph -Scopes "Domain.ReadWrite.All", "Directory.AccessAsUser.All"

$domainAuthParams = @{
  DomainId = $domainId
  IssuerUri = $issuerUri
  DisplayName = $displayName
  ActiveSignInUri = $signinUri
  PassiveSignInUri = $signinUri
  SignOutUri = $signoutUri
  SigningCertificate = $cert
  PreferredAuthenticationProtocol = "saml"
  federatedIdpMfaBehavior = "acceptIfMfaDoneByFederatedIdp"
}

New-MgDomainFederationConfiguration @domainAuthParams
```

To verify that the configuration is correct, you can use the following PowerShell command:

```powershell
Get-MgDomainFederationConfiguration -DomainId $domainId |fl
```

```output
ActiveSignInUri                       : https://accounts.google.com/o/saml2/idp?idpid=<GUID>
DisplayName                           : Google Workspace Identity
FederatedIdpMfaBehavior               : acceptIfMfaDoneByFederatedIdp
Id                                    : 3f600dce-ab37-4798-9341-ffd34b147f70
IsSignedAuthenticationRequestRequired :
IssuerUri                             : https://accounts.google.com/o/saml2?idpid=<GUID>
MetadataExchangeUri                   :
NextSigningCertificate                :
PassiveSignInUri                      : https://accounts.google.com/o/saml2/idp?idpid=<GUID>
PreferredAuthenticationProtocol       : saml
PromptLoginBehavior                   :
SignOutUri                            : https://accounts.google.com/logout
SigningCertificate                    : <BASE64 encoded certificate>
AdditionalProperties                  : {}
```

<a name='verify-federated-authentication-between-google-workspace-and-azure-ad'></a>

## Verify federated authentication between Google Workspace and Microsoft Entra ID

From a private browser session, navigate to https://portal.azure.com and sign in with a Google Workspace account:

1. As username, use the email as defined in Google Workspace
1. The user is redirected to Google Workspace to sign in
1. After Google Workspace authentication, the user is redirected back to Microsoft Entra ID and signed in

:::image type="content" source="images/google/google-sso.gif" alt-text="A GIF that shows the user authenticating the Azure portal using a Google Workspace federated identity.":::
