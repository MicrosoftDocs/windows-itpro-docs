---
title: MixedReality Policy CSP
description: Learn more about the MixedReality Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- MixedReality-Begin -->
# Policy CSP - MixedReality

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- MixedReality-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
These policies are only supported on [Microsoft HoloLens 2](/hololens/hololens2-hardware). They're not supported on HoloLens (first gen) Development Edition or HoloLens (first gen) Commercial Suite devices.
<!-- MixedReality-Editable-End -->

<!-- AADGroupMembershipCacheValidityInDays-Begin -->
## AADGroupMembershipCacheValidityInDays

<!-- AADGroupMembershipCacheValidityInDays-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- AADGroupMembershipCacheValidityInDays-Applicability-End -->

<!-- AADGroupMembershipCacheValidityInDays-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/AADGroupMembershipCacheValidityInDays
```
<!-- AADGroupMembershipCacheValidityInDays-OmaUri-End -->

<!-- AADGroupMembershipCacheValidityInDays-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls for how many days, AAD group membership cache is allowed to be used for Assigned Access configurations targeting AAD groups for signed in user. Once this policy is set only then cache is used otherwise not. In order for this policy to take effect, user must sign-out and sign-in with Internet available at least once before the cache can be used for subsequent 'disconnected' sessions.
<!-- AADGroupMembershipCacheValidityInDays-Description-End -->

<!-- AADGroupMembershipCacheValidityInDays-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Steps to use this policy correctly:

1. Create a device configuration profile for kiosk, which targets Azure AD groups. Assign it to the HoloLens devices.
1. Create a custom OMA URI-based device configuration. Set this policy value to the chosen number of days greater than zero (`0`). Then assign the configuration to the HoloLens devices.
    - The URI value should be entered in OMA-URI text box as `./Device/Vendor/MSFT/Policy/Config/MixedReality/AADGroupMembershipCacheValidityInDays`
    - The value can be any integer in the allowed range.
1. Enroll the HoloLens devices. Verify that both configurations apply to the device.
1. When internet is available, sign in as an Azure AD user. Once the user signs-in, and Azure AD group membership is confirmed successfully, the cache will be created.
1. You can now take the HoloLens offline and use it for kiosk mode as long as policy value allows for X number of days.
1. Steps 4 and 5 can be repeated for any other Azure AD user. The key point is that any Azure AD user must sign-in at least once to a device while on the internet. Then we can determine that they're a member of an Azure AD group to which the kiosk configuration is targeted.

> [!NOTE]
> Until you do step 4 for an Azure AD user, the user will experience failure behavior similar to a disconnected environment.
<!-- AADGroupMembershipCacheValidityInDays-Editable-End -->

<!-- AADGroupMembershipCacheValidityInDays-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-60]` |
| Default Value  | 0 |
<!-- AADGroupMembershipCacheValidityInDays-DFProperties-End -->

<!-- AADGroupMembershipCacheValidityInDays-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AADGroupMembershipCacheValidityInDays-Examples-End -->

<!-- AADGroupMembershipCacheValidityInDays-End -->

<!-- AllowCaptivePortalBeforeLogon-Begin -->
## AllowCaptivePortalBeforeLogon

<!-- AllowCaptivePortalBeforeLogon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- AllowCaptivePortalBeforeLogon-Applicability-End -->

<!-- AllowCaptivePortalBeforeLogon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/AllowCaptivePortalBeforeLogon
```
<!-- AllowCaptivePortalBeforeLogon-OmaUri-End -->

<!-- AllowCaptivePortalBeforeLogon-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls whether the device will display the captive portal flow on the HoloLens sign in screen's network selection page when a captive portal network is detected. Displaying the captive portal flow is disabled by default to reduce the potential of gaining unauthorized access to the device through the browser.
<!-- AllowCaptivePortalBeforeLogon-Description-End -->

<!-- AllowCaptivePortalBeforeLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This opt-in policy can help with the setup of new devices in new areas or new users. The captive portal allows a user to enter credentials to connect to the Wi-Fi access point. If enabled, sign in will implement similar logic as OOBE to display captive portal if necessary.
<!-- AllowCaptivePortalBeforeLogon-Editable-End -->

<!-- AllowCaptivePortalBeforeLogon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowCaptivePortalBeforeLogon-DFProperties-End -->

<!-- AllowCaptivePortalBeforeLogon-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Displaying captive portal is not allowed. |
| 1 | Displaying captive portal is allowed. |
<!-- AllowCaptivePortalBeforeLogon-AllowedValues-End -->

<!-- AllowCaptivePortalBeforeLogon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCaptivePortalBeforeLogon-Examples-End -->

<!-- AllowCaptivePortalBeforeLogon-End -->

<!-- AllowLaunchUriInSingleAppKiosk-Begin -->
## AllowLaunchUriInSingleAppKiosk

<!-- AllowLaunchUriInSingleAppKiosk-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- AllowLaunchUriInSingleAppKiosk-Applicability-End -->

<!-- AllowLaunchUriInSingleAppKiosk-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/AllowLaunchUriInSingleAppKiosk
```
<!-- AllowLaunchUriInSingleAppKiosk-OmaUri-End -->

<!-- AllowLaunchUriInSingleAppKiosk-Description-Begin -->
<!-- Description-Source-DDF -->
By default, launching applications via Launcher API (Launcher Class (Windows. System) - Windows UWP applications | Microsoft Docs) is disabled in single app kiosk mode. To enable applications to launch in single app kiosk mode on HoloLens devices, set the policy value to true.
<!-- AllowLaunchUriInSingleAppKiosk-Description-End -->

<!-- AllowLaunchUriInSingleAppKiosk-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Enable this policy to allow for other apps to be launched within a single app kiosk. This behavior may be useful if you want to launch the Settings app to calibrate your device or change your Wi-Fi.

For more information on the Launcher API, see [Launcher Class (Windows.System) - Windows UWP applications](/uwp/api/windows.system.launcher).
<!-- AllowLaunchUriInSingleAppKiosk-Editable-End -->

<!-- AllowLaunchUriInSingleAppKiosk-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowLaunchUriInSingleAppKiosk-DFProperties-End -->

<!-- AllowLaunchUriInSingleAppKiosk-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Applications are not allowed to be launched with Launcher API, when in single app kiosk mode. |
| 1 | Applications are allowed to be launched with Launcher API, when in single app kiosk mode. |
<!-- AllowLaunchUriInSingleAppKiosk-AllowedValues-End -->

<!-- AllowLaunchUriInSingleAppKiosk-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLaunchUriInSingleAppKiosk-Examples-End -->

<!-- AllowLaunchUriInSingleAppKiosk-End -->

<!-- AutoLogonUser-Begin -->
## AutoLogonUser

<!-- AutoLogonUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- AutoLogonUser-Applicability-End -->

<!-- AutoLogonUser-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/AutoLogonUser
```
<!-- AutoLogonUser-OmaUri-End -->

<!-- AutoLogonUser-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls whether a user will be automatically logged on. When the policy is set to a non-empty value, it specifies the email address of the auto-logon user. The specified user must logon to the device at least once to enable auto-logon.
<!-- AutoLogonUser-Description-End -->

<!-- AutoLogonUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Some customers want to set up devices that are tied to an identity but don't want any sign-in experience. In this case, you can pick up a device and immediately use remote assist. It also allows you to rapidly distribute HoloLens devices and have users speed up sign-in.

The string value is the email address of the user to automatically sign in.

On a device where you configure this policy, the user specified in the policy needs to sign in at least once. Subsequent reboots of the device after the first sign-in will have the specified user automatically signed in. Only a single auto-logon user is supported. Once enabled, the automatically signed-in user can't manually sign out. To sign in as a different user, first disable this policy.

> [!NOTE]
>
> - Some events such as major OS updates may require the specified user to sign in to the device again to resume auto-logon behavior.
> - Auto-logon is only supported for Microsoft accounts and Azure Active Directory (Azure AD) users.
<!-- AutoLogonUser-Editable-End -->

<!-- AutoLogonUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AutoLogonUser-DFProperties-End -->

<!-- AutoLogonUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutoLogonUser-Examples-End -->

<!-- AutoLogonUser-End -->

<!-- AutomaticDisplayAdjustment-Begin -->
## AutomaticDisplayAdjustment

<!-- AutomaticDisplayAdjustment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- AutomaticDisplayAdjustment-Applicability-End -->

<!-- AutomaticDisplayAdjustment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/AutomaticDisplayAdjustment
```
<!-- AutomaticDisplayAdjustment-OmaUri-End -->

<!-- AutomaticDisplayAdjustment-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls if the HoloLens displays will be automatically adjusted for your eyes to improve hologram visual quality when an user wears the device. When this feature is enabled, a new user upon wearing the device will not be prompted to calibrate and yet the displays will be adjusted to suite them automatically. However if an immersive application is launched that depends on eye tracking interactions, the user will be prompted to perform the calibration.
<!-- AutomaticDisplayAdjustment-Description-End -->

<!-- AutomaticDisplayAdjustment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AutomaticDisplayAdjustment-Editable-End -->

<!-- AutomaticDisplayAdjustment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AutomaticDisplayAdjustment-DFProperties-End -->

<!-- AutomaticDisplayAdjustment-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AutomaticDisplayAdjustment-AllowedValues-End -->

<!-- AutomaticDisplayAdjustment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AutomaticDisplayAdjustment-Examples-End -->

<!-- AutomaticDisplayAdjustment-End -->

<!-- BrightnessButtonDisabled-Begin -->
## BrightnessButtonDisabled

<!-- BrightnessButtonDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- BrightnessButtonDisabled-Applicability-End -->

<!-- BrightnessButtonDisabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/BrightnessButtonDisabled
```
<!-- BrightnessButtonDisabled-OmaUri-End -->

<!-- BrightnessButtonDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls if pressing the brightness button changes the brightness or not. It only impacts brightness on HoloLens and not the functionality of the button when it's used with other buttons as combination for other purposes.
<!-- BrightnessButtonDisabled-Description-End -->

<!-- BrightnessButtonDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BrightnessButtonDisabled-Editable-End -->

<!-- BrightnessButtonDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- BrightnessButtonDisabled-DFProperties-End -->

<!-- BrightnessButtonDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Brightness can be changed with press of brightness button. |
| 1 | Brightness cannot be changed with press of brightness button. |
<!-- BrightnessButtonDisabled-AllowedValues-End -->

<!-- BrightnessButtonDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BrightnessButtonDisabled-Examples-End -->

<!-- BrightnessButtonDisabled-End -->

<!-- ConfigureMovingPlatform-Begin -->
## ConfigureMovingPlatform

<!-- ConfigureMovingPlatform-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- ConfigureMovingPlatform-Applicability-End -->

<!-- ConfigureMovingPlatform-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/ConfigureMovingPlatform
```
<!-- ConfigureMovingPlatform-OmaUri-End -->

<!-- ConfigureMovingPlatform-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls the behavior of moving platform feature on HoloLens 2, that is, whether it's turned off / on or it can be toggled by a user. It should only be used by customers who intend to use HoloLens 2 in moving environments with low dynamic motion. Please refer to HoloLens 2 Moving Platform Mode for background information.
<!-- ConfigureMovingPlatform-Description-End -->

<!-- ConfigureMovingPlatform-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see [Moving platform mode on low dynamic motion moving platforms](/hololens/hololens2-moving-platform).
<!-- ConfigureMovingPlatform-Editable-End -->

<!-- ConfigureMovingPlatform-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureMovingPlatform-DFProperties-End -->

