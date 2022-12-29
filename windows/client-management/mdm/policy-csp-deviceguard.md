---
title: DeviceGuard Policy CSP
description: Learn more about the DeviceGuard Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/29/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- ConfigureSystemGuardLaunch-Applicability-End -->

<!-- ConfigureSystemGuardLaunch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/ConfigureSystemGuardLaunch
```
<!-- ConfigureSystemGuardLaunch-OmaUri-End -->

<!-- ConfigureSystemGuardLaunch-Description-Begin -->
<!-- Description-Source-DDF -->
Secure Launch configuration: 0 - Unmanaged, configurable by Administrative user, 1 - Enables Secure Launch if supported by hardware, 2 - Disables Secure Launch.
<!-- ConfigureSystemGuardLaunch-Description-End -->

<!-- ConfigureSystemGuardLaunch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information about System Guard, see [Introducing Windows Defender System Guard runtime attestation](https://www.microsoft.com/security/blog/2018/04/19/introducing-windows-defender-system-guard-runtime-attestation) and [How a hardware-based root of trust helps protect Windows 10](/windows/security/threat-protection/windows-defender-system-guard/how-hardware-based-root-of-trust-helps-protect-windows).
<!-- ConfigureSystemGuardLaunch-Editable-End -->

<!-- ConfigureSystemGuardLaunch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureSystemGuardLaunch-DFProperties-End -->

<!-- ConfigureSystemGuardLaunch-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Unmanaged Configurable by Administrative user |
| 1 | Unmanaged Enables Secure Launch if supported by hardware |
| 2 | Unmanaged Disables Secure Launch |
<!-- ConfigureSystemGuardLaunch-AllowedValues-End -->

<!-- ConfigureSystemGuardLaunch-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Secure Launch Configuration |
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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableVirtualizationBasedSecurity-Applicability-End -->

<!-- EnableVirtualizationBasedSecurity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/EnableVirtualizationBasedSecurity
```
<!-- EnableVirtualizationBasedSecurity-OmaUri-End -->

<!-- EnableVirtualizationBasedSecurity-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether Virtualization Based Security is enabled.

Virtualization Based Security uses the Windows Hypervisor to provide support for security services. Virtualization Based Security requires Secure Boot, and can optionally be enabled with the use of DMA Protections. DMA protections require hardware support and will only be enabled on correctly configured devices.

Virtualization Based Protection of Code Integrity

This setting enables virtualization based protection of Kernel Mode Code Integrity. When this is enabled, kernel mode memory protections are enforced and the Code Integrity validation path is protected by the Virtualization Based Security feature.

The "Disabled" option turns off Virtualization Based Protection of Code Integrity remotely if it was previously turned on with the "Enabled without lock" option.

The "Enabled with UEFI lock" option ensures that Virtualization Based Protection of Code Integrity cannot be disabled remotely. In order to disable the feature, you must set the Group Policy to "Disabled" as well as remove the security functionality from each computer, with a physically present user, in order to clear configuration persisted in UEFI.

The "Enabled without lock" option allows Virtualization Based Protection of Code Integrity to be disabled remotely by using Group Policy.

The "Not Configured" option leaves the policy setting undefined. Group Policy does not write the policy setting to the registry, and so it has no impact on computers or users. If there is a current setting in the registry it will not be modified.

The "Require UEFI Memory Attributes Table" option will only enable Virtualization Based Protection of Code Integrity on devices with UEFI firmware support for the Memory Attributes Table. Devices without the UEFI Memory Attributes Table may have firmware that is incompatible with Virtualization Based Protection of Code Integrity which in some cases can lead to crashes or data loss or incompatibility with certain plug-in cards. If not setting this option the targeted devices should be tested to ensure compatibility.

Warning: All drivers on the system must be compatible with this feature or the system may crash. Ensure that this policy setting is only deployed to computers which are known to be compatible.

Credential Guard

This setting lets users turn on Credential Guard with virtualization-based security to help protect credentials.

For Windows 11 21H2 and earlier, the "Disabled" option turns off Credential Guard remotely if it was previously turned on with the "Enabled without lock" option. For later versions, the "Disabled" option turns off Credential Guard remotely if it was previously turned on with the "Enabled without lock" option or was "Not Configured".

The "Enabled with UEFI lock" option ensures that Credential Guard cannot be disabled remotely. In order to disable the feature, you must set the Group Policy to "Disabled" as well as remove the security functionality from each computer, with a physically present user, in order to clear configuration persisted in UEFI.

The "Enabled without lock" option allows Credential Guard to be disabled remotely by using Group Policy. The devices that use this setting must be running at least Windows 10 (Version 1511).

For Windows 11 21H2 and earlier, the "Not Configured" option leaves the policy setting undefined. Group Policy does not write the policy setting to the registry, and so it has no impact on computers or users. If there is a current setting in the registry it will not be modified. For later versions, if there is no current setting in the registry, the "Not Configured" option will enable Credential Guard without UEFI lock.

Secure Launch

This setting sets the configuration of Secure Launch to secure the boot chain.

The "Not Configured" setting is the default, and allows configuration of the feature by Administrative users.

The "Enabled" option turns on Secure Launch on supported hardware.

The "Disabled" option turns off Secure Launch, regardless of hardware support.

Kernel-mode Hardware-enforced Stack Protection

This setting enables Hardware-enforced Stack Protection for kernel-mode code. When this security feature is enabled, kernel-mode data stacks are hardened with hardware-based shadow stacks, which store intended return address targets to ensure that program control flow is not tampered.

This security feature has the following prerequisites:
1) The CPU hardware supports hardware-based shadow stacks.
2) Virtualization Based Protection of Code Integrity is enabled.

If either prerequisite is not met, this feature will not be enabled, even if an "Enabled" option is selected for this feature.

**Note** that selecting an "Enabled" option for this feature will not automatically enable Virtualization Based Protection of Code Integrity, that needs to be done separately.

Devices that enable this security feature must be running at least Windows 11 (Version 22H2).

The "Disabled" option turns off kernel-mode Hardware-enforced Stack Protection.

The "Enabled in audit mode" option enables kernel-mode Hardware-enforced Stack Protection in audit mode, where shadow stack violations are not fatal and will be logged to the system event log.

The "Enabled in enforcement mode" option enables kernel-mode Hardware-enforced Stack Protection in enforcement mode, where shadow stack violations are fatal.

The "Not Configured" option leaves the policy setting undefined. Group Policy does not write the policy setting to the registry, and so it has no impact on computers or users. If there is a current setting in the registry it will not be modified.

Warning: All drivers on the system must be compatible with this security feature or the system may crash in enforcement mode. Audit mode can be used to discover incompatible drivers. For more information, refer to <https://go.microsoft.com/fwlink/?LinkId=2162953>.
<!-- EnableVirtualizationBasedSecurity-Description-End -->

<!-- EnableVirtualizationBasedSecurity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableVirtualizationBasedSecurity-Editable-End -->

<!-- EnableVirtualizationBasedSecurity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableVirtualizationBasedSecurity-DFProperties-End -->

<!-- EnableVirtualizationBasedSecurity-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | disable virtualization based security. |
| 1 | enable virtualization based security. |
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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- LsaCfgFlags-Applicability-End -->

<!-- LsaCfgFlags-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/LsaCfgFlags
```
<!-- LsaCfgFlags-OmaUri-End -->

<!-- LsaCfgFlags-Description-Begin -->
<!-- Description-Source-DDF -->
Credential Guard Configuration: 0 - Turns off CredentialGuard remotely if configured previously without UEFI Lock, 1 - Turns on CredentialGuard with UEFI lock. 2 - Turns on CredentialGuard without UEFI lock.
<!-- LsaCfgFlags-Description-End -->

<!-- LsaCfgFlags-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LsaCfgFlags-Editable-End -->

<!-- LsaCfgFlags-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
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
| Element Name | Credential Guard Configuration |
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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- RequirePlatformSecurityFeatures-Applicability-End -->

<!-- RequirePlatformSecurityFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceGuard/RequirePlatformSecurityFeatures
```
<!-- RequirePlatformSecurityFeatures-OmaUri-End -->

<!-- RequirePlatformSecurityFeatures-Description-Begin -->
<!-- Description-Source-DDF -->
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
| Format | int |
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
| Element Name | Select Platform Security Level |
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
