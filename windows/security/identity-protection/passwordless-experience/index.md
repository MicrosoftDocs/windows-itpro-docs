---
title: Windows passwordless experience
description: Learn how Windows passwordless experience enables your organization to move away from passwords.
ms.collection: 
  - highpri
  - tier1
ms.date: 09/27/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Windows passwordless experience

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], *Windows passwordless experience* is a security policy that promotes a user experience without passwords on Microsoft Entra joined devices.\
When the policy is enabled, certain Windows authentication scenarios don't offer users the option to use a password, helping organizations and preparing users to gradually move away from passwords.

With Windows passwordless experience, users who sign in with Windows Hello or a FIDO2 security key:

- Can't use the password credential provider on the Windows lock screen
- Aren't prompted to use a password during in-session authentications (for example, UAC elevation, password manager in the browser, etc.)
- Don't have the option *Accounts > Change password* in the Settings app
  
  >[!NOTE]
  >Users can reset their password using <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>DEL</kbd> > **Manage your account**

Windows passwordless experience doesn't affect the initial sign-in experience and local accounts. It only applies to subsequent sign-ins for Microsoft Entra ID accounts. It also doesn't prevent a user from signing in with a password when using the *Other user* option in the lock screen.\
The password credential provider is hidden only for the last signed in user who signed in Windows Hello or a FIDO2 security key. Windows passwordless experience isn't about preventing users from using passwords, rather to guide and educate them to not use passwords.

This article explains how to enable Windows passwordless experience and describes the user experiences.

>[!TIP]
> Windows Hello for Business users can achieve passwordless sign-in from the first sign-in using the Web sign-in feature. For more information about Web sign-in, see [Web sign-in for Windows devices](../web-sign-in/index.md).

## System requirements

Windows passwordless experience has the following requirements:

- Windows 11, version 22H2 with [KB5030310][KB-1] or later
- Microsoft Entra joined
- Windows Hello for Busines credentials enrolled for the user, or a FIDO2 security key
- MDM-managed: Microsoft Intune or other MDM solution

>[!NOTE]
>Microsoft Entra hybrid joined devices and Active Directory domain joined devices are currently out of scope.

[!INCLUDE [windows-passwordless-experience](../../../../includes/licensing/windows-passwordless-experience.md)]

## Enable Windows passwordless experience with Intune

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Authentication** | Enable Passwordless Experience | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-2] with the [Policy CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience`<br>- **Data type:** int<br>- **Value:** `1`|

## User experiences

### Lock screen experience

:::row:::
  :::column span="3":::
  **Passwordless experience turned off**: users can sign in using a password, as indicated by the presence of the password credential provider  :::image type="icon" source="images/key-credential-provider.svg" border="false"::: in the Windows lock screen.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/lock-screen-off.png" lightbox="images/lock-screen-off.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint, PIN and password credential providers.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Passwordless experience turned on**: the password credential provider :::image type="icon" source="images/key-credential-provider.svg" border="false"::: is missing for the last user who signed in with strong credentials. A user can either sign in using a strong credential or opt to use the *Other user* option to sign in with a password.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/lock-screen-on.png" lightbox="images/lock-screen-on.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint and PIN credential providers only. The password credential provider is missing.":::
  :::column-end:::
:::row-end:::

### In-session authentication experiences

When Windows passwordless experience is enabled, users can't use the password credential provider for in-session authentication scenarios. In-session authentication scenarios include:

- Password Manager in a web browser
- Connecting to file shares or intranet sites
- User Account Control (UAC) elevation, except if a local user account is used for elevation

>[!NOTE]
> RDP sign in defaults to the credential provider used during sign-in. However, a user can select the option *Use a different account* to sign in with a password.
>
> *Run as different user* is not impacted by Windows passwordless experience.

Example of UAC elevation experience:

:::row:::
  :::column span="3":::
  **Passwordless experience turned off**: UAC elevation allows the user to authenticate using a password.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/uac-off.png" lightbox="images/uac-off.png" alt-text="Screenshot of the UAC prompt showing username and password fields.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Passwordless experience turned on**: UAC elevation doesn't allow the user to use the password credential provider for the currently logged on user. The user can authenticate using Windows Hello, a FIDO2 security key or a local user account, if available.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/uac-on.png" lightbox="images/uac-on.png" alt-text="Screenshot of the UAC prompt showing fingerprint and PIN options only.":::
  :::column-end:::
:::row-end:::

## Recommendations

Here's a list of recommendations to consider before enabling Windows passwordless experience:

- If Windows Hello for Business is enabled, configure the [PIN reset](../hello-for-business/hello-feature-pin-reset.md) feature to allow users to reset their PIN from the lock screen. The PIN reset experience is improved starting in Windows 11, version 22H2 with [KB5030310][KB-1]
- Don't configure the security policy *Interactive logon: Don't display last signed-in*, as it prevents Windows passwordless experience from working
- Don't disable the password credential provider using the *Exclude credential providers* policy. The key differences between the two policies are:
  - The Exclude credential providers policy disables passwords for *all accounts*, including local accounts. Windows passwordless experience only applies to Microsoft Entra ID accounts that sign in with Windows Hello or a FIDO2 security key. It also excludes *Other User* from the policy, so users have a backup sign in option
  - Exclude credential providers policy prevents the use of passwords for RDP and *Run as* authentication scenarios
- To facilitate helpdesk support operations, consider enabling the local administrator account or create a separate one, randomizing its password using the [Windows Local Administrator Password Solution (LAPS)][SERV-1]

## Known issues

There's a known issue affecting the in-session authentication experience when using FIDO2 security keys, where security keys aren't always an available option. The product group is aware of this behavior and plans to improve this in the future.

### :::image type="icon" source="../../images/icons/feedback.svg" border="false"::: Provide feedback

To provide feedback for Windows passwordless experience, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passwordless experience**.

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-authentication#enablepasswordlessexperience
[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
[INT-2]: /mem/intune/configuration/custom-settings-windows-10
[KB-1]: https://support.microsoft.com/kb/5030310
[SERV-1]: /windows-server/identity/laps/laps-overview
