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
- ✅ <b>Windows 11 SE, version 22H2</b>
---

<!-- MAXADO-6286399 -->
# Configure federated sign-in for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, you can enable your users to sign-in using a third-party identity provider (IdP). This feature is called **federated sign-in**. Federated sign-in is a great way to simplify the sign-in process for your users. Instead of having to remember a username and password, they can sign-in using their existing credentials from their IdP. For example, students and educators can use picture passwords or QR code badges to sign-in.

## Benefits of federated sign-in

Federated sign-in enables students to sign-in in less time, and with less friction.
With fewer credentials to remember and a simplified sign-in process, students are more engaged and focused on learning.

## Prerequisites

To implement federated sign-in, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple domains federated to a third-party IdP. For more information, see [Use a SAML 2.0 Identity Provider (IdP) for Single Sign On][AZ-1]
1. Individual IdP accounts created: each user will require an account defined in the third-party IdP platform
1. Individual Azure AD accounts created: each user will require a matching account defined in Azure AD. These accounts are commonly created through automation, with a provisioning process offered by the IdP
1. Licenses assigned to the Azure AD user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Azure AD, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Azure Active Directory][AZ-2]
1. Enable federated sign-in on the Windows devices that the users will be using
    > [!IMPORTANT]
    > This feature is exclusively available for Windows 11 SE, version 22H2

## Enable federated sign-in on devices

Before you can sign-in with a federated identity provider, your devices must be configured with different policies. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

To configure federated sign-in using Microsoft Intune, [create a custom profile][MEM-1] with the following settings:

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Data type: **String** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Data type: **String** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that re llowed to use the webcam during the sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|
| <li> OMA-URI: **`./Vendor/MSFT/SharedPC/EnableSharedPCMode`** </li><li>Data type: **Boolean** </li><li>Value: **False**</li>|

:::image type="content" source="images/federated-sign-in-settings-intune.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-intune.png" border="true":::

Assign the policy to a security group that contains as members the devices that require federated sign-in.

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure federated sign-in using a provisioning package, use the following settings:

| Setting |
|--------|
| <li> Path: **`FederatedAuthentication/EnableWebSignInForPrimaryUser`** </li><li>Value: **Enabled**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebSignInAllowedUrls`** </li><li>Value: Semicolon separated list of domains, for example: **`samlidp.clever.com;clever.com;mobile-redirector.clever.com`**</li>|
| <li> Path: **`Policies/Education/IsEducationEnvironment`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|
| <li> Path: **`Policies/Authentication/ConfigureWebCamAccessDomainNames`** </li><li>Value: This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during he sign-in process, separated by a semicolon. For example: **`clever.com`**</li>|
| <li> Path: **`SharedPC/EnableSharedPCMode`** </li><li>Value: **False**</li>|

:::image type="content" source="images/federated-sign-in-settings-ppkg.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/federated-sign-in-settings-ppkg.png" border="true":::

Apply the provisioning package to the devices that require federated sign-in.

---

## How to use federated sign-in

Once the devices are configured, a new sign-in experience becomes available.

As the end users enters their username, they will be redirected to the identity provider sign-in page. Once users are authenticated by the IdP, they will be be signed-in. In the following animation, you can see how the first sign-in process works:

:::image type="content" source="./images/federated-sign-in-windows-se.gif" alt-text="Windows 11 SE sign-in using federated sign-in through Clever and QR code badge." border="true":::

> [!IMPORTANT]
> Once the policy is enabled, the first user to sign-in to the device will also set the disambiguation page to the identity provider domain on the device. This means that the device will be defaulting to that IdP. The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen.

## Known issues

- Network and Accessibility menus aren't available in the web sign-in flow.  They can be accessed on the standard Windows sign-in page. While in the web sign-in flow, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> and the classic Windows sign-in UI will be shown, along with the buttons that launch those menus.  
- This feature won't work without access to network, as the authentication is done via a third-party provider over the network. Always make sure that there's a valid network connection, before trying to launch the web sign-in flow.
- The federated sign-in flow is not displayed if devices have *shared PC mode* enabled
- It is not supported to configure the *Azure AD preferred tenant name* feature with federated sign-in

## Troubleshooting

- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen
- Select the *Other User* button, and the standard username/password credentials are available to log into the device

-----------

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10

[AZ-1]: /azure/active-directory/hybrid/how-to-connect-fed-saml-idp
[AZ-2]: /azure/active-directory/enterprise-users/licensing-groups-assign