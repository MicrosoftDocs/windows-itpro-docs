---
title: Policy CSP - WindowsDefenderSecurityCenter
description: Learn how to use the Policy CSP - WindowsDefenderSecurityCenter setting to display the Account protection area in Windows Defender Security Center.
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

# Policy CSP - WindowsDefenderSecurityCenter

<hr/>

<!--Policies-->

## WindowsDefenderSecurityCenter policies

<dl>
  <dd>
    <a href="#windowsdefendersecuritycenter-companyname">WindowsDefenderSecurityCenter/CompanyName</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disableaccountprotectionui">WindowsDefenderSecurityCenter/DisableAccountProtectionUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disableappbrowserui">WindowsDefenderSecurityCenter/DisableAppBrowserUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablecleartpmbutton">WindowsDefenderSecurityCenter/DisableClearTpmButton</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disabledevicesecurityui">WindowsDefenderSecurityCenter/DisableDeviceSecurityUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disableenhancednotifications">WindowsDefenderSecurityCenter/DisableEnhancedNotifications</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablefamilyui">WindowsDefenderSecurityCenter/DisableFamilyUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablehealthui">WindowsDefenderSecurityCenter/DisableHealthUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablenetworkui">WindowsDefenderSecurityCenter/DisableNetworkUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablenotifications">WindowsDefenderSecurityCenter/DisableNotifications</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disabletpmfirmwareupdatewarning">WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disablevirusui">WindowsDefenderSecurityCenter/DisableVirusUI</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-disallowexploitprotectionoverride">WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-email">WindowsDefenderSecurityCenter/Email</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-enablecustomizedtoasts">WindowsDefenderSecurityCenter/EnableCustomizedToasts</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-enableinappcustomization">WindowsDefenderSecurityCenter/EnableInAppCustomization</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-hideransomwaredatarecovery">WindowsDefenderSecurityCenter/HideRansomwareDataRecovery</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-hidesecureboot">WindowsDefenderSecurityCenter/HideSecureBoot</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-hidetpmtroubleshooting">WindowsDefenderSecurityCenter/HideTPMTroubleshooting</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-hidewindowssecuritynotificationareacontrol">WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-phone">WindowsDefenderSecurityCenter/Phone</a>
  </dd>
  <dd>
    <a href="#windowsdefendersecuritycenter-url">WindowsDefenderSecurityCenter/URL</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-companyname"></a>**WindowsDefenderSecurityCenter/CompanyName**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
The company name that is displayed to the users. CompanyName is required for both EnableCustomizedToasts and EnableInAppCustomization. If you disable or don't configure this setting, or don't have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices won't display the contact options.

- Supported value type is string.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->

ADMX Info:
-   GP Friendly name: *Specify contact company name*
-   GP name: *EnterpriseCustomization_CompanyName*
-   GP element: *Presentation_EnterpriseCustomization_CompanyName*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disableaccountprotectionui"></a>**WindowsDefenderSecurityCenter/DisableAccountProtectionUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting to specify if to display the Account protection area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Account protection area*
-   GP name: *AccountProtection_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Account protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values:

- 0 - (Disable) The users can see the display of the Account protection area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the Account protection area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disableappbrowserui"></a>**WindowsDefenderSecurityCenter/DisableAppBrowserUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the app and browser protection area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the App and browser protection area*
-   GP name: *AppBrowserProtection_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/App and browser protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of the app and browser protection area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the app and browser protection area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablecleartpmbutton"></a>**WindowsDefenderSecurityCenter/DisableClearTpmButton**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Disable the Clear TPM button in Windows Security.

- Enabled: The Clear TPM button will be unavailable for use.
- Disabled: The Clear TPM button will be available for use on supported systems.
- Not configured: Same as Disabled.

Supported values:

- 0 - Disabled (default)
- 1 - Enabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable the Clear TPM button*
-   GP name: *DeviceSecurity_DisableClearTpmButton*
-   GP path: *Windows Components/Windows Security/Device security*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disabledevicesecurityui"></a>**WindowsDefenderSecurityCenter/DisableDeviceSecurityUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the Device security area in the Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Device security area*
-   GP name: *DeviceSecurity_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Device security*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values:

- 0 - (Disable) The users can see the display of the Device security area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the Device security area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disableenhancednotifications"></a>**WindowsDefenderSecurityCenter/DisableEnhancedNotifications**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy if you want Windows Defender Security Center to only display notifications that are considered critical. If you disable or don't configure this setting, Windows Defender Security Center will display critical and non-critical notifications to users.

