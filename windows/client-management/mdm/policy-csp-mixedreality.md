---
title: Policy CSP - MixedReality
description: Policy CSP - MixedReality
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - MixedReality

<hr/>

<!--Policies-->
## MixedReality policies

<dl>
  <dd>
    <a href="#mixedreality-aadgroupmembershipcachevalidityindays">MixedReality/AADGroupMembershipCacheValidityInDays</a>
  </dd>
  <dd>
    <a href="#mixedreality-allowcaptiveportalpeforelogon">MixedReality/AllowCaptivePortalBeforeLogon</a>
  </dd>
  <dd>
    <a href="#mixedreality-allowlaunchuriinsingleappkiosk">MixedReality/AllowLaunchUriInSingleAppKiosk</a>
  </dd>
  <dd>
    <a href="#mixedreality-autologonuser">MixedReality/AutoLogonUser</a>
  </dd>
  <dd>
    <a href="#mixedreality-brightnessbuttondisabled">MixedReality/BrightnessButtonDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-configuremovingplatform">MixedReality/ConfigureMovingPlatform</a>
  </dd>
    <dd>
    <a href="#mixedreality-configurentpclient">MixedReality/ConfigureNtpClient</a>
  </dd>
  <dd>
    <a href="#mixedreality-disablesisallownetworkconnectivitypassivepolling">MixedReality/DisallowNetworkConnectivityPassivePolling</a>
  </dd>
  <dd>
    <a href="#mixedreality-fallbackdiagnostics">MixedReality/FallbackDiagnostics</a>
  </dd>
  <dd>
    <a href="#mixedreality-headtrackingmode">MixedReality/HeadTrackingMode</a>
  </dd>
  <dd>
    <a href="#mixedreality-manualdowndirectiondisabled">MixedReality/ManualDownDirectionDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-microphonedisabled">MixedReality/MicrophoneDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-ntpclientenabled">MixedReality/NtpClientEnabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-skipcalibrationduringsetup">MixedReality/SkipCalibrationDuringSetup</a>
  </dd>
  <dd>
    <a href="#mixedreality-skiptrainingduringsetup">MixedReality/SkipTrainingDuringSetup</a>
  </dd>
  <dd>
    <a href="#mixedreality-visitorautologon">MixedReality/VisitorAutoLogon</a>
  </dd>
  <dd>
    <a href="#mixedreality-volumebuttondisabled">MixedReality/VolumeButtonDisabled</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="mixedreality-aadgroupmembershipcachevalidityindays"></a>**MixedReality/AADGroupMembershipCacheValidityInDays**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

Steps to use this policy correctly:

1. Create a device configuration profile for kiosk targeting Azure AD groups and assign it to HoloLens device(s).
1. Create a custom OMA URI-based device configuration that sets this policy value to chosen number of days (> 0) and assign it to HoloLens devices.
    1. The URI value should be entered in OMA-URI text box as ./Vendor/MSFT/Policy/Config/MixedReality/AADGroupMembershipCacheValidityInDays
    1. The value can be between min / max allowed.
1. Enroll HoloLens devices and verify both configurations get applied to the device.
1. Let Azure AD user 1 sign-in, when internet is available. Once the user signs-in and Azure AD group membership is confirmed successfully, cache will be created.
1. Now Azure AD user 1 can take HoloLens offline and use it for kiosk mode as long as policy value allows for X number of days.
1. Steps 4 and 5 can be repeated for any other Azure AD user N. The key point is that any Azure AD user must sign-in to device using Internet at least once. Then we can determine that they're a member of Azure AD group to which Kiosk configuration is targeted.

> [!NOTE]
> Until step 4 is performed for a Azure AD, user will experience failure behavior mentioned similar to “disconnected” environments.

<!--/SupportedSKUs-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-allowcaptiveportalpeforelogon"></a>**MixedReality/AllowCaptivePortalBeforeLogon**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|



<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--Description-->
This new feature is an opt-in policy that IT Admins can enable to help with the setup of new devices in new areas or new users. When this policy is turned on it allows a captive portal on the sign-in screen, which allows a user to enter credentials to connect to the Wi-Fi access point. If enabled, sign in will implement similar logic as OOBE to display captive portal if necessary.

MixedReality/AllowCaptivePortalBeforeLogon

