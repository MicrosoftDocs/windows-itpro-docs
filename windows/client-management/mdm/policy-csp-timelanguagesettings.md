---
title: Policy CSP - TimeLanguageSettings
description: Learn to use the Policy CSP - TimeLanguageSettings setting to specify the time zone to be applied to the device.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/28/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - TimeLanguageSettings

<hr/>

<!--Policies-->
## TimeLanguageSettings policies

<dl>
  <dd>
    <a href="#timelanguagesettings-blockcleanupofunusedpreinstalledlangpacks">TimeLanguageSettings/BlockCleanupOfUnusedPreinstalledLangPacks</a>
  </dd>
  <dd>
    <a href="#timelanguagesettings-configuretimezone">TimeLanguageSettings/ConfigureTimeZone</a>
  </dd>
  <dd>
    <a href="#timelanguagesettings-machineuilanguageoverwrite">TimeLanguageSettings/MachineUILanguageOverwrite</a>
  </dd>
  <dd>
    <a href="#timelanguagesettings-restrictlanguagepacksandfeaturesinstall">TimeLanguageSettings/RestrictLanguagePacksAndFeaturesInstall</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="timelanguagesettings-blockcleanupofunusedpreinstalledlangpacks"></a>**TimeLanguageSettings/BlockCleanupOfUnusedPreinstalledLangPacks**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting controls whether the maintenance task will run to clean up language packs installed on a machine but aren't used by any users on that machine.

If you enable this policy setting (value 1), language packs that are installed as part of the system image will remain installed even if they aren't used by any user on that system.

If you disable (value 0) or don't configure this policy setting, language packs that are installed as part of the system image but aren't used by any user on that system will be removed as part of a scheduled cleanup task.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Block cleanup of unused language packs*
-   GP name: *BlockCleanupOfUnusedPreinstalledLangPacks*
-   GP path: *Computer Configuration/Administrative Templates/Control Panel/Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXMapped-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="timelanguagesettings-configuretimezone"></a>**TimeLanguageSettings/ConfigureTimeZone**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
Specifies the time zone to be applied to the device. This policy name is the standard Windows name for the target time zone.

> [!TIP]
> To get the list of available time zones, run `Get-TimeZone -ListAvailable` in PowerShell.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="timelanguagesettings-machineuilanguageoverwrite"></a>**TimeLanguageSettings/MachineUILanguageOverwrite**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting controls which UI language is used for computers with more than one UI language installed.

If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language. If the specified language isn't installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the local administrator.

If you disable or don't configure this policy setting, there's no restriction of a specific language used for the Windows menus and dialogs.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Force selected system UI language to overwrite the user UI language*
-   GP name: *MachineUILanguageOverwrite*
-   GP path: *Computer Configuration/Administrative Templates/Control Panel/Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXMapped-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="timelanguagesettings-restrictlanguagepacksandfeaturesinstall"></a>**TimeLanguageSettings/RestrictLanguagePacksAndFeaturesInstall**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

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
This policy setting restricts standard users from installing language features on demand. This policy doesn't restrict the Windows language, if you want to restrict the Windows language use the following policy: “Restricts the UI languages Windows should use for the selected user.”

If you enable this policy setting, the installation of language features is prevented for standard users.

If you disable or don't configure this policy setting, there's no language feature installation restriction for the standard users.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)