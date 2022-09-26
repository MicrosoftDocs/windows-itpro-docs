---
title: Policy CSP - DeviceLock
description: Learn how to use the Policy CSP - DeviceLock setting to specify whether the user must input a PIN or password when the device resumes from an idle state.
ms.author: vinpa
ms.topic: article
ms.prod: w10
ms.technology: windows
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 05/16/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - DeviceLock

<hr/>

<!--Policies-->
## DeviceLock policies  

<dl>
  <dd>
    <a href="#devicelock-allowidlereturnwithoutpassword">DeviceLock/AllowIdleReturnWithoutPassword</a>
  </dd>
  <dd>
    <a href="#devicelock-allowsimpledevicepassword">DeviceLock/AllowSimpleDevicePassword</a>
  </dd>
  <dd>
    <a href="#devicelock-allowscreentimeoutwhilelockeduserconfig">DeviceLock/AllowScreenTimeoutWhileLockedUserConfig</a>
  </dd>
  <dd>
    <a href="#devicelock-alphanumericdevicepasswordrequired">DeviceLock/AlphanumericDevicePasswordRequired</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordenabled">DeviceLock/DevicePasswordEnabled</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordexpiration">DeviceLock/DevicePasswordExpiration</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordhistory">DeviceLock/DevicePasswordHistory</a>
  </dd>
  <dd>
    <a href="#devicelock-enforcelockscreenandlogonimage">DeviceLock/EnforceLockScreenAndLogonImage</a>
  </dd>
  <dd>
    <a href="#devicelock-maxdevicepasswordfailedattempts">DeviceLock/MaxDevicePasswordFailedAttempts</a>
  </dd>
  <dd>
    <a href="#devicelock-maxinactivitytimedevicelock">DeviceLock/MaxInactivityTimeDeviceLock</a>
  </dd>
  <dd>
    <a href="#devicelock-mindevicepasswordcomplexcharacters">DeviceLock/MinDevicePasswordComplexCharacters</a>
  </dd>
  <dd>
    <a href="#devicelock-mindevicepasswordlength">DeviceLock/MinDevicePasswordLength</a>
  </dd>
  <dd>
    <a href="#devicelock-minimumpasswordage">DeviceLock/MinimumPasswordAge</a>
  </dd>
  <dd>
    <a href="#devicelock-preventenablinglockscreencamera">DeviceLock/PreventEnablingLockScreenCamera</a>
  </dd>
  <dd>
    <a href="#devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a>
  </dd>
 </dl>


<hr/>

> [!Important]
> The DeviceLock CSP utilizes the [Exchange ActiveSync Policy Engine](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)). When password length and complexity rules are applied, all the local user and administrator accounts are marked to change their password at the next sign in to ensure complexity requirements are met. For more information, see [Password length and complexity supported by account types](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)#password-length-and-complexity-supported-by-account-types).

<!--Policy-->
<a href="" id="devicelock-allowidlereturnwithoutpassword"></a>**DeviceLock/AllowIdleReturnWithoutPassword**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|No|No|
|Enterprise|No|No|
|Education|No|No|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> Currently, this policy is supported only in HoloLens 2, HoloLens (1st gen) Commercial Suite, and HoloLens (1st gen) Development Edition.

Specifies whether the user must input a PIN or password when the device resumes from an idle state.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-allowsimpledevicepassword"></a>**DeviceLock/AllowSimpleDevicePassword**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Blocked
-   1 – Allowed

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-allowscreentimeoutwhilelockeduserconfig"></a>**DeviceLock/AllowScreenTimeoutWhileLockedUserConfig**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->


<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-alphanumericdevicepasswordrequired"></a>**DeviceLock/AlphanumericDevicePasswordRequired**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Determines the type of PIN required. This policy only applies if the **DeviceLock/DevicePasswordEnabled** policy is set to 0 (required).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows for desktop editions (Home, Pro, Enterprise, and Education).



