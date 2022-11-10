---
title: Configure federated sign-in for Windows devices
description: Description of federated sign-in feature for Windows 11 SE and how to configure it via Intune
ms.date: 09/15/2022
ms.prod: windows
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
---

<!-- MAXADO-6286399 -->
# Configure federated sign-in for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, you can enable your users to sign-in using a SAML 2.0 identity provider (IdP). This feature is called **federated sign-in**. Federated sign-in is a great way to simplify the sign-in process for your users: instead of having to remember a username and password defined in Azure AD, they can sign-in using their existing credentials from the IdP. For example, students and educators can use QR code badges to sign-in.

## Benefits of federated sign-in

Federated sign-in enables students to sign-in in less time, and with less friction.
With fewer credentials to remember and a simplified sign-in process, students are more engaged and focused on learning.
> [!IMPORTANT]
> Currently, this feature is designed for 1:1 devices. For an optimal experience, you should not enable federated sign-in on shared devices.

## Prerequisites

To implement federated sign-in, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple domains federated to a third-party SAML 2.0 IdP. For more information, see [Use a SAML 2.0 Identity Provider (IdP) for Single Sign On][AZ-1]
    >[!NOTE]
    >If your organization uses a third-party federation solution, you can configure single sign-on to Azure Active Directory if the solution is compatible with Azure Active Directory. For questions regarding compatibility, please contact your identity provider. If you're an IdP, and would like to validate your solution for interoperability, please refer to these [guidelines][MSFT-1].
1. Individual IdP accounts created: each user will require an account defined in the third-party IdP platform
1. Individual Azure AD accounts created: each user will require a matching account defined in Azure AD. These accounts are commonly created through automated solutions, for example:
    - [School Data Sync (SDS)][SDS-1]
    - [Azure AD Connect sync][AZ-3] for environment with on-premises AD DS
    - PowerShell scripts that call the [Microsoft Graph API][GRAPH-1]
    - provisioning tools offered by the IdP
1. Licenses assigned to the Azure AD user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Azure AD, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Azure Active Directory][AZ-2]
1. Enable federated sign-in on the Windows devices that the users will be using
    > [!IMPORTANT]
    > This feature is exclusively available for Windows 11 SE, version 22H2.

To use federated sign-in, the devices must have Internet access. This feature won't work without it, as the authentication is done over the Internet.

## Enable federated sign-in on devices
<!-- 
To sign-in with a SAML 2.0 identity provider, your devices must be configured with different policies. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure federated sign-in using Microsoft Intune, [create a custom profile][MEM-1] with the following settings:-->

To sign-in with a SAML 2.0 identity provider, your devices must be configured with different policies, which can be configured using Microsoft Intune.

To configure federated sign-in using Microsoft Intune, [create a custom profile][MEM-1] with the following settings:

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Data type: **String** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Data type: **String** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|

:::image type="content" source="images/federated-sign-in-settings-intune.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-intune.png" border="true":::

Assign the policy to a security group that contains as members the devices that require federated sign-in.

<!--
#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)


To configure federated sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| <li> Path: **`FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> Path: **`Policies/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during he sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|

:::image type="content" source="images/federated-sign-in-settings-ppkg.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-ppkg.png" border="true":::

Apply the provisioning package to the devices that require federated sign-in.

---
-->

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
- **Take a Test**, since it leverages the security policy above

## Troubleshooting

- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen
- Select the *Other User* button, and the standard username/password credentials are available to log into the device

-----------

[AZ-1]: /azure/active-directory/hybrid/how-to-connect-fed-saml-idp
[AZ-2]: /azure/active-directory/enterprise-users/licensing-groups-assign
[AZ-3]: /azure/active-directory/hybrid/how-to-connect-sync-whatis

[GRAPH-1]: /graph/api/user-post-users?tabs=powershell

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10

[MSFT-1]: https://www.microsoft.com/download/details.aspx?id=56843

[SDS-1]: /schooldatasync

[WIN-1]: /windows/client-management/mdm/sharedpc-csp
[WIN-2]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin