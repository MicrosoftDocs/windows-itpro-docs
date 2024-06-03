---
title: Configure federated sign-in for Windows devices
description: Learn how federated sign-in in Windows works and how to configure it.
ms.date: 06/03/2024
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
ms.collection:
  - tier1
  - education
---

# Configure federated sign-in for Windows devices

Starting in Windows 11 SE, version 22H2 and Windows 11 Pro Edu/Education, version 22H2 with [KB5022913][KB-1], you can enable your users to sign-in using a federated identity provider (IdP) via a web sign-in experience.
Signing in with a federated identity can be a great way to simplify the sign-in process for your users: instead of having to remember a username and password defined in Microsoft Entra ID, they can sign-in using their existing credentials from the IdP. For example, students and educators can use QR code badges to sign-in.

## Benefits of federated sign-in

A federated sign-in experience enables students to sign-in in less time, and with less friction.
With fewer credentials to remember and a simplified sign-in process, students are more engaged and focused on learning.

There are two Windows features that enable a federated sign-in experience:

- *Federated sign-in*, which is designed for 1:1 student devices. For an optimal experience, you should not enable federated sign-in on shared devices
- *Web sign-in*, which provides a similar experience to *Federated sign-in*, and can be used for shared devices

> [!IMPORTANT]
> *Federated sign-in* and *Web sign-in* require different configurations, which are explained in this document.

## Prerequisites

To enable a federated sign-in experience, the following prerequisites must be met:

1. A Microsoft Entra tenant, with one or multiple domains federated to a third-party IdP. For more information, see [What is federation with Microsoft Entra ID?][AZ-1] and [Use a SAML 2.0 IdP for Single Sign On][AZ-4]
    >[!NOTE]
    >If your organization uses a third-party federation solution, you can configure single sign-on to Microsoft Entra ID if the solution is compatible with Microsoft Entra ID. For questions regarding compatibility, contact your identity provider. If you're an IdP, and would like to validate your solution for interoperability, refer to these [guidelines][MSFT-1].

    - For a step-by-step guide on how to configure **Google Workspace** as an identity provider for Microsoft Entra ID, see [Configure federation between Google Workspace and Microsoft Entra ID](configure-aad-google-trust.md)
    - For a step-by-step guide on how to configure **Clever** as an identity provider for Microsoft Entra ID, see [Setup guide for Badges into Windows and Microsoft Entra ID][EXT-1]
1. Individual IdP accounts created: each user requires an account defined in the third-party IdP platform
1. Individual Microsoft Entra accounts created: each user requires a matching account defined in Microsoft Entra ID. These accounts are commonly created through automated solutions, for example:
    - [School Data Sync (SDS)][SDS-1]
    - [Microsoft Entra Connect Sync][AZ-3] for environment with on-premises AD DS
    - PowerShell scripts that call the [Microsoft Graph API][GRAPH-1]
    - provisioning tools offered by the IdP

    For more information about identity matching, see [Identity matching in Microsoft Entra ID](#identity-matching-in-microsoft-entra-id).
1. Licenses assigned to the Microsoft Entra user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Microsoft Entra ID, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Microsoft Entra ID][AZ-2]
1. Enable Federated sign-in or Web sign-in on the Windows devices, depending if the devices are shared or assigned to a single student

To use Federated sign-in or Web sign-in, the devices must have Internet access. These features don't work without it, as the authentication is done over the Internet.

> [!IMPORTANT]
> WS-Fed is the only supported federated protocol to join a device to Microsoft Entra ID. If you have a SAML 2.0 IdP, it's recommended to complete the Microsoft Entra join process using one of the following methods:
> - Provisioning packages (PPKG)
> - Windows Autopilot self-deploying mode

[!INCLUDE [federated-sign-in](../../includes/licensing/federated-sign-in.md)]

Federated sign-in is supported on the following Windows editions and versions:

- Windows 11 SE, version 22H2 and later
- Windows 11 Pro Edu/Education, version 22H2 with [KB5022913][KB-1]

Web sign-in is supported starting in Windows 11 SE/Pro Edu/Education, version 22H2 with [KB5026446][KB-2].

