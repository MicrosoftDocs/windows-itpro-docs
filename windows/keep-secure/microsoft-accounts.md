---
title: Microsoft Accounts (Windows 10)
description: Microsoft Accounts
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
---

# Microsoft Accounts

**Applies to**
-   Windows 10

This topic for the IT professional explains how a Microsoft account works to enhance security and privacy for users, and how you can manage this consumer account type in your organization.

Microsoft sites, services, and properties such as Windows Live, MSN, Xbox LIVE, Zune, Windows Phone, and computers running Windows 10, Windows 8.1, Windows 8, and Windows RT use a Microsoft account as a mean of identifying users. Microsoft account is the name for what was previously called Windows Live ID. It has user-defined secrets associated with it, and it consists of a unique email address and a password.

There are some benefits and considerations when using Microsoft accounts in the enterprise. For more information, see [Microsoft account in the enterprise](#bkmk-msaccountintheenterprise) later in this topic.

When a user signs in with a Microsoft account, their device is connected to cloud services, and many of the settings, preferences, and apps associated with that user account can roam between devices.

**Note**  
This content applies to the operating system versions that are designated in the **Applies To** list at the beginning of this topic.

 

## <a href="" id="bkmk-benefits"></a>How a Microsoft account works


The Microsoft account allows users to sign in to websites that support this service by using a single set of credentials. Users' credentials are validated by a Microsoft account authentication server that is associated with a website. The Windows Store is an example of this association. When new users sign in to websites that are enabled to use Microsoft accounts, they are redirected to the nearest authentication server, which asks for a user name and password. Windows uses the Schannel Security Support Provider to open a Transport Level Security/Secure Sockets Layer (TLS/SSL) connection for this function. Users then have the option to use Credential Manager to store their credentials.

When users sign in to websites that are enabled to use a Microsoft account, a time-limited cookie is installed on their computers, which includes a triple DES encrypted ID tag. This encrypted ID tag has been agreed upon between the authentication server and the website. This ID tag is sent to the website, and the website plants another time-limited encrypted HTTP cookie on the user’s computer. When these cookies are valid, users are not required to supply a user name and password. If a user actively signs out of their Microsoft account, these cookies are removed.

**Important**  
Local Windows account functionality has not been removed, and it is still an option to use in managed environments.

 

### How Microsoft accounts are created

To prevent fraud, the Microsoft system verifies the IP address when a user creates an account. If a user tries to create multiple Microsoft accounts with the same IP address, they are stopped.

Microsoft accounts are not designed to be created in batches, for example, for a group of domain users within your enterprise.

There are two methods for creating a Microsoft account:

-   **Use an existing email address**.

    Users are able to use their valid email addresses to sign up for Microsoft accounts. The service turns the requesting user's email address into a Microsoft account. Users can also choose their personal password.

-   **Sign up for a Microsoft email address**.

    Users can sign up for an email account with Microsoft's webmail services. This account can be used to sign in to websites that are enabled to use Microsoft accounts.

### How the Microsoft account information is safeguarded

Credential information is encrypted twice. The first encryption is based on the account’s password. Credentials are encrypted again when they are sent across the Internet. The data that is stored is not available to other Microsoft or non-Microsoft services.

-   **Strong password is required**.

    Blank passwords are not allowed.

    For more information, see [Microsoft Account Security Overview](http://www.microsoft.com/account/security/default.aspx).

-   **Secondary proof of identity is required**.

    Before user profile information and settings can be accessed on a second supported Windows computer for the first time, trust must established for that device by providing secondary proof of identity. This can be accomplished by providing Windows with a code that is sent to a mobile phone number or by following the instructions that are sent to an alternate email address that a user specifies in the account settings.

-   **All user profile data is encrypted on the client before it is transmitted to the cloud**.

    User data does not roam over a wireless wide area network (WWAN) by default, thereby protecting profile data. All data and settings that leave a device are transmitted through the TLS/SSL protocol.

**Microsoft account security information is added**.

Users can add security information to their Microsoft accounts through the **Accounts** interface on computers running the supported versions of Windows. This feature allows the user to update the security information that they provided when they created their accounts. This security information includes an alternate email address or phone number so if their password is compromised or forgotten, a verification code can be sent to verify their identity. Users can potentially use their Microsoft accounts to store corporate data on a personal OneDrive or email app, so it is safe practice for the account owner to keep this security information up-to-date.

## <a href="" id="bkmk-msaccountintheenterprise"></a>The Microsoft account in the enterprise


Although the Microsoft account was designed to serve consumers, you might find situations where your domain users can benefit by using their personal Microsoft account in your enterprise. The following list describes some advantages.

-   **Download Windows Store apps**:

    If your enterprise chooses to distribute software through the Windows Store, your users can use their Microsoft accounts to download and use them on up to five devices running any version of Windows 10, Windows 8.1, Windows 8, or Windows RT.

-   **Single sign-on**:

    Your users can use Microsoft account credentials to sign in to devices running Windows 10, Windows 8.1, Windows 8 or Windows RT. When they do this, Windows works with your Windows Store app to provide authenticated experiences for them. Users can associate a Microsoft account with their sign-in credentials for Windows Store apps or websites, so that these credentials roam across any devices running these supported versions.

-   **Personalized settings synchronization**:

    Users can associate their most commonly used operating-system settings with a Microsoft account. These settings are available whenever a user signs in with that account on any device that is running a supported version of Windows and is connected to the cloud. After a user signs in, the device automatically attempts to get the user's settings from the cloud and apply them to the device.

-   **App synchronization**:

    Windows Store apps can store user-specific settings so that these settings are available to any device. As with operating system settings, these user-specific app settings are available whenever the user signs in with the same Microsoft account on any device that is running a supported version of Windows and is connected to the cloud. After the user signs in, that device automatically downloads the settings from the cloud and applies them when the app is installed.

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

If employees are allowed to join the domain with their personal devices, they might expect to connect to enterprise resources by using their Microsoft accounts. If you want to prevent any use of Microsoft accounts within your enterprise, you can configure the local security policy setting [Accounts: Block Microsoft accounts](accounts-block-microsoft-accounts.md). However, this setting can prevent the users from signing in to their Windows devices with their Microsoft accounts (if they had set them up to do so) when they are joined to the domain.

The default for this setting is **Disabled**, which enables users to use their Microsoft accounts on devices that are joined to your domain. Other options in the setting can:

1.  Prevent users from creating new Microsoft accounts on a computer, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account. This is the preferred option if you need to limit the use of Microsoft accounts in your enterprise.

2.  Prevent users with an existing Microsoft account from signing in to Windows. Selecting this option might make it impossible for an existing administrator to sign in to a computer and manage the system.

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

Within your organization, you can set application control policies to regulate app installation and usage for Microsoft accounts. For more information, see [AppLocker](applocker-overview.md) and [Packaged Apps and Packaged App Installer Rules in AppLocker](packaged-apps-and-packaged-app-installer-rules-in-applocker.md).

## See also

- [Managing Privacy: Using a Microsoft Account to Logon and Resulting Internet Communication](https://technet.microsoft.com/library/jj884082(v=ws.11).aspx)

- [Access Control Overview](access-control.md)
