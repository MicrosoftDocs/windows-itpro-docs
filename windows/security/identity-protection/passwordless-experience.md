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

Starting in Windows 11, version 22H2 with [KB5030310](https://support.microsoft.com/kb/5030310), *Passwordless experience* is a security policy that promotes a passwordless user experience on Microsoft Entra joined devices.\
Once the policy is enabled, users with strong credentials (e.g. Windows Hello for Business, FIDO2 key):

- Don't see the option to sign in using the password credential provider on the Windows lock screen
- In-session authentication scenarios (e.g. UAC elevation, Run as administrator) don't allow the user to use a password
- <kbd>CTRL</kbd>-<kbd>ALT</kbd>-<kbd>DEL</kbd> doest't offer the option for the user to change their password

This article explains how to enable Passwordless experience and describes the user experience.

>[!TIP]
> The Passwordless experience policy doesn't affect the initial sign-in experience and local accounts. It only applies to subsequent sign-ins for Microsoft Entra ID accounts.
>
> To achieve passwordless sign-in from the first sign-in, use the Web sign-in feature. For more information, see [Article to complete](https://learn.microsoft.com).

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
| <li> OMA-URI:**`./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience`**</li><li>Data type:**int**</li><li>Value:**`1`**</li>|

## End-user experiences

### Lock screen experience

:::row:::
  :::column span="2":::
  **Passwordless experience turned off**: end-users can sign in using a password, as indicated by the presence of the password credential provider icon :::image type="icon" source="../images/icons/key.svg" border="false"::: in the Windows lock screen.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/passwordless-experience/lock-screen-off.png" lightbox="images/passwordless-experience/lock-screen-off.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint, PIN and password credential providers.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
  **Passwordless experience turned on**: the password credential provider icon :::image type="icon" source="../images/icons/key.svg" border="false"::: is missing for a user who enrolled in Windows Hello for Business or signed in with FIDO2 keys.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/passwordless-experience/lock-screen-on.png" lightbox="images/passwordless-experience/lock-screen-on.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint and PIN credential providers only. The password credential provider is missing.":::
  :::column-end:::
:::row-end:::

If users are blocked, they can use a recovery mechanism such as PIN Reset which has an improved experience.

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
  :::column span="2":::
  **Passwordless experience turned off**: UAC elevation allows the user to authenticate using a password.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/passwordless-experience/uac-off.png" lightbox="images/passwordless-experience/uac-off.png" alt-text="Screenshot of the UAC prompt showing username and password fields.":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
  **Passwordless experience turned on**: UAC elevation prompts don't allow the user to use a password.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/passwordless-experience/uac-on.png" lightbox="images/passwordless-experience/uac-on.png" alt-text="Screenshot of the UAC prompt showing fingerprint and PIN options only.":::
  :::column-end:::
:::row-end:::

## Frequently Asked Questions (FAQs)

Q: What is the difference between the existing GP and the new policy?
A: This new policy is a comprehensive policy for hiding passwords from Windows, compared to the existing GP

Q: What happens if a user can't sign in with biometrics and forgot their PIN?
A: The user can use the PIN Reset feature to reset their PIN. Once the PIN Reset feature is configured, a user can reset a PIN from the lock screen and the Settings app.

Q: Can a user still sign in with a password once the policy is enabled?
A: Yes, a user can select the *Other user* option in the lock screen and use a username and password to sign in. The password credential provider is hidden only for the last signed in user who signed in with strong credentials. Passwordless experience is not about preventing users from using username/password, rather to guide and educate them to avoid using passwords.

Q: If I enable the security policy *Don't display last signed-in*, will the user be able to sign in with a password? 
A: Yes, enabling the policy *Don't display last signed-in* prevents Passwordless experience from working. The user can sign in with a password like when selecting the *Other user* option.

Q: What's the difference between the group policy and the new policy?
A: The existing GP, once configured, disables passwords for "All accounts", so there's no strong recovery mechanism to get on the machine. RDP, RunAs, and in-session auth scenarios aren't supported with this GP. The new policy hides passwords from in-session auth scenarios like Password Manager in a web browser, Run as administrator, etc. It also excludes *Other User* from the policy, so you can sign in from this account as a backup mechanism.

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-authentication#enablepasswordlessexperience
[CSP-2]: /windows/client-management/mdm/policy-csp-authentication#enablewebsignin
[INT-2]: /mem/intune/configuration/custom-settings-windows-10
[UAC-1]: /windows/security/application-security/application-control/user-account-control/settings-and-configuration?tabs=intune
