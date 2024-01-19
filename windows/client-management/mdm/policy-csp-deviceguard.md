---
title: DeviceGuard Policy CSP
description: Learn more about the DeviceGuard Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeviceGuard-Begin -->
# Policy CSP - DeviceGuard

<!-- DeviceGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceGuard-Editable-End -->

<!-- ConfigureSystemGuardLaunch-Begin -->
## ConfigureSystemGuardLaunch

<!-- ConfigureSystemGuardLaunch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureSystemGuardLaunch-Applicability-End -->

<!-- ConfigureSystemGuardLaunch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/ConfigureSystemGuardLaunch
```
<!-- ConfigureSystemGuardLaunch-OmaUri-End -->

<!-- ConfigureSystemGuardLaunch-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Secure Launch configuration: 0 - Unmanaged, configurable by Administrative user, 1 - Enables Secure Launch if supported by hardware, 2 - Disables Secure Launch.
<!-- ConfigureSystemGuardLaunch-Description-End -->

<!-- ConfigureSystemGuardLaunch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information about System Guard, see [Introducing Windows Defender System Guard runtime attestation](https://www.microsoft.com/security/blog/2018/04/19/introducing-windows-defender-system-guard-runtime-attestation) and [How a hardware-based root of trust helps protect Windows 10](/windows/security/hardware-security/how-hardware-based-root-of-trust-helps-protect-windows).
<!-- ConfigureSystemGuardLaunch-Editable-End -->

<!-- ConfigureSystemGuardLaunch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureSystemGuardLaunch-DFProperties-End -->

<!-- ConfigureSystemGuardLaunch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Unmanaged Configurable by Administrative user. |
| 1 | Unmanaged Enables Secure Launch if supported by hardware. |
| 2 | Unmanaged Disables Secure Launch. |
<!-- ConfigureSystemGuardLaunch-AllowedValues-End -->

<!-- ConfigureSystemGuardLaunch-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Secure Launch Configuration. |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| ADMX File Name | DeviceGuard.admx |
<!-- ConfigureSystemGuardLaunch-GpMapping-End -->

<!-- ConfigureSystemGuardLaunch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureSystemGuardLaunch-Examples-End -->

<!-- ConfigureSystemGuardLaunch-End -->

<!-- EnableVirtualizationBasedSecurity-Begin -->
## EnableVirtualizationBasedSecurity

<!-- EnableVirtualizationBasedSecurity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableVirtualizationBasedSecurity-Applicability-End -->

<!-- EnableVirtualizationBasedSecurity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/EnableVirtualizationBasedSecurity
```
<!-- EnableVirtualizationBasedSecurity-OmaUri-End -->

<!-- EnableVirtualizationBasedSecurity-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Turns On Virtualization Based Security(VBS)
<!-- EnableVirtualizationBasedSecurity-Description-End -->

<!-- EnableVirtualizationBasedSecurity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableVirtualizationBasedSecurity-Editable-End -->

<!-- EnableVirtualizationBasedSecurity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableVirtualizationBasedSecurity-DFProperties-End -->

<!-- EnableVirtualizationBasedSecurity-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable virtualization based security. |
| 1 | Enable virtualization based security. |
<!-- EnableVirtualizationBasedSecurity-AllowedValues-End -->

<!-- EnableVirtualizationBasedSecurity-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| Registry Value Name | EnableVirtualizationBasedSecurity |
| ADMX File Name | DeviceGuard.admx |
<!-- EnableVirtualizationBasedSecurity-GpMapping-End -->

<!-- EnableVirtualizationBasedSecurity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableVirtualizationBasedSecurity-Examples-End -->

<!-- EnableVirtualizationBasedSecurity-End -->

<!-- LsaCfgFlags-Begin -->
## LsaCfgFlags

<!-- LsaCfgFlags-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LsaCfgFlags-Applicability-End -->

<!-- LsaCfgFlags-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/LsaCfgFlags
```
<!-- LsaCfgFlags-OmaUri-End -->

<!-- LsaCfgFlags-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Credential Guard Configuration: 0 - Turns off CredentialGuard remotely if configured previously without UEFI Lock, 1 - Turns on CredentialGuard with UEFI lock. 2 - Turns on CredentialGuard without UEFI lock.
<!-- LsaCfgFlags-Description-End -->

<!-- LsaCfgFlags-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LsaCfgFlags-Editable-End -->

<!-- LsaCfgFlags-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LsaCfgFlags-DFProperties-End -->

<!-- LsaCfgFlags-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disabled) Turns off Credential Guard remotely if configured previously without UEFI Lock. |
| 1 | (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock. |
| 2 | (Enabled without lock) Turns on Credential Guard without UEFI lock. |
<!-- LsaCfgFlags-AllowedValues-End -->

<!-- LsaCfgFlags-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Credential Guard Configuration. |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| ADMX File Name | DeviceGuard.admx |
<!-- LsaCfgFlags-GpMapping-End -->

<!-- LsaCfgFlags-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LsaCfgFlags-Examples-End -->

<!-- LsaCfgFlags-End -->

<!-- RequirePlatformSecurityFeatures-Begin -->
## RequirePlatformSecurityFeatures

<!-- RequirePlatformSecurityFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- RequirePlatformSecurityFeatures-Applicability-End -->

<!-- RequirePlatformSecurityFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/RequirePlatformSecurityFeatures
```
<!-- RequirePlatformSecurityFeatures-OmaUri-End -->

<!-- RequirePlatformSecurityFeatures-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Select Platform Security Level: 1 - Turns on VBS with Secure Boot, 3 - Turns on VBS with Secure Boot and DMA. DMA requires hardware support.
<!-- RequirePlatformSecurityFeatures-Description-End -->

<!-- RequirePlatformSecurityFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials at next reboot. Value type is integer.
<!-- RequirePlatformSecurityFeatures-Editable-End -->

<!-- RequirePlatformSecurityFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- RequirePlatformSecurityFeatures-DFProperties-End -->

<!-- RequirePlatformSecurityFeatures-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Turns on VBS with Secure Boot. |
| 3 | Turns on VBS with Secure Boot and direct memory access (DMA). DMA requires hardware support. |
<!-- RequirePlatformSecurityFeatures-AllowedValues-End -->

<!-- RequirePlatformSecurityFeatures-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Select Platform Security Level. |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| ADMX File Name | DeviceGuard.admx |
<!-- RequirePlatformSecurityFeatures-GpMapping-End -->

<!-- RequirePlatformSecurityFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequirePlatformSecurityFeatures-Examples-End -->

<!-- RequirePlatformSecurityFeatures-End -->

<!-- DeviceGuard-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceGuard-CspMoreInfo-End -->

<!-- DeviceGuard-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
