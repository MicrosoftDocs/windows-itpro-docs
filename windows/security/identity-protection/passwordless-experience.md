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

This feature allows organizations to configure devices with a policy that promotes a passwordless user experience on Microsoft Entra joined devices.
Passwords are inherently not secure and can be stolen through social engineering attacks. While the goal is to have fully passwordless accounts in the organization, this is a fundamental step toward that goal.
we continue to invest in a journey towards passwordless.

>[!NOTE]
>Microsoft Entra hybrid joined devices and Active Directory domain joined devices are currently out of scope.

The policy affects only Entra ID accounts after they sign in to the device with strong credentials (Windows Hello for Business or FIDO2 security key). The policy doesn't affect the initial sign-in experience and local accounts.

Once the policy is set:

- Removes passwords from the user experience, both for device sign in and in-session auth scenarios via CredUI
- Users navigate through their core authentication scenarios (WHFB/FIDO2 security keys etc.)
- If users are blocked, they can use a recovery mechanism such as PIN Reset or Web Sign-in

Starting in Windows 11, version 22H2 with [KB5030310](https://support.microsoft.com/kb/5030310), *Passwordless experience* is a security policy that promotes a passwordless user experience on Microsoft Entra joined devices.
Once enabled, Windows users can sign in to their devices using Windows Hello for Business or a FIDO2 security key only.
This article explains how to enable Passwordless experience and describes the user experience.

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

### UAC prompt experience

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

### RDP experience

### Password Manager in a web browser

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
  **Passwordless experience turned on**: UAC elevation prompts doesn't allow the user to use a password.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/passwordless-experience/uac-on.png" lightbox="images/passwordless-experience/uac-on.png" alt-text="Screenshot of the UAC prompt showing fingerprint and PIN options only.":::
  :::column-end:::
:::row-end:::

Once the EnablePasswordlessExperience policy is set:

- It removes passwords from the user experience, both for device logon and in-session auth scenarios via CredUI. 
- Users navigate through their core authentication scenarios (WHFB/FIDO2 security keys, etc.)
- If users are blocked, they can use a recovery mechanism such as PIN Reset or Web Sign-in. (September Feature to improve recovery mechanisms)


## Frequently Asked Questions

Q: What is the difference between the existing GP and the new policy?
A: This new policy is a comprehensive policy for hiding passwords from Windows, compared to the existing GP

Q: What happens if a user can't sign in with biometrics and forgot their PIN?
A: The user can use the PIN Reset feature to reset their PIN. Once the PIN Reset feature is configured, a user can reset a PIN from the lock screen and the Settings app.

Q: What's the difference between the group policy and the new policy?
A: The existing GP, once configured, disables passwords for "All accounts", so there's no strong recovery mechanism to get on the machine. RDP, RunAs, and in-session auth scenarios aren't supported with this GP. The new policy hides passwords from in-session auth scenarios like Password Manager in a web browser, Run as administrator, etc. It also excludes *Other User* from the policy, so you can sign in from this account as a backup mechanism.

## Recover a passwordless credential

This feature aims to improve:

-  Web Sign-in Infrastructure
  - On demand web-based experience for credential recovery
  - Enable a web sign in policy: Cred provider primarily used as a bootstrap mechanism for enterprises [enablewebsignin][CSP-2]​
  - TAP is removed and is open to all Auth methods

Scenarios:
CTRL-ALT-DEL --> password change
Settings > Accounts> Sign-in options
RDP connection
Show password from the ones stored in Microsoft Edge: doesn't allow to type password but only a WHFB unlock
Run as admin
Run as different user
Above PIN reset
First sign-in in shared device?
How about FIDO2 key signin?
TAP changes?

Recovery Flow
Example: When TPM is cleared out/something goes wrong, on demand web-based experience for credential recovery will show up.

## Sum up

Web experience for credential recovery

This new work moves the Web Sign-in infrastructure from the Cloud Host Experience (CHX) WebApp to the newly written Login Web Host (LWH) for the September moment. This now provides better security, reliability to support the existing as well as new workflows. We are using the same LWH infra previously built for EDU scenarios. This means, in addition to TAP, it is now opened to all AAD auth methods.
PIN Reset flow is still the same, we have made some improvements, which include a reliable UI experience when a user clicks on "I forgot my PIN", on the first click, the user will be redirected to the MFA web app for authentication and can change the PIN seamlessly.


<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-authentication#enablepasswordlessexperience
[CSP-2]: /windows/client-management/mdm/policy-csp-authentication#enablewebsignin
[INT-2]: /mem/intune/configuration/custom-settings-windows-10
[UAC-1]: /windows/security/application-security/application-control/user-account-control/settings-and-configuration?tabs=intune
