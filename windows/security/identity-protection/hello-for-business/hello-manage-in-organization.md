---
title: Manage Windows Hello in your organization 
description: Learn how to create a Group Policy or mobile device management (MDM) policy to configure and deploy Windows Hello for Business.
ms.collection: 
  - highpri
  - tier1
ms.date: 2/15/2022
ms.topic: how-to
---

# Manage Windows Hello for Business in your organization

You can create a Group Policy or mobile device management (MDM) policy to configure Windows Hello for Business on Windows devices.

>[!IMPORTANT]
>Windows Hello as a convenience PIN is disabled by default on all domain joined and Azure AD joined devices. To enable a convenience PIN, enable the Group Policy setting **Turn on convenience PIN sign-in**.
>
>Use **PIN Complexity** policy settings to manage PINs for Windows Hello for Business.

## Group Policy settings for Windows Hello for Business

The following table lists the Group Policy settings that you can configure for Windows Hello use in your organization. These policy settings are available in **User configuration** and **Computer Configuration** under **Policies > Administrative Templates > Windows Components > Windows Hello for Business**.

> [!NOTE]
> The location of the PIN complexity section of the Group Policy is: **Computer Configuration > Administrative Templates > System > PIN Complexity**.

|Policy|Scope|Options|
|--- |--- |--- |
|Use Windows Hello for Business|Computer or user|<p><b>Not configured</b>: Device doesn't provision Windows Hello for Business for any user.<p><b>Enabled</b>: Device provisions Windows Hello for Business using keys or certificates for all users.<p><b>Disabled</b>: Device doesn't provision Windows Hello for Business for any user.|
|Use a hardware security device|Computer|<p><b>Not configured</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.<p><b>Enabled</b>: Windows Hello for Business will only be provisioned using TPM. This feature will provision Windows Hello for Business using TPM 1.2 unless the option to exclude them is explicitly set.<p><b>Disabled</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.|
|Use certificate for on-premises authentication|Computer or user|<p><b>Not configured</b>: Windows Hello for Business enrolls a key that is used for on-premises authentication.<p><b>Enabled</b>: Windows Hello for Business enrolls a sign-in certificate using ADFS that is used for on-premises authentication.<p><b>Disabled</b>: Windows Hello for Business enrolls a key that is used for on-premises authentication.|
|Use PIN recovery|Computer|<p>Added in Windows 10, version 1703<p><b>Not configured</b>: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service<p><b>Enabled</b>: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset<p><b>Disabled</b>: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service.<p>For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|
|Use biometrics|Computer|<p><b>Not configured</b>: Biometrics can be used as a gesture in place of a PIN<p><b>Enabled</b>: Biometrics can be used as a gesture in place of a PIN.<p><b>Disabled</b>: Only a PIN can be used as a gesture.|

### PIN Complexity

|Policy|Scope|Options|
|--- |--- |--- |
|Require digits|Computer|<p><b>Not configured</b>: Users must include a digit in their PIN.<p><b>Enabled</b>: Users must include a digit in their PIN.<p><b>Disabled</b>: Users can't use digits in their PIN.|
|Require lowercase letters|Computer|<p><b>Not configured</b>: Users can't use lowercase letters in their PIN<p><b>Enabled</b>: Users must include at least one lowercase letter in their PIN.<p><b>Disabled</b>: Users can't use lowercase letters in their PIN.|
|Maximum PIN length|Computer|<p><b>Not configured</b>: PIN length must be less than or equal to 127.<p><b>Enabled</b>: PIN length must be less than or equal to the number you specify.<p><b>Disabled</b>: PIN length must be less than or equal to 127.|
|Minimum PIN length|Computer|<p><b>Not configured</b>: PIN length must be greater  than or equal to 4.<p><b>Enabled</b>: PIN length must be greater than or equal to the number you specify.<p><b>Disabled</b>: PIN length must be greater  than or equal to 4.|
|Expiration|Computer|<p><b>Not configured</b>: PIN doesn't expire.<p><b>Enabled</b>: PIN can be set to expire after any number of days between 1 and 730, or PIN can be set to never expire by setting policy to 0.<p><b>Disabled</b>: PIN doesn't expire.|
|History|Computer|<p><b>Not configured</b>: Previous PINs aren't stored.<p><b>Enabled</b>: Specify the number of previous PINs that can be associated to a user account that can&#39;t be reused.<p><b>Disabled</b>: Previous PINs aren't stored.<div class="alert"><b>Note</b>  Current PIN is included in PIN history.</div>|
|Require special characters|Computer|<p><b>Not configured</b>: Windows allows, but doesn't require, special characters in the PIN.<p><b>Enabled</b>: Windows requires the user to include at least one special character in their PIN.<p><b>Disabled</b>: Windows doesn't allow the user to include special characters in their PIN.|
|Require uppercase letters|Computer|<p><b>Not configured</b>: Users can't include an uppercase letter in their PIN.<p><b>Enabled</b>: Users must include at least one uppercase letter in their PIN.<p><b>Disabled</b>: Users can't include an uppercase letter in their PIN.|

### Phone Sign-in

|Policy|Scope|Options|
|--- |--- |--- |
|Use Phone Sign-in|Computer|Not currently supported.|

## MDM policy settings for Windows Hello for Business

The following table lists the MDM policy settings that you can configure for Windows Hello for Business use in your workplace. These MDM policy settings use the [PassportForWork configuration service provider (CSP)](/windows/client-management/mdm/passportforwork-csp).

>[!IMPORTANT]
>Starting in Windows 10, version 1607, all devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP.

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UsePassportForWork|Device or user|True|<p>True: Windows Hello for Business will be provisioned for all users on the device.<p>False: Users won't be able to provision Windows Hello for Business. <div class="alert"> **Note:** If Windows Hello for Business is enabled, and then the policy is changed to False, users who previously set up Windows Hello for Business can continue to use it, but won't be able to set up Windows Hello for Business on other devices</div>|
|RequireSecurityDevice|Device or user|False|<p>True: Windows Hello for Business will only be provisioned using TPM.<p>False: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM isn't available.|
|ExcludeSecurityDevice<p>TPM12|Device|False|Added in Windows 10, version 1703<p>True: TPM revision 1.2 modules will be disallowed from being used with Windows Hello for Business.<p>False: TPM revision 1.2 modules will be allowed to be used with Windows Hello for Business.|
|EnablePinRecovery|Device or use|False|<p>Added in Windows 10, version 1703<p>True: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset.<p>False: Windows Hello for Business doesn't create or store a PIN recovery secret. PIN reset doesn't use the Azure-based PIN recovery service. For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|

### Biometrics

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UseBiometrics|Device |False|<p>True: Biometrics can be used as a gesture in place of a PIN for domain sign-in.<p>False: Only a PIN can be used as a gesture for domain sign-in.|
|<p>FacialFeaturesUser<p>EnhancedAntiSpoofing|Device|Not configured|<p>Not configured: users can choose whether to turn on enhanced anti-spoofing.<p>True: Enhanced anti-spoofing is required on devices which support it.<p>False: Users can't turn on enhanced anti-spoofing.|

### PINComplexity

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|Digits |Device or user|1 |<p>0: Digits are allowed. <p>1: At least one digit is required.<p>2: Digits aren't allowed.|
|Lowercase letters |Device or user|2|<p>0: Lowercase letters are allowed. <p>1: At least one lowercase letter is required.<p>2: Lowercase letters aren't allowed.|
|Special characters|Device or user|2|<p>0: Special characters are allowed. <p>1: At least one special character is required. <p>2: Special characters aren't allowed.|
|Uppercase letters|Device or user|2|<p>0: Uppercase letters are allowed. <p>1: At least one uppercase letter is required.<p>2: Uppercase letters aren't allowed.|
|Maximum PIN length |Device or user|127 |<p>Maximum length that can be set is 127. Maximum length can't be less than minimum setting.|
|Minimum PIN length|Device or user|6|<p>Minimum length that can be set is 6. Minimum length can't be greater than maximum setting.|
|Expiration |Device or user|0|<p>Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire.|
|History|Device or user|0|<p>Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs isn't required.|

### Remote

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UseRemotePassport|Device or user|False|Not currently supported.|

>[!NOTE]
> In Windows 10, version 1709 and later, if policy is not configured to explicitly require letters or special characters, users can optionally set an alphanumeric PIN. Prior to version 1709 the user is required to set a numeric PIN.

## Policy conflicts from multiple policy sources

Windows Hello for Business is designed to be managed by Group Policy or MDM but not a combination of both. If policies are set from both sources it can result in a mixed result of what is actually enforced for a user or device.

Policies for Windows Hello for Business are enforced using the following hierarchy: User Group Policy > Computer Group Policy > User MDM > Device MDM > Device Lock policy. 

Feature enablement policy and certificate trust policy are grouped together and enforced from the same source (either GP or MDM), based on the rule above. The Use Passport for Work policy is used to determine the winning policy source.

All PIN complexity policies are grouped separately from feature enablement and are enforced from a single policy source. Use a hardware security device and RequireSecurityDevice enforcement are also grouped together with PIN complexity policy. Conflict resolution for other Windows Hello for Business policies are enforced on a per policy basis.  

>[!NOTE]
> Windows Hello for Business policy conflict resolution logic does not respect the ControlPolicyConflict/MDMWinsOverGP policy in the Policy CSP.
>
><b>Examples</b>
>
>The following are configured using computer Group Policy:
>
>- Use Windows Hello for Business - Enabled
>- User certificate for on-premises authentication - Enabled
>
>The following are configured using device MDM Policy:
>
>- UsePassportForWork - Disabled
>- UseCertificateForOnPremAuth - Disabled
>- MinimumPINLength - 8
>- Digits - 1
>- LowercaseLetters - 1
>- SpecialCharacters - 1
>
>Enforced policy set:
>
>- Use Windows Hello for Business - Enabled
>- Use certificate for on-premises authentication - Enabled
>- MinimumPINLength - 8
>- Digits - 1
>- LowercaseLetters - 1
>- SpecialCharacters - 1