> [!NOTE]
> If Suppress notification is enabled then users won't see critical or non-critical messages.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide non-critical notifications*
-   GP name: *Notifications_DisableEnhancedNotifications*
-   GP path: *Windows Components/Windows Defender Security Center/Notifications*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) Windows Defender Security Center will display critical and non-critical notifications to users.
- 1 - (Enable) Windows Defender Security Center only display notifications that are considered critical on clients.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablefamilyui"></a>**WindowsDefenderSecurityCenter/DisableFamilyUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the family options area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Family options area*
-   GP name: *FamilyOptions_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Family options*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of the family options area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the family options area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablehealthui"></a>**WindowsDefenderSecurityCenter/DisableHealthUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the device performance and health area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Device performance and health area*
-   GP name: *DevicePerformanceHealth_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Device performance and health*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of the device performance and health area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the device performance and health area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablenetworkui"></a>**WindowsDefenderSecurityCenter/DisableNetworkUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the firewall and network protection area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Firewall and network protection area*
-   GP name: *FirewallNetworkProtection_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Firewall and network protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of the firewall and network protection area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the firewall and network protection area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablenotifications"></a>**WindowsDefenderSecurityCenter/DisableNotifications**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of Windows Defender Security Center notifications. If you disable or don't configure this setting, Windows Defender Security Center notifications will display on devices.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide all notifications*
-   GP name: *Notifications_DisableNotifications*
-   GP path: *Windows Components/Windows Defender Security Center/Notifications*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of Windows Defender Security Center notifications.
- 1 - (Enable) The users can't see the display of Windows Defender Security Center notifications.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disabletpmfirmwareupdatewarning"></a>**WindowsDefenderSecurityCenter/DisableTpmFirmwareUpdateWarning**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Hide the recommendation to update TPM Firmware when a vulnerable firmware is detected.

- Enabled: Users won't be shown a recommendation to update their TPM Firmware.
- Disabled: Users will see a recommendation to update their TPM Firmware if Windows Security detects the system contains a TPM with vulnerable firmware.
- Not configured: Same as Disabled.

Supported values:

- 0 - Disabled (default)
- 1 - Enabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the TPM Firmware Update recommendation.*
-   GP name: *DeviceSecurity_DisableTpmFirmwareUpdateWarning*
-   GP path: *Windows Components/Windows Security/Device security*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disablevirusui"></a>**WindowsDefenderSecurityCenter/DisableVirusUI**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting if you want to disable the display of the virus and threat protection area in Windows Defender Security Center. If you disable or don't configure this setting, Windows Defender Security Center will display this area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Virus and threat protection area*
-   GP name: *VirusThreatProtection_UILockdown*
-   GP path: *Windows Components/Windows Defender Security Center/Virus and threat protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) The users can see the display of the virus and threat protection area in Windows Defender Security Center.
- 1 - (Enable) The users can't see the display of the virus and threat protection area in Windows Defender Security Center.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-disallowexploitprotectionoverride"></a>**WindowsDefenderSecurityCenter/DisallowExploitProtectionOverride**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Prevent users from making changes to the exploit protection settings area in the Windows Defender Security Center. If you disable or don't configure this setting, local users can make changes in the exploit protection settings area.

- Supported value type is integer.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent users from modifying settings*
-   GP name: *AppBrowserProtection_DisallowExploitProtectionOverride*
-   GP path: *Windows Components/Windows Defender Security Center/App and browser protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) Local users are allowed to make changes in the exploit protection settings area.
- 1 - (Enable) Local users can't make changes in the exploit protection settings area.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-email"></a>**WindowsDefenderSecurityCenter/Email**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
The email address that is displayed to users. The default mail application is used to initiate email actions. If you disable or don't configure this setting, or don't have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices won't display contact options.

- Supported value type is string.
- Supported operations are Add, Get, Replace and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify contact email address or Email ID*
-   GP name: *EnterpriseCustomization_Email*
-   GP element: *Presentation_EnterpriseCustomization_Email*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-enablecustomizedtoasts"></a>**WindowsDefenderSecurityCenter/EnableCustomizedToasts**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Enable this policy to display your company name and contact options in the notifications. If you disable or don't configure this setting, or don't provide CompanyName and a minimum of one contact method (Phone using Skype, Email, Help portal URL) Windows Defender Security Center will display a default notification text.

- Supported value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure customized notifications*
-   GP name: *EnterpriseCustomization_EnableCustomizedToasts*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) Notifications contain a default notification text.
- 1 - (Enable) Notifications contain the company name and contact options.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-enableinappcustomization"></a>**WindowsDefenderSecurityCenter/EnableInAppCustomization**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Enable this policy to have your company name and contact options displayed in a contact card fly out in Windows Defender Security Center. If you disable or don't configure this setting, or don't provide CompanyName and a minimum of one contact method (Phone using Skype, Email, Help portal URL) Windows Defender Security Center won't display the contact card fly out notification.

- Support value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure customized contact information*
-   GP name: *EnterpriseCustomization_EnableInAppCustomization*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - (Disable) Don't display the company name and contact options in the card fly out notification.
- 1 - (Enable) Display the company name and contact options in the card fly out notification.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-hideransomwaredatarecovery"></a>**WindowsDefenderSecurityCenter/HideRansomwareDataRecovery**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy setting to hide the Ransomware data recovery area in Windows Defender Security Center.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Ransomware data recovery area*
-   GP name: *VirusThreatProtection_HideRansomwareRecovery*
-   GP path: *Windows Components/Windows Defender Security Center/Virus and threat protection*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values:

- 0 - (Disable or not configured) The Ransomware data recovery area will be visible.
- 1 - (Enable) The Ransomware data recovery area is hidden.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-hidesecureboot"></a>**WindowsDefenderSecurityCenter/HideSecureBoot**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy to hide the Secure boot area in the Windows Defender Security Center.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Secure boot area*
-   GP name: *DeviceSecurity_HideSecureBoot*
-   GP path: *Windows Components/Windows Defender Security Center/Device security*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values:

- 0 - (Disable or not configured) The Secure boot area is displayed.
- 1 - (Enable) The Secure boot area is hidden.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-hidetpmtroubleshooting"></a>**WindowsDefenderSecurityCenter/HideTPMTroubleshooting**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
Use this policy to hide the Security processor (TPM) troubleshooting area in the Windows Defender Security Center.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide the Security processor (TPM) troubleshooter page*
-   GP name: *DeviceSecurity_HideTPMTroubleshooting*
-   GP path: *Windows Components/Windows Defender Security Center/Device security*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Valid values:

- 0 - (Disable or not configured) The Security processor (TPM) troubleshooting area is displayed.
- 1 - (Enable) The Security processor (TPM) troubleshooting area is hidden.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-hidewindowssecuritynotificationareacontrol"></a>**WindowsDefenderSecurityCenter/HideWindowsSecurityNotificationAreaControl**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
This policy setting hides the Windows Security notification area control.

The user needs to either sign out and sign in or reboot the computer for this setting to take effect.

- Enabled: Windows Security notification area control will be hidden.
- Disabled: Windows Security notification area control will be shown.
- Not configured: Same as Disabled.

Supported values:

- 0 - Disabled (default)
- 1 - Enabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Hide Windows Security Systray*
-   GP name: *Systray_HideSystray*
-   GP path: *Windows Components/Windows Security/Systray*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-phone"></a>**WindowsDefenderSecurityCenter/Phone**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
The phone number or Skype ID that is displayed to users. Skype is used to initiate the call. If you disable or don't configure this setting, or don't have EnableCustomizedToasts or EnableInAppCustomization enabled, then devices won't display contact options.

- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify contact phone number or Skype ID*
-   GP name: *EnterpriseCustomization_Phone*
-   GP element: *Presentation_EnterpriseCustomization_Phone*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowsdefendersecuritycenter-url"></a>**WindowsDefenderSecurityCenter/URL**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
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
The help portal URL that is displayed to users. The default browser is used to initiate this action. If you disable or don't configure this setting, or don't have EnableCustomizedToasts or EnableInAppCustomization enabled, then the device won't display contact options.

- Supported value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Specify contact website*
-   GP name: *EnterpriseCustomization_URL*
-   GP element: *Presentation_EnterpriseCustomization_URL*
-   GP path: *Windows Components/Windows Defender Security Center/Enterprise Customization*
-   GP ADMX file name: *WindowsDefenderSecurityCenter.admx*

<!--/ADMXMapped-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)