<!-- ConfigureMovingPlatform-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Last set user's preference. Initial state is OFF and after that user's preference is persisted across reboots and is used to initialize the system. |
| 1 | Moving platform is disabled and cannot be changed by user. |
| 2 | Moving platform is enabled and cannot be changed by user. |
<!-- ConfigureMovingPlatform-AllowedValues-End -->

<!-- ConfigureMovingPlatform-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureMovingPlatform-Examples-End -->

<!-- ConfigureMovingPlatform-End -->

<!-- ConfigureNtpClient-Begin -->
## ConfigureNtpClient

<!-- ConfigureNtpClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- ConfigureNtpClient-Applicability-End -->

<!-- ConfigureNtpClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/ConfigureNtpClient
```
<!-- ConfigureNtpClient-OmaUri-End -->

<!-- ConfigureNtpClient-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies a set of parameters for controlling the Windows NTP Client.

- If you enable this policy setting, you can specify the following parameters for the Windows NTP Client.

- If you disable or do not configure this policy setting, the WIndows NTP Client uses the defaults of each of the following parameters.

NtpServer
The Domain Name System (DNS) name or IP address of an NTP time source. This value is in the form of "dnsName,flags" where "flags" is a hexadecimal bitmask of the flags for that host. For more information, see the NTP Client Group Policy Settings Associated with Windows Time section of the Windows Time Service Group Policy Settings. The default value is "time.windows.com,0x09".

Type
This value controls the authentication that W32time uses. The default value is NT5DS.

CrossSiteSyncFlags
This value, expressed as a bitmask, controls how W32time chooses time sources outside its own site. The possible values are 0, 1, and 2. Setting this value to 0 (None) indicates that the time client should not attempt to synchronize time outside its site. Setting this value to 1 (PdcOnly) indicates that only the computers that function as primary domain controller (PDC) emulator operations masters in other domains can be used as synchronization partners when the client has to synchronize time with a partner outside its own site. Setting a value of 2 (All) indicates that any synchronization partner can be used. This value is ignored if the NT5DS value is not set. The default value is 2 decimal (0x02 hexadecimal).

ResolvePeerBackoffMinutes
This value, expressed in minutes, controls how long W32time waits before it attempts to resolve a DNS name when a previous attempt failed. The default value is 15 minutes.

ResolvePeerBackoffMaxTimes
This value controls how many times W32time attempts to resolve a DNS name before the discovery process is restarted. Each time DNS name resolution fails, the amount of time to wait before the next attempt will be twice the previous amount. The default value is seven attempts.

SpecialPollInterval
This NTP client value, expressed in seconds, controls how often a manually configured time source is polled when the time source is configured to use a special polling interval. If the SpecialInterval flag is enabled on the NTPServer setting, the client uses the value that is set as the SpecialPollInterval, instead of a variable interval between MinPollInterval and MaxPollInterval values, to determine how frequently to poll the time source. SpecialPollInterval must be in the range of [MinPollInterval, MaxPollInterval], else the nearest value of the range is picked. Default: 1024 seconds.

EventLogFlags
This value is a bitmask that controls events that may be logged to the System log in Event Viewer. Setting this value to 0x1 indicates that W32time will create an event whenever a time jump is detected. Setting this value to 0x2 indicates that W32time will create an event whenever a time source change is made. Because it is a bitmask value, setting 0x3 (the addition of 0x1 and 0x2) indicates that both time jumps and time source changes will be logged.
<!-- ConfigureNtpClient-Description-End -->

<!-- ConfigureNtpClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**More information**:

You may want to configure a different time server for your device fleet. You can use this policy to configure certain aspects of the NTP client. In the Settings app, the Time/Language page will show the time server after a time sync has occurred.

For more information, see [ADMX_W32Time Policy CSP - W32Time_Policy_Configure_NTPClient](policy-csp-admx-w32time.md#w32time_policy_configure_ntpclient).

> [!NOTE]
> This policy also requires enabling [NtpClientEnabled](#ntpclientenabled).
>
> After you enable this policy, restart the device for the changes to apply.
<!-- ConfigureNtpClient-Editable-End -->

<!-- ConfigureNtpClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureNtpClient-DFProperties-End -->

<!-- ConfigureNtpClient-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_CONFIGURE_NTPCLIENT |
| Friendly Name | Configure Windows NTP Client |
| Location | Computer Configuration |
| Path | System > Windows Time Service > Time Providers |
| Registry Key Name | Software\Policies\Microsoft\W32time\TimeProviders\NtpClient |
| ADMX File Name | W32Time.admx |
<!-- ConfigureNtpClient-AdmxBacked-End -->

<!-- ConfigureNtpClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

The following XML string is an example of the value for this policy:

```xml
<enabled/>
<data id="W32TIME_NtpServer" value="time.windows.com,0x9"/>
<data id="W32TIME_Type" value="NTP"/>
<data id="W32TIME_CrossSiteSyncFlags" value="2"/>
<data id="W32TIME_ResolvePeerBackoffMinutes" value="15"/>
<data id="W32TIME_ResolvePeerBackoffMaxTimes" value="7"/>
<data id="W32TIME_SpecialPollInterval" value="1024"/>
<data id="W32TIME_NtpClientEventLogFlags" value="0"/>
```
<!-- ConfigureNtpClient-Examples-End -->

<!-- ConfigureNtpClient-End -->

<!-- DisallowNetworkConnectivityPassivePolling-Begin -->
## DisallowNetworkConnectivityPassivePolling

<!-- DisallowNetworkConnectivityPassivePolling-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- DisallowNetworkConnectivityPassivePolling-Applicability-End -->

<!-- DisallowNetworkConnectivityPassivePolling-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/DisallowNetworkConnectivityPassivePolling
```
<!-- DisallowNetworkConnectivityPassivePolling-OmaUri-End -->

