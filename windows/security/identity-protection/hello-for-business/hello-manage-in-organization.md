---
title: Manage Windows Hello in your organization (Windows)
description: You can create a Group Policy or mobile device management (MDM) policy that will implement Windows Hello for Business on devices running Windows 10.
ms.assetid: 47B55221-24BE-482D-BD31-C78B22AC06D8
keywords: identity, PIN, biometric, Hello
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection:
  - M365-identity-device-management
  - highpri
ms.topic: article
ms.localizationpriority: medium
ms.date: 1/20/2021
---

# Manage Windows Hello for Business in your organization

**Applies to**
- Windows 10
- Windows 11

You can create a Group Policy or mobile device management (MDM) policy that will implement Windows Hello on devices running Windows 10.

>[!IMPORTANT]
>The Group Policy setting **Turn on PIN sign-in** does not apply to Windows Hello for Business. It still prevents or enables the creation of a convenience PIN for Windows 10, version 1507 and 1511.
>
>Beginning in version 1607, Windows Hello as a convenience PIN is disabled by default on all domain-joined computers. To enable a convenience PIN for Windows 10, version 1607, enable the Group Policy setting **Turn on convenience PIN sign-in**.
>
>Use **PIN Complexity** policy settings to manage PINs for Windows Hello for Business.

## Group Policy settings for Windows Hello for Business

The following table lists the Group Policy settings that you can configure for Windows Hello use in your workplace. These policy settings are available in **User configuration** and **Computer Configuration** under **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Windows Hello for Business**.

> [!NOTE]
> Starting with Windows 10, version 1709, the location of the PIN complexity section of the Group Policy is: **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **PIN Complexity**.

|Policy|Scope|Options|
|--- |--- |--- |
|Use Windows Hello for Business|Computer or user|<p><b>Not configured</b>: Device does not provision Windows Hello for Business for any user.<p><b>Enabled</b>: Device provisions Windows Hello for Business using keys or certificates for all users.<p><b>Disabled</b>: Device does not provision Windows Hello for Business for any user.|
|Use a hardware security device|Computer|<p><b>Not configured</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.<p><b>Enabled</b>: Windows Hello for Business will only be provisioned using TPM. This feature will provision Windows Hello for Business using TPM 1.2 unless the option to exclude them is explicitly set.<p><b>Disabled</b>: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.|
|Use certificate for on-premises authentication|Computer or user|<p><b>Not configured</b>: Windows Hello for Business enrolls a key that is used for on-premises authentication.<p><b>Enabled</b>: Windows Hello for Business enrolls a sign-in certificate using ADFS that is used for on-premises authentication.<p><b>Disabled</b>: Windows Hello for Business enrolls a key that is used for on-premises authentication.|
|Use PIN recovery|Computer|<p>Added in Windows 10, version 1703<p><b>Not configured</b>: Windows Hello for Business does not create or store a PIN recovery secret. PIN reset does not use the Azure-based PIN recovery service<p><b>Enabled</b>: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset<p><b>Disabled</b>: Windows Hello for Business does not create or store a PIN recovery secret. PIN reset does not use the Azure-based PIN recovery service.<p>For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|
|Use biometrics|Computer|<p><b>Not configured</b>: Biometrics can be used as a gesture in place of a PIN<p><b>Enabled</b>: Biometrics can be used as a gesture in place of a PIN.<p><b>Disabled</b>: Only a PIN can be used as a gesture.|

### PIN Complexity

|Policy|Scope|Options|
|--- |--- |--- |
|Require digits|Computer|<p><b>Not configured</b>: Users must include a digit in their PIN.<p><b>Enabled</b>: Users must include a digit in their PIN.<p><b>Disabled</b>: Users cannot use digits in their PIN.|
|Require lowercase letters|Computer|<p><b>Not configured</b>: Users cannot use lowercase letters in their PIN<p><b>Enabled</b>: Users must include at least one lowercase letter in their PIN.<p><b>Disabled</b>: Users cannot use lowercase letters in their PIN.|
|Maximum PIN length|Computer|<p><b>Not configured</b>: PIN length must be less than or equal to 127.<p><b>Enabled</b>: PIN length must be less than or equal to the number you specify.<p><b>Disabled</b>: PIN length must be less than or equal to 127.|
|Minimum PIN length|Computer|<p><b>Not configured</b>: PIN length must be greater  than or equal to 4.<p><b>Enabled</b>: PIN length must be greater than or equal to the number you specify.<p><b>Disabled</b>: PIN length must be greater  than or equal to 4.|
|Expiration|Computer|<p><b>Not configured</b>: PIN does not expire.<p><b>Enabled</b>: PIN can be set to expire after any number of days between 1 and 730, or PIN can be set to never expire by setting policy to 0.<p><b>Disabled</b>: PIN does not expire.|
|History|Computer|<p><b>Not configured</b>: Previous PINs are not stored.<p><b>Enabled</b>: Specify the number of previous PINs that can be associated to a user account that can&#39;t be reused.<p><b>Disabled</b>: Previous PINs are not stored.<div class="alert"><b>Note</b>  Current PIN is included in PIN history.</div>|
|Require special characters|Computer|<p><b>Not configured</b>: Users cannot include a special character in their PIN<p><b>Enabled</b>: Users must include at least one special character in their PIN.<p><b>Disabled</b>: Users cannot include a special character in their PIN.|
|Require uppercase letters|Computer|<p><b>Not configured</b>: Users cannot include an uppercase letter in their PIN.<p><b>Enabled</b>: Users must include at least one uppercase letter in their PIN.<p><b>Disabled</b>: Users cannot include an uppercase letter in their PIN.|

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
|UsePassportForWork|Device or user|True|<p>True: Windows Hello for Business will be provisioned for all users on the device.<p>False: Users will not be able to provision Windows Hello for Business. <div class="alert"> **Note:** If Windows Hello for Business is enabled, and then the policy is changed to False, users who previously set up Windows Hello for Business can continue to use it, but will not be able to set up Windows Hello for Business on other devices</div>|
|RequireSecurityDevice|Device or user|False|<p>True: Windows Hello for Business will only be provisioned using TPM.<p>False: Windows Hello for Business will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.|
|ExcludeSecurityDevice<p>TPM12|Device|False|Added in Windows 10, version 1703<p>True: TPM revision 1.2 modules will be disallowed from being used with Windows Hello for Business.<p>False: TPM revision 1.2 modules will be allowed to be used with Windows Hello for Business.|
|EnablePinRecovery|Device or use|False|<p>Added in Windows 10, version 1703<p>True: Windows Hello for Business uses the Azure-based PIN recovery service for PIN reset.<p>False: Windows Hello for Business does not create or store a PIN recovery secret. PIN reset does not use the Azure-based PIN recovery service.For more information about using the PIN recovery service for PIN reset see [Windows Hello for Business PIN Reset](hello-feature-pin-reset.md).|

