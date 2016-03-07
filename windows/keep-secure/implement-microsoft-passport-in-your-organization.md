---
title: Implement Microsoft Passport in your organization (Windows 10)
description: You can create a Group Policy or mobile device management (MDM) policy that will implement Microsoft Passport on devices running Windows 10.
ms.assetid: 47B55221-24BE-482D-BD31-C78B22AC06D8
keywords: ["identity", "PIN", "biometric", "Hello"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Implement Microsoft Passport in your organization


**Applies to**

-   Windows 10
-   Windows 10 Mobile

**In this article**

-   [Group Policy settings for Passport](#group_policy_settings_for_passport)
-   [MDM policy settings for Passport](#mdm_policy_settings_for_passport)
-   [Prerequisites](#prerequisites)
-   [Passport for BYOD](#passport_for_byod)
-   [Related topics](#related_topics)

You can create a Group Policy or mobile device management (MDM) policy that will implement Microsoft Passport on devices running Windows 10.

**Important**  
The Group Policy setting **Turn on PIN sign-in** does not apply to Windows 10. Use **Microsoft Passport for Work** policy settings to manage PINs.

 

## Group Policy settings for Passport


The following table lists the Group Policy settings that you can configure for Passport use in your workplace. These policy settings are available in **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **Microsoft Passport for Work**.

Policy
Options
Use Microsoft Passport for Work
**Not configured**: Users can provision Passport for Work, which encrypts their domain password.

**Enabled**: Device provisions Passport for Work using keys or certificates for all users.

**Disabled**: Device does not provision Passport for Work for any user.

Use a hardware security device
**Not configured**: Passport for Work will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.

**Enabled**: Passport for Work will only be provisioned using TPM.

**Disabled**: Passport for Work will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.

Use biometrics
**Not configured**: Biometrics can be used as a gesture in place of a PIN.

**Enabled**: Biometrics can be used as a gesture in place of a PIN.

**Disabled**: Only a PIN can be used as a gesture.

PIN Complexity
Require digits
**Not configured**: Users must include a digit in their PIN.

**Enabled**: Users must include a digit in their PIN.

**Disabled**: Users cannot use digits in their PIN.

Require lowercase letters
**Not configured**: Users cannot use lowercase letters in their PIN.

**Enabled**: Users must include at least one lowercase letter in their PIN.

**Disabled**: Users cannot use lowercase letters in their PIN.

Maximum PIN length
**Not configured**: PIN length must be less than or equal to 127.

**Enabled**: PIN length must be less than or equal to the number you specify.

**Disabled**: PIN length must be less than or equal to 127.

Minimum PIN length
**Not configured**: PIN length must be greater than or equal to 4.

**Enabled**: PIN length must be greater than or equal to the number you specify.

**Disabled**: PIN length must be greater than or equal to 4.

Expiration
**Not configured**: PIN does not expire.

**Enabled**: PIN can be set to expire after any number of days between 1 and 730, or PIN can be set to never expire by setting policy to 0.

**Disabled**: PIN does not expire.

History
**Not configured**: Previous PINs are not stored.

**Enabled**: Specify the number of previous PINs that can be associated to a user account that can't be reused.

**Disabled**: Previous PINs are not stored.

**Note**  Current PIN is included in PIN history.

 

Require special characters
**Not configured**: Users cannot include a special character in their PIN.

**Enabled**: Users must include at least one special character in their PIN.

**Disabled**: Users cannot include a special character in their PIN.

Require uppercase letters
**Not configured**: Users cannot include an uppercase letter in their PIN.

**Enabled**: Users must include at least one uppercase letter in their PIN.

**Disabled**: Users cannot include an uppercase letter in their PIN.

[Remote Passport](prepare-people-to-use-microsoft-passport.md#BMK_remote)
Use Remote Passport

**Note**  Applies to desktop only. Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.

 

**Not configured**: Remote Passport is disabled.

**Enabled**: Users can use a portable, registered device as a companion device for desktop authentication.

**Disabled**: Remote Passport is disabled.

 

## MDM policy settings for Passport


The following table lists the MDM policy settings that you can configure for Passport use in your workplace. These MDM policy settings use the [PassportForWork configuration service provider (CSP)](http://go.microsoft.com/fwlink/p/?LinkId=692070).

Policy
Scope
Default
Options
UsePassportForWork
Device
True
True: Passport will be provisioned for all users on the device.

False: Users will not be able to provision Passport.

**Note**  If Passport is enabled, and then the policy is changed to False, users who previously set up Passport can continue to use it, but will not be able to set up Passport on other devices.

 

RequireSecurityDevice
Device
False
True: Passport will only be provisioned using TPM.

False: Passport will be provisioned using TPM if available, and will be provisioned using software if TPM is not available.

Biometrics
UseBiometrics

Device
False
True: Biometrics can be used as a gesture in place of a PIN for domain logon.

False: Only a PIN can be used as a gesture for domain logon.

FacialFeaturesUser

EnhancedAntiSpoofing

Device
Not configured
Not configured: users can choose whether to turn on enhanced anti-spoofing.

True: Enhanced anti-spoofing is required on devices which support it.

False: Users cannot turn on enhanced anti-spoofing.

PINComplexity
Digits
Device or user
2
1: Numbers are not allowed.

2: At least one number is required.

Lowercase letters
Device or user
1
1: Lowercase letters are not allowed.

2: At least one lowercase letter is required.

Maximum PIN length
Device or user
127
Maximum length that can be set is 127. Maximum length cannot be less than minimum setting.

Minimum PIN length
Device or user
4
Minimum length that can be set is 4. Minimum length cannot be greater than maximum setting.

Expiration
Device or user
0
Integer value specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The largest number you can configure for this policy setting is 730. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then the user’s PIN will never expire.

History
Device or user
0
Integer value that specifies the number of past PINs that can be associated to a user account that can’t be reused. The largest number you can configure for this policy setting is 50. The lowest number you can configure for this policy setting is 0. If this policy is set to 0, then storage of previous PINs is not required.

Special characters
Device or user
1
1: Special characters are not allowed.

2: At least one special character is required.

Uppercase letters
Device or user
1
1: Uppercase letters are not allowed

2: At least one uppercase letter is required

Remote
UseRemotePassport

**Note**  Applies to desktop only. Phone sign-in is currently limited to select Technology Adoption Program (TAP) participants.

 

Device or user
False
True: [Remote Passport](prepare-people-to-use-microsoft-passport.md#BMK_remote) is enabled.

False: [Remote Passport](prepare-people-to-use-microsoft-passport.md#BMK_remote) is disabled.

 

**Note**  
If policy is not configured to explicitly require letters or special characters, users will be restricted to creating a numeric PIN.

 

## Prerequisites


You’ll need this software to set Microsoft Passport policies in your enterprise.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Microsoft Passport mode</th>
<th align="left">Azure AD</th>
<th align="left">Active Directory (AD) on-premises (available with production release of Windows Server 2016 Technical Preview)</th>
<th align="left">Azure AD/AD hybrid (available with production release of Windows Server 2016 Technical Preview)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Key-based authentication</td>
<td align="left">Azure AD subscription</td>
<td align="left"><ul>
<li>Active Directory Federation Service (AD FS) (Windows Server 2016 Technical Preview)</li>
<li>A few Windows Server 2016 Technical Preview domain controllers on-site</li>
<li>Microsoft System Center 2012 R2 Configuration Manager SP2</li>
</ul></td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>[Azure AD Connect](http://go.microsoft.com/fwlink/p/?LinkId=616792)</li>
<li>A few Windows Server 2016 Technical Preview domain controllers on-site</li>
<li>A management solution, such as Configuration Manager, Group Policy, or MDM</li>
<li>Active Directory Certificate Services (AD CS) without Network Device Enrollment Service (NDES)</li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Certificate-based authentication</td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>Intune or non-Microsoft mobile device management (MDM) solution</li>
<li>PKI infrastructure</li>
</ul></td>
<td align="left"><ul>
<li>ADFS (Windows Server 2016 Technical Preview)</li>
<li>Active Directory Domain Services (AD DS) Windows Server 2016 Technical Preview schema</li>
<li>PKI infrastructure</li>
<li>Configuration Manager SP2, Intune, or non-Microsoft MDM solution</li>
</ul></td>
<td align="left"><ul>
<li>Azure AD subscription</li>
<li>[Azure AD Connect](http://go.microsoft.com/fwlink/p/?LinkId=616792)</li>
<li>AD CS with NDES</li>
<li>Configuration Manager (current branch) or Configuration Manager 2016 Technical Preview for domain-joined certificate enrollment, or InTune for non-domain-joined devices, or a non-Microsoft MDM service that supports Passport for Work</li>
</ul></td>
</tr>
</tbody>
</table>

 

Configuration Manager and MDM provide the ability to manage Passport policy and to deploy and manage certificates protected by Passport.

Azure AD provides the ability to register devices with your enterprise and to provision Passport for organization accounts.

Active Directory provides the ability to authorize users and devices using keys protected by Passport if domain controllers are running Windows 10 and the Microsoft Passport provisioning service in Windows 10 AD FS.

## Passport for BYOD


Passport can be managed on personal devices that your employees use for work purposes using MDM. On personal devices, users can create a personal Passport PIN for unlocking the device and a separate work PIN for access to work resources.

The work PIN is managed using the same Passport policies that you can use to manage Passport on organization owned devices. The personal PIN is managed separately using DeviceLock policy. DeviceLock policy can be used to control length, complexity, history, and expiration requirements and can be configured using the [Policy configuration service provider](http://go.microsoft.com/fwlink/p/?LinkID=623244).

## Related topics


[Windows Hello biometrics in the enterprise](windows-hello-biometrics-in-the-enterprise.md)

[Why a PIN is better than a password](why-a-pin-is-better-than-a-password.md)

[Manage identity verification using Microsoft Passport](manage-identity-verification-using-microsoft-passport.md)

[Prepare people to use Microsoft Passport](prepare-people-to-use-microsoft-passport.md)

[Microsoft Passport and password changes](microsoft-passport-and-password-changes.md)

[Microsoft Passport errors during PIN creation](microsoft-passport-errors-during-pin-creation.md)

[Event ID 300 - Passport successfully created](microsoft-passport-event-id-200.md)

 

 





