---
title: ADMX_CredentialProviders Policy CSP
description: Learn more about the ADMX_CredentialProviders Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CredentialProviders-Begin -->
# Policy CSP - ADMX_CredentialProviders

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_CredentialProviders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredentialProviders-Editable-End -->

<!-- AllowDomainDelayLock-Begin -->
## AllowDomainDelayLock

<!-- AllowDomainDelayLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDomainDelayLock-Applicability-End -->

<!-- AllowDomainDelayLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/AllowDomainDelayLock
```
<!-- AllowDomainDelayLock-OmaUri-End -->

<!-- AllowDomainDelayLock-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether a user can change the time before a password is required when a Connected Standby device screen turns off.

- If you enable this policy setting, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.

- If you disable this policy setting, a user can't change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.

- If you don't configure this policy setting on a domain-joined device, a user can't change the amount of time after the device's screen turns off before a password is required when waking the device. Instead, a password is required immediately after the screen turns off.

- If you don't configure this policy setting on a workgroup device, a user on a Connected Standby device can change the amount of time after the device's screen turns off before a password is required when waking the device. The time is limited by any EAS settings or Group Policies that affect the maximum idle time before a device locks. Additionally, if a password is required when a screensaver turns on, the screensaver timeout will limit the options the user may choose.
<!-- AllowDomainDelayLock-Description-End -->

<!-- AllowDomainDelayLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDomainDelayLock-Editable-End -->

<!-- AllowDomainDelayLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDomainDelayLock-DFProperties-End -->

<!-- AllowDomainDelayLock-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDomainDelayLock |
| Friendly Name | Allow users to select when a password is required when resuming from connected standby |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowDomainDelayLock |
| ADMX File Name | CredentialProviders.admx |
<!-- AllowDomainDelayLock-AdmxBacked-End -->

<!-- AllowDomainDelayLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDomainDelayLock-Examples-End -->

<!-- AllowDomainDelayLock-End -->

<!-- DefaultCredentialProvider-Begin -->
## DefaultCredentialProvider

<!-- DefaultCredentialProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DefaultCredentialProvider-Applicability-End -->

<!-- DefaultCredentialProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/DefaultCredentialProvider
```
<!-- DefaultCredentialProvider-OmaUri-End -->

<!-- DefaultCredentialProvider-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the administrator to assign a specified credential provider as the default credential provider.

- If you enable this policy setting, the specified credential provider is selected on other user tile.

- If you disable or don't configure this policy setting, the system picks the default credential provider on other user tile.

> [!NOTE]
> A list of registered credential providers and their GUIDs can be found in the registry at HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\Credential Providers.
<!-- DefaultCredentialProvider-Description-End -->

<!-- DefaultCredentialProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DefaultCredentialProvider-Editable-End -->

<!-- DefaultCredentialProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultCredentialProvider-DFProperties-End -->

<!-- DefaultCredentialProvider-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DefaultCredentialProvider |
| Friendly Name | Assign a default credential provider |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | CredentialProviders.admx |
<!-- DefaultCredentialProvider-AdmxBacked-End -->

<!-- DefaultCredentialProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DefaultCredentialProvider-Examples-End -->

<!-- DefaultCredentialProvider-End -->

<!-- ExcludedCredentialProviders-Begin -->
## ExcludedCredentialProviders

<!-- ExcludedCredentialProviders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExcludedCredentialProviders-Applicability-End -->

<!-- ExcludedCredentialProviders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/ExcludedCredentialProviders
```
<!-- ExcludedCredentialProviders-OmaUri-End -->

<!-- ExcludedCredentialProviders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the administrator to exclude the specified credential providers from use during authentication.

Note credential providers are used to process and validate user credentials during logon or when authentication is required.

Windows Vista provides two default credential providers:

Password and Smart Card. An administrator can install additional credential providers for different sets of credentials (for example, to support biometric authentication).

- If you enable this policy, an administrator can specify the CLSIDs of the credential providers to exclude from the set of installed credential providers available for authentication purposes.

- If you disable or don't configure this policy, all installed and otherwise enabled credential providers are available for authentication purposes.
<!-- ExcludedCredentialProviders-Description-End -->

<!-- ExcludedCredentialProviders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExcludedCredentialProviders-Editable-End -->

<!-- ExcludedCredentialProviders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExcludedCredentialProviders-DFProperties-End -->

<!-- ExcludedCredentialProviders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExcludedCredentialProviders |
| Friendly Name | Exclude credential providers |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | CredentialProviders.admx |
<!-- ExcludedCredentialProviders-AdmxBacked-End -->

<!-- ExcludedCredentialProviders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExcludedCredentialProviders-Examples-End -->

<!-- ExcludedCredentialProviders-End -->

<!-- ADMX_CredentialProviders-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredentialProviders-CspMoreInfo-End -->

<!-- ADMX_CredentialProviders-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
