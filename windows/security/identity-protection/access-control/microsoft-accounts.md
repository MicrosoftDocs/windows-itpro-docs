---
title: Microsoft Accounts (Windows 10)
description: Microsoft Accounts
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 10/13/2017
---

# Microsoft Accounts

**Applies to**
-   Windows 10

This topic for the IT professional explains how a Microsoft account works to enhance security and privacy for users, and how you can manage this consumer account type in your organization.

Microsoft sites, services, and properties, as well as computers running Windows 10, can use a Microsoft account as a means of identifying a user. Microsoft account was previously called Windows Live ID. It has user-defined secrets, and consists of a unique email address and a password.

When a user signs in with a Microsoft account, the device is connected to cloud services. Many of the user's settings, preferences, and apps can be shared across devices.

## <a href="" id="bkmk-benefits"></a>How a Microsoft account works

The Microsoft account allows users to sign in to websites that support this service by using a single set of credentials. Users' credentials are validated by a Microsoft account authentication server that is associated with a website. The Microsoft Store is an example of this association. When new users sign in to websites that are enabled to use Microsoft accounts, they are redirected to the nearest authentication server, which asks for a user name and password. Windows uses the Schannel Security Support Provider to open a Transport Level Security/Secure Sockets Layer (TLS/SSL) connection for this function. Users then have the option to use Credential Manager to store their credentials.

When users sign in to websites that are enabled to use a Microsoft account, a time-limited cookie is installed on their computers, which includes a triple DES encrypted ID tag. This encrypted ID tag has been agreed upon between the authentication server and the website. This ID tag is sent to the website, and the website plants another time-limited encrypted HTTP cookie on the user’s computer. When these cookies are valid, users are not required to supply a user name and password. If a user actively signs out of their Microsoft account, these cookies are removed.

**Important**  
Local Windows account functionality has not been removed, and it is still an option to use in managed environments.

### How Microsoft accounts are created

To prevent fraud, the Microsoft system verifies the IP address when a user creates an account. A user who tries to create multiple Microsoft accounts with the same IP address is stopped.

Microsoft accounts are not designed to be created in batches, such as for a group of domain users within your enterprise.

There are two methods for creating a Microsoft account:

-   **Use an existing email address**.

    Users are able to use their valid email addresses to sign up for Microsoft accounts. The service turns the requesting user's email address into a Microsoft account. Users can also choose their personal passwords.

-   **Sign up for a Microsoft email address**.

    Users can sign up for an email account with Microsoft's webmail services. This account can be used to sign in to websites that are enabled to use Microsoft accounts.

### How the Microsoft account information is safeguarded

Credential information is encrypted twice. The first encryption is based on the account’s password. Credentials are encrypted again when they are sent across the Internet. The data that is stored is not available to other Microsoft or non-Microsoft services.

