---
title: Manage Windows Hello in your organization 
description: Learn how to create a Group Policy or mobile device management (MDM) policy to configure and deploy Windows Hello for Business.
ms.collection: 
  - tier1
ms.date: 9/25/2023
ms.topic: reference
---

# Manage Windows Hello for Business in your organization

You can create a Group Policy or mobile device management (MDM) policy to configure Windows Hello for Business on Windows devices.

>[!IMPORTANT]
>Windows Hello as a convenience PIN is disabled by default on all domain joined and Microsoft Entra joined devices. To enable a convenience PIN, enable the Group Policy setting **Turn on convenience PIN sign-in**.
>
>Use **PIN Complexity** policy settings to manage PINs for Windows Hello for Business.

## Group Policy settings for Windows Hello for Business

The following table lists the Group Policy settings that you can configure for Windows Hello use in your organization. These policy settings are available in **User configuration** and **Computer Configuration** under **Policies** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business**.

> [!NOTE]
> The location of the PIN complexity section of the Group Policy is: **Computer Configuration > Administrative Templates > System > PIN Complexity**.

|Policy|Scope|Options|
|--- |--- |--- |
|Use Windows Hello for Business|Computer or user|- **Not configured**: Device doesn't provision Windows Hello for Business for any user.<br>- **Enabled**: Device provisions Windows Hello for Business using keys or certificates for all users.<br>- **Disabled**: Device doesn't provision Windows Hello for Business for any user.|
|Use a hardware security device|Computer|- **Not configured**: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.<br>- **Enabled**: Windows Hello for Business will only be provisioned using TPM. This feature will provision Windows Hello for Business using TPM 1.2 unless the option to exclude them is explicitly set.<br>- **Disabled**: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.|
|Use certificate for on-premises authentication|Computer or user|- **Not configured**: Windows Hello for Business enrolls a key that is used for on-premises authentication.<br>- **Enabled**: Windows Hello for Business enrolls a sign-in certificate using ADFS that is used for on-premises authentication.<br>- **Disabled**: Windows Hello for Business enrolls a key that is used for on-premises authentication.|
|Use PIN recovery|Computer|- Added in Windows 10, version 1703<br>- **Not configured**: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service<br>- **Enabled**: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset<br>- **Disabled**: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service.<br>- For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|
|Use biometrics|Computer|- **Not configured**: Biometrics can be used as a gesture in place of a PIN<br>- **Enabled**: Biometrics can be used as a gesture in place of a PIN.<br>- **Disabled**: Only a PIN can be used as a gesture.|

### PIN Complexity

|Policy|Scope|Options|
|--- |--- |--- |
|Require digits|Computer|- **Not configured**: Users must include a digit in their PIN.<br>- **Enabled**: Users must include a digit in their PIN.<br>- **Disabled**: Users can't use digits in their PIN.|
|Require lowercase letters|Computer|- **Not configured**: Users can't use lowercase letters in their PIN<br>- **Enabled**: Users must include at least one lowercase letter in their PIN.<br>- **Disabled**: Users can't use lowercase letters in their PIN.|
|Maximum PIN length|Computer|- **Not configured**: PIN length must be less than or equal to 127.<br>- **Enabled**: PIN length must be less than or equal to the number you specify.<br>- **Disabled**: PIN length must be less than or equal to 127.|
|Minimum PIN length|Computer|- **Not configured**: PIN length must be greater  than or equal to 4.<br>- **Enabled**: PIN length must be greater than or equal to the number you specify.<br>- **Disabled**: PIN length must be greater  than or equal to 4.|
|Expiration|Computer|- **Not configured**: PIN doesn't expire.<br>- **Enabled**: PIN can be set to expire after any number of days between 1 and 730, or PIN can be set to never expire by setting policy to 0.<br>- **Disabled**: PIN doesn't expire.|
|History|Computer|- **Not configured**: Previous PINs aren't stored.<br>- **Enabled**: Specify the number of previous PINs that can be associated to a user account that can&#39;t be reused.<br>- **Disabled**: Previous PINs aren't stored.<br>**Note** Current PIN is included in PIN history.
|Require special characters|Computer|- **Not configured**: Windows allows, but doesn't require, special characters in the PIN.<br>- **Enabled**: Windows requires the user to include at least one special character in their PIN.<br>- **Disabled**: Windows doesn't allow the user to include special characters in their PIN.|
|Require uppercase letters|Computer|- **Not configured**: Users can't include an uppercase letter in their PIN.<br>- **Enabled**: Users must include at least one uppercase letter in their PIN.<br>- **Disabled**: Users can't include an uppercase letter in their PIN.|