<!-- DisallowNetworkConnectivityPassivePolling-Description-Begin -->
<!-- Description-Source-DDF -->
Network Connection Status Indicator (NCSI) detects Internet connectivity and corporate network connectivity status. This policy allows IT admins to disable NCSI passive polling. Value type is integer.
<!-- DisallowNetworkConnectivityPassivePolling-Description-End -->

<!-- DisallowNetworkConnectivityPassivePolling-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Windows Network Connectivity Status Indicator may get a false positive internet-capable signal from passive polling. That behavior may result in the Wi-Fi adapter unexpectedly resetting when the device connects to an intranet-only access point. When you enable this policy, you can avoid unexpected network interruptions caused by false positive NCSI passive polling.
<!-- DisallowNetworkConnectivityPassivePolling-Editable-End -->

<!-- DisallowNetworkConnectivityPassivePolling-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowNetworkConnectivityPassivePolling-DFProperties-End -->

<!-- DisallowNetworkConnectivityPassivePolling-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allowed. |
| 1 | Not allowed. |
<!-- DisallowNetworkConnectivityPassivePolling-AllowedValues-End -->

<!-- DisallowNetworkConnectivityPassivePolling-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowNetworkConnectivityPassivePolling-Examples-End -->

<!-- DisallowNetworkConnectivityPassivePolling-End -->

<!-- EyeTrackingCalibrationPrompt-Begin -->
## EyeTrackingCalibrationPrompt

<!-- EyeTrackingCalibrationPrompt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- EyeTrackingCalibrationPrompt-Applicability-End -->

<!-- EyeTrackingCalibrationPrompt-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/EyeTrackingCalibrationPrompt
```
<!-- EyeTrackingCalibrationPrompt-OmaUri-End -->

<!-- EyeTrackingCalibrationPrompt-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls when a new person uses HoloLens device, if HoloLens should automatically ask to run eye calibration.
<!-- EyeTrackingCalibrationPrompt-Description-End -->

<!-- EyeTrackingCalibrationPrompt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EyeTrackingCalibrationPrompt-Editable-End -->

<!-- EyeTrackingCalibrationPrompt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EyeTrackingCalibrationPrompt-DFProperties-End -->

<!-- EyeTrackingCalibrationPrompt-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- EyeTrackingCalibrationPrompt-AllowedValues-End -->

<!-- EyeTrackingCalibrationPrompt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EyeTrackingCalibrationPrompt-Examples-End -->

<!-- EyeTrackingCalibrationPrompt-End -->

<!-- FallbackDiagnostics-Begin -->
## FallbackDiagnostics

<!-- FallbackDiagnostics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- FallbackDiagnostics-Applicability-End -->

<!-- FallbackDiagnostics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/FallbackDiagnostics
```
<!-- FallbackDiagnostics-OmaUri-End -->

