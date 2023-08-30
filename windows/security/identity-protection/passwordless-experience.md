---
title: Passwordless experience
description: Learn how Passwordless experience enables your organization to move away from passwords.
ms.collection: 
  - highpri
  - tier1
ms.date: 08/15/2023
ms.topic: how-to
---

# Passwordless experience

## Passwordless experience overview

Starting in Windows 11, version 22H2 with [KB5030310][KB-1], *Passwordless experience* is a security policy that promotes a passwordless user experience on Microsoft Entra joined devices.\
Passwordless experience hides passwords from certain Windows authentication scenarios, preparing organizations to gradually move away from passwords.

Once the policy is enabled, users with strong credentials (e.g. Windows Hello for Business, FIDO2 key, etc.):

- Don't have the option to sign in using the password credential provider on the Windows lock screen
- In-session authentication scenarios (e.g. UAC elevation, password manager in the browser, etc.) don't prompt the user to use a password
- The *Change password* option is hidden from the *Accounts* page in the Settings app
  
  >[!NOTE]
  >Users can still reset their password using <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>DEL</kbd> > **Manage your account**

This article explains how to enable Passwordless experience and describes the user experiences.

>[!TIP]
> The Passwordless experience policy doesn't affect the initial sign-in experience and local accounts. It only applies to subsequent sign-ins for Microsoft Entra ID accounts. It also doesn't prevent a user from signing in with a password when using the *Other user* option in the lock screen. The password credential provider is hidden only for the last signed in user who signed in with strong credentials. Passwordless experience is not about preventing users from using username/password, rather to guide and educate them to avoid using passwords.
>
> To achieve passwordless sign-in from the first sign-in, use the Web sign-in feature. For more information, see [Article to complete](https://learn.microsoft.com).

## System requirements

To enable Passwordless experience, the devices must meet the following requirements:

- Windows 11, version 22H2 with [KB5030310][KB-1] or later
- Microsoft Entra ID joined
- Strong credentials enrolled for the user
- MDM-managed: Microsoft Intune or other MDM solution

>[!NOTE]
>Microsoft Entra hybrid joined devices and Active Directory domain joined devices are currently out of scope.

## Enable Passwordless experience with Intune

[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| **Authentication** | Enable Passwordless Experience | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-2] with the [Policy CSP][CSP-1].

| Setting |
|--------|
| - **OMA-URI:** `./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience`<br>- **Data type:** int<br>- **Value:** `1`|

## User experiences

### Lock screen experience

:::row:::
  :::column span="3":::
  **Passwordless experience turned off**: users can sign in using a password, as indicated by the presence of the password credential provider icon :::image type="icon" source="../images/icons/key.svg" border="false"::: in the Windows lock screen.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/passwordless-experience/lock-screen-off.png" lightbox="images/passwordless-experience/lock-screen-off.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint, PIN and password credential providers.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Passwordless experience turned on**: the password credential provider icon :::image type="icon" source="../images/icons/key.svg" border="false"::: is missing for a user who enrolled in Windows Hello for Business or signed in with FIDO2 keys.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/passwordless-experience/lock-screen-on.png" lightbox="images/passwordless-experience/lock-screen-on.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint and PIN credential providers only. The password credential provider is missing.":::
  :::column-end:::
:::row-end:::

If users for, they can use a recovery mechanism such as PIN Reset which has an improved experience.

### In-session authentication experience

RDP experience, Password Manager in a web browser, UAC elevation, Connecting to file shares, UAC elevation

Scenarios:

RDP connection
Show password from the ones stored in Microsoft Edge: doesn't allow to type password but only a WHFB unlock
Run as admin
Run as different user
Above PIN reset

Depending on [how UAC is configured][UAC-1], end-users see different experiences when they need to elevate their privileges.

:::row:::
  :::column span="3":::
  **Passwordless experience turned off**: UAC elevation allows the user to authenticate using a password.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/passwordless-experience/uac-off.png" lightbox="images/passwordless-experience/uac-off.png" alt-text="Screenshot of the UAC prompt showing username and password fields.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="3":::
  **Passwordless experience turned on**: UAC elevation prompts don't allow the user to use a password.
  :::column-end:::
  :::column span="1":::
  :::image type="content" source="images/passwordless-experience/uac-on.png" lightbox="images/passwordless-experience/uac-on.png" alt-text="Screenshot of the UAC prompt showing fingerprint and PIN options only.":::
  :::column-end:::
:::row-end:::

## Recommendations

Here's a list of recommendations to consider before enabling Passwordless experience:

- If Windows Hello for Business is enabled, configure the [PIN reset](hello-for-business/hello-feature-pin-reset.md) feature to allow users to reset their PIN from the lock screen. The PIN reset experience is improved starting in Windows 11, version 22H2 with [KB5030310][KB-1]
- Don't configure the security policy *Interactive logon: Don't display username at sign-in*, as it prevents Passwordless experience from working
- Don't disable the password credential provider using the *Exclude credential providers* policy. The key differences between the two policies are:
  - The *Exclude credential providers* policy disables passwords for *all accounts*, including local accounts. Passwordless experience only applies to Microsoft Entra ID accounts that sign in with strong credentials. It also excludes *Other User* from the policy, so users have a backup sign in option
  - RDP and in-session authentication scenarios aren't supported with the Exclude credential providers policy. Passwordless experience hides passwords from in-session auth scenarios like Password Manager in a web browser, UAC prompts, etc.

## Provide feedback

To provide feedback for Passwordless experience, open [**Feedback Hub**][FHUB] and use the category **Security and Privacy > Passwordless experience**.

<!--links used in this document-->

[KB-1]: https://support.microsoft.com/kb/5030310
[CSP-1]: /windows/client-management/mdm/policy-csp-authentication#enablepasswordlessexperience
[INT-2]: /mem/intune/configuration/custom-settings-windows-10
[UAC-1]: /windows/security/application-security/application-control/user-account-control/settings-and-configuration?tabs=intune
[FHUB]: feedback-hub://?tabid=2&newFeedback=true&feedbackType=1