The OMA-URI of new policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/AllowCaptivePortalBeforeLogon`

Int value

- 0: (Default) Off
- 1: On

<!--/Description-->

<!--/SupportedSKUs-->

<!--Policy-->
<a href="" id="mixedreality-allowlaunchuriinsingleappkiosk"></a>**MixedReality/AllowLaunchUriInSingleAppKiosk**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--Description-->
This can be enabled to allow for other apps to be launched with in a single app Kiosk, which may be useful, for example, if you want to launch the Settings app to calibrate your device or change your Wi-fi.

By default, launching applications via Launcher API (Launcher Class (Windows.System) - Windows UWP applications) is disabled in single app kiosk mode. To enable applications to launch in single app kiosk mode on HoloLens devices, set the policy value to true.

The OMA-URI of policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/AllowLaunchUriInSingleAppKiosk`

Bool value

<!--/Description-->

<!--/SupportedSKUs-->

<!--Policy-->
<a href="" id="mixedreality-autologonuser"></a>**MixedReality/AutoLogonUser**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/Description-->
This new AutoLogonUser policy controls whether a user will be automatically signed in. Some customers want to set up devices that are tied to an identity but don't want any sign-in experience. Imagine picking up a device and using remote assist immediately. Or have a benefit of being able to rapidly distribute HoloLens devices and enable their end users to speed up sign-in.

When the policy is set to a non-empty value, it specifies the email address of the auto log-on user. The specified user must sign in to the device at least once to enable autologon.

The OMA-URI of new policy `./Device/Vendor/MSFT/Policy/Config/MixedReality/AutoLogonUser`

<!--SupportedValues-->
Supported value is String.

- User with the same email address will have autologon enabled.

On a device where this policy is configured, the user specified in the policy will need to sign in at least once. Subsequent reboots of the device after the first sign-in will have the specified user automatically signed in. Only a single autologon user is supported. Once enabled, the automatically signed-in user won't be able to sign out manually. To sign in as a different user, the policy must first be disabled.

> [!NOTE]
>
> - Some events such as major OS updates may require the specified user to logon to the device again to resume auto-logon behavior.
> - Auto-logon is only supported for Microsoft account and Azure Active Directory users.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, for how many days Azure AD group membership cache is allowed to be used for the Assigned Access configurations, targeting Azure AD groups for signed in user. Once this policy setting is set, only then cache is used, otherwise not. In order for this policy setting to take effect, user must sign out and sign in with Internet available at least once before the cache can be used for subsequent "disconnected" sessions.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supported value is Integer.

Supported values are 0-60. The default value is 0 (day) and maximum value is 60 (days).

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-brightnessbuttondisabled"></a>**MixedReality/BrightnessButtonDisabled**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls if pressing the brightness button changes the brightness or not. It only impacts brightness on HoloLens and not the functionality of the button when it's used with other buttons as combination for other purposes.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supported values is Boolean.

The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-configuremovingplatform"></a>**MixedReality/ConfigureMovingPlatform**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the behavior of moving platform feature on HoloLens 2, that is, whether it's turned off / on, or it can be toggled by a user. It should only be used by customers who intend to use HoloLens 2 in moving environments with low dynamic motion. For background information, see [HoloLens 2 Moving Platform Mode | Microsoft Docs](/hololens/hololens2-moving-platform#:~:text=Why%20Moving%20Platform%20Mode%20is%20Necessary%20HoloLens%20needs%2csimilar%20pieces%20of%20information%20from%20two%20separate%20sources:).

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supported value is Integer.

- 0 (Default) - Last set user's preference. Initial state is OFF and after that user's preference is persisted across reboots and is used to initialize the system.
- 1 Force off - Moving platform is disabled and can't be changed by user.
- 2 Force on - Moving platform is enabled and can't be changed by user.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-configurentpclient"></a>**MixedReality/ConfigureNtpClient**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

You may want to configure a different time server for your device fleet. IT admins can use this policy to configure certain aspects of NTP client with following policies. In the Settings app, the Time/Language page will show the time server after a time sync has occurred. E.g. `time.windows.com` or another if another value is configured via MDM policy.

