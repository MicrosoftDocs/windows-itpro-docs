---
title: Web sign-in for Windows devices
description: Learn how Web sign-in in Windows works and how to configure it.
ms.date: 09/11/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
ms.collection:
  - tier1
---

# Web sign-in for Windows devices

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can enable your users to sign-in using a web experience on Microsoft Entra joined devices.
This feature is called *Web sign-in*.\

Web sign-in is a Windows credential provider that allows users to sign in to their Windows devices using a web interface, opening new sign in scenarios.

>[!Note:]
>Web sign-in was initially realeased in Windows 10, supporting Temporary Access Pass only. Windows 11 is the first version where Web sign-in capabilities are expanded.

## Benefits of web sign-in

## Prerequisites

To use web sign-in, the following prerequisites must be met:

- The devices must have Internet access. This feature doesn't work without it, as the authentication is done over the Internet.
- The device must be Microsoft Entra joined
- Windows 11, version 22H2 with [5030310][KB-1]

<!-- [!INCLUDE [federated-sign-in](../../includes/licensing/federated-sign-in.md)] -->

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

## How to use Web sign-in

Once the devices are configured, a new sign-in experience becomes available.

## Important considerations

### Known issues affecting student shared devices

The following issues are known to affect Web sign-in:

- Non-federated users can't sign-in to the devices, including local accounts
- The *Other user* button is missing from the sign-in screen

### Preferred Azure AD tenant name

To improve the user experience, you can configure the *preferred Azure AD tenant name* feature.\
When using preferred AAD tenant name, the users bypass the disambiguation page and are redirected to the identity provider sign-in page. This configuration can be especially useful for student shared devices, where the disambiguation page is always shown.

For more information about preferred tenant name, see [Authentication CSP - PreferredAadTenantDomainName][WIN-4].

## Troubleshooting

- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen
- Select the *Other User* button, and the standard username/password credentials are available to log into the device

<!--links-->

[INT-1]: /mem/intune/configuration/custom-settings-windows-10
[KB-1]: https://support.microsoft.com/kb/5030310
[WIN-4]: /windows/client-management/mdm/policy-csp-authentication#preferredaadtenantdomainname