## Configure a federated sign-in experience

You can configure a federated sign-in experience for student assigned (1:1) devices or student shared devices:

- When federated sign-in is configured for **student assigned (1:1) devices**, you use a Windows feature called *Federated sign-in*. The first user who signs in to the device with a federated identity becomes the *primary user*. The primary user is always displayed in the bottom left corner of the sign-in screen
- When federated sign-in is configured for **student shared devices**, you use a Windows feature called *Web sign-in*. With Web sign-in there's no primary user, and the sign-in screen displays, by default, the last user who signed in to the device

The configuration is different for each scenario, and is described in the following sections.

### Configure Federated sign-in for student assigned (1:1) devices

Review the following instructions to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Education | Is Education Environment | Enabled |
| Federated Authentication | Enable Web Sign In For Primary User | Enabled |
| Authentication | Configure Web Sign In Allowed Urls | Enter the list of domains, with each URL in a separate row. For example:<br>- `samlidp.clever.com`<br>- `clever.com`<br>- `mobile-redirector.clever.com` |
| Authentication | Configure Webcam Access Domain Names | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com` |

[!INCLUDE [intune-settings-catalog-2](../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| Setting |
|--------|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`<br>**Data type**: int<br>**Value**: `1`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`<br>**Data type**: int<br>**Value**: `1`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`<br>**Data type**: String <br>**Value**: Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** <br>**Data type**: String <br>**Value**: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com`|

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure Federated sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| **Path**: `Education/IsEducationEnvironment` <br>**Value**: Enabled|
| **Path**: `FederatedAuthentication/EnableWebSignInForPrimaryUser` <br>**Value**: Enabled|
| **Path**: `Policies/Authentication/ConfigureWebSignInAllowedUrls` <br>**Value**: Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com`|
| **Path**: `Policies/Authentication/ConfigureWebCamAccessDomainNames` <br>**Value**: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com`|

:::image type="content" source="images/federated-sign-in-settings-ppkg.png" alt-text="Screenshot of Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-ppkg.png" border="true":::

Apply the provisioning package to the 1:1 devices that require Federated sign-in.

> [!IMPORTANT]
> There was an issue affecting Windows 11, version 22H2 when using provisioning packages during OOBE. The issue was fixed with the KB5020044 update. If you plan to configure federated sign-in with a provisioning package during OOBE, ensure that the devices have the update installed. For more information, see [KB5020044][KB-1].

---

### Configure Web sign-in for student shared devices

Review the following instructions to configure your shared devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Education | Is Education Environment | Enabled |
| SharedPC | Enable Shared PC Mode With OneDrive Sync | True |
| Authentication | Enable Web Sign In | Enabled |
| Authentication | Configure Web Sign In Allowed Urls | Enter the list of domains, with each URL in a separate row. For example:<br>- `samlidp.clever.com`<br>- `clever.com`<br>- `mobile-redirector.clever.com` |
| Authentication | Configure Webcam Access Domain Names | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com` |