### Biometrics

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|UseBiometrics|Device |False|<p>True: Biometrics can be used as a gesture in place of a PIN for domain sign-in.<p>False: Only a PIN can be used as a gesture for domain sign-in.|
|<p>FacialFeaturesUser<p>EnhancedAntiSpoofing|Device|Not configured|<p>Not configured: users can choose whether to turn on enhanced anti-spoofing.<p>True: Enhanced anti-spoofing is required on devices which support it.<p>False: Users cannot turn on enhanced anti-spoofing.|

### PINComplexity

|Policy|Scope|Default|Options|
|--- |--- |--- |--- |
|Digits |Device or user|1 |<p>0: Digits are allowed. <p>1: At least one digit is required.<p>2: Digits are not allowed.|
|Lowercase letters |Device or user|2|<p>0: Lowercase letters are allowed. <p>1: At least one lowercase letter is required.<p>2: Lowercase letters are not allowed.|
|Special characters|Device or user|2|<p>0: Special characters are allowed. <p>1: At least one special character is required. <p>2: Special characters are not allowed.|
|Uppercase letters|Device or user|2|<p>0: Uppercase letters are allowed. <p>1: At least one uppercase letter is required.<p>2: Uppercase letters are not allowed.|
|Maximum PIN length |Device or user|127 |<p>Maximum length that can be set is 127. Maximum length cannot be less than minimum setting.|
|Minimum PIN length|Device or user|4|<p>Minimum length that can be set is 4. Minimum length cannot be greater than maximum setting.|
|Expiration |Device or user|0|<p>Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user's PIN will never expire.|
|History|Device or user|0|<p>Integer value that specifies the number of past PINs that can be associated to a user account that can't be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required.|

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

All PIN complexity policies, are grouped separately from feature enablement and are enforced from a single policy source. Use a hardware security device and RequireSecurityDevice enforcement are also grouped together with PIN complexity policy. Conflict resolution for other Windows Hello for Business policies are enforced on a per policy basis.  

>[!NOTE]
> Windows Hello for Business policy conflict resolution logic does not respect the ControlPolicyConflict/MDMWinsOverGP policy in the Policy CSP.

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

## How to use Windows Hello for Business with Azure Active Directory

There are three scenarios for using Windows Hello for Business in Azure AD–only organizations:

- **Organizations that use the version of Azure AD included with Office 365**. For these organizations, no additional work is necessary. When Windows 10 was released to general availability, Microsoft changed the behavior of the Office 365 Azure AD stack. When a user selects the option to join a work or school network, the device is automatically joined to the Office 365 tenant's directory partition, a certificate is issued for the device, and it becomes eligible for Office 365 MDM if the tenant has subscribed to that feature. In addition, the user will be prompted to log on and, if MFA is enabled, to enter an MFA proof that Azure AD sends to his or her phone.
- **Organizations that use the free tier of Azure AD**. For these organizations, Microsoft has not enabled automatic domain join to Azure AD. Organizations that have signed up for the free tier have the option to enable or disable this feature, so automatic domain join won't be enabled unless and until the organization's administrators decide to enable it. When that feature is enabled, devices that join the Azure AD domain by using the Connect to work or school dialog box will be automatically registered with Windows Hello for Business support, but previously joined devices will not be registered. 
- **Organizations that have subscribed to Azure AD Premium** have access to the full set of Azure AD MDM features. These features include controls to manage Windows Hello for Business. You can set policies to disable or force the use of Windows Hello for Business, require the use of a TPM, and control the length and strength of PINs set on the device.

If you want to use Windows Hello for Business with certificates, you'll need a device registration system. That means that you set up Configuration Manager, Microsoft Intune, or a compatible non-Microsoft MDM system and enable it to enroll devices. This is a prerequisite step to use Windows Hello for Business with certificates, no matter the IDP, because the enrollment system is responsible for provisioning the devices with the necessary certificates.

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [How Windows Hello for Business works](hello-how-it-works.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)