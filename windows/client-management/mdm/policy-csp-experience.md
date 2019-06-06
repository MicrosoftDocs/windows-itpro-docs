---
title: Policy CSP - Experience
description: Policy CSP - Experience
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/21/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Experience

<hr/>

<!--Policies-->
## Experience policies

<dl>
  <dd>
    <a href="#experience-allowclipboardhistory">Experience/AllowClipboardHistory</a>
  </dd>
  <dd>
    <a href="#experience-allowcopypaste">Experience/AllowCopyPaste</a>
  </dd>
  <dd>
    <a href="#experience-allowcortana">Experience/AllowCortana</a>
  </dd>
  <dd>
    <a href="#experience-allowdevicediscovery">Experience/AllowDeviceDiscovery</a>
  </dd>
  <dd>
    <a href="#experience-allowfindmydevice">Experience/AllowFindMyDevice</a>
  </dd>
  <dd>
    <a href="#experience-allowmanualmdmunenrollment">Experience/AllowManualMDMUnenrollment</a>
  </dd>
  <dd>
    <a href="#experience-allowsimerrordialogpromptwhennosim">Experience/AllowSIMErrorDialogPromptWhenNoSIM</a>
  </dd>
  <dd>
    <a href="#experience-allowsaveasofofficefiles">Experience/AllowSaveAsOfOfficeFiles</a>
  </dd>
  <dd>
    <a href="#experience-allowscreencapture">Experience/AllowScreenCapture</a>
  </dd>
  <dd>
    <a href="#experience-allowsharingofofficefiles">Experience/AllowSharingOfOfficeFiles</a>
  </dd>
  <dd>
    <a href="#experience-allowsyncmysettings">Experience/AllowSyncMySettings</a>
  </dd>
  <dd>
    <a href="#experience-allowtailoredexperienceswithdiagnosticdata">Experience/AllowTailoredExperiencesWithDiagnosticData</a>
  </dd>
  <dd>
    <a href="#experience-allowtaskswitcher">Experience/AllowTaskSwitcher</a>
  </dd>
  <dd>
    <a href="#experience-allowthirdpartysuggestionsinwindowsspotlight">Experience/AllowThirdPartySuggestionsInWindowsSpotlight</a>
  </dd>
  <dd>
    <a href="#experience-allowvoicerecording">Experience/AllowVoiceRecording</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowsconsumerfeatures">Experience/AllowWindowsConsumerFeatures</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowsspotlight">Experience/AllowWindowsSpotlight</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowsspotlightonactioncenter">Experience/AllowWindowsSpotlightOnActionCenter</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowsspotlightonsettings">Experience/AllowWindowsSpotlightOnSettings</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowsspotlightwindowswelcomeexperience">Experience/AllowWindowsSpotlightWindowsWelcomeExperience</a>
  </dd>
  <dd>
    <a href="#experience-allowwindowstips">Experience/AllowWindowsTips</a>
  </dd>
  <dd>
    <a href="#experience-configurewindowsspotlightonlockscreen">Experience/ConfigureWindowsSpotlightOnLockScreen</a>
  </dd>
  <dd>
    <a href="#experience-donotshowfeedbacknotifications">Experience/DoNotShowFeedbackNotifications</a>
  </dd>
  <dd>
    <a href="#experience-donotsyncbrowsersetting">Experience/DoNotSyncBrowserSettings</a>
  </dd>
  <dd>
    <a href="#experience-preventusersfromturningonbrowsersyncing">Experience/PreventUsersFromTurningOnBrowserSyncing</a>
  </dd>
  <dd>
    <a href="#experience-showlockonusertile">Experience/ShowLockOnUserTile</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="experience-allowclipboardhistory"></a>**Experience/AllowClipboardHistory**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows history of clipboard items to be stored in memory.

Value type is integer. Supported values:
-  0 - Not allowed
-  1 - Allowed (default)

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Allow Clipboard History*
-   GP name: *AllowClipboardHistory*
-   GP path: *System/OS Policies*
-   GP ADMX file name: *OSPolicy.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->
**Validation procedure**