[!INCLUDE [intune-settings-catalog-2](../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| Setting |
|--------|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`<br>**Data type**: int<br>**Value**: `1`|
| **OMA-URI**: `./Vendor/MSFT/SharedPC/EnableSharedPCModeWithOneDriveSync`<br>**Data type**: Boolean<br>**Value**: True|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn`<br>**Data type**: Integer<br>**Value**: `1`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`<br>**Data type**: String <br>**Value**: Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`<br>**Data type**: String <br>**Value**: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com`|

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure web sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| <li> Path: **`Education/IsEducationEnvironment`**<br>Value: **Enabled**|
| <li> Path: **`SharedPC/EnableSharedPCModeWithOneDriveSync`**<br>Value: **True**|
| <li> Path: **`Policies/Authentication/EnableWebSignIn`**<br>Value: **Enabled**|
| <li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`**<br>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**|
| <li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`**<br>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**|

Apply the provisioning package to the shared devices that require web sign-in.

> [!IMPORTANT]
> There was an issue affecting Windows 11, version 22H2 when using provisioning packages during OOBE. The issue was fixed with the KB5020044 update. If you plan to configure federated sign-in with a provisioning package during OOBE, ensure that the devices have the update installed. For more information, see [KB5020044][KB-1].

---

## How to use federated sign-in

Once the devices are configured, a new sign-in experience becomes available.

As users enter their username, they're redirected to the identity provider sign-in page. Once the Idp authenticates the users, they're signed-in. In the following animation, you can observe how the first sign-in process works for a student assigned (1:1) device:

:::image type="content" source="./images/win-11-se-federated-sign-in.gif" alt-text="Screenshot of Windows 11 SE sign-in using federated sign-in through Clever and QR code badge, in a student assigned (1:1) device." border="false":::

> [!IMPORTANT]
> For student assigned (1:1) devices, once the policy is enabled, the first user who sign-in to the device will also set the disambiguation page to the identity provider domain on the device. This means that the device will be defaulting to that IdP. The user can exit the Federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen.
> The behavior is different for student shared devices, where the disambiguation page is always shown, unless preferred Microsoft Entra tenant name is configured.

## Important considerations

### Known issues affecting student assigned (1:1) devices

Federated sign-in for student assigned (1:1) devices doesn't work with the following settings enabled:

- **EnableSharedPCMode** or **EnableSharedPCModeWithOneDriveSync**, which are part of the [SharedPC CSP][WIN-1]
- **Interactive logon: do not display last signed in**, which is a security policy part of the [Policy CSP][WIN-2]
- **Take a Test** in kiosk mode, since it uses the security policy above

### Known issues affecting student shared devices

The following issues are known to affect student shared devices:

- Non-federated users can't sign-in to the devices, including local accounts
- **Take a Test** in kiosk mode, since it uses a local guest account to sign in

### Account management

For student shared devices, it's recommended to configure the account management policies to automatically delete the user profiles after a certain period of inactivity or disk levels. For more information, see [Set up a shared or guest Windows device][WIN-3].

### Preferred Microsoft Entra tenant name

To improve the user experience, you can configure the *preferred Microsoft Entra tenant name* feature.\
When using preferred Microsoft Entra tenant name, the users bypass the disambiguation page and are redirected to the identity provider sign-in page. This configuration can be especially useful for student shared devices, where the disambiguation page is always shown.

For more information about preferred tenant name, see [Authentication CSP - PreferredAadTenantDomainName][WIN-4].

### Identity matching in Microsoft Entra ID

When a Microsoft Entra user is federated, the user's identity from the IdP must match an existing user object in Microsoft Entra ID.
After the token sent by the IdP is validated, Microsoft Entra ID searches for a matching user object in the tenant by using an attribute called *ImmutableId*.

> [!NOTE]
> The ImmutableId is a string value that **must be unique** for each user in the tenant, and it shouldn't change over time. For example, the ImmutableId could be the student ID or SIS ID. The ImmutableId value should be based on the federation setup and configuration with your IdP, so confirm with your IdP before setting it.

If the matching object is found, the user is signed-in. Otherwise, the user is presented with an error message. The following picture shows that a user with the ImmutableId *260051* can't be found:

:::image type="content" source="images/federation/user-match-lookup-failure.png" alt-text="Screenshot of Microsoft Entra sign-in error: a user with a matching ImmutableId can't be found in the tenant." lightbox="images/federation/user-match-lookup-failure.png":::

> [!IMPORTANT]
> The ImmutableId matching is case-sensitive.

The ImmutableId is typically configured when the user is created in Microsoft Entra ID, but it can also be updated later.\
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
[INT-1]: /mem/intune/configuration/custom-settings-windows-10

[MSFT-1]: https://www.microsoft.com/download/details.aspx?id=56843

[SDS-1]: /schooldatasync

[KB-1]: https://support.microsoft.com/kb/5022913
[KB-2]: https://support.microsoft.com/kb/5026446

[WIN-1]: /windows/client-management/mdm/sharedpc-csp
[WIN-2]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-interactivelogon-donotdisplaylastsignedin
[WIN-3]: /windows/configuration/set-up-shared-or-guest-pc
[WIN-4]: /windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname
