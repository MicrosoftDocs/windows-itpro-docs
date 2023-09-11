---
title: Configure Web sign-in for Windows devices
description: Learn how Web sign-in in Windows works and how to configure it.
ms.date: 09/11/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
ms.collection:
  - tier1
---

# Configure Web sign-in for Windows devices

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], you can enable your users to sign-in using a web experience on Microsoft Entra joined devices.
This feature is called *Web sign-in*.\

Web sign in is a new sign-in experience that allows users to sign in to their Windows devices using a web browser experience, opening new sign in scenarios.

>[!Note:]
>Web sign-in was initially realeased in windows 10 for TAP-only scenarios. Windows 11 is the first version where Web sign-in capabilities are extended.

## Benefits of web sign-in

## Prerequisites

To use web sign-in, the following prerequisites must be met:

- The devices must have Internet access. This feature doesn't work without it, as the authentication is done over the Internet.
- The device must be Microsoft Entra joined
- Windows 11, version 22H2 with [5030310][KB-1]

<!-- [!INCLUDE [federated-sign-in](../../includes/licensing/federated-sign-in.md)] -->

## Configure web sign-in

You can configure federated sign-in for student assigned (1:1) devices or student shared devices:

- When federated sign-in is configured for **student assigned (1:1) devices**, the first user who signs in to the device with a federated identity becomes the *primary user*. The primary user is always displayed in the bottom left corner of the sign-in screen
- When federated sign-in is configured for **student shared devices**, there's no primary user. The sign-in screen displays, by default, the last user who signed in to the device

To use web sign-in, your devices must be configured with different policies. Review the following instructions to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="../../images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Authentication | Enable Web Sign In | Enabled |
| Authentication | Configure Web Sign In Allowed Urls | This setting is optional, and it contains a semicolon-separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com` |
| Authentication | Configure Webcam Access Domain Names | This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com` |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| Setting |
|--------|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn`<br>**Data type**: Integer<br>**Value**: `1`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`<br>**Data type**: String <br>**Value**: Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com`|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`<br>**Data type**: String <br>**Value**: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com`|

#### [:::image type="icon" source="../../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure web sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| <li> Path: **`Policies/Authentication/EnableWebSignIn`**<br>Value: **Enabled**|
| <li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`**<br>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**|
| <li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`**<br>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**|

Apply the provisioning package to the shared devices that require web sign-in.

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
