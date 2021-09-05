---
title: Policy CSP - MixedReality
description: Policy CSP - MixedReality
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/06/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - MixedReality
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.


<hr/>

<!--Policies-->
## MixedReality policies  

<dl>
  <dd>
    <a href="#mixedreality-aadgroupmembershipcachevalidityindays">MixedReality/AADGroupMembershipCacheValidityInDays</a>
  </dd>
  <dd>
    <a href="#mixedreality-brightnessbuttondisabled">MixedReality/BrightnessButtonDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-fallbackdiagnostics">MixedReality/FallbackDiagnostics</a>
  </dd>
  <dd>
    <a href="#mixedreality-microphonedisabled">MixedReality/MicrophoneDisabled</a>
  </dd>
  <dd>
    <a href="#mixedreality-volumebuttondisabled">MixedReality/VolumeButtonDisabled</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="mixedreality-aadgroupmembershipcachevalidityindays"></a>**MixedReality/AADGroupMembershipCacheValidityInDays**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>HoloLens (1st gen) Development Edition</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens (1st gen) Commercial Suite</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens 2</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

Steps to use this policy correctly:

1. Create a device configuration profile for kiosk targeting Azure AD groups and assign it to HoloLens device(s).
1. Create a custom OMA URI based device configuration that sets this policy value to desired number of days (> 0) and assign it to HoloLens device(s).
    1. The URI value should be entered in OMA-URI text box as ./Vendor/MSFT/Policy/Config/MixedReality/AADGroupMembershipCacheValidityInDays
    1. The value can be between min / max allowed.
1. Enroll HoloLens devices and verify both configurations get applied to the device.
1. Let Azure AD user 1 sign-in when internet is available. Once the user signs-in and Azure AD group membership is confirmed successfully, cache will be created.
1. Now Azure AD user 1 can take HoloLens offline and use it for kiosk mode as long as policy value allows for X number of days.
1. Steps 4 and 5 can be repeated for any other Azure AD user N. The key point here is that any Azure AD user must sign-in to device using Internet at least once. Then we can determine that they are member of Azure AD group to which Kiosk configuration is targeted.

> [!NOTE]
> Until step 4 is performed for a Azure AD user will experience failure behavior mentioned similar to “disconnected” environments.

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
Supported values are 0-60. The default value is 0 (day) and maximum value is 60 (days).

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-brightnessbuttondisabled"></a>**MixedReality/BrightnessButtonDisabled**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>HoloLens (1st gen) Development Edition</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens (1st gen) Commercial Suite</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens 2</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

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
The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-fallbackdiagnostics"></a>**MixedReality/FallbackDiagnostics**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>HoloLens (1st gen) Development Edition</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens (1st gen) Commercial Suite</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens 2</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

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
The following list shows the supported values:

- 0 - Disabled
- 1 - Enabled for device owners
- 2 - Enabled for all (Default)

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-microphonedisabled"></a>**MixedReality/MicrophoneDisabled**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>HoloLens (1st gen) Development Edition</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens (1st gen) Commercial Suite</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens 2</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

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
The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="mixedreality-volumebuttondisabled"></a>**MixedReality/VolumeButtonDisabled**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>HoloLens (1st gen) Development Edition</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens (1st gen) Commercial Suite</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>HoloLens 2</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

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
The following list shows the supported values:

- 0 - False (Default)
- 1 - True

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnotes:

- 9 - Available in Windows 10, version 20H2.

<!--/Policies-->