-   **Strong password is required**.

    Blank passwords are not allowed.

    For more information, see [Microsoft Account Security Overview](https://www.microsoft.com/account/security/default.aspx).

-   **Secondary proof of identity is required**.

    Before user profile information and settings can be accessed on a second supported Windows computer for the first time, trust must established for that device by providing secondary proof of identity. This can be accomplished by providing Windows with a code that is sent to a mobile phone number or by following the instructions that are sent to an alternate email address that a user specifies in the account settings.

-   **All user profile data is encrypted on the client before it is transmitted to the cloud**.

    User data does not roam over a wireless wide area network (WWAN) by default, thereby protecting profile data. All data and settings that leave a device are transmitted through the TLS/SSL protocol.

**Microsoft account security information is added**.

Users can add security information to their Microsoft accounts through the **Accounts** interface on computers running the supported versions of Windows. This feature allows the user to update the security information that they provided when they created their accounts. This security information includes an alternate email address or phone number so if their password is compromised or forgotten, a verification code can be sent to verify their identity. Users can potentially use their Microsoft accounts to store corporate data on a personal OneDrive or email app, so it is safe practice for the account owner to keep this security information up-to-date.

## <a href="" id="bkmk-msaccountintheenterprise"></a>The Microsoft account in the enterprise


Although the Microsoft account was designed to serve consumers, you might find situations where your domain users can benefit by using their personal Microsoft account in your enterprise. The following list describes some advantages.

-   **Download Microsoft Store apps**:

    If your enterprise chooses to distribute software through the Microsoft Store, your users can use their Microsoft accounts to download and use them on up to five devices running any version of Windows 10, Windows 8.1, Windows 8, or Windows RT.

-   **Single sign-on**:

    Your users can use Microsoft account credentials to sign in to devices running Windows 10, Windows 8.1, Windows 8 or Windows RT. When they do this, Windows works with your Microsoft Store app to provide authenticated experiences for them. Users can associate a Microsoft account with their sign-in credentials for Microsoft Store apps or websites, so that these credentials roam across any devices running these supported versions.

-   **Personalized settings synchronization**:

    Users can associate their most commonly used operating-system settings with a Microsoft account. These settings are available whenever a user signs in with that account on any device that is running a supported version of Windows and is connected to the cloud. After a user signs in, the device automatically attempts to get the user's settings from the cloud and apply them to the device.

-   **App synchronization**:

    Microsoft Store apps can store user-specific settings so that these settings are available to any device. As with operating system settings, these user-specific app settings are available whenever the user signs in with the same Microsoft account on any device that is running a supported version of Windows and is connected to the cloud. After the user signs in, that device automatically downloads the settings from the cloud and applies them when the app is installed.

-   **Integrated social media services**:

    Contact information and status for your users’ friends and associates automatically stay up-to-date from sites such as Hotmail, Outlook, Facebook, Twitter, and LinkedIn. Users can also access and share photos, documents, and other files from sites such as OneDrive, Facebook, and Flickr.

### Managing the Microsoft account in the domain

Depending on your IT and business models, introducing Microsoft accounts into your enterprise might add complexity or it might provide solutions. You should address the following considerations before you allow the use of these account types in your enterprise:

-   [Restrict the use of the Microsoft account](#bkmk-restrictuse)

-   [Configure connected accounts](#bkmk-cfgconnectedaccounts)

-   [Provision Microsoft accounts in the enterprise](#bkmk-provisionaccounts)

-   [Audit account activity](#bkmk-audit)

-   [Perform password resets](#bkmk-passwordresets)

-   [Restrict app installation and usage](#bkmk-restrictappinstallationandusage)

### <a href="" id="bkmk-restrictuse"></a>Restrict the use of the Microsoft account

The following Group Policy settings help control the use of Microsoft accounts in the enterprise:

- [Block all consumer Microsoft account user authentication](#block-all-consumer-microsoft-account-user-authentication)
- [Accounts: Block Microsoft accounts](#accounts-block-microsoft-accounts)

#### Block all consumer Microsoft account user authentication

This setting controls whether users can provide Microsoft accounts for authentication for applications or services.

If this setting is enabled, all applications and services on the device are prevented from using Microsoft accounts for authentication.
This applies both to existing users of a device and new users who may be added.

However, any application or service that has already authenticated a user will not be affected by enabling this setting until the authentication cache expires.
It is recommended to enable this setting before any user signs in to a device to prevent cached tokens from being present.

If this setting is disabled or not configured, applications and services can use Microsoft accounts for authentication.
By default, this setting is **Disabled**.

This setting does not affect whether users can sign in to devices by using Microsoft accounts, or the ability for users to provide Microsoft accounts via the browser for authentication with web-based applications.

The path to this setting is:

Computer Configuration\Administrative Templates\Windows Components\Microsoft account

#### Accounts: Block Microsoft accounts

This setting prevents using the **Settings** app to add a Microsoft account for single sign-on (SSO) authentication for Microsoft services and some background services, or using a Microsoft account for single sign-on to other applications or services.

There are two options if this setting is enabled:

- **Users can’t add Microsoft accounts** means that existing connected accounts can still sign in to the device (and appear on the Sign in screen). However, users cannot use the **Settings** app to add new connected accounts (or connect local accounts to Microsoft accounts).
- **Users can’t add or log on with Microsoft accounts** means that users cannot add new connected accounts (or connect local accounts to Microsoft accounts) or use existing connected accounts through **Settings**.

This setting does not affect adding a Microsoft account for application authentication. For example, if this setting is enabled, a user can still provide a Microsoft account for authentication with an application such as **Mail**, but the user cannot use the Microsoft account for single sign-on authentication for other applications or services (in other words, the user will be prompted to authenticate for other applications or services).

By default, this setting is **Not defined**.

The path to this setting is:

Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options

### <a href="" id="bkmk-cfgconnectedaccounts"></a>Configure connected accounts

Users can connect a Microsoft account to their domain account and synchronize the settings and preferences between them. This enables users to see the same desktop background, app settings, browser history and favorites, and other Microsoft account settings on their other devices.

Users can disconnect a Microsoft account from their domain account at any time as follows: In **PC settings**, tap or click **Users**, tap or click **Disconnect**, and then tap or click **Finish**.

**Note**  
Connecting Microsoft accounts with domain accounts can limit access to some high-privileged tasks in Windows. For example, Task Scheduler will evaluate the connected Microsoft account for access and fail. In these situations, the account owner should disconnect the account.

### <a href="" id="bkmk-provisionaccounts"></a>Provision Microsoft accounts in the enterprise

Microsoft accounts are private user accounts. There are no methods provided by Microsoft to provision Microsoft accounts for an enterprise. Enterprises should use domain accounts.

### <a href="" id="bkmk-audit"></a>Audit account activity

Because Microsoft accounts are Internet-based, Windows does not have a mechanism to audit their use until the account is associated with a domain account. But this association does not restrict the user from disconnecting the account or disjoining from the domain. It is not possible to audit the activity of accounts that are not associated with your domain.

### <a href="" id="bkmk-passwordresets"></a>Perform password resets

Only the owner of the Microsoft account can change the password. Passwords can be changed in the [Microsoft account sign-in portal](https://login.live.com).

### <a href="" id="bkmk-restrictappinstallationandusage"></a>Restrict app installation and usage

Within your organization, you can set application control policies to regulate app installation and usage for Microsoft accounts. For more information, see [AppLocker](/windows/device-security/applocker/applocker-overview) and [Packaged Apps and Packaged App Installer Rules in AppLocker](/windows/device-security/applocker/packaged-apps-and-packaged-app-installer-rules-in-applocker).

## See also

- [Managing Privacy: Using a Microsoft Account to Logon and Resulting Internet Communication](https://technet.microsoft.com/library/jj884082(v=ws.11).aspx)

- [Access Control Overview](access-control.md)