> [!NOTE]
> If **AlphanumericDevicePasswordRequired** is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.
>
> If **AlphanumericDevicePasswordRequired** is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Password or Alphanumeric PIN required.
-   1 – Password or Numeric PIN required.
-   2 (default) – Password, Numeric PIN, or Alphanumeric PIN required.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-devicepasswordenabled"></a>**DeviceLock/DevicePasswordEnabled**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether device lock is enabled.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows for desktop editions.
 


> [!IMPORTANT]
> The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:
>
> -   AllowSimpleDevicePassword
> -   MinDevicePasswordLength
> -   AlphanumericDevicePasswordRequired
> -   MaxDevicePasswordFailedAttempts
> -   MaxInactivityTimeDeviceLock
> -   MinDevicePasswordComplexCharacters
&nbsp;

> [!IMPORTANT]
> If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:
>
> -   MinDevicePasswordLength is set to 4
> -   MinDevicePasswordComplexCharacters is set to 1
>
> If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:
>
> -   MinDevicePasswordLength
> -   MinDevicePasswordComplexCharacters

> [!Important]
> **DevicePasswordEnabled** should not be set to Enabled (0) when WMI is used to set the EAS DeviceLock policies given that it is Enabled by default in Policy CSP for back compat with Windows 8.x. If **DevicePasswordEnabled** is set to Enabled(0) then Policy CSP will return an error stating that **DevicePasswordEnabled** already exists. Windows 8.x did not support DevicePassword policy. When disabling **DevicePasswordEnabled** (1) then this should be the only policy set from the DeviceLock group of policies listed below:
> - **DevicePasswordEnabled** is the parent policy of the following:
>   - AllowSimpleDevicePassword
>   - MinDevicePasswordLength
>   - AlphanumericDevicePasswordRequired
>   - MinDevicePasswordComplexCharacters 
>   - DevicePasswordExpiration
>   - DevicePasswordHistory
>   - MaxDevicePasswordFailedAttempts
>   - MaxInactivityTimeDeviceLock

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-devicepasswordexpiration"></a>**DeviceLock/DevicePasswordExpiration**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies when the password expires (in days).

> [!NOTE]
> This policy must be wrapped in an Atomic command.



If all policy values = 0, then 0; otherwise, Min policy value is the most secure value.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 730.
-   0 (default) - Passwords don't expire.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-devicepasswordhistory"></a>**DeviceLock/DevicePasswordHistory**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies how many passwords can be stored in the history that can’t be used.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

The value includes the user's current password. This value denotes that with a setting of 1, the user can't reuse their current password when choosing a new password, while a setting of 5 means that a user can't set their new password to their current password or any of their previous four passwords.

Max policy value is the most restricted.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 50.
-   0 (default)

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-enforcelockscreenandlogonimage"></a>**DeviceLock/EnforceLockScreenAndLogonImage**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the default lock screen and sign-in image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and sign-in screens. Users won't be able to change this image.

> [!NOTE]
> This policy is only enforced in Windows 10 Enterprise and Education editions and not supported in Windows 10 Home and Pro.


Value type is a string, which is the full image filepath and filename.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-maxdevicepasswordfailedattempts"></a>**DeviceLock/MaxDevicePasswordFailedAttempts**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


On a client device, when the user reaches the value set by this policy, it isn't wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker isn't enabled, then the policy can't be enforced.

  Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key.


Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP Friendly name: *Interactive logon: Machine account lockout threshold*
-   GP path: *Windows Settings\Security Settings\LocalPolicies\Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for client devices.
-   0 (default) - The device is never wiped after an incorrect PIN or password is entered.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-maxinactivitytimedevicelock"></a>**DeviceLock/MaxInactivityTimeDeviceLock**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked. Users can select any existing timeout value less than the specified maximum time in the Settings app.

On HoloLens, this timeout is controlled by the device's system sleep timeout, regardless of the value set by this policy.