1. Configure Experiences/AllowClipboardHistory to 0.
1. Open Notepad (or any editor app), select a text, and copy it to the clipboard.
1. Press Win+V to open the clipboard history UI.
1. You should not see any clipboard item including current item you copied.
1. The setting under Settings App->System->Clipboard should be grayed out with policy warning.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowcopypaste"></a>**Experience/AllowCopyPaste**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

Specifies whether copy and paste is allowed.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowcortana"></a>**Experience/AllowCortana**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether Cortana is allowed on the device. If you enable or don’t configure this setting, Cortana is allowed on the device. If you disable this setting, Cortana is turned off. When Cortana is off, users will still be able to use search to find items on the device.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Allow Cortana*
-   GP name: *AllowCortana*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowdevicediscovery"></a>**Experience/AllowDeviceDiscovery**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows users to turn on/off device discovery UX.

When set to 0 , the projection pane is disabled. The Win+P and Win+K shortcut keys will not work on.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowfindmydevice"></a>**Experience/AllowFindMyDevice**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. This policy turns on Find My Device.

When Find My Device is on, the device and its location are registered in the cloud so that the device can be located when the user initiates a Find command from account.microsoft.com. In Windows 10, version 1709 devices that are compatible with active digitizers, enabling Find My Device will also allow the user to view the last location of use of their active digitizer on their device; this location is stored locally on the user's device after each use of their active digitizer.

When Find My Device is off, the device and its location are not registered and the Find My Device feature will not work. In Windows 10, version 1709 the user will not be able to view the location of the last use of their active digitizer on their device.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn On/Off Find My Device*
-   GP name: *FindMy_AllowFindMyDeviceConfig*
-   GP path: *Windows Components/Find My Device*
-   GP ADMX file name: *FindMy.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowmanualmdmunenrollment"></a>**Experience/AllowManualMDMUnenrollment**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow the user to delete the workplace account using the workplace control panel. If the device is Azure Active Directory joined and MDM enrolled (e.g. auto-enrolled), then disabling the MDM unenrollment has no effect.

> [!NOTE]
> The MDM server can always remotely delete the account.


Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowsimerrordialogpromptwhennosim"></a>**Experience/AllowSIMErrorDialogPromptWhenNoSIM**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Specifies whether to display dialog prompt when no SIM card is detected.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – SIM card dialog prompt is not displayed.
-   1 (default) – SIM card dialog prompt is displayed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowsaveasofofficefiles"></a>**Experience/AllowSaveAsOfOfficeFiles**

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy is deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowscreencapture"></a>**Experience/AllowScreenCapture**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Specifies whether screen capture is allowed.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowsharingofofficefiles"></a>**Experience/AllowSharingOfOfficeFiles**

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy is deprecated.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowsyncmysettings"></a>**Experience/AllowSyncMySettings**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows or disallows all Windows sync settings on the device. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](https://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Sync settings is not allowed.
-   1 (default) – Sync settings allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowtailoredexperienceswithdiagnosticdata"></a>**Experience/AllowTailoredExperiencesWithDiagnosticData**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

Added in Windows 10, version 1703. This policy allows you to prevent Windows from using diagnostic data to provide customized experiences to the user. If you enable this policy setting, Windows will not use diagnostic data from this device to customize content shown on the lock screen, Windows tips, Microsoft consumer features, or other related features. If these features are enabled, users will still see recommendations, tips and offers, but they may be less relevant. If you disable or do not configure this policy setting, Microsoft will use diagnostic data to provide personalized recommendations, tips, and offers to tailor Windows for the user's needs and make it work better for them.

Diagnostic data can include browser, app and feature usage, depending on the "Diagnostic and usage data" setting value.

> **Note** This setting does not control Cortana cutomized experiences because there are separate policies to configure it.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Do not use diagnostic data for tailored experiences*
-   GP name: *DisableTailoredExperiencesWithDiagnosticData*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowtaskswitcher"></a>**Experience/AllowTaskSwitcher**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Allows or disallows task switching on the device.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Task switching not allowed.
-   1 (default) – Task switching allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowthirdpartysuggestionsinwindowsspotlight"></a>**Experience/AllowThirdPartySuggestionsInWindowsSpotlight**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only available for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.


