---
title: Web sign-in for Windows devices
description: Learn how Web sign-in in Windows works and how to configure it.
ms.date: 09/13/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
ms.collection:
  - tier1
---

# Web sign-in for Windows devices

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can enable your users to sign-in using a web experience on Microsoft Entra joined devices, unlocking new sign-in options and capabilities.
This feature is called *Web sign-in*.

Web sign-in is a *credential provider*, and it was initially introduced in Windows 10 with support for Temporary Access Pass (TAP) only. With the release of Windows 11, the supported scenarios and capabilities of Web sign-in have been expanded.\
For example, with Web sign-in organizations can move to passwordless sign-in experiences, or enable users to sign-in with a federated identity.

## Prerequisites

To use web sign-in, the clients must meet the following prerequisites:

- Windows 11, version 22H2 with [5030310][KB-1], or later
- Must be Microsoft Entra joined
- Must have Internet connectivity, as the authentication is done over the Internet

[!INCLUDE [federated-sign-in](../../../../includes/licensing/web-sign-in.md)]

## Configure web sign-in

To use web sign-in, your devices must be configured with different policies. Review the following instructions to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Authentication | Enable Web Sign In | Enabled |
| Authentication | Configure Web Sign In Allowed Urls | This setting is optional, and it contains a semicolon-separated list of domains, for example: `idp.example.com;example.com` |
| Authentication | Configure Webcam Access Domain Names | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `example.com` |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| OMA-URI | More information |
|-|-|
| `./Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn`| [EnableWebSignIn](../../../client-management/mdm/policy-csp-authentication.md#enablewebsignin) |
| `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`|[ConfigureWebSignInAllowedUrls](../../../client-management/mdm/policy-csp-authentication.md#configurewebsigninallowedurls)|
| `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`|[ConfigureWebcamAccessDomainNames](../../../client-management/mdm/policy-csp-authentication.md#configurewebcamaccessdomainnames)|

#### [:::image type="icon" source="../../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../../includes/configure/provisioning-package-1.md)]

| Path | Setting name | Value |
|--|--|--|
| `Policies/Authentication` | `EnableWebSignIn` | Enabled |
| `Policies/Authentication` | `ConfigureWebSignInAllowedUrls` | This setting is optional, and it contains a semicolon-separated list of domains, for example: `idp.example.com;example.com` |
| `Policies/Authentication` | `ConfigureWebCamAccessDomainNames` | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `example.com` |

[!INCLUDE [provisioning-package-2](../../../../includes/configure/provisioning-package-2.md)]

---

## User experiences

Once the devices are configured, a new sign-in experience becomes available, as indicated by the presence of the Web sign-in credential provider :::image type="icon" source="images/web-sign-in-credential-provider.svg" border="false"::: in the Windows lock screen.

:::image type="content" source="images/lock-screen.png" lightbox="images/lock-screen.png" alt-text="Screenshot of the Windows lock screen showing the Web sign-in credential provider.":::

Here's a list of key scenarios that are supported by Web sign-in, and a brief animation showing the user experience. Select the thumbnail to start the animation.

:::row:::
  :::column span="3":::
  **Passwordless first sign-in experience**\
  Users can perform the first sign in to Windows passwordless, before enablig Windows Hello for Business. For example, using Microsoft Authenticator in the Web sign-in flow. When used in conjuction with Windows Hello for Business passworless, the organization can hide the password credential provider from the lock screen as well as in-session authentication scenarios.

  For more information, see [Windows Hello for Business passwordless](../hello-for-business/passwordless.md).
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/lock-screen.png" lightbox="../hello-for-business/images/pinreset/pin-reset.gif" alt-text="Animation of the Web sign-in experience with Microsoft Authenticator.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Windows Hello for Business PIN reset**\
  The PIN reset flow is seamless and more robust than in previous versions. For more information, see [PIN reset](../hello-for-business/hello-feature-pin-reset.md).
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/lock-screen.png" lightbox="../hello-for-business/images/pinreset/pin-reset.gif" alt-text="Animation of the PIN reset in experience.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Temporary Access Pass (TAP)**\
  Users can sign in using a Temporary Access Pass, which is a ...
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/lock-screen.png" lightbox="../hello-for-business/images/pinreset/pin-reset.gif" alt-text="Animation of the TAP sign in experience.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Sign in with a federated identity**\
  If the Microsoft Entra ID tenant is federated with a third-party SAML-P identity provider (IdP), federated users can sign to the Windows devices.

  > [!TIP]
  > To simplify the sign in experience, configure the preferred tenant policy, as it automatically redirect the sign in prompt to the IdP. For more information, see
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/web-sign-in-federated-auth.png" lightbox="images/web-sign-in-federated-auth.gif" alt-text="Animation of the sign in experience with a federated user.":::
  :::column-end:::
:::row-end:::

## Important considerations

### Known issues affecting student shared devices

The following issues are known to affect Web sign-in:

- Once enabled, the Web sign-in credential provider is the default credential provider for the device. To change the default credential provider, you must use the [Authentication CSP][WIN-4].

You can use Group Policy to deploy an administrative template policy setting to the computer. This policy setting is found under **Computer Configuration > Policies > Administrative Templates > System > Logon**:

To verify:
- Non-federated users can't sign-in to the devices, including local accounts
- The *Other user* button is missing from the sign-in screen

### Sign in with federated identities

- To improve the user experience, you can configure the *preferred Azure AD tenant name* feature.
  When using preferred AAD tenant name, the users can select the domain name during the sign-in process and redirected to the identity provider sign-in page.
  For more information about preferred tenant name, see [Authentication CSP - PreferredAadTenantDomainName][WIN-4].
- Disable Windows Hello provisioning

## Troubleshooting

- The user can exit the web sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the Windows lock screen

<!--links-->

[INT-1]: /mem/intune/configuration/custom-settings-windows-10
[KB-1]: https://support.microsoft.com/kb/5030310
[WIN-4]: /windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname
