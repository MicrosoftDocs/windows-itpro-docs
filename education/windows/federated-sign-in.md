---
title: Configure federated sign-in for Windows devices
description: Description of federated sign-in feature for the Education SKUs of Windows 11 and how to configure it via Intune or provisioning packages.
ms.date: 04/11/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
ms.collection:
  - highpri
  - tier1
  - education
---

# Configure federated sign-in for Windows devices

Starting in Windows 11 SE, version 22H2 and Windows 11 Pro Edu/Education, version 22H2 with [KB5022913][KB-1], you can enable your users to sign-in using a federated identity provider (IdP) via web sign-in.\
This feature is called *federated sign-in*.\
Federated sign-in is a great way to simplify the sign-in process for your users: instead of having to remember a username and password defined in Azure AD, they can sign-in using their existing credentials from the IdP. For example, students and educators can use QR code badges to sign-in.

## Benefits of federated sign-in

Federated sign-in enables students to sign-in in less time, and with less friction.
With fewer credentials to remember and a simplified sign-in process, students are more engaged and focused on learning.
> [!IMPORTANT]
> Currently, this feature is designed for 1:1 devices. For an optimal experience, you should not enable federated sign-in on shared devices.

## Prerequisites

To implement federated sign-in, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple domains federated to a third-party IdP. For more information, see [What is federation with Azure AD?][AZ-1] and [Use a SAML 2.0 IdP for Single Sign On][AZ-4]
    >[!NOTE]
    >If your organization uses a third-party federation solution, you can configure single sign-on to Azure Active Directory if the solution is compatible with Azure Active Directory. For questions regarding compatibility, contact your identity provider. If you're an IdP, and would like to validate your solution for interoperability, refer to these [guidelines][MSFT-1].

    - For a step-by-step guide on how to configure **Google Workspace** as an identity provider for Azure AD, see [Configure federation between Google Workspace and Azure AD](configure-aad-google-trust.md)
    - For a step-by-step guide on how to configure **Clever** as an identity provider for Azure AD, see [Setup guide for Badges into Windows and Azure AD][EXT-1]
1. Individual IdP accounts created: each user will require an account defined in the third-party IdP platform
1. Individual Azure AD accounts created: each user will require a matching account defined in Azure AD. These accounts are commonly created through automated solutions, for example:
    - [School Data Sync (SDS)][SDS-1]
    - [Azure AD Connect sync][AZ-3] for environment with on-premises AD DS
    - PowerShell scripts that call the [Microsoft Graph API][GRAPH-1]
    - provisioning tools offered by the IdP
    
    For more information about identity matching, see [Identity matching in Azure AD](#identity-matching-in-azure-ad).
1. Licenses assigned to the Azure AD user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Azure AD, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Azure Active Directory][AZ-2]
1. Enable federated sign-in on the Windows devices

To use federated sign-in, the devices must have Internet access. This feature won't work without it, as the authentication is done over the Internet.

> [!IMPORTANT]
> WS-Fed is the only supported federated protocol to join a device to Azure AD. If you have a SAML 2.0 IdP, it's recommended to complete the Azure AD join process using one of the following methods:
> - provisioning packages (PPKG)
> - Windows Autopilot self-deploying mode

### System requirements

Federated sign-in is supported on the following Windows SKUs and versions:

- Windows 11 SE, version 22H2 and later
- Windows 11 Pro Edu/Education, version 22H2 with [KB5022913][KB-1]

## Configure federated sign-in

To use web sign-in with a federated identity provider, your devices must be configured with different policies. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure federated sign-in using Microsoft Intune, [create a custom profile][MEM-1] with the following settings:

[!INCLUDE [intune-custom-settings-1](includes/intune-custom-settings-1.md)]

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Data type: **String** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Data type: **String** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|

:::image type="content" source="images/federated-sign-in-settings-intune.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-intune.png" border="true":::

[!INCLUDE [intune-custom-settings-2](includes/intune-custom-settings-2.md)]
[!INCLUDE [intune-custom-settings-info](includes/intune-custom-settings-info.md)]

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure federated sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| <li> Path: **`FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> Path: **`Policies/Education/IsEducationEnvironment`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|

:::image type="content" source="images/federated-sign-in-settings-ppkg.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-ppkg.png" border="true":::

Apply the provisioning package to the devices that require federated sign-in.

> [!IMPORTANT]
> There was an issue affecting Windows 11, version 22H2 when using provisioning packages during OOBE. The issue was fixed with the KB5020044 update. If you plan to configure federated sign-in with a provisioning package during OOBE, ensure that the devices have the update installed. For more information, see [KB5020044][KB-1].

---

## How to use federated sign-in

Once the devices are configured, a new sign-in experience becomes available.

As the end users enter their username, they'll be redirected to the identity provider sign-in page. Once users are authenticated by the IdP, they'll be signed-in. In the following animation, you can see how the first sign-in process works:

:::image type="content" source="./images/win-11-se-federated-sign-in.gif" alt-text="Windows 11 SE sign-in using federated sign-in through Clever and QR code badge." border="false":::

> [!IMPORTANT]
> Once the policy is enabled, the first user to sign-in to the device will also set the disambiguation page to the identity provider domain on the device. This means that the device will be defaulting to that IdP. The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen.

## Important considerations

Federated sign-in doesn't work on devices that have the following settings enabled:

- **EnableSharedPCMode**, which is part of the [SharedPC CSP][WIN-1]
- **Interactive logon: do not display last signed in**, which is a security policy part of the [Policy CSP][WIN-2]
- **Take a Test**, since it uses the security policy above

### Identity matching in Azure AD

When an Azure AD user is federated, the user's identity from the IdP must match an existing user object in Azure AD.
After the token sent by the IdP is validated, Azure AD searches for a matching user object in the tenant by using an attribute called *ImmutableId*.

> [!NOTE]
> The ImmutableId is a string value that **must be unique** for each user in the tenant, and it shouldn't change over time. For example, the ImmutableId could be the student ID or SIS ID. The ImmutableId value should be based on the federation setup and configuration with your IdP, so confirm with your IdP before setting it.

If the matching object is found, the user is signed-in. If not, the user is presented with an error message. The following picture shows that a user with the ImmutableId *260051* can't be found:

:::image type="content" source="images/federation/user-match-lookup-failure.png" alt-text="Azure AD sign-in error: a user with a matching ImmutableId can't be found in the tenant." lightbox="images/federation/user-match-lookup-failure.png":::

> [!IMPORTANT]
> The ImmutableId matching is case-sensitive.

The ImmutableId is typically configured when the user is created in Azure AD, but it can also be updated later.\
In a scenario where a user is federated and you want to change the ImmutableId, you must:

1. Convert the federated user to a cloud-only user (update the UPN to a non-federated domain)
1. Update the ImmutableId
1. Convert the user back to a federated user

Here's a PowerShell example to update the ImmutableId for a federated user:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Install-Module Microsoft.Graph -Scope CurrentUser
Import-Module Microsoft.Graph
Connect-MgGraph -Scopes 'User.Read.All', 'User.ReadWrite.All'

#1. Convert the user from federated to cloud-only
Update-MgUser -UserId alton@example.com -UserPrincipalName alton@example.onmicrosoft.com

#2. Convert the user back to federated, while setting the immutableId
Update-MgUser -UserId alton@example.onmicrosoft.com -UserPrincipalName alton@example.com -OnPremisesImmutableId '260051'
```

## Troubleshooting

- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen
- Select the *Other User* button, and the standard username/password credentials are available to log into the device

<!--links-->

[AZ-1]: /azure/active-directory/hybrid/whatis-fed
[AZ-2]: /azure/active-directory/enterprise-users/licensing-groups-assign
[AZ-3]: /azure/active-directory/hybrid/how-to-connect-sync-whatis
[AZ-4]: /azure/active-directory/hybrid/how-to-connect-fed-saml-idp

[GRAPH-1]: /graph/api/user-post-users?tabs=powershell

[EXT-1]: https://support.clever.com/hc/s/articles/000001546
[MEM-1]: /mem/intune/configuration/custom-settings-windows-10

[MSFT-1]: https://www.microsoft.com/download/details.aspx?id=56843

[SDS-1]: /schooldatasync

[KB-1]: https://support.microsoft.com/kb/5022913

[WIN-1]: /windows/client-management/mdm/sharedpc-csp
[WIN-2]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin