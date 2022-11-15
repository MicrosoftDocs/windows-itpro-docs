---
title: Policy CSP - Settings
description: Learn how to use the Policy CSP - Settings setting so that you can allow the user to change Auto Play settings.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Settings

<hr/>

<!--Policies-->
## Settings policies

<dl>
  <dd>
    <a href="#settings-allowautoplay">Settings/AllowAutoPlay</a>
  </dd>
  <dd>
    <a href="#settings-allowdatasense">Settings/AllowDataSense</a>
  </dd>
  <dd>
    <a href="#settings-allowdatetime">Settings/AllowDateTime</a>
  </dd>
  <dd>
    <a href="#settings-alloweditdevicename">Settings/AllowEditDeviceName</a>
  </dd>
  <dd>
    <a href="#settings-allowlanguage">Settings/AllowLanguage</a>
  </dd>
  <dd>
    <a href="#settings-allowonlinetips">Settings/AllowOnlineTips</a>
  </dd>
  <dd>
    <a href="#settings-allowpowersleep">Settings/AllowPowerSleep</a>
  </dd>
  <dd>
    <a href="#settings-allowregion">Settings/AllowRegion</a>
  </dd>
  <dd>
    <a href="#settings-allowsigninoptions">Settings/AllowSignInOptions</a>
  </dd>
  <dd>
    <a href="#settings-allowvpn">Settings/AllowVPN</a>
  </dd>
  <dd>
    <a href="#settings-allowworkplace">Settings/AllowWorkplace</a>
  </dd>
  <dd>
    <a href="#settings-allowyouraccount">Settings/AllowYourAccount</a>
  </dd>
  <dd>
    <a href="#settings-configuretaskbarcalendar">Settings/ConfigureTaskbarCalendar</a>
  </dd>
  <dd>
    <a href="#settings-pagevisibilitylist">Settings/PageVisibilityList</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="settings-allowautoplay"></a>**Settings/AllowAutoPlay**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows the user to change Auto Play settings.

> [!NOTE]
> Setting this policy to 0 (Not allowed) does not affect the autoplay dialog box that appears when a device is connected.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowdatasense"></a>**Settings/AllowDataSense**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the user to change Data Sense settings.

> [!NOTE]
> The **AllowDataSense** policy is not supported on Windows 10, version 2004 and later.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowdatetime"></a>**Settings/AllowDateTime**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the user to change date and time settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-alloweditdevicename"></a>**Settings/AllowEditDeviceName**

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
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
This policy disables edit device name option on Settings.

<!--/Description-->
<!--SupportedValues-->

Describes what values are supported in/by this policy and meaning of each value, and default value.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowlanguage"></a>**Settings/AllowLanguage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows the user to change the language settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowonlinetips"></a>**Settings/AllowOnlineTips**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enables or disables the retrieval of online tips and help for the Settings app.

If disabled, Settings won't contact Microsoft content services to retrieve tips and help content.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Online Tips*
-   GP name: *AllowOnlineTips*
-   GP element: *CheckBox_AllowOnlineTips*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowpowersleep"></a>**Settings/AllowPowerSleep**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows the user to change power and sleep settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowregion"></a>**Settings/AllowRegion**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows the user to change the region settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowsigninoptions"></a>**Settings/AllowSignInOptions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows the user to change sign in options.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowvpn"></a>**Settings/AllowVPN**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows the user to change VPN settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowworkplace"></a>**Settings/AllowWorkplace**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Allows user to change workplace settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-allowyouraccount"></a>**Settings/AllowYourAccount**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows user to change account settings.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-configuretaskbarcalendar"></a>**Settings/ConfigureTaskbarCalendar**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure the default setting for showing more calendars (besides the default calendar for the locale) in the taskbar clock and calendar flyout. Other supported calendars are: Simplified or Traditional Chinese lunar calendar. Turning on one of these calendars will display Chinese lunar dates below the default calendar for the locale. Select "Don't show additional calendars" to prevent showing other calendars besides the default calendar for the locale.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Show additional calendar*
-   GP name: *ConfigureTaskbarCalendar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – User will be allowed to configure the setting.
-   1  – Don't show more calendars.
-   2  - Simplified Chinese (Lunar).
-   3  - Traditional Chinese (Lunar).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="settings-pagevisibilitylist"></a>**Settings/PageVisibilityList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to either:

- Prevent specific pages in the System Settings app from being visible or accessible.

  OR

- To do so for all pages except the pages you enter.

The mode will be specified by the policy string beginning with either the string `showonly:` or `hide:`. Pages are identified by a shortened version of their already published URIs, which is the URI minus the "ms-settings:" prefix.

For example, if the URI for a settings page is "ms-settings:bluetooth", the page identifier used in the policy will be just "bluetooth". Multiple page identifiers are separated by semicolons. For more information on the URI reference scheme used for the various pages of the System Settings app, see [ms-settings: URI scheme reference](/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference).

The following example shows a policy that allows access only to the **about** and **bluetooth** pages, which have URI "ms-settings:about" and "ms-settings:bluetooth" respectively:

`showonly:about;bluetooth`

If the policy isn't specified, then the behavior is that no pages are affected. If the policy string is formatted incorrectly, then it's ignored (that is, treated as not set). It's ignored to prevent the machine from becoming unserviceable, if data corruption occurs. If a page is already hidden for another reason, then it stays hidden, even if the page is in a `showonly:` list.

The format of the PageVisibilityList value is as follows:

- The value is a unicode string up to 10,000 characters long, which will be used without case sensitivity.
- There are two variants: one that shows only the given pages and one that hides the given pages.
- The first variant starts with the string `showonly:` and the second with the string "hide:".
- Following the variant identifier is a semicolon-delimited list of page identifiers, which must not have any extra whitespace.
- Each page identifier is the `ms-settings:xyz` URI for the page, minus the `ms-settings:` prefix. So the identifier for the page with the `ms-settings:network-wifi` URI would be `network-wifi`.

The default value for this setting is an empty string, which is interpreted as show everything.

**Example 1**: Only the wifi and bluetooth pages should be shown. They have URIs `ms-settings:network-wifi` and `ms-settings:bluetooth`. All other pages (and the categories they're in) will be hidden:

`showonly:network-wifi;bluetooth`

**Example 2**: The wifi page shouldn't be shown:

`hide:network-wifi`

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Settings Page Visibility*
-   GP name: *SettingsPageVisibility*
-   GP element: *SettingsPageVisibilityBox*
-   GP path: *Control Panel*
-   GP ADMX file name: *ControlPanel.admx*

<!--/ADMXMapped-->
<!--Validation-->
To validate on Desktop, use the following steps:

1.   Open System Settings and verify that the About page is visible and accessible.
2.   Configure the policy with the following string: "hide:about".
3.   Open System Settings again and verify that the About page is no longer accessible.

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)