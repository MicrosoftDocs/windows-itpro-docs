---
title: Accounts Block Microsoft accounts
description: Describes the best practices, location, values, management, and security considerations for the Accounts Block Microsoft accounts security policy setting.
ms.assetid: 94c76f45-057c-4d80-8d01-033cf28ef2f7
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 08/10/2017
---

# Accounts: Block Microsoft accounts

**Applies to**
-   Windows 10, version 1607 and earlier

Describes the best practices, location, values, management, and security considerations for the **Accounts: Block Microsoft accounts** security policy setting.

> [!IMPORTANT]
> In Windows 10, version 1703 and later, this policy is no longer effective because the process for adding Microsoft Accounts changed. For Windows 10, version 1703 and later, instead of using this policy use the "Block all consumer Microsoft user account authentication" policy located under Computer Configuration\Administrative Templates\Windows Components\Microsoft account.

## Reference

This setting prevents using the **Settings** app to add a Microsoft account for single sign-on (SSO) authentication for Microsoft services and some background services, or using a Microsoft account for single sign-on to other applications or services. For more information, see [Microsoft Accounts](/windows-server/identity/ad-ds/manage/understand-microsoft-accounts).

There are two options if this setting is enabled:

- **Users can’t add Microsoft accounts** means that existing connected accounts can still sign in to the device (and appear on the sign-in screen). However, users can't use the **Settings** app to add new connected accounts (or connect local accounts to Microsoft accounts).

- **Users can’t add or log on with Microsoft accounts** means that users can't add new connected accounts (or connect local accounts to Microsoft accounts) or use existing connected accounts through **Settings**.

If you disable or don't configure this policy (recommended), users will be able to use Microsoft accounts with Windows.

### Possible values
-   This policy is disabled
-   Users can’t add Microsoft accounts
-   Users can’t add or sign in with Microsoft accounts

By default, this setting isn't defined on domain controllers and disabled on stand-alone servers.

### Best practices

-   If this policy setting is disabled or isn't configured on the client computer, users will be able to use their Microsoft account, local account, or domain account for their sign-in session to Windows. It also enables the user to connect a local or domain account to a Microsoft account. This ability to connect provides a convenient option for your users.
-   If you need to limit the use of Microsoft accounts in your organization, click the **Users can’t add Microsoft accounts** setting option so that users won't be able to use the **Settings** app to add new connected accounts.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined |
| Default Domain Controller Policy | Not defined |
| Stand-Alone Server Default Settings | Disabled |
| DC Effective Default Settings | Disabled |
| Member Server Effective Default Settings | Disabled |
| Client Computer Effective Default Settings | Disabled |

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of the countermeasure implementation.

### Vulnerability

Although Microsoft accounts are password-protected, they also have the potential of greater exposure outside of the enterprise. Additionally, if the owner of a Microsoft account isn't easily distinguishable, auditing and forensics become more difficult.

### Countermeasure

Require only domain accounts in your enterprise by limiting the use of Microsoft accounts. Click the **Users can’t add Microsoft accounts** setting option so that users won't be able to create new Microsoft accounts on a device, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account.

### Potential impact

Establishing greater control over accounts in your organization can give you more secure management capabilities, including procedures around password resets.

## Related topics

[Security Options](security-options.md)