<!-- FallbackDiagnostics-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls, when and if diagnostic logs can be collected using specific button combination on HoloLens.
<!-- FallbackDiagnostics-Description-End -->

<!-- FallbackDiagnostics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FallbackDiagnostics-Editable-End -->

<!-- FallbackDiagnostics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- FallbackDiagnostics-DFProperties-End -->

<!-- FallbackDiagnostics-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. Diagnostic logs cannot be collected by pressing the button combination. |
| 1 | Allowed for device owners only. Diagnostics logs can be collected by pressing the button combination only if signed-in user is considered as device owner. |
| 2 (Default) | Allowed for all users. Diagnostic logs can be collected by pressing the button combination. |
<!-- FallbackDiagnostics-AllowedValues-End -->

<!-- FallbackDiagnostics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FallbackDiagnostics-Examples-End -->

<!-- FallbackDiagnostics-End -->

<!-- HeadTrackingMode-Begin -->
## HeadTrackingMode

<!-- HeadTrackingMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- HeadTrackingMode-Applicability-End -->

<!-- HeadTrackingMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/HeadTrackingMode
```
<!-- HeadTrackingMode-OmaUri-End -->

<!-- HeadTrackingMode-Description-Begin -->
<!-- Description-Source-DDF -->
This policy configures behavior of HUP to determine, which algorithm to use for head tracking. It requires a reboot for the policy to take effect.
<!-- HeadTrackingMode-Description-End -->

<!-- HeadTrackingMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**Allowed values**:

| Value | Description |
|:--|:--|
| `0` (Default) | Feature - Default feature based / SLAM-based tracker. |
| `1` | Constellation - LR constellation based tracker. |
<!-- HeadTrackingMode-Editable-End -->

<!-- HeadTrackingMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 0 |
<!-- HeadTrackingMode-DFProperties-End -->

<!-- HeadTrackingMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HeadTrackingMode-Examples-End -->

<!-- HeadTrackingMode-End -->

<!-- ManualDownDirectionDisabled-Begin -->
## ManualDownDirectionDisabled

<!-- ManualDownDirectionDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- ManualDownDirectionDisabled-Applicability-End -->

<!-- ManualDownDirectionDisabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/ManualDownDirectionDisabled
```
<!-- ManualDownDirectionDisabled-OmaUri-End -->

<!-- ManualDownDirectionDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls whether the user can change down direction manually or not. If no down direction is set by the user, then an automatically calculated down direction is used by the system. This policy has no dependency on ConfigureMovingPlatform policy and they can be set independently.
<!-- ManualDownDirectionDisabled-Description-End -->

<!-- ManualDownDirectionDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When the system automatically determines the down direction, it's using the measured gravity vector.
<!-- ManualDownDirectionDisabled-Editable-End -->

<!-- ManualDownDirectionDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ManualDownDirectionDisabled-DFProperties-End -->

<!-- ManualDownDirectionDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User is allowed to manually change down direction. |
| 1 | User is not allowed to manually change down direction. |
<!-- ManualDownDirectionDisabled-AllowedValues-End -->

<!-- ManualDownDirectionDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ManualDownDirectionDisabled-Examples-End -->

<!-- ManualDownDirectionDisabled-End -->

<!-- MicrophoneDisabled-Begin -->
## MicrophoneDisabled

<!-- MicrophoneDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- MicrophoneDisabled-Applicability-End -->

