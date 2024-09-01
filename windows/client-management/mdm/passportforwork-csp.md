---
title: PassportForWork CSP
description: Learn more about the PassportForWork CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- PassportForWork-Begin -->
# PassportForWork CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- PassportForWork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The PassportForWork configuration service provider is used to provision Windows Hello for Business (formerly Microsoft Passport for Work). It allows you to log in to Windows using your Active Directory or Microsoft Entra account and replace passwords, smartcards, and virtual smart cards.

> [!IMPORTANT]
> Starting with Windows 10, version 1607 all devices only have one PIN associated with Windows Hello for Business. This means that any PIN on a device will be subject to the policies specified in the PassportForWork CSP. The values specified take precedence over any complexity rules set via Exchange ActiveSync (EAS) or the DeviceLock CSP.
<!-- PassportForWork-Editable-End -->

<!-- PassportForWork-Tree-Begin -->
The following list shows the PassportForWork configuration service provider nodes:

- ./Device/Vendor/MSFT/PassportForWork
  - [{TenantId}](#devicetenantid)
    - [Policies](#devicetenantidpolicies)
      - [DisablePostLogonProvisioning](#devicetenantidpoliciesdisablepostlogonprovisioning)
      - [EnablePinRecovery](#devicetenantidpoliciesenablepinrecovery)
      - [EnableWindowsHelloProvisioningForSecurityKeys](#devicetenantidpoliciesenablewindowshelloprovisioningforsecuritykeys)
      - [ExcludeSecurityDevices](#devicetenantidpoliciesexcludesecuritydevices)
        - [TPM12](#devicetenantidpoliciesexcludesecuritydevicestpm12)
      - [PINComplexity](#devicetenantidpoliciespincomplexity)
        - [Digits](#devicetenantidpoliciespincomplexitydigits)
        - [Expiration](#devicetenantidpoliciespincomplexityexpiration)
        - [History](#devicetenantidpoliciespincomplexityhistory)
        - [LowercaseLetters](#devicetenantidpoliciespincomplexitylowercaseletters)
        - [MaximumPINLength](#devicetenantidpoliciespincomplexitymaximumpinlength)
        - [MinimumPINLength](#devicetenantidpoliciespincomplexityminimumpinlength)
        - [SpecialCharacters](#devicetenantidpoliciespincomplexityspecialcharacters)
        - [UppercaseLetters](#devicetenantidpoliciespincomplexityuppercaseletters)
      - [Remote](#devicetenantidpoliciesremote)
        - [UseRemotePassport](#devicetenantidpoliciesremoteuseremotepassport)
      - [RequireSecurityDevice](#devicetenantidpoliciesrequiresecuritydevice)
      - [UseCertificateForOnPremAuth](#devicetenantidpoliciesusecertificateforonpremauth)
      - [UseCloudTrustForOnPremAuth](#devicetenantidpoliciesusecloudtrustforonpremauth)
      - [UseHelloCertificatesAsSmartCardCertificates](#devicetenantidpoliciesusehellocertificatesassmartcardcertificates)
      - [UsePassportForWork](#devicetenantidpoliciesusepassportforwork)
  - [Biometrics](#devicebiometrics)
    - [EnableESSwithSupportedPeripherals](#devicebiometricsenableesswithsupportedperipherals)
    - [FacialFeaturesUseEnhancedAntiSpoofing](#devicebiometricsfacialfeaturesuseenhancedantispoofing)
    - [UseBiometrics](#devicebiometricsusebiometrics)
  - [DeviceUnlock](#devicedeviceunlock)
    - [GroupA](#devicedeviceunlockgroupa)
    - [GroupB](#devicedeviceunlockgroupb)
    - [Plugins](#devicedeviceunlockplugins)
  - [DynamicLock](#devicedynamiclock)
    - [DynamicLock](#devicedynamiclockdynamiclock)
    - [Plugins](#devicedynamiclockplugins)
  - [SecurityKey](#devicesecuritykey)
    - [UseSecurityKeyForSignin](#devicesecuritykeyusesecuritykeyforsignin)
  - [UseBiometrics](#deviceusebiometrics)
- ./User/Vendor/MSFT/PassportForWork
  - [{TenantId}](#usertenantid)
    - [Policies](#usertenantidpolicies)
      - [EnablePinRecovery](#usertenantidpoliciesenablepinrecovery)
      - [PINComplexity](#usertenantidpoliciespincomplexity)
        - [Digits](#usertenantidpoliciespincomplexitydigits)
        - [Expiration](#usertenantidpoliciespincomplexityexpiration)
        - [History](#usertenantidpoliciespincomplexityhistory)
        - [LowercaseLetters](#usertenantidpoliciespincomplexitylowercaseletters)
        - [MaximumPINLength](#usertenantidpoliciespincomplexitymaximumpinlength)
        - [MinimumPINLength](#usertenantidpoliciespincomplexityminimumpinlength)
        - [SpecialCharacters](#usertenantidpoliciespincomplexityspecialcharacters)
        - [UppercaseLetters](#usertenantidpoliciespincomplexityuppercaseletters)
      - [RequireSecurityDevice](#usertenantidpoliciesrequiresecuritydevice)
      - [UsePassportForWork](#usertenantidpoliciesusepassportforwork)
<!-- PassportForWork-Tree-End -->

<!-- Device-{TenantId}-Begin -->
## Device/{TenantId}

<!-- Device-{TenantId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Applicability-End -->

<!-- Device-{TenantId}-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}
```
<!-- Device-{TenantId}-OmaUri-End -->

<!-- Device-{TenantId}-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the Tenant ID in the format of a Globally Unique Identifier (GUID) without curly braces `{ }`, which will be used as part of Windows Hello for Business provisioning and management.
<!-- Device-{TenantId}-Description-End -->

<!-- Device-{TenantId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To get the GUID, use the PowerShell cmdlet [Get-AzureAccount](/powershell/module/servicemanagement/azure/get-azureaccount). For more information, see [Get Windows Azure Active Directory Tenant ID in Windows PowerShell](https://devblogs.microsoft.com/scripting/get-windows-azure-active-directory-tenant-id-in-windows-powershell).
<!-- Device-{TenantId}-Editable-End -->

<!-- Device-{TenantId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A globally unique identifier (GUID), without curly braces ( { , } ), that is used as part of Windows Hello for Business provisioning and management. To get a GUID, use the PowerShell cmdlet Get-AzureAccount.  For more information see https://devblogs.microsoft.com/scripting/get-windows-azure-active-directory-tenant-id-in-windows-powershell. |
<!-- Device-{TenantId}-DFProperties-End -->

<!-- Device-{TenantId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Examples-End -->

<!-- Device-{TenantId}-End -->

<!-- Device-{TenantId}-Policies-Begin -->
### Device/{TenantId}/Policies

<!-- Device-{TenantId}-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-Applicability-End -->

<!-- Device-{TenantId}-Policies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies
```
<!-- Device-{TenantId}-Policies-OmaUri-End -->

<!-- Device-{TenantId}-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for policies.
<!-- Device-{TenantId}-Policies-Description-End -->

<!-- Device-{TenantId}-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-Editable-End -->

<!-- Device-{TenantId}-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-{TenantId}-Policies-DFProperties-End -->

<!-- Device-{TenantId}-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-Examples-End -->

<!-- Device-{TenantId}-Policies-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Begin -->
#### Device/{TenantId}/Policies/DisablePostLogonProvisioning

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.2402] and later <br> ✅ Windows 10, version 2004 [10.0.19041.4239] and later <br> ✅ Windows 11, version 21H2 with [KB5036894](https://support.microsoft.com/help/5036894) [10.0.22000.2899] and later <br> ✅ Windows 11, version 22H2 with [KB5035942](https://support.microsoft.com/help/5035942) [10.0.22621.3374] and later <br> ✅ Windows Insider Preview |
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Applicability-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/DisablePostLogonProvisioning
```
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-OmaUri-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Description-Begin -->
<!-- Description-Source-DDF -->
Don't start Windows Hello provisioning after sign-in.
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Description-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Editable-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-DFProperties-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Provisioning Enabled. |
| true | Provisioning Disabled. |
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-Examples-End -->

<!-- Device-{TenantId}-Policies-DisablePostLogonProvisioning-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-Begin -->
#### Device/{TenantId}/Policies/EnablePinRecovery

<!-- Device-{TenantId}-Policies-EnablePinRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{TenantId}-Policies-EnablePinRecovery-Applicability-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/EnablePinRecovery
```
<!-- Device-{TenantId}-Policies-EnablePinRecovery-OmaUri-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-Description-Begin -->
<!-- Description-Source-DDF -->
If the user forgets their PIN, it can be changed to a new PIN using the Windows Hello for Business PIN recovery service. This cloud service encrypts a recovery secret which is stored locally on the client, but which can only be decrypted by the cloud service.

- If you enable this policy setting, the PIN recovery secret will be stored on the device and the user will be able to change to a new PIN in case their PIN is forgotten.

- If you disable or don't configure this policy setting, the PIN recovery secret won't be created or stored. If the user's PIN is forgotten, the only way to get a new PIN is by deleting the existing PIN and creating a new one, which will require the user to re-register with any services the old PIN provided access to.
<!-- Device-{TenantId}-Policies-EnablePinRecovery-Description-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-EnablePinRecovery-Editable-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-EnablePinRecovery-DFProperties-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-EnablePinRecovery-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-EnablePinRecovery-Examples-End -->

<!-- Device-{TenantId}-Policies-EnablePinRecovery-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Begin -->
#### Device/{TenantId}/Policies/EnableWindowsHelloProvisioningForSecurityKeys

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Applicability-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/EnableWindowsHelloProvisioningForSecurityKeys
```
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-OmaUri-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Description-Begin -->
<!-- Description-Source-DDF -->
Enable Windows Hello provisioning if users sign-in to their devices with FIDO2 security keys.
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Description-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Editable-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-DFProperties-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-Examples-End -->

<!-- Device-{TenantId}-Policies-EnableWindowsHelloProvisioningForSecurityKeys-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Begin -->
#### Device/{TenantId}/Policies/ExcludeSecurityDevices

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Applicability-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/ExcludeSecurityDevices
```
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-OmaUri-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for excluded security devices.
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Description-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not supported on Windows Holographic and Windows Holographic for Business.
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Editable-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-DFProperties-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-Examples-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Begin -->
##### Device/{TenantId}/Policies/ExcludeSecurityDevices/TPM12

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Applicability-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/ExcludeSecurityDevices/TPM12
```
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-OmaUri-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Description-Begin -->
<!-- Description-Source-DDF -->
Some Trusted Platform Modules (TPMs) are only compliant with the older 1.2 revision of the TPM specification defined by the Trusted Computing Group (TCG).

- If you enable this policy setting, TPM revision 1.2 modules will be disallowed from being used with Windows Hello for Business.

- If you disable or don't configure this policy setting, TPM revision 1.2 modules will be allowed to be used with Windows Hello for Business.
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Description-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Editable-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-DFProperties-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-Examples-End -->

<!-- Device-{TenantId}-Policies-ExcludeSecurityDevices-TPM12-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Begin -->
#### Device/{TenantId}/Policies/PINComplexity

<!-- Device-{TenantId}-Policies-PINComplexity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity
```
<!-- Device-{TenantId}-Policies-PINComplexity-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for PIN policies.
<!-- Device-{TenantId}-Policies-PINComplexity-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-{TenantId}-Policies-PINComplexity-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/Digits

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/Digits
```
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of digits in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one digit in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using digits in their PIN.

If you don't configure this policy setting, Windows Hello for Business requires users to use digits in their PIN.
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of digits in PIN. |
| 1 | Requires the use of at least one digits in PIN. |
| 2 | Does not allow the use of digits in PIN. |
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Digits-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Digits-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/Expiration

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/Expiration
```
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies when the PIN expires (in days). Valid values are 0 to 730 inclusive. If this policy is set to 0, then PINs don't expire.
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-730]` |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-Expiration-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/History

<!-- Device-{TenantId}-Policies-PINComplexity-History-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-History-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/History
```
<!-- Device-{TenantId}-Policies-PINComplexity-History-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the number of past PINs that can be stored in the history that can't be used. Valid values are 0 to 50 inclusive. If this policy is set to 0, then storage of previous PINs isn't required. PIN history isn't preserved through PIN reset.
<!-- Device-{TenantId}-Policies-PINComplexity-History-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-History-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-50]` |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-History-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-History-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-History-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/LowercaseLetters

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/LowercaseLetters
```
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of lowercase letters in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one lowercase letter in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using lowercase letters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use lowercase letters in their PIN.
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of lowercase letters in PIN. |
| 1 | Requires the use of at least one lowercase letters in PIN. |
| 2 | Does not allow the use of lowercase letters in PIN. |
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-LowercaseLetters-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/MaximumPINLength

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/MaximumPINLength
```
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Description-Begin -->
<!-- Description-Source-DDF -->
Maximum PIN length configures the maximum number of characters allowed for the PIN. The largest number you can configure for this policy setting is 127. The lowest number you can configure must be larger than the number configured in the Minimum PIN length policy setting or the number 4, whichever is greater.

- If you configure this policy setting, the PIN length must be less than or equal to this number.

- If you don't configure this policy setting, the PIN length must be less than or equal to 127.

> [!NOTE]
> If the above specified conditions for the maximum PIN length aren't met, default values will be used for both the maximum and minimum PIN lengths.
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[4-127]` |
| Default Value  | 127 |
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MaximumPINLength-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/MinimumPINLength

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/MinimumPINLength
```
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Description-Begin -->
<!-- Description-Source-DDF -->
Minimum PIN length configures the minimum number of characters required for the PIN. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.

- If you configure this policy setting, the PIN length must be greater than or equal to this number.

- If you don't configure this policy setting, the PIN length must be greater than or equal to 4.

> [!NOTE]
> If the above specified conditions for the minimum PIN length aren't met, default values will be used for both the maximum and minimum PIN lengths.
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[4-127]` |
| Default Value  | 4 |
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-MinimumPINLength-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/SpecialCharacters

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/SpecialCharacters
```
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of special characters in the Windows Hello for Business PIN gesture. Valid special characters for Windows Hello for Business PIN gestures include: ! " # $ % & ' ( ) * + , - . / : ; `< = >` ? @ [ \ ] ^ _ ` { | } ~ .

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one special character in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using special characters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use special characters in their PIN.
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of special characters in PIN. |
| 1 | Requires the use of at least one special characters in PIN. |
| 2 | Does not allow the use of special characters in PIN. |
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-SpecialCharacters-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Begin -->
##### Device/{TenantId}/Policies/PINComplexity/UppercaseLetters

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Applicability-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/UppercaseLetters
```
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-OmaUri-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of uppercase letters in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one uppercase letter in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using uppercase letters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use uppercase letters in their PIN.
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Description-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Editable-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-DFProperties-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of uppercase letters in PIN. |
| 1 | Requires the use of at least one uppercase letters in PIN. |
| 2 | Does not allow the use of uppercase letters in PIN. |
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-Examples-End -->

<!-- Device-{TenantId}-Policies-PINComplexity-UppercaseLetters-End -->

<!-- Device-{TenantId}-Policies-Remote-Begin -->
#### Device/{TenantId}/Policies/Remote

<!-- Device-{TenantId}-Policies-Remote-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-Remote-Applicability-End -->

<!-- Device-{TenantId}-Policies-Remote-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/Remote
```
<!-- Device-{TenantId}-Policies-Remote-OmaUri-End -->

<!-- Device-{TenantId}-Policies-Remote-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for phone sign-in policies.
<!-- Device-{TenantId}-Policies-Remote-Description-End -->

<!-- Device-{TenantId}-Policies-Remote-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-Remote-Editable-End -->

<!-- Device-{TenantId}-Policies-Remote-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- Device-{TenantId}-Policies-Remote-DFProperties-End -->

<!-- Device-{TenantId}-Policies-Remote-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-Remote-Examples-End -->

<!-- Device-{TenantId}-Policies-Remote-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Begin -->
##### Device/{TenantId}/Policies/Remote/UseRemotePassport

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Applicability-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/Remote/UseRemotePassport
```
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-OmaUri-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean that specifies if phone sign-in can be used with a device. Phone sign-in provides the ability for a portable, registered device to be usable as a companion device for desktop authentication.

Default value is false.

- If you enable this setting, a desktop device will allow a registered, companion device to be used as an authentication factor.

- If you disable this setting, a companion device can't be used in desktop authentication scenarios.
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Description-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not supported on Windows Holographic and Windows Holographic for Business prior to Windows 10 version 1903 (May 2019 Update).
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Editable-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-DFProperties-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-Examples-End -->

<!-- Device-{TenantId}-Policies-Remote-UseRemotePassport-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Begin -->
#### Device/{TenantId}/Policies/RequireSecurityDevice

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Applicability-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/RequireSecurityDevice
```
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-OmaUri-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Description-Begin -->
<!-- Description-Source-DDF -->
A Trusted Platform Module (TPM) provides additional security benefits over software because data stored within it can't be used on other devices.

- If you enable this policy setting, only devices with a usable TPM provision Windows Hello for Business.

- If you disable or don't configure this policy setting, the TPM is still preferred, but all devices provision Windows Hello for Business using software if the TPM is non-functional or unavailable.
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Description-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Editable-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-DFProperties-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-RequireSecurityDevice-Examples-End -->

<!-- Device-{TenantId}-Policies-RequireSecurityDevice-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Begin -->
#### Device/{TenantId}/Policies/UseCertificateForOnPremAuth

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Applicability-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseCertificateForOnPremAuth
```
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-OmaUri-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Description-Begin -->
<!-- Description-Source-DDF -->
Windows Hello for Business can use certificates to authenticate to on-premise resources.

- If you enable this policy setting, Windows Hello for Business will wait until the device has received a certificate payload from the mobile device management server before provisioning a PIN.

- If you disable or don't configure this policy setting, the PIN will be provisioned when the user logs in, without waiting for a certificate payload.
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Description-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Editable-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-DFProperties-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-Examples-End -->

<!-- Device-{TenantId}-Policies-UseCertificateForOnPremAuth-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Begin -->
#### Device/{TenantId}/Policies/UseCloudTrustForOnPremAuth

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 21H2 with [KB5010415](https://support.microsoft.com/help/5010415) [10.0.19044.1566] and later <br> ✅ Windows 11, version 21H2 with [KB5010414](https://support.microsoft.com/help/5010414) [10.0.22000.527] and later <br> ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Applicability-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseCloudTrustForOnPremAuth
```
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-OmaUri-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean value that enables Windows Hello for Business to use Microsoft Entra Kerberos to authenticate to on-premises resources.

- If you enable this policy setting, Windows Hello for Business will use a Microsoft Entra Kerberos ticket to authenticate to on-premises resources. The Microsoft Entra Kerberos ticket is returned to the client after a successful authentication to Microsoft Entra ID if Microsoft Entra Kerberos is enabled for the tenant and domain.

- If you disable or don't configure this policy setting, Windows Hello for Business will use a key or certificate to authenticate to on-premises resources.
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Description-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Editable-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-DFProperties-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-Examples-End -->

<!-- Device-{TenantId}-Policies-UseCloudTrustForOnPremAuth-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Begin -->
#### Device/{TenantId}/Policies/UseHelloCertificatesAsSmartCardCertificates

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Applicability-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UseHelloCertificatesAsSmartCardCertificates
```
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-OmaUri-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Description-Begin -->
<!-- Description-Source-DDF -->

- If you enable this policy setting, applications use Windows Hello for Business certificates as smart card certificates. Biometric factors are unavailable when a user is asked to authorize the use of the certificate's private key. This policy setting is designed to allow compatibility with applications that rely exclusively on smart card certificates.

- If you disable or don't configure this policy setting, applications don't use Windows Hello for Business certificates as smart card certificates, and biometric factors are available when a user is asked to authorize the use of the certificate's private key.

Windows requires a user to lock and unlock their session after changing this setting if the user is currently signed in.
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Description-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Editable-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-DFProperties-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-Examples-End -->

<!-- Device-{TenantId}-Policies-UseHelloCertificatesAsSmartCardCertificates-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-Begin -->
#### Device/{TenantId}/Policies/UsePassportForWork

<!-- Device-{TenantId}-Policies-UsePassportForWork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-{TenantId}-Policies-UsePassportForWork-Applicability-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork
```
<!-- Device-{TenantId}-Policies-UsePassportForWork-OmaUri-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-Description-Begin -->
<!-- Description-Source-DDF -->
Windows Hello for Business is an alternative method for signing into Windows using your Active Directory or Microsoft Entra account that can replace passwords, Smart Cards, and Virtual Smart Cards.

- If you enable or don't configure this policy setting, the device provisions Windows Hello for Business for all users.

- If you disable this policy setting, the device doesn't provision Windows Hello for Business for any user.
<!-- Device-{TenantId}-Policies-UsePassportForWork-Description-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UsePassportForWork-Editable-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | True |
<!-- Device-{TenantId}-Policies-UsePassportForWork-DFProperties-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- Device-{TenantId}-Policies-UsePassportForWork-AllowedValues-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-{TenantId}-Policies-UsePassportForWork-Examples-End -->

<!-- Device-{TenantId}-Policies-UsePassportForWork-End -->

<!-- Device-Biometrics-Begin -->
## Device/Biometrics

<!-- Device-Biometrics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Biometrics-Applicability-End -->

<!-- Device-Biometrics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/Biometrics
```
<!-- Device-Biometrics-OmaUri-End -->

<!-- Device-Biometrics-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for biometrics policies.
<!-- Device-Biometrics-Description-End -->

<!-- Device-Biometrics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Biometrics-Editable-End -->

<!-- Device-Biometrics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Biometrics-DFProperties-End -->

<!-- Device-Biometrics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Biometrics-Examples-End -->

<!-- Device-Biometrics-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Begin -->
### Device/Biometrics/EnableESSwithSupportedPeripherals

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Applicability-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/Biometrics/EnableESSwithSupportedPeripherals
```
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-OmaUri-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Description-Begin -->
<!-- Description-Source-DDF -->
Enhanced Sign-in Security (ESS) isolates both biometric template data and matching operations to trusted hardware or specified memory regions, meaning the rest of the operating system can't access or tamper with them. Because the channel of communication between the sensors and the algorithm is also secured, it's impossible for malware to inject or replay data in order to simulate a user signing in or to lock a user out of their machine.
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Description-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Editable-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-DFProperties-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | ESS will be enabled on systems with capable software and hardware, following the existing default behavior in Windows. Authentication operations of peripheral Windows Hello capable devices will be allowed, subject to current feature limitations. In addition, with this setting, ESS will be enabled on devices with a mixture of biometric devices, such as an ESS capable FPR and a non-ESS capable camera. (not recommended). |
| 1 (Default) | ESS will be enabled on systems with capable software and hardware, following the existing default behavior in Windows. Authentication operations of any peripheral biometric device will be blocked and not available for Windows Hello. (default and recommended for highest security). |
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-AllowedValues-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Enable ESS with Supported Peripherals |
| Path | Passport > AT > WindowsComponents > MSPassportForWorkCategory |
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-GpMapping-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-Examples-End -->

<!-- Device-Biometrics-EnableESSwithSupportedPeripherals-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Begin -->
### Device/Biometrics/FacialFeaturesUseEnhancedAntiSpoofing

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Applicability-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/Biometrics/FacialFeaturesUseEnhancedAntiSpoofing
```
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-OmaUri-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether enhanced anti-spoofing is required for Windows Hello face authentication.

- If you enable this setting, Windows requires all users on managed devices to use enhanced anti-spoofing for Windows Hello face authentication. This disables Windows Hello face authentication on devices that don't support enhanced anti-spoofing.

- If you disable or don't configure this setting, Windows doesn't require enhanced anti-spoofing for Windows Hello face authentication.

Note that enhanced anti-spoofing for Windows Hello face authentication isn't required on unmanaged devices.
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Description-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not supported on Windows Holographic and Windows Holographic for Business prior to Windows 10 version 1903 (May 2019 Update).
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Editable-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-DFProperties-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-AllowedValues-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-Examples-End -->

<!-- Device-Biometrics-FacialFeaturesUseEnhancedAntiSpoofing-End -->

<!-- Device-Biometrics-UseBiometrics-Begin -->
### Device/Biometrics/UseBiometrics

<!-- Device-Biometrics-UseBiometrics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-Biometrics-UseBiometrics-Applicability-End -->

<!-- Device-Biometrics-UseBiometrics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/Biometrics/UseBiometrics
```
<!-- Device-Biometrics-UseBiometrics-OmaUri-End -->

<!-- Device-Biometrics-UseBiometrics-Description-Begin -->
<!-- Description-Source-DDF -->
Windows Hello for Business enables users to use biometric gestures, such as face and fingerprints, as an alternative to the PIN gesture. However, users must still configure a PIN to use in case of failures.

- If you enable or don't configure this policy setting, Windows Hello for Business allows the use of biometric gestures.

- If you disable this policy setting, Windows Hello for Business prevents the use of biometric gestures.

> [!NOTE]
> Disabling this policy prevents the use of biometric gestures on the device for all account types.
<!-- Device-Biometrics-UseBiometrics-Description-End -->

<!-- Device-Biometrics-UseBiometrics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Not supported on Windows Holographic and Windows Holographic for Business prior to Windows 10 version 1903 (May 2019 Update).
<!-- Device-Biometrics-UseBiometrics-Editable-End -->

<!-- Device-Biometrics-UseBiometrics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-Biometrics-UseBiometrics-DFProperties-End -->

<!-- Device-Biometrics-UseBiometrics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-Biometrics-UseBiometrics-AllowedValues-End -->

<!-- Device-Biometrics-UseBiometrics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Biometrics-UseBiometrics-Examples-End -->

<!-- Device-Biometrics-UseBiometrics-End -->

<!-- Device-DeviceUnlock-Begin -->
## Device/DeviceUnlock

<!-- Device-DeviceUnlock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceUnlock-Applicability-End -->

<!-- Device-DeviceUnlock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DeviceUnlock
```
<!-- Device-DeviceUnlock-OmaUri-End -->

<!-- Device-DeviceUnlock-Description-Begin -->
<!-- Description-Source-DDF -->
Device Unlock.
<!-- Device-DeviceUnlock-Description-End -->

<!-- Device-DeviceUnlock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-Editable-End -->

<!-- Device-DeviceUnlock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DeviceUnlock-DFProperties-End -->

<!-- Device-DeviceUnlock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-Examples-End -->

<!-- Device-DeviceUnlock-End -->

<!-- Device-DeviceUnlock-GroupA-Begin -->
### Device/DeviceUnlock/GroupA

<!-- Device-DeviceUnlock-GroupA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceUnlock-GroupA-Applicability-End -->

<!-- Device-DeviceUnlock-GroupA-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DeviceUnlock/GroupA
```
<!-- Device-DeviceUnlock-GroupA-OmaUri-End -->

<!-- Device-DeviceUnlock-GroupA-Description-Begin -->
<!-- Description-Source-DDF -->
Contains a list of providers by GUID that are to be considered for the first step of authentication.
<!-- Device-DeviceUnlock-GroupA-Description-End -->

<!-- Device-DeviceUnlock-GroupA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-GroupA-Editable-End -->

<!-- Device-DeviceUnlock-GroupA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-DeviceUnlock-GroupA-DFProperties-End -->

<!-- Device-DeviceUnlock-GroupA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-GroupA-Examples-End -->

<!-- Device-DeviceUnlock-GroupA-End -->

<!-- Device-DeviceUnlock-GroupB-Begin -->
### Device/DeviceUnlock/GroupB

<!-- Device-DeviceUnlock-GroupB-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceUnlock-GroupB-Applicability-End -->

<!-- Device-DeviceUnlock-GroupB-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DeviceUnlock/GroupB
```
<!-- Device-DeviceUnlock-GroupB-OmaUri-End -->

<!-- Device-DeviceUnlock-GroupB-Description-Begin -->
<!-- Description-Source-DDF -->
Contains a list of providers by GUID that are to be considered for the second step of authentication.
<!-- Device-DeviceUnlock-GroupB-Description-End -->

<!-- Device-DeviceUnlock-GroupB-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-GroupB-Editable-End -->

<!-- Device-DeviceUnlock-GroupB-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Regular Expression: `{[0-9A-Fa-f]{8}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{4}\-[0-9A-Fa-f]{12}\}` |
<!-- Device-DeviceUnlock-GroupB-DFProperties-End -->

<!-- Device-DeviceUnlock-GroupB-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-GroupB-Examples-End -->

<!-- Device-DeviceUnlock-GroupB-End -->

<!-- Device-DeviceUnlock-Plugins-Begin -->
### Device/DeviceUnlock/Plugins

<!-- Device-DeviceUnlock-Plugins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DeviceUnlock-Plugins-Applicability-End -->

<!-- Device-DeviceUnlock-Plugins-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DeviceUnlock/Plugins
```
<!-- Device-DeviceUnlock-Plugins-OmaUri-End -->

<!-- Device-DeviceUnlock-Plugins-Description-Begin -->
<!-- Description-Source-DDF -->
List of plugins that the passive provider monitors to detect user presence.
<!-- Device-DeviceUnlock-Plugins-Description-End -->

<!-- Device-DeviceUnlock-Plugins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-Plugins-Editable-End -->

<!-- Device-DeviceUnlock-Plugins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-DeviceUnlock-Plugins-DFProperties-End -->

<!-- Device-DeviceUnlock-Plugins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DeviceUnlock-Plugins-Examples-End -->

<!-- Device-DeviceUnlock-Plugins-End -->

<!-- Device-DynamicLock-Begin -->
## Device/DynamicLock

<!-- Device-DynamicLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DynamicLock-Applicability-End -->

<!-- Device-DynamicLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DynamicLock
```
<!-- Device-DynamicLock-OmaUri-End -->

<!-- Device-DynamicLock-Description-Begin -->
<!-- Description-Source-DDF -->
Dynamic Lock.
<!-- Device-DynamicLock-Description-End -->

<!-- Device-DynamicLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DynamicLock-Editable-End -->

<!-- Device-DynamicLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-DynamicLock-DFProperties-End -->

<!-- Device-DynamicLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DynamicLock-Examples-End -->

<!-- Device-DynamicLock-End -->

<!-- Device-DynamicLock-DynamicLock-Begin -->
### Device/DynamicLock/DynamicLock

<!-- Device-DynamicLock-DynamicLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DynamicLock-DynamicLock-Applicability-End -->

<!-- Device-DynamicLock-DynamicLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DynamicLock/DynamicLock
```
<!-- Device-DynamicLock-DynamicLock-OmaUri-End -->

<!-- Device-DynamicLock-DynamicLock-Description-Begin -->
<!-- Description-Source-DDF -->
Enables/Disables Dynamic Lock.
<!-- Device-DynamicLock-DynamicLock-Description-End -->

<!-- Device-DynamicLock-DynamicLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DynamicLock-DynamicLock-Editable-End -->

<!-- Device-DynamicLock-DynamicLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-DynamicLock-DynamicLock-DFProperties-End -->

<!-- Device-DynamicLock-DynamicLock-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-DynamicLock-DynamicLock-AllowedValues-End -->

<!-- Device-DynamicLock-DynamicLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DynamicLock-DynamicLock-Examples-End -->

<!-- Device-DynamicLock-DynamicLock-End -->

<!-- Device-DynamicLock-Plugins-Begin -->
### Device/DynamicLock/Plugins

<!-- Device-DynamicLock-Plugins-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- Device-DynamicLock-Plugins-Applicability-End -->

<!-- Device-DynamicLock-Plugins-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/DynamicLock/Plugins
```
<!-- Device-DynamicLock-Plugins-OmaUri-End -->

<!-- Device-DynamicLock-Plugins-Description-Begin -->
<!-- Description-Source-DDF -->
List of plugins that the passive provider monitors to detect user absence.
<!-- Device-DynamicLock-Plugins-Description-End -->

<!-- Device-DynamicLock-Plugins-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DynamicLock-Plugins-Editable-End -->

<!-- Device-DynamicLock-Plugins-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-DynamicLock-Plugins-DFProperties-End -->

<!-- Device-DynamicLock-Plugins-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DynamicLock-Plugins-Examples-End -->

<!-- Device-DynamicLock-Plugins-End -->

<!-- Device-SecurityKey-Begin -->
## Device/SecurityKey

<!-- Device-SecurityKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-SecurityKey-Applicability-End -->

<!-- Device-SecurityKey-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/SecurityKey
```
<!-- Device-SecurityKey-OmaUri-End -->

<!-- Device-SecurityKey-Description-Begin -->
<!-- Description-Source-DDF -->
Security Key.
<!-- Device-SecurityKey-Description-End -->

<!-- Device-SecurityKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-SecurityKey-Editable-End -->

<!-- Device-SecurityKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-SecurityKey-DFProperties-End -->

<!-- Device-SecurityKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SecurityKey-Examples-End -->

<!-- Device-SecurityKey-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-Begin -->
### Device/SecurityKey/UseSecurityKeyForSignin

<!-- Device-SecurityKey-UseSecurityKeyForSignin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-SecurityKey-UseSecurityKeyForSignin-Applicability-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/SecurityKey/UseSecurityKeyForSignin
```
<!-- Device-SecurityKey-UseSecurityKeyForSignin-OmaUri-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-Description-Begin -->
<!-- Description-Source-DDF -->
Use security key for signin. 0 is disabled. 1 is enable. If you don't configure this policy setting, the default is disabled.
<!-- Device-SecurityKey-UseSecurityKeyForSignin-Description-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Enables users to sign in to their device with a [FIDO2 security key](/azure/active-directory/authentication/concept-authentication-passwordless#fido2-security-keys) that is compatible with Microsoft's implementation.
<!-- Device-SecurityKey-UseSecurityKeyForSignin-Editable-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-SecurityKey-UseSecurityKeyForSignin-DFProperties-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- Device-SecurityKey-UseSecurityKeyForSignin-AllowedValues-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SecurityKey-UseSecurityKeyForSignin-Examples-End -->

<!-- Device-SecurityKey-UseSecurityKeyForSignin-End -->

<!-- Device-UseBiometrics-Begin -->
## Device/UseBiometrics

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-UseBiometrics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- Device-UseBiometrics-Applicability-End -->

<!-- Device-UseBiometrics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/PassportForWork/UseBiometrics
```
<!-- Device-UseBiometrics-OmaUri-End -->

<!-- Device-UseBiometrics-Description-Begin -->
<!-- Description-Source-DDF -->
THIS NODE IS DEPRECATED AND WILL BE REMOVED IN A FUTURE VERSION. PLEASE USE Biometrics/UseBiometrics NODE INSTEAD.

Windows Hello for Business enables users to use biometric gestures, such as face and fingerprints, as an alternative to the PIN gesture. However, users must still configure a PIN to use in case of failures.

- If you enable or don't configure this policy setting, Windows Hello for Business allows the use of biometric gestures.

- If you disable this policy setting, Windows Hello for Business prevents the use of biometric gestures.

> [!NOTE]
> Disabling this policy prevents the use of biometric gestures on the device for all account types.
<!-- Device-UseBiometrics-Description-End -->

<!-- Device-UseBiometrics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-UseBiometrics-Editable-End -->

<!-- Device-UseBiometrics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-UseBiometrics-DFProperties-End -->

<!-- Device-UseBiometrics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- Device-UseBiometrics-AllowedValues-End -->

<!-- Device-UseBiometrics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-UseBiometrics-Examples-End -->

<!-- Device-UseBiometrics-End -->

<!-- User-{TenantId}-Begin -->
## User/{TenantId}

<!-- User-{TenantId}-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Applicability-End -->

<!-- User-{TenantId}-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}
```
<!-- User-{TenantId}-OmaUri-End -->

<!-- User-{TenantId}-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the Tenant ID in the format of a Globally Unique Identifier (GUID) without curly braces `{ }`, which will be used as part of Windows Hello for Business provisioning and management.
<!-- User-{TenantId}-Description-End -->

<!-- User-{TenantId}-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
To get the GUID, use the PowerShell cmdlet [Get-AzureAccount](/powershell/module/servicemanagement/azure/get-azureaccount). For more information, see [Get Windows Azure Active Directory Tenant ID in Windows PowerShell](https://devblogs.microsoft.com/scripting/get-windows-azure-active-directory-tenant-id-in-windows-powershell).
<!-- User-{TenantId}-Editable-End -->

<!-- User-{TenantId}-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
| Dynamic Node Naming | UniqueName: A globally unique identifier (GUID), without curly braces ( { , } ), that is used as part of Windows Hello for Business provisioning and management. To get a GUID, use the PowerShell cmdlet Get-AzureAccount.  For more information see https://devblogs.microsoft.com/scripting/get-windows-azure-active-directory-tenant-id-in-windows-powershell. |
<!-- User-{TenantId}-DFProperties-End -->

<!-- User-{TenantId}-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Examples-End -->

<!-- User-{TenantId}-End -->

<!-- User-{TenantId}-Policies-Begin -->
### User/{TenantId}/Policies

<!-- User-{TenantId}-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-Applicability-End -->

<!-- User-{TenantId}-Policies-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies
```
<!-- User-{TenantId}-Policies-OmaUri-End -->

<!-- User-{TenantId}-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for policies.
<!-- User-{TenantId}-Policies-Description-End -->

<!-- User-{TenantId}-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-Editable-End -->

<!-- User-{TenantId}-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-{TenantId}-Policies-DFProperties-End -->

<!-- User-{TenantId}-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-Examples-End -->

<!-- User-{TenantId}-Policies-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-Begin -->
#### User/{TenantId}/Policies/EnablePinRecovery

<!-- User-{TenantId}-Policies-EnablePinRecovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- User-{TenantId}-Policies-EnablePinRecovery-Applicability-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/EnablePinRecovery
```
<!-- User-{TenantId}-Policies-EnablePinRecovery-OmaUri-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-Description-Begin -->
<!-- Description-Source-DDF -->
If the user forgets their PIN, it can be changed to a new PIN using the Windows Hello for Business PIN recovery service. This cloud service encrypts a recovery secret which is stored locally on the client, but which can only be decrypted by the cloud service.

- If you enable this policy setting, the PIN recovery secret will be stored on the device and the user will be able to change to a new PIN in case their PIN is forgotten.

- If you disable or don't configure this policy setting, the PIN recovery secret won't be created or stored. If the user's PIN is forgotten, the only way to get a new PIN is by deleting the existing PIN and creating a new one, which will require the user to re-register with any services the old PIN provided access to.
<!-- User-{TenantId}-Policies-EnablePinRecovery-Description-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-EnablePinRecovery-Editable-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- User-{TenantId}-Policies-EnablePinRecovery-DFProperties-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- User-{TenantId}-Policies-EnablePinRecovery-AllowedValues-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-EnablePinRecovery-Examples-End -->

<!-- User-{TenantId}-Policies-EnablePinRecovery-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Begin -->
#### User/{TenantId}/Policies/PINComplexity

<!-- User-{TenantId}-Policies-PINComplexity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity
```
<!-- User-{TenantId}-Policies-PINComplexity-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for PIN policies.
<!-- User-{TenantId}-Policies-PINComplexity-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Add, Delete, Get |
<!-- User-{TenantId}-Policies-PINComplexity-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-Begin -->
##### User/{TenantId}/Policies/PINComplexity/Digits

<!-- User-{TenantId}-Policies-PINComplexity-Digits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-Digits-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/Digits
```
<!-- User-{TenantId}-Policies-PINComplexity-Digits-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of digits in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one digit in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using digits in their PIN.

If you don't configure this policy setting, Windows Hello for Business requires users to use digits in their PIN.
<!-- User-{TenantId}-Policies-PINComplexity-Digits-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Digits-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-Digits-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of digits in PIN. |
| 1 | Requires the use of at least one digits in PIN. |
| 2 | Does not allow the use of digits in PIN. |
<!-- User-{TenantId}-Policies-PINComplexity-Digits-AllowedValues-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Digits-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Digits-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Begin -->
##### User/{TenantId}/Policies/PINComplexity/Expiration

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/Expiration
```
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies when the PIN expires (in days). Valid values are 0 to 730 inclusive. If this policy is set to 0, then PINs don't expire.
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-730]` |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-Expiration-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-Expiration-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-Begin -->
##### User/{TenantId}/Policies/PINComplexity/History

<!-- User-{TenantId}-Policies-PINComplexity-History-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-History-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/History
```
<!-- User-{TenantId}-Policies-PINComplexity-History-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the number of past PINs that can be stored in the history that can't be used. Valid values are 0 to 50 inclusive. If this policy is set to 0, then storage of previous PINs isn't required. PIN history isn't preserved through PIN reset.
<!-- User-{TenantId}-Policies-PINComplexity-History-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-History-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-50]` |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-History-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-History-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-History-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Begin -->
##### User/{TenantId}/Policies/PINComplexity/LowercaseLetters

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/LowercaseLetters
```
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of lowercase letters in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one lowercase letter in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using lowercase letters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use lowercase letters in their PIN.
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of lowercase letters in PIN. |
| 1 | Requires the use of at least one lowercase letters in PIN. |
| 2 | Does not allow the use of lowercase letters in PIN. |
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-AllowedValues-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-LowercaseLetters-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Begin -->
##### User/{TenantId}/Policies/PINComplexity/MaximumPINLength

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/MaximumPINLength
```
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Description-Begin -->
<!-- Description-Source-DDF -->
Maximum PIN length configures the maximum number of characters allowed for the PIN. The largest number you can configure for this policy setting is 127. The lowest number you can configure must be larger than the number configured in the Minimum PIN length policy setting or the number 4, whichever is greater.

- If you configure this policy setting, the PIN length must be less than or equal to this number.

- If you don't configure this policy setting, the PIN length must be less than or equal to 127.

> [!NOTE]
> If the above specified conditions for the maximum PIN length aren't met, default values will be used for both the maximum and minimum PIN lengths.
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[4-127]` |
| Default Value  | 127 |
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MaximumPINLength-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Begin -->
##### User/{TenantId}/Policies/PINComplexity/MinimumPINLength

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/MinimumPINLength
```
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Description-Begin -->
<!-- Description-Source-DDF -->
Minimum PIN length configures the minimum number of characters required for the PIN. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.

- If you configure this policy setting, the PIN length must be greater than or equal to this number.

- If you don't configure this policy setting, the PIN length must be greater than or equal to 4.

> [!NOTE]
> If the above specified conditions for the minimum PIN length aren't met, default values will be used for both the maximum and minimum PIN lengths.
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[4-127]` |
| Default Value  | 4 |
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-MinimumPINLength-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Begin -->
##### User/{TenantId}/Policies/PINComplexity/SpecialCharacters

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/SpecialCharacters
```
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of special characters in the Windows Hello for Business PIN gesture. Valid special characters for Windows Hello for Business PIN gestures include: ! " # $ % & ' ( ) * + , - . / : ; `< = >` ? @ [ \ ] ^ _ ` { | } ~ .

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one special character in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using special characters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use special characters in their PIN.
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of special characters in PIN. |
| 1 | Requires the use of at least one special characters in PIN. |
| 2 | Does not allow the use of special characters in PIN. |
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-AllowedValues-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-SpecialCharacters-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Begin -->
##### User/{TenantId}/Policies/PINComplexity/UppercaseLetters

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Applicability-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/UppercaseLetters
```
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-OmaUri-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy setting to configure the use of uppercase letters in the Windows Hello for Business PIN.

A value of 1 corresponds to "Required". If you configure this policy setting to 1, Windows Hello for Business requires users to include at least one uppercase letter in their PIN.

A value of 2 corresponds to "Disallow". If you configure this policy setting to 2, Windows Hello for Business prevents users from using uppercase letters in their PIN.

If you don't configure this policy setting, Windows Hello for Business doesn't allow users to use uppercase letters in their PIN.
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Description-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Editable-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-DFProperties-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allows the use of uppercase letters in PIN. |
| 1 | Requires the use of at least one uppercase letters in PIN. |
| 2 | Does not allow the use of uppercase letters in PIN. |
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-AllowedValues-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-Examples-End -->

<!-- User-{TenantId}-Policies-PINComplexity-UppercaseLetters-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-Begin -->
#### User/{TenantId}/Policies/RequireSecurityDevice

<!-- User-{TenantId}-Policies-RequireSecurityDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-RequireSecurityDevice-Applicability-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/RequireSecurityDevice
```
<!-- User-{TenantId}-Policies-RequireSecurityDevice-OmaUri-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-Description-Begin -->
<!-- Description-Source-DDF -->
A Trusted Platform Module (TPM) provides additional security benefits over software because data stored within it can't be used on other devices.

- If you enable this policy setting, only devices with a usable TPM provision Windows Hello for Business.

- If you disable or don't configure this policy setting, the TPM is still preferred, but all devices provision Windows Hello for Business using software if the TPM is non-functional or unavailable.
<!-- User-{TenantId}-Policies-RequireSecurityDevice-Description-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-RequireSecurityDevice-Editable-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- User-{TenantId}-Policies-RequireSecurityDevice-DFProperties-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Disabled. |
| true | Enabled. |
<!-- User-{TenantId}-Policies-RequireSecurityDevice-AllowedValues-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-RequireSecurityDevice-Examples-End -->

<!-- User-{TenantId}-Policies-RequireSecurityDevice-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-Begin -->
#### User/{TenantId}/Policies/UsePassportForWork

<!-- User-{TenantId}-Policies-UsePassportForWork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1511 [10.0.10586] and later |
<!-- User-{TenantId}-Policies-UsePassportForWork-Applicability-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/UsePassportForWork
```
<!-- User-{TenantId}-Policies-UsePassportForWork-OmaUri-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-Description-Begin -->
<!-- Description-Source-DDF -->
Windows Hello for Business is an alternative method for signing into Windows using your Active Directory or Microsoft Entra account that can replace passwords, Smart Cards, and Virtual Smart Cards.

- If you enable or don't configure this policy setting, the device provisions Windows Hello for Business for all users.

- If you disable this policy setting, the device doesn't provision Windows Hello for Business for any user.
<!-- User-{TenantId}-Policies-UsePassportForWork-Description-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-UsePassportForWork-Editable-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | True |
<!-- User-{TenantId}-Policies-UsePassportForWork-DFProperties-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Disabled. |
| true (Default) | Enabled. |
<!-- User-{TenantId}-Policies-UsePassportForWork-AllowedValues-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-{TenantId}-Policies-UsePassportForWork-Examples-End -->

<!-- User-{TenantId}-Policies-UsePassportForWork-End -->

<!-- PassportForWork-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Examples

Here's an example for setting Windows Hello for Business and setting the PIN policies. It also turns on the use of biometrics and TPM.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
          <SyncBody>
            <Add>
              <CmdID>2</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F
                  </LocURI>
                </Target>
              </Item>
            </Add>
            <Add>
              <CmdID>3</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/UsePassportForWork
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">bool</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>true</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>4</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/RequireSecurityDevice
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">bool</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>true</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>5</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/MinimumPINLength
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>8</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>6</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/MaximumPINLength
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>16</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>7</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/UppercaseLetters
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>0</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>8</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/LowercaseLetters
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>1</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>9</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/SpecialCharacters
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>2</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>10</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/Digits
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>1</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>11</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/History
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>20</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>12</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/PINComplexity/Expiration
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>70</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>13</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/5NEMDU42-45CC-8CBL-8BPF-D7092646325F/Policies/Remote/UseRemotePassport
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">bool</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>true</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>14</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/Biometrics/UseBiometrics
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">bool</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>true</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>15</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/Biometrics/FacialFeatureUseEnhancedAntiSpoofing
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">bool</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>true</Data>
              </Item>
            </Add>
            <Add>
              <CmdID>16</CmdID>
              <Item>
                <Target>
                  <LocURI>
                    ./Vendor/MSFT/PassportForWork/Biometrics/EnableESSwithSupportedPeripherals
                  </LocURI>
                </Target>
                <Meta>
                  <Format xmlns="syncml:metinf">int</Format>
                  <Type>text/plain</Type>
                </Meta>
                <Data>0</Data>
              </Item>
            </Add>
            <Final/>
          </SyncBody>
        </SyncML>
```
<!-- PassportForWork-CspMoreInfo-End -->

<!-- PassportForWork-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
