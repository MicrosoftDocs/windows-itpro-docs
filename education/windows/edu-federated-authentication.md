---
title: Federated authentication for Windows 11 SE
description: Description of federated authentication feature for Windows 11 SE and how to configure it via Intune
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
- ✅ <b>Windows 11 SE 22H2</b>
---

<!-- MAXADO-6286399 -->
# Configure federated authentication for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, you can configure federated authentication, enabling your users to sign in using a third-party identity provider (IdP).
The sign-in experience on Windows SE devices can be simplified based on the options offered by the IdP. For example, rather than logging in with a traditional username and password, students and educators can use picture passwords or QR code badges.

## Benefits of federated authentication

With federated authentication, students can sign-in in less time, and with less friction.
Fewer credentials to remember and a simplified sign-in process, enable students to be more engaged and focused on learning.

## Prerequisites

To implement federated authentication, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple domains federated to a third-party IdP. For more information, see [Use a SAML 2.0 Identity Provider (IdP) for Single Sign On][AZ-1]
1. Individual IdP accounts created: each user will require an account defined in the third-party IdP platform
1. Individual Azure AD accounts created: each user will require a matching account defined in Azure AD. These accounts are commonly created through automation, with a provisioning process offered by the IdP
1. Licenses assigned to the Azure AD user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Azure AD, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Azure Active Directory][AZ-2]
1. Enable federated authentication on the Windows devices that the users will be using
    > [!IMPORTANT]
    > This feature is exclusively available for Windows 11 SE, version 22H2.

## Enable federated authentication on Windows devices

Can be done in Intune or with a provisioning package.

To configure federated authentication using Microsoft Intune, use a [custom profile][MEM-1]:

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank">Microsoft Endpoint Manager admin center</a>
1. Select **Devices** > **Configuration profiles** > **Create profile**
1. Enter the following properties:
    - **Platform**: select **Windows 10 and later**
    - **Profile type**: select **Templates**
    - **Template name**: select **Custom**
1. Select **Create**
1. In **Basics**, enter the following properties:
    - **Name**: enter a descriptive name for the profile
    - **Description**: enter a description for the profile. This setting is optional, but recommended
1. Select **Next**
1. In **Configuration settings**, select **Add** and enter the following properties, repeating the process for each row and selecting **Save**:

    | Name | OMA-URI | Data type | Value |
    |-|-|-|-|
    | `EnableWebSignInForPrimaryUser` | `./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser` | Integer | 1|
    | `ConfigureWebSignInAllowedUrls` | `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls` | String | Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com`|
    | `IsEducationEnvironment` | `./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment` | Integer | 1|
    | `ConfigureWebCamAccessDomainNames` | `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames` | String |This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com`|

   :::image type="content" source="images/edu-federated-authentication-settings.png" alt-text="Custom policy showing the settings to be configured to enable federated authentication" lightbox="edu-federated-authentication-settings.png" border="true":::
1. Select **Review + Save**
1. Select **Next**
1. In **Scope tags**, assign any applicable tags (optional)
1. Select **Next**
1. In **Assignments**, select the security groups that will receive the policy
1. Select **Next**
1. In **Applicability Rules**, select **Next**
1. In **Review + create**, review your settings and select **Create**

## How to use federated authentication

Once the devices are configured, a new sign-in experience becomes available.

:::image type="content" source="./images/federated-auth.gif" alt-text="Windows 11 SE sign-in using federated authentication through Clever and QR code badge." border="true":::

## Known issues
- Network and Accessibility menus aren't available in the web sign-in flow.  They can be accessed on the standard Windows sign-in page. While in the web sign-in flow, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> and the classic Windows sign-in UI will be shown, along with the buttons that launch those menus.  
- This feature won't work without access to network, as the authentication is done via a third-party provider over the network. Always make sure that there's a valid network connection, before trying to launch the web sign-in flow.

## Troubleshooting
- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen.
- The *Other User* button can be pressed, and standard username/password credentials can be used to log into the device.

[MEM-1]: /mem/intune/configuration/custom-settings-configure

[AZ-1]: /azure/active-directory/hybrid/how-to-connect-fed-saml-idp
[AZ-2]: /azure/active-directory/enterprise-users/licensing-groups-assign