<!-- MicrophoneDisabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/MicrophoneDisabled
```
<!-- MicrophoneDisabled-OmaUri-End -->

<!-- MicrophoneDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls whether microphone on HoloLens 2 is disabled or not.
<!-- MicrophoneDisabled-Description-End -->

<!-- MicrophoneDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrophoneDisabled-Editable-End -->

<!-- MicrophoneDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MicrophoneDisabled-DFProperties-End -->

<!-- MicrophoneDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Microphone can be used for voice. |
| 1 | Microphone cannot be used for voice. |
<!-- MicrophoneDisabled-AllowedValues-End -->

<!-- MicrophoneDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrophoneDisabled-Examples-End -->

<!-- MicrophoneDisabled-End -->

<!-- NtpClientEnabled-Begin -->
## NtpClientEnabled

<!-- NtpClientEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- NtpClientEnabled-Applicability-End -->

<!-- NtpClientEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/NtpClientEnabled
```
<!-- NtpClientEnabled-OmaUri-End -->

<!-- NtpClientEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the Windows NTP Client is enabled.

Enabling the Windows NTP Client allows your computer to synchronize its computer clock with other NTP servers. You might want to disable this service if you decide to use a third-party time provider.

- If you enable this policy setting, you can set the local computer clock to synchronize time with NTP servers.

- If you disable or do not configure this policy setting, the local computer clock does not synchronize time with NTP servers.
<!-- NtpClientEnabled-Description-End -->

