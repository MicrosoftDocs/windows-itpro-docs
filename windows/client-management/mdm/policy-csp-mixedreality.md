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