Specifies whether to allow app and content suggestions from third-party software publishers in Windows spotlight features like lock screen spotlight, suggested apps in the Start menu, and Windows tips. Users may still see suggestions for Microsoft features, apps, and services.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Do not suggest third-party content in Windows spotlight*
-   GP name: *DisableThirdPartySuggestions*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Third-party suggestions not allowed.
-   1 (default) – Third-party suggestions allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowvoicerecording"></a>**Experience/AllowVoiceRecording**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Specifies whether voice recording is allowed for apps.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowsconsumerfeatures"></a>**Experience/AllowWindowsConsumerFeatures**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


This policy allows IT admins to turn on experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn off Microsoft consumer experiences*
-   GP name: *DisableWindowsConsumerFeatures*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowsspotlight"></a>**Experience/AllowWindowsSpotlight**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


Specifies whether to turn off all Windows spotlight features at once. If you enable this policy setting, Windows spotlight on lock screen, Windows Tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices. If you disable or do not configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn off all Windows spotlight features*
-   GP name: *DisableWindowsSpotlightFeatures*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowsspotlightonactioncenter"></a>**Experience/AllowWindowsSpotlightOnActionCenter**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

Added in Windows 10, version 1703. This policy allows administrators to prevent Windows spotlight notifications from being displayed in the Action Center. If you enable this policy, Windows spotlight notifications will no longer be displayed in the Action Center. If you disable or do not configure this policy, Microsoft may display notifications in the Action Center that will suggest apps or features to help users be more productive on Windows.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn off Windows Spotlight on Action Center*
-   GP name: *DisableWindowsSpotlightOnActionCenter*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowsspotlightonsettings"></a>**Experience/AllowWindowsSpotlightOnSettings**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy allows IT admins to turn off Suggestions in Settings app. These suggestions from Microsoft may show after each OS clean install, upgrade or an on-going basis to help users discover apps/features on Windows or across devices, to make thier experience productive.

-  User setting is under Settings -> Privacy -> General -> Show me suggested content in Settings app.
-  User Setting is changeable on a per user basis.
-  If the Group policy is set to off, no suggestions will be shown to the user in Settings app.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn off Windows Spotlight on Settings*
-   GP name: *DisableWindowsSpotlightOnSettings*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowsspotlightwindowswelcomeexperience"></a>**Experience/AllowWindowsSpotlightWindowsWelcomeExperience**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

Added in Windows 10, version 1703. This policy setting lets you turn off the Windows spotlight Windows welcome experience feature.
The Windows welcome experience feature introduces onboard users to Windows; for example, launching Microsoft Edge with a webpage that highlights new features. If you enable this policy, the Windows welcome experience will no longer be displayed when there are updates and changes to Windows and its apps. If you disable or do not configure this policy, the Windows welcome experience will be launched to inform onboard users about what's new, changed, and suggested.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Turn off the Windows Welcome Experience*
-   GP name: *DisableWindowsSpotlightWindowsWelcomeExperience*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-allowwindowstips"></a>**Experience/AllowWindowsTips**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables or disables Windows Tips / soft landing.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Do not show Windows tips*
-   GP name: *DisableSoftLanding*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-configurewindowsspotlightonlockscreen"></a>**Experience/ConfigureWindowsSpotlightOnLockScreen**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


Allows IT admins to specify whether spotlight should be used on the user's lock screen. If your organization does not have an Enterprise spotlight content service, then this policy will behave the same as a setting of 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Configure Windows spotlight on lock screen*
-   GP name: *ConfigureWindowsSpotlight*
-   GP path: *Windows Components/Cloud Content*
-   GP ADMX file name: *CloudContent.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – None.
-   1 (default) – Windows spotlight enabled.
-   2 – placeholder only for future extension. Using this value has no effect.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-donotshowfeedbacknotifications"></a>**Experience/DoNotShowFeedbackNotifications**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Prevents devices from showing feedback questions from Microsoft.

If you enable this policy setting, users will no longer see feedback notifications through the Feedback hub app. If you disable or do not configure this policy setting, users may see notifications through the Feedback hub app asking users for feedback.

