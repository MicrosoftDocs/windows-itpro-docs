---
title: Web sign-in for Windows
description: Learn how Web sign-in in Windows works, key scenarios, and how to configure it.
ms.date: 09/27/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
ms.collection:
  - highpri
  - tier1
---

# Web sign-in for Windows

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can enable a web-based sign-in experience on Microsoft Entra joined devices, unlocking new sign-in options and capabilities.
This feature is called *Web sign-in*.

Web sign-in is a *credential provider*, and it was initially introduced in Windows 10 with support for Temporary Access Pass (TAP) only. With the release of Windows 11, the supported scenarios and capabilities of Web sign-in are expanded.\
For example, you can sign in with the Microsoft Authenticator app or with a SAML-P federated identity.

This article describes how to configure Web sign-in and the supported key scenarios.

## System requirements

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
| Authentication | Configure Web Sign In Allowed Urls | This setting is optional, and it contains a list of domains required for sign in, for example:<br>- `idp.example.com`<br>- `example.com` |
| Authentication | Configure Webcam Access Domain Names | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, for example: `example.com` |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| OMA-URI | More information |
|-|-|
| `./Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn`| [EnableWebSignIn](/windows/client-management/mdm/policy-csp-authentication#enablewebsignin) |
| `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`|[ConfigureWebSignInAllowedUrls](/windows/client-management/mdm/policy-csp-authentication#configurewebsigninallowedurls)|
| `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`|[ConfigureWebcamAccessDomainNames](/windows/client-management/mdm/policy-csp-authentication#configurewebcamaccessdomainnames)|

#### [:::image type="icon" source="../../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[!INCLUDE [provisioning-package-1](../../../../includes/configure/provisioning-package-1.md)]

| Path | Setting name | Value |
|--|--|--|
| `Policies/Authentication` | `EnableWebSignIn` | Enabled |
| `Policies/Authentication` | `ConfigureWebSignInAllowedUrls` | This setting is optional, and it contains a semicolon-separated list of domains required for sign in, for example: `idp.example.com;example.com` |
| `Policies/Authentication` | `ConfigureWebCamAccessDomainNames` | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `example.com` |

[!INCLUDE [provisioning-package-2](../../../../includes/configure/provisioning-package-2.md)]

---

## User experiences

Once the devices are configured, a new sign-in experience becomes available, as indicated by the presence of the Web sign-in credential provider :::image type="icon" source="images/web-sign-in-credential-provider.svg" border="false"::: in the Windows lock screen.

:::image type="content" source="images/lock-screen.png" border="false" lightbox="images/lock-screen.png" alt-text="Screenshot of the Windows lock screen showing the Web sign-in credential provider.":::

Here's a list of key scenarios supported by Web sign-in, and a brief animation showing the user experience. Select the thumbnail to start the animation.

### Passwordless sign-in
:::row:::
  :::column span="3":::
  Users can sign in to Windows passwordless, even before enrolling in Windows Hello for Business. For example, by using the Microsoft Authenticator app as a sign-in method.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/web-sign-in-authenticator.png" border="false" lightbox="images/web-sign-in-authenticator.gif" alt-text="Animation of the Web sign-in experience with Microsoft Authenticator.":::
  :::column-end:::
:::row-end:::

> [!TIP]
> When used in conjuction with *Windows Hello for Business passwordless*, you can hide the password credential provider from the lock screen as well as in-session authentication scenarios. This enables a truly passwordless Windows experience.

To learn more:
- [Enable passwordless sign-in with Microsoft Authenticator][AAD-1]
- [Passwordless authentication options for Microsoft Entra ID][AAD-2]
- [Windows passwordless experience](../passwordless-experience/index.md)

### Windows Hello for Business PIN reset

:::row:::
  :::column span="3":::
  The Windows Hello PIN reset flow is seamless and more robust than in previous versions.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/web-sign-in-pin-reset.png" border="false" lightbox="images/web-sign-in-pin-reset.gif" alt-text="Animation of the PIN reset in experience.":::
  :::column-end:::
:::row-end:::

For more information, see [PIN reset](../hello-for-business/hello-feature-pin-reset.md).

### Temporary Access Pass (TAP)

:::row:::
  :::column span="3":::
  A Temporary Access Pass (TAP) is a time-limited passcode granted by an administrator to a user. Users can sign in with a TAP using the Web sign-in credential provider. For example:

  - to onboard Windows Hello for Business or a FIDO2 security key
  - if lost or forgotten FIDO2 security key and unknown password

  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/web-sign-in-tap.png" border="false" lightbox="images/web-sign-in-tap.gif" alt-text="Animation of the TAP sign in experience.":::
  :::column-end:::
:::row-end:::

For more information, see [Use a Temporary Access Pass][AAD-3].

### Sign in with a federated identity

:::row:::
  :::column span="3":::
  If the Microsoft Entra tenant is federated with a third-party SAML-P identity provider (IdP), federated users can sign using the Web sign-in credential provider.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/web-sign-in-federated-auth.png" border="false" lightbox="images/web-sign-in-federated-auth.gif" alt-text="Animation of the sign in experience with a federated user.":::
  :::column-end:::
:::row-end:::

> [!TIP]
> To improve the user experience for federated identities:
>
> - Configure the *preferred Microsoft Entra tenant name* feature, which allows users to select the domain name during the sign-in process. The users are then automatically redirected to the identity provider sign-in page.
> - Enable Windows Hello for Business. Once the user signs in, the user can enroll in Windows Hello for Business and then use it to sign in to the device

For more information about preferred tenant name, see [Authentication CSP - PreferredAadTenantDomainName][WIN-1].

## Important considerations

Here's a list of important considerations to keep in mind when configuring or using Web sign-in:

- Cached credentials aren't supported with Web sign-in. If the device is offline, the user can't use the Web sign-in credential provider to sign in
- After sign out, the user isn't displayed in the user selection list
- Once enabled, the Web sign-in credential provider is the default credential provider for new users signing in to the device. To change the default credential provider, you can use the [DefaultCredentialProvider][WIN-2] ADMX-backed policy
- The user can exit the Web sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the Windows lock screen

### Known issues

- If you attempt to sign in while the device is offline, you get the following message: *It doesn't look that you're connected to the Internet. Check your connection and try again*. Selecting the *Back to sign-in* option doesn't bring you back to the lock screen. As a workaround, you can press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the lock screen.

### :::image type="icon" source="../../images/icons/feedback.svg" border="false"::: Provide feedback

To provide feedback for web sign-in, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passwordless experience**.

<!--links-->

[AAD-1]: /azure/active-directory/authentication/howto-authentication-passwordless-phone
[AAD-2]: /azure/active-directory/authentication/concept-authentication-passwordless
[AAD-3]: /azure/active-directory/authentication/howto-authentication-temporary-access-pass
[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[INT-1]: /mem/intune/configuration/custom-settings-windows-10
[KB-1]: https://support.microsoft.com/kb/5030310
[WIN-1]: /windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname
[WIN-2]: /windows/client-management/mdm/policy-csp-admx-credentialproviders#defaultcredentialprovider