### Phone Sign-in

|Policy|Scope|Options|
|--- |--- |--- |
|Use Phone Sign-in|Computer|Not currently supported.|

## MDM policy settings for Windows Hello for Business

The following table lists the MDM policy settings that you can configure for Windows Hello for Business use in your workplace. These MDM policy settings use the [PassportForWork configuration service provider (CSP)](/windows/client-management/mdm/passportforwork-csp).

>[!IMPORTANT]
>All devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP.

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UsePassportForWork|Device or user|True|- True: Windows Hello for Business will be provisioned for all users on the device.<br>- False: Users won't be able to provision Windows Hello for Business. <br>**Note:** If Windows Hello for Business is enabled, and then the policy is changed to False, users who previously set up Windows Hello for Business can continue to use it, but won't be able to set up Windows Hello for Business on other devices|
|RequireSecurityDevice|Device or user|False|- True: Windows Hello for Business will only be provisioned using TPM.<br>- False: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.|
|ExcludeSecurityDevice<br>- TPM12|Device|False|Added in Windows 10, version 1703<br>- True: TPM revision 1.2 modules will be disallowed from being used with Windows Hello for Business.<br>- False: TPM revision 1.2 modules will be allowed to be used with Windows Hello for Business.|
|EnablePinRecovery|Device or use|False|- Added in Windows 10, version 1703<br>- True: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset.<br>- False: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service. For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|

### Biometrics

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UseBiometrics|Device |False|- True: Biometrics can be used as a gesture in place of a PIN for domain sign-in.<br>- False: Only a PIN can be used as a gesture for domain sign-in.|
|- FacialFeaturesUser<br>-&nbsp;EnhancedAntiSpoofing|Device|Not configured|- Not configured: users can choose whether to turn on enhanced anti-spoofing.<br>- True: Enhanced anti-spoofing is required on devices which support it.<br>- False: Users can't turn on enhanced anti-spoofing.|

### PINComplexity

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|Digits |Device or user|1 |- 0: Digits are allowed. <br>- 1: At least one digit is required.<br>- 2: Digits aren't allowed.|
|Lowercase letters |Device or user|2|- 0: Lowercase letters are allowed. <br>- 1: At least one lowercase letter is required.<br>- 2: Lowercase letters aren't allowed.|
|Special characters|Device or user|2|- 0: Special characters are allowed. <br>- 1: At least one special character is required. <br>- 2: Special characters aren't allowed.|
|Uppercase letters|Device or user|2|- 0: Uppercase letters are allowed. <br>- 1: At least one uppercase letter is required.<br>- 2: Uppercase letters aren't allowed.|
|Maximum PIN length |Device or user|127 |- Maximum length that can be set is 127. Maximum length can't be less than minimum setting.|
|Minimum PIN length|Device or user|6|- Minimum length that can be set is 6. Minimum length can't be greater than maximum setting.|
|Expiration |Device or user|0|- Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire.|
|History|Device or user|0|- Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs isn't required.|

### Remote

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UseRemotePassport|Device or user|False|Not currently supported.|

>[!NOTE]
> If a policy isn't explicitly configured to require letters or special characters, users can optionally set an alphanumeric PIN.

## Policy conflicts from multiple policy sources

Windows Hello for Business is designed to be managed by group policy or MDM, but not a combination of both. Avoid mixing group policy and MDM policy settings for Windows Hello for Business. If you mix group policy and MDM policy settings, the MDM settings are ignored until all group policy settings are cleared.

> [!IMPORTANT]
> The [*MDMWinsOverGP*](/windows/client-management/mdm/policy-csp-controlpolicyconflict#mdmwinsovergp) policy setting doesn't apply to Windows Hello for Business. MDMWinsOverGP only applies to policies in the *Policy CSP*, while the Windows Hello for Business policies are in the *PassportForWork CSP*.

## Policy precedence

Windows Hello for Business *user policies* take precedence over *computer policies*. If a user policy is set, the corresponded computer policy is ignored. If a user policy is not set, the computer policy is used.