> [!NOTE]
> This policy must be wrapped in an Atomic command.



For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-mindevicepasswordcomplexcharacters"></a>**DeviceLock/MinDevicePasswordComplexCharacters**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows for desktop editions.

PIN enforces the following behavior for client devices:

-   1 - Digits only
-   2 - Digits and lowercase letters are required
-   3 - Digits, lowercase letters, and uppercase letters are required. Not supported in desktop Microsoft accounts and domain accounts. 
-   4 - Digits, lowercase letters, uppercase letters, and special characters are required. Not supported in desktop or HoloLens.

The default value is 1. The following list shows the supported values and actual enforced values:

|Account Type|Supported Values|Actual Enforced Values|
|--- |--- |--- |
|Local Accounts|1,2,3|3|
|Microsoft Accounts|1,2|&lt;p2|
|Domain Accounts|Not supported|Not supported|


Enforced values for Local and Microsoft Accounts:

-   Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
-   Passwords for local accounts must meet the following minimum requirements:

    -   Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
    -   Be at least six characters in length
    -   Contain characters from three of the following four categories:

        -   English uppercase characters (A through Z)
        -   English lowercase characters (a through z)
        -   Base 10 digits (0 through 9)
        -   Special characters (!, $, \#, %, etc.)

The enforcement of policies for Microsoft accounts happens on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-mindevicepasswordlength"></a>**DeviceLock/MinDevicePasswordLength**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the minimum number or characters required in the PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows for desktop editions.



Max policy value is the most restricted.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for client devices. However, local accounts will always enforce a minimum password length of 6.
-   Not enforced.
-   The default value is 4 for client devices.

<!--/SupportedValues-->
<!--Example-->
The following example shows how to set the minimum password length to 4 characters.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordLength</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>4</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```
<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-minimumpasswordage"></a>**DeviceLock/MinimumPasswordAge**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This security setting determines the period of time (in days) that a password must be used before the user can change it. You can set a value between 1 and 998 days, or you can allow changes immediately by setting the number of days to 0.

The minimum password age must be less than the Maximum password age, unless the maximum password age is set to 0, indicating that passwords will never expire. If the maximum password age is set to 0, the minimum password age can be set to any value between 0 and 998.

Configure the minimum password age to be more than 0 if you want Enforce password history to be effective. Without a minimum password age, users can cycle through passwords repeatedly until they get to an old favorite. The default setting doesn't follow this recommendation, so that an administrator can specify a password for a user and then require the user to change the administrator-defined password when the user logs on. If the password history is set to 0, the user doesn't have to choose a new password. For this reason, Enforce password history is set to 1 by default.

<!--/Description-->
<!--DbMapped-->
GP Info:  
-   GP Friendly name: *Minimum password age*
-   GP path: *Windows Settings/Security Settings/Account Policies/Password Policy*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-preventenablinglockscreencamera"></a>**DeviceLock/PreventEnablingLockScreenCamera**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Disables the lock screen camera toggle-switch in PC Settings and prevents a camera from being invoked on the lock screen.

By default, users can enable invocation of an available camera on the lock screen.

If you enable this setting, users will no longer be able to enable or disable lock screen camera access in PC Settings, and the camera can't be invoked on the lock screen.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent enabling lock screen camera*
-   GP name: *CPL_Personalization_NoLockScreenCamera*
-   GP path: *Control Panel/Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="devicelock-preventlockscreenslideshow"></a>**DeviceLock/PreventLockScreenSlideShow**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|


<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Disables the lock screen slideshow settings in PC Settings and prevents a slide show from playing on the lock screen.

By default, users can enable a slide show that will run after they lock the machine.

If you enable this setting, users will no longer be able to modify slide show settings in PC Settings, and no slide show will ever start.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent enabling lock screen slide show*
-   GP name: *CPL_Personalization_NoLockScreenSlideshow*
-   GP path: *Control Panel/Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>



<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)