If you disable or do not configure this policy setting, users can control how often they receive feedback questions.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Do not show feedback notifications*
-   GP name: *DoNotShowFeedbackNotifications*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *FeedbackNotifications.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Feedback notifications are not disabled. The actual state of feedback notifications on the device will then depend on what GP has configured or what the user has configured locally.
-   1 – Feedback notifications are disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-donotsyncbrowsersetting"></a>**Experience/DoNotSyncBrowserSettings**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
[!INCLUDE [do-not-sync-browser-settings-shortdesc](../../../browsers/edge/shortdesc/do-not-sync-browser-settings-shortdesc.md)]

Related policy:
   [PreventUsersFromTurningOnBrowserSyncing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-preventusersfromturningonbrowsersyncing)

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Do not sync browser settings*
-   GP name: *DisableWebBrowserSettingSync*
-   GP path: *Windows Components/Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-  0 (default) - Allowed/turned on. The "browser" group syncs automatically between user’s devices and lets users to make changes.
-  2 - Prevented/turned off. The "browser" group does not use the _Sync your Settings_ option.


_**Sync the browser settings automatically**_

   Set both **DoNotSyncBrowserSettings** and **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Prevent syncing of browser settings and prevent users from turning it on**_

1.	Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2.	Set **PreventUsersFromTurningOnBrowserSyncing** to 1 (Prevented/turned off).

_**Prevent syncing of browser settings and let users turn on syncing**_

1.	Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2.	Set **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Turn syncing off by default but don’t disable**_

   Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off) and select the _Allow users to turn “browser” syncing_ option.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-preventusersfromturningonbrowsersyncing"></a>**Experience/PreventUsersFromTurningOnBrowserSyncing**

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
[!INCLUDE [prevent-users-to-turn-on-browser-syncing-shortdesc](../../../browsers/edge/shortdesc/prevent-users-to-turn-on-browser-syncing-shortdesc.md)]

Related policy:
   [DoNotSyncBrowserSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-donotsyncbrowsersetting)


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP English name: *Prevent users from turning on browser syncing*
-   GP name: *PreventUsersFromTurningOnBrowserSyncing*
-   GP path: *Windows Components/Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-  0 - Allowed/turned on. Users can sync the browser settings.
-  1 (default) - Prevented/turned off.


_**Sync the browser settings automatically**_

   Set both **DoNotSyncBrowserSettings** and **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Prevent syncing of browser settings and prevent users from turning it on**_

1.	Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2.	Set **PreventUsersFromTurningOnBrowserSyncing** to 1 (Prevented/turned off).

_**Prevent syncing of browser settings and let users turn on syncing**_

1.	Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2.	Set **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->
Validation procedure:

1. Select **More > Settings**.
1. See if the setting is enabled or disabled based on your selection.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="experience-showlockonusertile"></a>**Experience/ShowLockOnUserTile**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Shows or hides lock from the user tile menu.

If you enable this policy setting, the lock option is shown in the User Tile menu.

If you disable this policy setting, the lock option is never shown in the User Tile menu.

If you do not configure this policy setting, the lock option is shown in the User Tile menu. Users can choose if they want to show the lock in the user tile menu from the Power Options control panel.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Show lock in the user tile menu*
-   GP name: *ShowLockOption*
-   GP path: *File Explorer*
-   GP ADMX file name: *WindowsExplorer.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:  
- false - The lock option is not displayed in the User Tile menu.
- true (default) - The lock option is displayed in the User Tile menu.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Experience policies supported by Windows Holographic

- [Experience/AllowCortana](#experience-allowcortana)
<!--EndHoloLens-->

<!--StartHoloLensBusiness-->
## <a href="" id="hololenbusinessspolicies"></a>Experience policies supported by Windows Holographic for Business

- [Experience/AllowCortana](#experience-allowcortana)
<!--EndHoloLensBusiness-->

<hr/>

Footnotes:

- 1 - Added in Windows 10, version 1607.
- 2 - Added in Windows 10, version 1703.
- 3 - Added in Windows 10, version 1709.
- 4 - Added in Windows 10, version 1803.
- 5 - Added in Windows 10, version 1809.
- 6 - Added in Windows 10, version 1903.
