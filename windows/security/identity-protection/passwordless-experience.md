---
title: Passwordless experience
description: Learn how Passworless experience enables your organization to move away from passwords.
ms.collection: 
  - highpri
  - tier1
ms.date: 08/15/2023
ms.topic: how-to
---

# Passwordless experience

## Overview

Starting in Windows 11, version 22H2 with [KB5030310](https://support.microsoft.com/kb/5030310)

Starting in Windows 11, version 23H2, Passwordless experience is a security feature that enables your organization to move away from passwords. Once enable, Windows users can sign in to their devices using Windows Hello for Business or a FIDO2 security key only. This feature is available for Azure Active Directory (Azure AD) joined devices only.

This article explains how to enable Passwordless experience for your organization and describes the user experience.

## Enable Passwordless experience with Intune

<!--[!INCLUDE [intune-settings-catalog-1](../../../includes/configure/intune-settings-catalog-1.md)]-->

| Category | Setting name | Value |
|--|--|--|
| **Authentication** | Enable Passwordless Experience | Enabled |

<!--[!INCLUDE [intune-settings-catalog-2](../../../includes/configure/intune-settings-catalog-2.md)]-->

Alternatively, you can configure devices using a [custom policy][INT-3] with the [Policy CSP][CSP-1]. 

| Setting |
|--------|
| <li> OMA-URI:**`./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience`**</li><li>Data type:**int**</li><li>Value:**`1`**</li>|


:::row:::
  :::column span="2":::
  **Passwordless experience turned off**
  :::column-end:::
  :::column span="2":::
  **Passwordless experience turned on**
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
  :::image type="content" source="hello-for-business/passwordless-experience-off.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint, PIN and password credential providers.":::
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="hello-for-business/passwordless-experience-on.png" alt-text="Screenshot of the Windows lock screen showing the fingerprint and PIN credential providers only. The password credential provider is missing.":::
  :::column-end:::
:::row-end:::




'EnablePasswordlessExperience' is a policy (MDM) that promotes a passwordless user experience on AADJ machines (Hybrid is out of scope for now). It supports Windows core authentication scenarios without requiring passwords. This is a step towards a world without passwords, as we continue to invest in a journey towards passwordless.This new policy is a comprehensive policy for hiding passwords from Windows, compared to the existing GP.

The existing GP, once configured, disables passwords for "All accounts", so there is no strong recovery mechanism to get on the machine. RDP, RunAs, and in-session auth scenarios are not supported with this GP.

However, our new feature will hide passwords from In-session auth scenarios like Password Manager in a web browser, Run as administrator, etc. It will also exclude 'Other User' from the policy, so you can log in from this account as a backup mechanism.

Once the EnablePasswordlessExperience policy is set–

- It removes passwords from the user experience, both for device logon as well as in-session auth scenarios via CredUI. 
- Users will navigate through their core authentication scenarios (WHFB/FIDO2 security keys, etc.)
- If users are blocked, they can use a recovery mechanism such as PIN Reset or Web Sign-in. (September Feature to improve recovery mechanisms)



## WHY

Passwords are inherently not secure, they are easily stolen through social engineering attacks​
​

Our team's previous work has already paved the way for Microsoft Account in the consumer space to now offer [fully Passwordless accounts](https://www.microsoft.com/en-us/security/blog/2021/09/15/the-passwordless-future-is-here-for-your-microsoft-account/) (no password in the MSA identity directory). We are now following this playbook towards the same ultimate goal in the enterprise.​


## WHAT

This feature allows enterprise admins to set a policy (MDM) that promotes a Passwordless user experience on AAD joined machines. (Hybrid- Future scope)​

Once the policy is set:
- Removes passwords from the user experience, both for device logon as well as in-session auth scenarios via CredUI
- Users will navigate through their core authentication scenarios (WHFB/FIDO2 security keys etc)​
- If users are blocked, they can use a recovery mechanism such as PIN Reset or Web Sign-in​


### Recover a Passwordless credential ​ on AADJ devices​

This feature aims to improve : ​
    - ​ Above-lock Pin Reset flow
    -  Web Sign-in Infrastructure
        - On demand web-based experience for credential recovery
        - Enable a web sign in policy      : Cred provider primarily used as a bootstrap mechanism for enterprises [enablewebsignin](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-authentication#enablewebsignin)​
        - TAP is removed and is open to all Auth methods

​If a user failed to recover their credentials, then he/she is locked out of their account and won't be able to log back in until there is some strong recovery mechanism.  This improvement includes a reliable UI experience when a user clicks on "I forgot my PIN", on the first click user will be redirected to MFA web app for authentication and can change the PIN seamlessly.​ If TPM fails, on demand recovery flow will pop in. This work moves the Web Sign-in infrastructure from the CHX WebApp to LWH​

 Note: Local Accounts and Other User are excluded​  
​

Scenarios:
CTRL-ALT-DEL --> password change
Settings > Accounts> Sign-in options
RDP connection
Show password from the ones stored in Edge: doesn't allow to type password but only a WHFB unlock
Run as admin
Run as different user
Above PIN reset
First sign-in in shared device?
How about FIDO2 key signin?
TAP changes?

Recovery Flow
Example: When TPM is cleared out/something goes wrong, on demand web-based experience for credential recovery will show up.



## Sum up

1) Windows Hello for Business passwordless experience
2) Web experience for credential recovery

This new work moves the Web Sign-in infrastructure from the Cloud Host Experience (CHX) WebApp to the newly written Login Web Host (LWH) for the September moment. This now provides better security, reliability to support the existing as well as new workflows. We are using the same LWH infra previously built for EDU scenarios. This means, in addition to TAP, it is now opened to all AAD auth methods.
PIN Reset flow is still the same, we have made some improvements, which include a reliable UI experience when a user clicks on "I forgot my PIN", on the first click, the user will be redirected to the MFA web app for authentication and can change the PIN seamlessly.

<!--links used in this document-->

[CSP-1]: /windows/client-management/mdm/policy-csp-localpoliciessecurityoptions

[MEM-1]: /mem/intune/configuration/settings-catalog
[MEM-2]: /mem/intune/configuration/custom-settings-windows-10