This policy setting specifies a set of parameters for controlling the Windows NTP Client. Refer to [Policy CSP - ADMX_W32Time - Windows Client Management](/windows/client-management/mdm/policy-csp-admx-w32time#admx-w32time-policy-configure-ntpclient) for supported configuration parameters.

> [!NOTE]
> This feature requires enabling[NtpClientEnabled](#mixedreality-ntpclientenabled) as well.

- OMA-URI: `./Device/Vendor/MSFT/Policy/Config/MixedReality/ConfigureNtpClient`

> [!NOTE]
> Reboot is required for these policies to take effect.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->

- Data Type: String
- Value:

```
<enabled/><data id="W32TIME_NtpServer"
value="time.windows.com,0x9"/><data id="W32TIME_Type"
value="NTP"/><data id="W32TIME_CrossSiteSyncFlags"
value="2"/><data id="W32TIME_ResolvePeerBackoffMinutes"
value="15"/><data id="W32TIME_ResolvePeerBackoffMaxTimes"
value="7"/><data id="W32TIME_SpecialPollInterval"
value="1024"/><data id="W32TIME_NtpClientEventLogFlags"
value="0"/>
```

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-disablesisallownetworkconnectivitypassivepolling"></a>**MixedReality/DisallowNetworkConnectivityPassivePolling**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--Description-->
Windows Network Connectivity Status Indicator may get false positive Internet capable signal from passive polling. That may result in unexpected Wi-Fi adapter reset when device connects to an intranet only access point. Enabling this policy would avoid unexpected network interruptions caused by false positive NCSI passive polling.

The OMA-URI of new policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/DisallowNetworkConnectivityPassivePolling`

- Bool value

<!--/Description-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-fallbackdiagnostics"></a>**MixedReality/FallbackDiagnostics**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls, when and if diagnostic logs can be collected using specific button combination on HoloLens.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supporting value is Integer.

The following list shows the supported values:

- 0 - Disabled.
- 1 - Enabled for device owners.
- 2 - Enabled for all (Default).

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-headtrackingmode"></a>**MixedReality/HeadTrackingMode**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy configures behavior of HUP to determine, which algorithm to use for head tracking. It requires a reboot for the policy to take effect.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supporting value is Boolean.

The following list shows the supported values:

- 0 - Feature – Default feature based / SLAM-based tracker (Default).
- 1 - Constellation – LR constellation based tracker.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-manualdowndirectiondisabled"></a>**MixedReality/ManualDownDirectionDisabled**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy controls whether the user can change down direction manually or not. If no down direction is set by the user, then an automatically calculated down direction is used by the system. This policy has no dependency on ConfigureMovingPlatform policy and they can be set independently.

The OMA-URI of new policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/ManualDownDirectionDisabled`

<!--/Description-->

<!--SupportedValues-->

Supported values:

- **False (Default)** - User can manually change down direction if they desire, otherwise down direction will be determined automatically based on the measured gravity vector.
- **True** - User can’t manually change down direction and down direction will be always determined automatically based on the measured gravity vector.

<!--/SupportedValues-->

<!--Policy-->
<a href="" id="mixedreality-microphonedisabled"></a>**MixedReality/MicrophoneDisabled**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls whether microphone on HoloLens 2 is disabled or not.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supporting value is Boolean.

The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->

<!--Policy-->
<a href="" id="mixedreality-ntpclientenabled"></a>**MixedReality/NtpClientEnabled**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting specifies whether the Windows NTP Client is enabled.

- OMA-URI: `./Device/Vendor/MSFT/Policy/Config/MixedReality/NtpClientEnabled`
<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Data Type: String
- Value `<enabled/>`

<!--/SupportedValues-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-skipcalibrationduringsetup"></a>**MixedReality/SkipCalibrationDuringSetup**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--Description-->
Skips the calibration experience on HoloLens 2 devices when setting up a new user in the Out of Box Experience (OOBE) or when adding a new user to the device. The user will still be able to calibrate their device from the Settings app.

The OMA-URI of new policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/SkipCalibrationDuringSetup`

- Bool value

<!--/Description-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-skiptrainingduringsetup"></a>**MixedReality/SkipTrainingDuringSetup**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->



<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--Description-->
On HoloLens 2 devices, skips the training experience of interactions with the humming bird and start menu training when setting up a new user in the Out of Box Experience (OOBE) or when adding a new user to the device. The user will still be able to learn these movement controls from the Tips app.

The OMA-URI of new policy: `./Device/Vendor/MSFT/Policy/Config/MixedReality/SkipTrainingDuringSetup`

- Bool value

<!--/Description-->

<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-volumebuttondisabled"></a>**MixedReality/VolumeButtonDisabled**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls if pressing the volume button changes the volume or not. It only impacts volume on HoloLens and not the functionality of the button when it's used with other buttons as combination for other purposes.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supporting value is Boolean.

The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-visitorautologon"></a>**MixedReality/VisitorAutoLogon**

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls whether a visitor user will be automatically logged in. Visitor users can only be created and logged in, if an Assigned Access profile has been created targeting visitor users. A visitor user will only be automatically logged in, if no other user has logged in on the device before.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
Supported value is Boolean.

The following list shows the supported values:

- 0 Disabled (Default)
- 1 Enabled

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
