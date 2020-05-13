---
title: Manage user identity and sign-in for HoloLens
description: Manage user identity, security, and sign-in for HoloLens.
keywords: HoloLens, user, account, aad, adfs, microsoft account, msa, credentials, reference
ms.assetid: 728cfff2-81ce-4eb8-9aaa-0a3c3304660e
author: scooley
ms.author: scooley
ms.date: 1/6/2020
ms.prod: hololens
ms.custom: 
- CI 111456
- CSSTroubleshooting
ms.topic: article
ms.sitesec: library
ms.topic: article
ms.localizationpriority: medium
audience: ITPro
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Manage user identity and sign-in for HoloLens

> [!NOTE]
> This article is a technical reference for IT Pros and tech enthusiasts. If you're looking for HoloLens set up instructions, read "[Setting up your HoloLens (1st gen)](hololens1-start.md)" or "[Setting up your HoloLens 2](hololens2-start.md)".

Like other Windows devices, HoloLens always operates under a user context. There is always a user identity. HoloLens treats identity in almost the same manner as other Windows 10 devices do. This article is a deep-dive reference for identity on HoloLens, and focuses on how HoloLens differs from other Windows 10 devices.

HoloLens supports several kinds of user identities. You can use one or more user accounts to sign in. Here's an overview of the identity types and authentication options on HoloLens:

| Identity type | Accounts per device | Authentication options |
| --- | --- | --- |
| [Azure Active Directory (AAD)](https://docs.microsoft.com/azure/active-directory/) | 64 | <ul><li>Azure web credential provider</li><li>Azure Authenticator App</li><li>Biometric (Iris) &ndash; HoloLens 2 only</li><li>PIN &ndash; Optional for HoloLens (1st gen), required for HoloLens 2</li><li>Password</li></ul> |
| [Microsoft Account (MSA)](https://docs.microsoft.com/windows/security/identity-protection/access-control/microsoft-accounts) | 1 | <ul><li>Biometric (Iris) &ndash; HoloLens 2 only</li><li>PIN &ndash; Optional for HoloLens (1st gen), required for HoloLens 2</li><li>Password</li></ul> |
| [Local account](https://docs.microsoft.com/windows/security/identity-protection/access-control/local-accounts) | 1 | Password |

Cloud-connected accounts (AAD and MSA) offer more features because they can use Azure services.  

## Setting up users

The most common way to set up a new user is during the HoloLens out-of-box experience (OOBE). During setup, HoloLens prompts for a user to sign in by using the account that they want to use on the device. This account can be a consumer Microsoft account or an enterprise account that has been configured in Azure. See Setting up your [HoloLens (1st gen)](hololens1-start.md) or [HoloLens 2](hololens2-start.md).

Like Windows on other devices, signing in during setup creates a user profile on the device. The user profile stores apps and data. The same account also provides Single Sign-on for apps such as Edge or Skype by using the Windows Account Manager APIs.  

If you use an enterprise or organizational account to sign in to HoloLens, HoloLens enrolls in the organization's IT infrastructure. This enrollment allows your IT Admin to configure Mobile Device Management (MDM) to send group policies to your HoloLens.

By default, as for other Windows 10 devices, you'll have to sign in again when HoloLens restarts or resumes from standby. You can use the Settings app to change this behavior, or the behavior can be controlled by group policy.

### Linked accounts

As in the Desktop version of Windows, you can link additional web account credentials to your HoloLens account. Such linking makes it easier to access resources across or within apps (such as the Store) or to combine access to personal and work resources. After you connect an account to the device, you can grant permission to use the device to apps so that you don't have to sign in to each app individually.

Linking accounts does not separate the user data created on the device, such as images or downloads.  

### Setting up multi-user support (AAD only)

> [!NOTE]
> **HoloLens (1st gen)** began supporting multiple AAD users in the [Windows 10 April 2018 Update](https://docs.microsoft.com/windows/mixed-reality/release-notes-april-2018) as part of [Windows Holographic for Business](hololens-upgrade-enterprise.md).

HoloLens supports multiple users from the same AAD tenant. To use this feature, you must use an account that belongs to your organization to set up the device. Subsequently, other users from the same tenant can sign in to the device from the sign-in screen or by tapping the user tile on the Start panel. Only one user can be signed in at a time. When a user signs in, HoloLens signs out the previous user.  

All users can use the apps installed on the device. However, each user has their own app data and preferences. Removing an app from the device removes it for all users.  

## Removing users

You can remove a user from the device by going to **Settings** > **Accounts** > **Other people**. This action also reclaims space by removing all of that user's app data from the device.  

## Using single sign-on within an app

As an app developer, you can take advantage of linked identities on HoloLens by using the [Windows Account Manager APIs](https://docs.microsoft.com/uwp/api/Windows.Security.Authentication.Web.Core), just as you would on other Windows devices. Some code samples for these APIs are available [here](https://go.microsoft.com/fwlink/p/?LinkId=620621).

Any account interrupts that might occur, such as requesting user consent for account information, two-factor authentication, and so forth, must be handled when the app requests an authentication token.

If your app requires a specific account type that hasn't been linked previously, your app can ask the system to prompt the user to add one. This request triggers the account settings pane to launch as a modal child of your app. For 2D apps, this window renders directly over the center of your app. For Unity apps, this request briefly takes the user out of your holographic app to render the child window. For information about customizing the commands and actions on this pane, see [WebAccountCommand Class](https://docs.microsoft.com/uwp/api/Windows.UI.ApplicationSettings.WebAccountCommand).

## Enterprise and other authentication

If your app uses other types of authentication, such as NTLM, Basic, or Kerberos, you can use [Windows Credential UI](https://docs.microsoft.com/uwp/api/Windows.Security.Credentials.UI) to collect, process, and store the user's credentials. The user experience for collecting these credentials is very similar to other cloud-driven account interrupts, and appears as a child app on top of your 2D app or briefly suspends a Unity app to show the UI.

## Deprecated APIs

One way in which developing for HoloLens differs from developing for Desktop is that the [OnlineIDAuthenticator](https://docs.microsoft.com/uwp/api/Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator) API is not fully supported. Although the API returns a token if the primary account is in good-standing, interrupts such as those described in this article do not display any UI for the user and fail to correctly authenticate the account.

## Frequently asked questions

### Is Windows Hello for Business supported on HoloLens?

Windows Hello for Business (which supports using a PIN to sign in) is supported for HoloLens. To allow Windows Hello for Business PIN sign-in on HoloLens:

1. The HoloLens device must be [managed by MDM](hololens-enroll-mdm.md).
1. You must enable Windows Hello for Business for the device. ([See instructions for Microsoft Intune.](https://docs.microsoft.com/intune/windows-hello))
1. On HoloLens, the user can then use **Settings** > **Sign-in Options** > **Add PIN** to set up a PIN.

> [!NOTE]
> Users who sign in by using a Microsoft account can also set up a PIN in **Settings** > **Sign-in Options** > **Add PIN**. This PIN is associated with [Windows Hello](https://support.microsoft.com/help/17215/windows-10-what-is-hello), rather than [Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-overview).

#### Does the type of account change the sign-in behavior?

Yes, the behavior for the type of account affects the sign-in behavior. If you apply policies for sign-in, the policy is always respected. If no policy for sign-in is applied, these are the default behaviors for each account type:

- **Microsoft account**: signs in automatically
- **Local account**: always asks for password, not configurable in **Settings**
- **Azure AD**: asks for password by default, and configurable by **Settings** to no longer ask for password.

> [!NOTE]
> Inactivity timers are currently not supported, which means that the **AllowIdleReturnWithoutPassword** policy is only respected when the device goes into StandBy.

## Additional resources

Read much more about user identity protection and authentication on [the Windows 10 security and identity documentation](https://docs.microsoft.com/windows/security/identity-protection/).

Learn more about setting up hybrid identity infrastructure thorough the [Azure Hybrid identity documentation](https://docs.microsoft.com/azure/active-directory/hybrid/).