<!-- NtpClientEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see the [ConfigureNtpClient](#configurentpclient) policy.
<!-- NtpClientEnabled-Editable-End -->

<!-- NtpClientEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NtpClientEnabled-DFProperties-End -->

<!-- NtpClientEnabled-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | W32TIME_POLICY_ENABLE_NTPCLIENT |
| Friendly Name | Enable Windows NTP Client |
| Location | Computer Configuration |
| Path | System > Windows Time Service > Time Providers |
| Registry Key Name | Software\Policies\Microsoft\W32time\TimeProviders\NtpClient |
| Registry Value Name | Enabled |
| ADMX File Name | W32Time.admx |
<!-- NtpClientEnabled-AdmxBacked-End -->

<!-- NtpClientEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following example XML string shows the value to enable this policy:

```xml
<enabled/>
```
<!-- NtpClientEnabled-Examples-End -->

<!-- NtpClientEnabled-End -->

<!-- SkipCalibrationDuringSetup-Begin -->
## SkipCalibrationDuringSetup

<!-- SkipCalibrationDuringSetup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- SkipCalibrationDuringSetup-Applicability-End -->

<!-- SkipCalibrationDuringSetup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/SkipCalibrationDuringSetup
```
<!-- SkipCalibrationDuringSetup-OmaUri-End -->

<!-- SkipCalibrationDuringSetup-Description-Begin -->
<!-- Description-Source-DDF -->
This policy configures whether the device will take the user through the eye tracking calibration process during device setup and first time user setup. If this policy is enabled, the device will not show the eye tracking calibration process during device setup and first time user setup. **Note** that until the user goes through the calibration process, eye tracking will not work on the device. If an app requires eye tracking and the user has not gone through the calibration process, the user will be prompted to do so.
<!-- SkipCalibrationDuringSetup-Description-End -->

<!-- SkipCalibrationDuringSetup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> The user will still be able to calibrate their device from the Settings app.
<!-- SkipCalibrationDuringSetup-Editable-End -->

<!-- SkipCalibrationDuringSetup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SkipCalibrationDuringSetup-DFProperties-End -->

<!-- SkipCalibrationDuringSetup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Eye tracking calibration process will be shown during device setup and first time user setup. |
| 1 | Eye tracking calibration process will not be shown during device setup and first time user setup. |
<!-- SkipCalibrationDuringSetup-AllowedValues-End -->

<!-- SkipCalibrationDuringSetup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SkipCalibrationDuringSetup-Examples-End -->

<!-- SkipCalibrationDuringSetup-End -->

<!-- SkipTrainingDuringSetup-Begin -->
## SkipTrainingDuringSetup

<!-- SkipTrainingDuringSetup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- SkipTrainingDuringSetup-Applicability-End -->

<!-- SkipTrainingDuringSetup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/SkipTrainingDuringSetup
```
<!-- SkipTrainingDuringSetup-OmaUri-End -->

<!-- SkipTrainingDuringSetup-Description-Begin -->
<!-- Description-Source-DDF -->
This policy configures whether the device will take the user through a training process during device setup and first time user setup. If this policy is enabled, the device will not show the training process during device setup and first time user setup. If the user wishes to go through that training process, the user can launch the Tips app.
<!-- SkipTrainingDuringSetup-Description-End -->

<!-- SkipTrainingDuringSetup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
It skips the training experience of interactions with the hummingbird and Start menu training. The user will still be able to learn these movement controls from the Tips app.
<!-- SkipTrainingDuringSetup-Editable-End -->

<!-- SkipTrainingDuringSetup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SkipTrainingDuringSetup-DFProperties-End -->

<!-- SkipTrainingDuringSetup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Training process will be shown during device setup and first time user setup. |
| 1 | Training process will not be shown during device setup and first time user setup. |
<!-- SkipTrainingDuringSetup-AllowedValues-End -->

<!-- SkipTrainingDuringSetup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SkipTrainingDuringSetup-Examples-End -->

<!-- SkipTrainingDuringSetup-End -->

<!-- VisitorAutoLogon-Begin -->
## VisitorAutoLogon

<!-- VisitorAutoLogon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Unknown [10.0.20348] and later |
<!-- VisitorAutoLogon-Applicability-End -->

<!-- VisitorAutoLogon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/VisitorAutoLogon
```
<!-- VisitorAutoLogon-OmaUri-End -->

<!-- VisitorAutoLogon-Description-Begin -->
<!-- Description-Source-DDF -->
This policy controls whether a visitor user will be automatically logged in. Visitor users can only be created and logged in, if an Assigned Access profile has been created targeting visitor users. A visitor user will only be automatically logged in, if no other user has logged in on the device before.
<!-- VisitorAutoLogon-Description-End -->

<!-- VisitorAutoLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- VisitorAutoLogon-Editable-End -->

<!-- VisitorAutoLogon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- VisitorAutoLogon-DFProperties-End -->

<!-- VisitorAutoLogon-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Visitor user will not be signed in automatically. |
| 1 | Visitor user will be signed in automatically. |
<!-- VisitorAutoLogon-AllowedValues-End -->

<!-- VisitorAutoLogon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- VisitorAutoLogon-Examples-End -->

<!-- VisitorAutoLogon-End -->

<!-- VolumeButtonDisabled-Begin -->
## VolumeButtonDisabled

<!-- VolumeButtonDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041] and later |
<!-- VolumeButtonDisabled-Applicability-End -->

<!-- VolumeButtonDisabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MixedReality/VolumeButtonDisabled
```
<!-- VolumeButtonDisabled-OmaUri-End -->

<!-- VolumeButtonDisabled-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls if pressing the volume button changes the volume or not. It only impacts volume on HoloLens and not the functionality of the button when it's used with other buttons as combination for other purposes.
<!-- VolumeButtonDisabled-Description-End -->

<!-- VolumeButtonDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- VolumeButtonDisabled-Editable-End -->

<!-- VolumeButtonDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- VolumeButtonDisabled-DFProperties-End -->

<!-- VolumeButtonDisabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Volume can be changed with press of the volume button. |
| 1 | Volume cannot be changed with press of the volume button. |
<!-- VolumeButtonDisabled-AllowedValues-End -->

<!-- VolumeButtonDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- VolumeButtonDisabled-Examples-End -->

<!-- VolumeButtonDisabled-End -->

<!-- MixedReality-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- MixedReality-CspMoreInfo-End -->

<!-- MixedReality-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
