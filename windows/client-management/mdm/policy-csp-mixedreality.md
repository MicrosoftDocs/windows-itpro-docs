---
title: Policy CSP - MixedReality
description: Policy CSP - MixedReality
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 1/31/2022
ms.reviewer: 
manager: dansimp
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
    <a href="#mixedreality-autologonuser">MixedReality/AutoLogonUser</a>
  </dd>
  <dd>
    <a href="#mixedreality-brightnessbuttondisabled">MixedReality/BrightnessButtonDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-configuremovingplatform">MixedReality/ConfigureMovingPlatform</a>
  </dd>
  <dd>
    <a href="#mixedreality-fallbackdiagnostics">MixedReality/FallbackDiagnostics</a>
  </dd>
  <dd>
    <a href="#mixedreality-headtrackingmode">MixedReality/HeadTrackingMode</a>
  </dd>
  <dd>
    <a href="#mixedreality-microphonedisabled">MixedReality/MicrophoneDisabled</a>
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
1. Let Azure AD user 1 sign-in when internet is available. Once the user signs-in and Azure AD group membership is confirmed successfully, cache will be created.
1. Now Azure AD user 1 can take HoloLens offline and use it for kiosk mode as long as policy value allows for X number of days.
1. Steps 4 and 5 can be repeated for any other Azure AD user N. The key point is that any Azure AD user must sign-in to device using Internet at least once. Then we can determine that they are member of Azure AD group to which Kiosk configuration is targeted.

> [!NOTE]
> Until step 4 is performed for a Azure AD user will experience failure behavior mentioned similar to “disconnected” environments.

<!--/SupportedSKUs-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-autologonuser"></a>**MixedReality/AutoLogonUser**  

<!--SupportedSKUs-->

|Windows Edition|Supported|
|--- |--- |
|HoloLens (first gen) Development Edition|No|
|HoloLens (first gen) Commercial Suite|No|
|HoloLens 2|Yes|

<!--/Description-->
This new AutoLogonUser policy controls whether a user will be automatically logged on. Some customers want to set up devices that are tied to an identity but don't want any sign in experience. Imagine picking up a device and using remote assist immediately. Or have a benefit of being able to rapidly  distribute HoloLens devices and enable their end users to speed up login.

When the policy is set to a non-empty value, it specifies the email address of the auto log-on user. The specified user must logon to the device at least once to enable autologon.

The OMA-URI of new policy `./Device/Vendor/MSFT/Policy/Config/MixedReality/AutoLogonUser`

<!--SupportedValues-->
String value

- User with the same email address will have autologon enabled.

On a device where this policy is configured, the user specified in the policy will need to log-on at least once. Subsequent reboots of the device after the first logon will have the specified user automatically logged on. Only a single autologon user is supported. Once enabled, the automatically logged on user will not be able to log out manually. To log-on as a different user, the policy must first be disabled.

> [!NOTE]
>
> - Some events such as major OS updates may require the specified user to logon to the device again to resume auto-logon behavior.
> - Auto-logon is only supported for MSA and AAD users.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting controls for how many days Azure AD group membership cache is allowed to be used for Assigned Access configurations targeting Azure AD groups for signed in user. Once this policy setting is set only then cache is used otherwise not. In order for this policy setting to take effect, user must sign out and sign in with Internet available at least once before the cache can be used for subsequent "disconnected" sessions.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Integer value

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
This policy setting controls if pressing the brightness button changes the brightness or not. It only impacts brightness on HoloLens and not the functionality of the button when it is used with other buttons as combination for other purposes.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Boolean value

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
This policy controls the behavior of moving platform feature on Hololens 2, that is, whether it is turned off / on or it can be toggled by a user. It should only be used by customers who intend to use Hololens 2 in moving environments with low dynamic motion. For background information, see [HoloLens 2 Moving Platform Mode | Microsoft Docs](/hololens/hololens2-moving-platform#:~:text=Why%20Moving%20Platform%20Mode%20is%20Necessary%20HoloLens%20needs%2csimilar%20pieces%20of%20information%20from%20two%20separate%20sources:).

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Integer value

- 0 (Default) - Last set user's preference. Initial state is OFF and after that user's preference is persisted across reboots and is used to initialize the system.
- 1 Force off - Moving platform is disabled and cannot be changed by user.
- 2 Force on - Moving platform is enabled and cannot be changed by user.

<!--/SupportedValues-->
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
This policy setting controls when and if diagnostic logs can be collected using specific button combination on HoloLens.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Integer value

The following list shows the supported values:

- 0 - Disabled
- 1 - Enabled for device owners
- 2 - Enabled for all (Default)

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
- Boolean value

The following list shows the supported values:

- 0 - Feature – Default feature based / SLAM-based tracker (Default)
- 1 - Constellation – LR constellation based tracker

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

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
- Boolean value

The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
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
This policy setting controls if pressing the volume button changes the volume or not. It only impacts volume on HoloLens and not the functionality of the button when it is used with other buttons as combination for other purposes.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Boolean value

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
This policy controls whether a visitor user will be automatically logged in. Visitor users can only be created and logged in if an Assigned Access profile has been created targeting visitor users. A visitor user will only be automatically logged in if no other user has logged in on the device before.

<!--/Description-->

<!--ADMXBacked-->
<!--/ADMXBacked-->

<!--SupportedValues-->
- Boolean value

The following list shows the supported values:

- 0 Disabled (Default)
- 1 Enabled

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--/Policies-->
