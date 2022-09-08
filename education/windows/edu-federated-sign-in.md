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
- ✅ <b>Windows 11 SE 22H2</b>
---

<!-- MAXADO-6286399 -->
# Configure federated sign-in for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, you can enable your users to sign-in using a third-party identity provider (IdP). This feature is called **federated sign-in**. Federated sign-in is a great way to simplify the sign-in process for your users. Instead of having to remember a username and password, they can sign-in using their existing credentials from their IdP. For example, students and educators can use picture passwords or QR code badges to sign-in.

## Benefits of federated sign-in

With federated sign-in, students can sign-in in less time, and with less friction.
Fewer credentials to remember and a simplified sign-in process, enable students to be more engaged and focused on learning.

## Prerequisites

To implement federated sign-in, the following prerequisites must be met:

1. An Azure AD tenant, with one or multiple domains federated to a third-party IdP. For more information, see [Use a SAML 2.0 Identity Provider (IdP) for Single Sign On][AZ-1]
1. Individual IdP accounts created: each user will require an account defined in the third-party IdP platform
1. Individual Azure AD accounts created: each user will require a matching account defined in Azure AD. These accounts are commonly created through automation, with a provisioning process offered by the IdP
1. Licenses assigned to the Azure AD user accounts. It's recommended to assign licenses to a dynamic group: when new users are provisioned in Azure AD, the licenses are automatically assigned. For more information, see [Assign licenses to users by group membership in Azure Active Directory][AZ-2]
1. Enable federated sign-in on the Windows devices that the users will be using
    > [!IMPORTANT]
    > This feature is exclusively available for Windows 11 SE, version 22H2.
1. The Windows devices must have *shared PC mode* disabled

## Enable federated sign-in on Windows devices

Can be done in Intune or with a provisioning package.

To configure federated sign-in using Microsoft Intune, use a [custom profile][MEM-1]:

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
1. In **Configuration settings**, select **Add** and enter the following properties:

    |Name|EnableWebSignInForPrimaryUser|
    | --- | --- |
    | **OMA-URI** | `./Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser` |
    | **Data type** | Integer |
    | **Value**| 1 |

1. Select **Save**
1. Select **Add** and enter the following properties:

    |Name|ConfigureWebSignInAllowedUrls|
    | --- | --- |
    | **OMA-URI** | `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls` |
    | **Data type** | String |
    | **Value**| Semicolon separated list of domains, for example: `samlidp.clever.com;clever.com;mobile-redirector.clever.com` |

1. Select **Save**
1. Select **Add** and enter the following properties:

    |Name|IsEducationEnvironment|
    | --- | --- |
    | **OMA-URI** | `./Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment` |
    | **Data type** | Integer |
    | **Value**| 1 |

1. Select **Save**
1. Select **Add** and enter the following properties:
    
    |||
    | --- | --- |
    | **Name** |ConfigureWebCamAccessDomainNames|
    | **OMA-URI** | `./Vendor/MSFT/Policy/Config/Authentication/ConfigureWebCamAccessDomainNames` |
    | **Data type** | String |
    | **Value**| This setting is optional, and it should be configured if you need to use the webcam during the sign-in process. Specify the list of domains that are allowed to use the webcam during the sign-in process, separated by a semicolon. For example: `clever.com` |

1. Select **Save**
1. Select **Add** and enter the following properties:
    
    |||
    | --- | --- |
    | **Name** |EnableSharedPCMode|
    | **OMA-URI** | `./Vendor/MSFT/SharedPC/EnableSharedPCMode` |
    | **Data type** | Boolean |
    | **Value** | False |
    
    :::image type="content" source="images/edu-federated-authentication-settings.png" alt-text="Custom policy showing the settings to be configured to enable federated sign-in" lightbox="images/edu-federated-authentication-settings.png" border="true":::

1. Select **Review + Save**
1. Select **Next**
1. In **Scope tags**, assign any applicable tags (optional)
1. Select **Next**
1. In **Assignments**, select the security groups that will receive the policy
1. Select **Next**
1. In **Applicability Rules**, select **Next**
1. In **Review + create**, review your settings and select **Create**
## How to use federated sign-in

Once the devices are configured, a new sign-in experience becomes available.

:::image type="content" source="./images/federated-auth.gif" alt-text="Windows 11 SE sign-in using federated sign-in through Clever and QR code badge." border="true":::

## Known issues

- Network and Accessibility menus aren't available in the web sign-in flow.  They can be accessed on the standard Windows sign-in page. While in the web sign-in flow, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> and the classic Windows sign-in UI will be shown, along with the buttons that launch those menus.  
- This feature won't work without access to network, as the authentication is done via a third-party provider over the network. Always make sure that there's a valid network connection, before trying to launch the web sign-in flow.
- The federated sign-in flow is not displayed if devices have *shared PC mode* enabled

## Troubleshooting

- The user can exit the federated sign-in flow by pressing <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd> to get back to the standard Windows sign-in screen
- Select the *Other User* button, and the standard username/password credentials are available to log into the device


[MEM-1]: /mem/intune/configuration/custom-settings-configure

[AZ-1]: /azure/active-directory/hybrid/how-to-connect-fed-saml-idp
[AZ-2]: /azure/active-directory/enterprise-users/licensing-groups-assign