---
title: Managing user identity and login on HoloLens
description: Manage user identity, security, and login on HoloLens.
keywords: HoloLens, user, account, aad, adfs, microsoft account, msa, credentials, reference
ms.assetid: 728cfff2-81ce-4eb8-9aaa-0a3c3304660e
author: scooley
ms.author: scooley
ms.date: 1/6/2019
ms.prod: hololens
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# User identity and login

> [!NOTE]
> This is technical reference article for IT Pros and tech enthusiasts.  If you're looking HoloLens set up instructions, read "[Setting up your HoloLens (1st gen)](hololens1-start.md)" or "[Setting up your HoloLens2](hololens2-start.md)".

HoloLens supports several kinds of user identities and lets you sign in with one or more user accounts.  Identity on HoloLens is almost identical to other Windows 10 devices; this article is a deep dive reference for identity on HoloLens with extra focus on how HoloLens differs from Windows 10.

Here's an overview of the identity types and authentication options on HoloLens:

| Identity type | Accounts per device | Authentication options |
| --- | --- | --- |
| [Azure Active Directory (AAD)](https://docs.microsoft.com/azure/active-directory/) | 32 (see details) | Azure web credential provider </br>Azure Authenticator App </br>Biometric (Iris) - HoloLens 2 only </br>PIN - Optional on HoloLens (1st gen), Required on HoloLens 2 </br> Password |
| [Microsoft Account (MSA)](https://docs.microsoft.com/windows/security/identity-protection/access-control/microsoft-accounts) | 1 | Biometric (Iris) - HoloLens 2 only </br>PIN - Optional on HoloLens (1st gen), Required on HoloLens 2 </br> Password |
| [local account](https://docs.microsoft.com/windows/security/identity-protection/access-control/local-accounts) | 1 | Password |

Cloud connected accounts (AAD and MSA) offer more features because they can use Azure services.  Similarly to Windows on other devices, HoloLens always runs the operating system with a user context (there will always be a user identity).

## Setting up users

The most common way to set up a new user is during the HoloLens out of box experience (OOBE).  During set-up, HoloLens prompts for a user to sign in with the account they want to use on the device. This account can be a consumer Microsoft account or an enterprise account that has been configured in Azure.  See Setting up your [HoloLens (1st gen)](hololens1-start.md) or [HoloLens2](hololens2-start.md).

Like Windows on other devices, signing-in during setup creates a user profile on the device which stores apps and data. The same account also provides Single Sign On for apps such as Edge or Skype via the Windows Account Manager APIs.  

Signing into an enterprise or organizational account on the device will enroll HoloLens in the organization's IT infrastructure.  Your HoloLens will receive company policies via Mobile Device Management (MDM), if configured by your IT Admin.

Like other Windows 10 devices, you'll have to sign-in again when HoloLens restarts or resumes from standby unless explicitly configured differently in Settings or through company policy.

### Linked accounts

Within a single device account, users can link additional web account credentials for the purpose of the easier access within apps (such as the Store) or to combine access to personal and work resources, similar to the Desktop version of Windows. Signing into an additional account in this way does not separate the user data created on the device, such as images or downloads. Once an account has been connected to a device, apps can make use of it with your permission to reduce having to sign into each app individually.

### Setting up multi-user support (AAD only)

> [!NOTE]
> **HoloLens (1st gen)** began supporting multiple AAD users in the [Windows 10 April 2018 Update](https://docs.microsoft.com/windows/mixed-reality/release-notes-april-2018) as part of [Windows Holographic for Business](hololens-upgrade-enterprise.md).

HoloLens supports multiple users from the same AAD tenant. To use this you must set up the device initially with an account that belongs to your organization. Subsequently, other users from the same tenant will be able to sign into the device from the sign-in screen or by tapping the user tile on the Start panel to sign out the existing user.  

Apps installed on the device will be available to all other users, but each will have their own app data and preferences. Removing an app will also remove it for all other users though.  

## Removing users

You can remove device users from the device to reclaim space by going to **Settings** > **Accounts** > **Other people**. This will also remove all of the users' app data from the device.  

## Using single sign-on within an app

As an app developer, you can take advantage of having a connected identity on HoloLens with the [Windows Account Manager APIs](https://msdn.microsoft.com/library/windows/apps/xaml/windows.security.authentication.web.core.aspx), just as you would on other Windows devices. Some code samples for these APIs are available [here](https://go.microsoft.com/fwlink/p/?LinkId=620621).

Any account interrupts that may occur such as requesting user consent for account information, two-factor authentication etc. must be handled when the app requests an authentication token.

If your app requires a specific account type that hasn't been linked previously, your app can ask the system to prompt the user to add one. This will trigger the account settings pane to be launched as a modal child of your app. For 2D apps, this window will render directly over the center of your app and for Unity apps, this will briefly take the user out of your holographic app so that this child window can be rendered. Customizing the commands and actions on this pane is described [here](https://msdn.microsoft.com/library/windows/apps/windows.ui.applicationsettings.webaccountcommand.aspx).

## Enterprise and other authentication

If your app makes use of other types of authentication, such as NTLM, Basic, or Kerberos, you can use [Windows Credential UI](https://msdn.microsoft.com/library/windows/apps/windows.security.credentials.ui.aspx) to collect, process, and store the user's credentials. The user experience for collecting these credentials is very similar to other cloud driven account interrupts and will appear as a child app on top of your 2D app or briefly suspend a Unity app to show the UI.

## Deprecated APIs

One difference for developing on HoloLens from Desktop is that [OnlineIDAuthenticator](https://msdn.microsoft.com/library/windows/apps/windows.security.authentication.onlineid.onlineidauthenticator.aspx) API is not fully supported. Although it will return a token if the primary account is in good-standing, interrupts such as those described above will not display any UI for the user, and will fail to correctly authenticate the account.

## Frequently asked questions

### Is Windows Hello for Business supported on HoloLens?

Windows Hello for Business (using a PIN to sign in) is supported for HoloLens. To allow Windows Hello for Business PIN sign-in on HoloLens:

1. The HoloLens device must be [managed by MDM](hololens-enroll-mdm.md).
2. You must enable Windows Hello for Business for the device. ([See instructions for Microsoft Intune.](https://docs.microsoft.com/intune/windows-hello))
3. On HoloLens, the user can then set up a PIN from **Settings** > **Sign-in Options** > **Add PIN**.

>[!NOTE]
>Users who sign in with a Microsoft account can also set up a PIN in **Settings** > **Sign-in Options** > **Add PIN**. This PIN is associated with [Windows Hello](https://support.microsoft.com/help/17215/windows-10-what-is-hello), rather than [Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-overview).

#### Does the type of account change the sign-in behavior?

Yes, the behavior for the type of account impacts the sign-in behavior. If you apply policies for sign-in, the policy is always respected. If no policy for sign-in is applied, these are the default behaviors for each account type.

- Microsoft account: signs in automatically
- Local account: always asks for password, not configurable in **Settings**
- Azure AD: asks for password by default; configurable by **Settings** to no longer ask for password.

> [!NOTE]
> Inactivity timers are currently not supported, which means that the **AllowIdleReturnWithoutPassword** policy is only respected when the device goes into StandBy.

## Additional resources

Read much more about user identity protection and authentication on [the Windows 10 security and identity documentation](https://docs.microsoft.com/windows/security/identity-protection/).

Learn more about setting up hybrid identity infrastructure thorough the [Azure Hybrid identity documentation](https://docs.microsoft.com/azure/active-directory/hybrid/).
