---
title: Policy CSP - Browser
description: Learn how to use the Policy CSP - Browser settings so you can configure Microsoft Edge browser, version 45 and earlier.
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.author: vinpa
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
ms.localizationpriority: medium
---

# Policy CSP - Browser

> [!NOTE]
> These settings are for the previous version of Microsoft Edge (version 45 and earlier) and are deprecated. These settings will be removed in a future Windows release. Microsoft recommends updating your version of Microsoft Edge to version 77 or later and use the ADMX Ingestion function for management. Learn more about how to [Configure Microsoft Edge using Mobile Device Management](/deployedge/configure-edge-with-mdm).


<!--Policies-->
## Browser policies

<dl>
  <dd>
    <a href="#browser-allowaddressbardropdown">Browser/AllowAddressBarDropdown</a>
  </dd>
  <dd>
    <a href="#browser-allowautofill">Browser/AllowAutofill</a>
  </dd>
  <dd>
    <a href="#browser-allowconfigurationupdateforbookslibrary">Browser/AllowConfigurationUpdateForBooksLibrary</a>
  </dd>
  <dd>
    <a href="#browser-allowcookies">Browser/AllowCookies</a>
  </dd>
  <dd>
    <a href="#browser-allowdevelopertools">Browser/AllowDeveloperTools</a>
  </dd>
  <dd>
    <a href="#browser-allowdonottrack">Browser/AllowDoNotTrack</a>
  </dd>
  <dd>
    <a href="#browser-allowextensions">Browser/AllowExtensions</a>
  </dd>
  <dd>
    <a href="#browser-allowflash">Browser/AllowFlash</a>
  </dd>
  <dd>
    <a href="#browser-allowflashclicktorun">Browser/AllowFlashClickToRun</a>
  </dd>
  <dd>
    <a href="#browser-allowfullscreenmode">Browser/AllowFullScreenMode</a>
  </dd>
  <dd>
    <a href="#browser-allowinprivate">Browser/AllowInPrivate</a>
  </dd>
  <dd>
    <a href="#browser-allowmicrosoftcompatibilitylist">Browser/AllowMicrosoftCompatibilityList</a>
  </dd>
  <dd>
    <a href="#browser-allowpasswordmanager">Browser/AllowPasswordManager</a>
  </dd>
  <dd>
    <a href="#browser-allowpopups">Browser/AllowPopups</a>
  </dd>
  <dd>
    <a href="#browser-allowprelaunch">Browser/AllowPrelaunch</a>
  </dd>
  <dd>
    <a href="#browser-allowprinting">Browser/AllowPrinting</a>
  </dd>
  <dd>
    <a href="#browser-allowsavinghistory">Browser/AllowSavingHistory</a>
  </dd>
  <dd>
    <a href="#browser-allowsearchenginecustomization">Browser/AllowSearchEngineCustomization</a>
  </dd>
  <dd>
    <a href="#browser-allowsearchsuggestionsinaddressbar">Browser/AllowSearchSuggestionsinAddressBar</a>
  </dd>
  <dd>
    <a href="#browser-allowsideloadingofextensions">Browser/AllowSideloadingOfExtensions</a>
  </dd>
  <dd>
    <a href="#browser-allowsmartscreen">Browser/AllowSmartScreen</a>
  </dd>
  <dd>
    <a href="#browser-allowtabpreloading">Browser/AllowTabPreloading</a>
  </dd>
  <dd>
    <a href="#browser-allowwebcontentonnewtabpage">Browser/AllowWebContentOnNewTabPage</a>
  </dd>
  <dd>
    <a href="#browser-alwaysenablebookslibrary">Browser/AlwaysEnableBooksLibrary</a>
  </dd>
  <dd>
    <a href="#browser-clearbrowsingdataonexit">Browser/ClearBrowsingDataOnExit</a>
  </dd>
  <dd>
    <a href="#browser-configureadditionalsearchengines">Browser/ConfigureAdditionalSearchEngines</a>
  </dd>
  <dd>
    <a href="#browser-configurefavoritesbar">Browser/ConfigureFavoritesBar</a>
  </dd>
  <dd>
    <a href="#browser-configurehomebutton">Browser/ConfigureHomeButton</a>
  </dd>
  <dd>
    <a href="#browser-configurekioskmode">Browser/ConfigureKioskMode</a>
  </dd>
  <dd>
    <a href="#browser-configurekioskresetafteridletimeout">Browser/ConfigureKioskResetAfterIdleTimeout</a>
  </dd>
  <dd>
    <a href="#browser-configureopenmicrosoftedgewith">Browser/ConfigureOpenMicrosoftEdgeWith</a>
  </dd>
  <dd>
    <a href="#browser-configuretelemetryformicrosoft365analytics">Browser/ConfigureTelemetryForMicrosoft365Analytics</a>
  </dd>
  <dd>
    <a href="#browser-disablelockdownofstartpages">Browser/DisableLockdownOfStartPages</a>
  </dd>
  <dd>
    <a href="#browser-enableextendedbookstelemetry">Browser/EnableExtendedBooksTelemetry</a>
  </dd>
  <dd>
    <a href="#browser-enterprisemodesitelist">Browser/EnterpriseModeSiteList</a>
  </dd>
  <dd>
    <a href="#browser-enterprisesitelistserviceurl">Browser/EnterpriseSiteListServiceUrl</a>
  </dd>
  <dd>
    <a href="#browser-homepages">Browser/HomePages</a>
  </dd>
  <dd>
    <a href="#browser-lockdownfavorites">Browser/LockdownFavorites</a>
  </dd>
  <dd>
    <a href="#browser-preventaccesstoaboutflagsinmicrosoftedge">Browser/PreventAccessToAboutFlagsInMicrosoftEdge</a>
  </dd>
  <dd>
    <a href="#browser-preventcerterroroverrides">Browser/PreventCertErrorOverrides</a>
  </dd>
  <dd>
    <a href="#browser-preventfirstrunpage">Browser/PreventFirstRunPage</a>
  </dd>
  <dd>
    <a href="#browser-preventlivetiledatacollection">Browser/PreventLiveTileDataCollection</a>
  </dd>
  <dd>
    <a href="#browser-preventsmartscreenpromptoverride">Browser/PreventSmartScreenPromptOverride</a>
  </dd>
  <dd>
    <a href="#browser-preventsmartscreenpromptoverrideforfiles">Browser/PreventSmartScreenPromptOverrideForFiles</a>
  </dd>
  <dd>
    <a href="#browser-preventturningoffrequiredextensions">Browser/PreventTurningOffRequiredExtensions</a>
  </dd>
  <dd>
    <a href="#browser-preventusinglocalhostipaddressforwebrtc">Browser/PreventUsingLocalHostIPAddressForWebRTC</a>
  </dd>
  <dd>
    <a href="#browser-provisionfavorites">Browser/ProvisionFavorites</a>
  </dd>
  <dd>
    <a href="#browser-sendintranettraffictointernetexplorer">Browser/SendIntranetTraffictoInternetExplorer</a>
  </dd>
  <dd>
    <a href="#browser-setdefaultsearchengine">Browser/SetDefaultSearchEngine</a>
  </dd>
  <dd>
    <a href="#browser-sethomebuttonurl">Browser/SetHomeButtonURL</a>
  </dd>
  <dd>
    <a href="#browser-setnewtabpageurl">Browser/SetNewTabPageURL</a>
  </dd>
  <dd>
    <a href="#browser-showmessagewhenopeningsitesininternetexplorer">Browser/ShowMessageWhenOpeningSitesInInternetExplorer</a>
  </dd>

  <dd>
    <a href="#browser-suppressedgedeprecationnotification">Browser/SuppressEdgeDeprecationNotification</a>
  </dd>
  <dd>
    <a href="#browser-syncfavoritesbetweenieandmicrosoftedge">Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</a>
  </dd>
  <dd>
    <a href="#browser-unlockhomebutton">Browser/UnlockHomeButton</a>
  </dd>
  <dd>
    <a href="#browser-usesharedfolderforbooks">Browser/UseSharedFolderForBooks</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="browser-allowaddressbardropdown"></a>**Browser/AllowAddressBarDropdown**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703*

[!INCLUDE [allow-address-bar-drop-down-shortdesc](../includes/allow-address-bar-drop-down-shortdesc.md)]


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Address bar drop-down list suggestions*
-   GP name: *AllowAddressBarDropdown*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed. Hide the Address bar drop-down functionality and disable the _Show search and site suggestions as I type_ toggle in Settings. 
-   1 (default) – Allowed. Show the Address bar drop-down list and make it available.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-autofill-shortdesc](../includes/configure-autofill-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Autofill*
-   GP name: *AllowAutofill*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-  Blank - Users can choose to use AutoFill.
-   0 – Prevented/not allowed.
-   1 (default) – Allowed.

Most restricted value: 0
<!--/SupportedValues-->
<!--Validation-->
To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is grayed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowconfigurationupdateforbookslibrary"></a>**Browser/AllowConfigurationUpdateForBooksLibrary**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [allow-configuration-updates-for-books-library-shortdesc](../includes/allow-configuration-updates-for-books-library-shortdesc.md)]


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow configuration updates for the Books Library*
-   GP name: *AllowConfigurationUpdateForBooksLibrary*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 - Prevented/not allowed.
-   1 (default). Allowed. Microsoft Edge updates the configuration data for the Books Library automatically.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [configure-cookies-shortdesc](../includes/configure-cookies-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure cookies*
-   GP name: *Cookies*
-   GP element: *CookiesListBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Block all cookies from all sites
-   1 – Block only cookies from third party websites
-   2 - Allow all cookies from all sites

Most restricted value: 0
<!--/SupportedValues-->
<!--Validation-->
To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is disabled.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [allow-developer-tools-shortdesc](../includes/allow-developer-tools-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Developer Tools*
-   GP name: *AllowDeveloperTools*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed.
-   1 (default) – Allowed.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [configure-do-not-track-shortdesc](../includes/configure-do-not-track-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Do Not Track*
-   GP name: *AllowDoNotTrack*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Don't send tracking information but let users choose to send tracking information to sites they visit.
- 0 - Never send tracking information.
- 1 - Send tracking information.

Most restricted value: 1
<!--/SupportedValues-->
<!--Validation-->
To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the dropdown list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is grayed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1607*

[!INCLUDE [allow-extensions-shortdesc](../includes/allow-extensions-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Extensions*
-   GP name: *AllowExtensions*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed
-   1 (default) – Allowed

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowflash"></a>**Browser/AllowFlash**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-adobe-flash-shortdesc](../includes/allow-adobe-flash-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Adobe Flash*
-   GP name: *AllowFlash*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed
-   1 (default) – Allowed

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowflashclicktorun"></a>**Browser/AllowFlashClickToRun**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*


[!INCLUDE [configure-adobe-flash-click-to-run-setting-shortdesc](../includes/configure-adobe-flash-click-to-run-setting-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure the Adobe Flash Click-to-Run setting*
-   GP name: *AllowFlashClickToRun*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Load and run Adobe Flash content automatically.
-   1 (default) – Doesn't load or run Adobe Flash content automatically. Requires action from the user.

Most restricted value: 1

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowfullscreenmode"></a>**Browser/AllowFullScreenMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-fullscreen-mode-shortdesc](../includes/allow-fullscreen-mode-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow FullScreen Mode*
-   GP name: *AllowFullScreenMode*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed
- 1 (default) - Allowed

Most restricted value: 0

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowinprivate"></a>**Browser/AllowInPrivate**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [allow-inprivate-browsing-shortdesc](../includes/allow-inprivate-browsing-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow InPrivate browsing*
-   GP name: *AllowInPrivate*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed
-   1 (default) – Allowed

Most restricted value:  0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowmicrosoftcompatibilitylist"></a>**Browser/AllowMicrosoftCompatibilityList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*


[!INCLUDE [allow-microsoft-compatibility-list-shortdesc](../includes/allow-microsoft-compatibility-list-shortdesc.md)]


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Microsoft Compatibility List*
-   GP name: *AllowCVList*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed
-   1 (default) – Allowed

Most restricted value:  0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [configure-password-manager-shortdesc](../includes/configure-password-manager-shortdesc.md)]


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Password Manager*
-   GP name: *AllowPasswordManager*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank - Users can choose to save and manage passwords locally.
- 0 – Not allowed.
- 1 (default) – Allowed.

Most restricted value: 0

<!--/SupportedValues-->
<!--Validation-->
To verify AllowPasswordManager is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2. Verify the settings **Save Password** is disabled.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-pop-up-blocker-shortdesc](../includes/configure-pop-up-blocker-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Pop-up Blocker*
-   GP name: *AllowPopups*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank - Users can choose to use Pop-up Blocker.
- 0 (default) – Turn off Pop-up Blocker letting pop-up windows open.
- 1 – Turn on Pop-up Blocker stopping pop-up windows from opening.

Most restricted value: 1

<!--/SupportedValues-->
<!--Validation-->
To verify AllowPopups is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2.  Verify whether the setting **Block pop-ups** is disabled.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowprelaunch"></a>**Browser/AllowPrelaunch**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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



[!INCLUDE [allow-prelaunch-shortdesc](../includes/allow-prelaunch-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed*
-   GP name: *AllowPrelaunch*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed
- 1 (default) - Allowed

Most restricted value: 0

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowprinting"></a>**Browser/AllowPrinting**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-printing-shortdesc](../includes/allow-printing-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow printing*
-   GP name: *AllowPrinting*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed
- 1 (default) - Allowed

Most restricted value: 0

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsavinghistory"></a>**Browser/AllowSavingHistory**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-saving-history-shortdesc](../includes/allow-saving-history-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Saving History*
-   GP name: *AllowSavingHistory*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed
- 1 (default) - Allowed

Most restricted value: 0

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsearchenginecustomization"></a>**Browser/AllowSearchEngineCustomization**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*


[!INCLUDE [allow-search-engine-customization-shortdesc](../includes/allow-search-engine-customization-shortdesc.md)]



<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow search engine customization*
-   GP name: *AllowSearchEngineCustomization*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – Prevented/not allowed
-   1 (default) – Allowed

Most restricted value: 0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [configure-search-suggestions-in-address-bar-shortdesc](../includes/configure-search-suggestions-in-address-bar-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure search suggestions in Address bar*
-   GP name: *AllowSearchSuggestionsinAddressBar*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Users can choose to see search suggestions.
- 0 – Prevented/not allowed. Hide the search suggestions.
- 1 – Allowed. Show the search suggestions.

Most restricted value: 0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsideloadingofextensions"></a>**Browser/AllowSideloadingOfExtensions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-sideloading-of-extensions-shortdesc](../includes/allow-sideloading-of-extensions-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow sideloading of Extensions*
-   GP name: *AllowSideloadingOfExtensions*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed. Disabling doesn't prevent sideloading of extensions using Add-AppxPackage via PowerShell. To prevent this sideloading, set the **ApplicationManagement/AllowDeveloperUnlock** policy to 1 (enabled).
- 1 (default) - Allowed.

Most restricted value: 0

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsmartscreen"></a>**Browser/AllowSmartScreen**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [configure-windows-defender-smartscreen-shortdesc](../includes/configure-windows-defender-smartscreen-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Windows Defender SmartScreen*
-   GP name: *AllowSmartScreen*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank - Users can choose to use Windows Defender SmartScreen.
- 0 – Turned off. Don't protect users from potential threats and prevent users from turning it on.
- 1 (default) – Turned on. Protect users from potential threats and prevent users from turning it off.

Most restricted value: 1

<!--/SupportedValues-->
<!--Validation-->
To verify AllowSmartScreen is set to 0 (not allowed):

1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2.  Verify that the setting **Help protect me from malicious sites and download with Windows Defender SmartScreen** is disabled.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowtabpreloading"></a>**Browser/AllowTabPreloading**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-tab-preloading-shortdesc](../includes/allow-tab-preloading-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Microsoft Edge to start and load the Start and New Tab pages in the background at Windows startup and each time Microsoft Edge is closed*
-   GP name: *AllowTabPreloading*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 - Prevented/not allowed.
- 1 (default) - Allowed. Preload Start and New tab pages.

Most restricted value: 1
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowwebcontentonnewtabpage"></a>**Browser/AllowWebContentOnNewTabPage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [allow-web-content-on-new-tab-page-shortdesc](../includes/allow-web-content-on-new-tab-page-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow web content on New Tab page*
-   GP name: *AllowWebContentOnNewTabPage*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank - Users can choose what loads on the New tab page.
- 0 - Load a blank page instead of the default New tab page and prevent users from changing it.
- 1 (default) - Load the default New tab page.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-alwaysenablebookslibrary"></a>**Browser/AlwaysEnableBooksLibrary**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [always-show-books-library-shortdesc](../includes/always-show-books-library-shortdesc.md)]



<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Always show the Books Library in Microsoft Edge*
-   GP name: *AlwaysEnableBooksLibrary*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) - Show the Books Library only in countries or regions where supported.
-   1 - Show the Books Library, regardless of the device’s country or region.

Most restricted value: 0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-clearbrowsingdataonexit"></a>**Browser/ClearBrowsingDataOnExit**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*

[!INCLUDE [allow-clearing-browsing-data-on-exit-shortdesc](../includes/allow-clearing-browsing-data-on-exit-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow clearing browsing data on exit*
-   GP name: *AllowClearingBrowsingDataOnExit*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 – (default) Prevented/not allowed. Users can configure the _Clear browsing data_ option in Settings.
-   1 – Allowed. Clear the browsing data upon exit automatically.

Most restricted value: 1

<!--/SupportedValues-->
<!--Validation-->
To verify whether browsing data is cleared on exit (ClearBrowsingDataOnExit is set to 1):

1. Open Microsoft Edge and browse to websites.
2. Close the Microsoft Edge window.
3. Open Microsoft Edge and start typing the same URL in address bar.
4. Verify that it doesn't auto-complete from history.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configureadditionalsearchengines"></a>**Browser/ConfigureAdditionalSearchEngines**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*

[!INCLUDE [configure-additional-search-engines-shortdesc](../includes/configure-additional-search-engines-shortdesc.md)]

> [!IMPORTANT]
> Due to Protected Settings (aka.ms/browserpolicy), this setting applies only on domain-joined machines or when the device is MDM-enrolled. 


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure additional search engines*
-   GP name: *ConfigureAdditionalSearchEngines*
-   GP element: *ConfigureAdditionalSearchEngines_Prompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Prevented/not allowed. Microsoft Edge uses the search engine specified in App settings.<p><p>If you enabled this policy and now want to disable it, disabling removes all previously configured search engines.
-   1 – Allowed. Add up to five more search engines and set any one of them as the default.<p><p>For each search engine added, you must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](/microsoft-edge/dev-guide/browser/search-provider-discovery).

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configurefavoritesbar"></a>**Browser/ConfigureFavoritesBar**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [configure-favorites-bar-shortdesc](../includes/configure-favorites-bar-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Favorites Bar*
-   GP name: *ConfigureFavoritesBar*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Hide the favorites bar but show it on the Start and New tab pages. The favorites bar toggle, in Settings, is set to Off but enabled allowing users to make changes.
- 0 - Hide the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to Off and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu.
- 1 - Show the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to On and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu.


<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configurehomebutton"></a>**Browser/ConfigureHomeButton**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-home-button-shortdesc](../includes/configure-home-button-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Home Button*
-   GP name: *ConfigureHomeButton*
-   GP element: *ConfigureHomeButtonDropdown*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) - Show home button and load the Start page.
- 1 - Show home button and load the New tab page.
- 2 - Show home button and load the custom URL defined in the Set Home Button URL policy.
- 3 - Hide home button.

>[!TIP]
>If you want to make changes to this policy:<ol><li>Set **UnlockHomeButton** to 1 (enabled).</li><li>Make changes to **ConfigureHomeButton** or **SetHomeButtonURL** policy.</li><li>Set **UnlockHomeButton** 0 (disabled).</li></ol>


<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configurekioskmode"></a>**Browser/ConfigureKioskMode**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-kiosk-mode-shortdesc](../includes/configure-kiosk-mode-shortdesc.md)]

For this policy to work, you must configure Microsoft Edge in assigned access; otherwise, Microsoft Edge ignores the settings in this policy. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](/windows/configuration/kiosk-shared-pc).



<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure kiosk mode*
-   GP name: *ConfigureKioskMode*
-   GP element: *ConfigureKioskMode_TextBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

**0 (Default or not configured)**:
- If it’s a single app, it runs InPrivate full screen for digital signage or interactive displays.
- If it’s one of many apps, Microsoft Edge runs as normal.

**1**:
- If it’s a single app, it runs a limited multi-tab version of InPrivate and is the only app available for public browsing. Users can’t minimize, close, or open windows or customize Microsoft Edge, but can clear browsing data and downloads and restart by clicking “End session.” You can configure Microsoft Edge to restart after a period of inactivity by using the “Configure kiosk reset after idle timeout” policy. _**For single-app public browsing:**_ If you don't configure the Configure kiosk reset after idle timeout policy and you enable this policy, Microsoft Edge kiosk resets after 5 minutes of idle time.
- If it’s one of many apps, it runs in a limited multi-tab version of InPrivate for public browsing with other apps. Users can minimize, close, and open multiple InPrivate windows, but they can’t customize Microsoft Edge.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configurekioskresetafteridletimeout"></a>**Browser/ConfigureKioskResetAfterIdleTimeout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](../includes/configure-kiosk-reset-after-idle-timeout-shortdesc.md)]

You must set ConfigureKioskMode to enabled (1 - InPrivate public browsing) and configure Microsoft Edge as a single-app in assigned access for this policy to take effect; otherwise, Microsoft Edge ignores this setting. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](/windows/configuration/kiosk-shared-pc).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure kiosk reset after idle timeout*
-   GP name: *ConfigureKioskResetAfterIdleTimeout*
-   GP element: *ConfigureKioskResetAfterIdleTimeout_TextBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   **Any integer from 1-1440 (5 minutes is the default)** – The time in minutes from the last user activity before Microsoft Edge kiosk mode resets to the default kiosk configuration. A confirmation dialog displays for the user to cancel or continue and automatically continues after 30 seconds.

-   **0** – No idle timer.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configureopenmicrosoftedgewith"></a>**Browser/ConfigureOpenMicrosoftEdgeWith**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-open-microsoft-edge-with-shortdesc](../includes/configure-open-microsoft-edge-with-shortdesc.md)]

**Version 1703 or later**:<br>
If you don't want to send traffic to Microsoft, use the \<about:blank\> value, which honors both domain and non domain-joined devices when it's the only configured URL.


**version 1809**:<br>
When you enable this policy and select an option, and also enter the URLs of the pages you want in HomePages, Microsoft Edge ignores HomePages.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Open Microsoft Edge With*
-   GP name: *ConfigureOpenEdgeWith*
-   GP element: *ConfigureOpenEdgeWithListBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank - If you don't configure this policy and you set DisableLockdownOfStartPages to 1 (enabled), users can change or customize the Start page.
- 0 - Load the Start page.
- 1 - Load the New tab page.
- 2 - Load the previous pages.
- 3 (default) - Load a specific page or pages.

>[!TIP]
>If you want to make changes to this policy:<ol><li>Set DisableLockdownOfStartPages to 0 (not configured).</li><li>Make changes to ConfigureOpenEdgeWith.</li><li>Set DisableLockdownOfStartPages to 1 (enabled).</li></ol>


<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configuretelemetryformicrosoft365analytics"></a>**Browser/ConfigureTelemetryForMicrosoft365Analytics**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-browser-telemetry-for-m365-analytics-shortdesc](../includes/configure-browser-telemetry-for-m365-analytics-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure collection of browsing data for Microsoft 365 Analytics*
-   GP name: *ConfigureTelemetryForMicrosoft365Analytics*
-   GP element: *ZonesListBox*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) - No data collected or sent
- 1 - Send intranet history only
- 2 - Send Internet history only
- 3 - Send both intranet and Internet history

Most restricted value: 0
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-disablelockdownofstartpages"></a>**Browser/DisableLockdownOfStartPages**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10*

[!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../includes/disable-lockdown-of-start-pages-shortdesc.md)]
  
> [!NOTE]
> This policy has no effect when the Browser/HomePages policy isn't configured. 

> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the [Microsoft browser extension policy](/legal/microsoft-edge/microsoft-browser-extension-policy).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable lockdown of Start pages*
-   GP name: *DisableLockdownOfStartPages*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) – Lock down Start pages configured in either the ConfigureOpenEdgeWith policy and HomePages policy.
- 1 – Unlocked. Users can make changes to all configured start pages.<p><p>When you enable this policy and define a set of URLs in the HomePages policy, Microsoft Edge uses the URLs defined in the ConfigureOpenEdgeWith policy.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enableextendedbookstelemetry"></a>**Browser/EnableExtendedBooksTelemetry**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [allow-extended-telemetry-for-books-tab-shortdesc](../includes/allow-extended-telemetry-for-books-tab-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow extended telemetry for the Books tab*
-   GP name: *EnableExtendedBooksTelemetry*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) - Gather and send only basic diagnostic data, depending on the device configuration.
-   1 - Gather all diagnostic data.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-enterprise-mode-site-list-shortdesc](../includes/configure-enterprise-mode-site-list-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure the Enterprise Mode Site List*
-   GP name: *EnterpriseModeSiteList*
-   GP element: *EnterSiteListPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) - Turned off. Microsoft Edge doesn't check the Enterprise Mode Site List, and in this case, users might experience problems while using legacy apps.
-   1 - Turned on. Microsoft Edge checks the Enterprise Mode Site List if configured. If an XML file exists in the cache container, IE11 waits 65 seconds and then checks the local cache for a new version from the server. If the server has a different version, Microsoft Edge uses the server file and stores it in the cache container. If you already use a site list, Enterprise Mode continues to work during the 65 second, but uses the existing file. To add the location to your site list, enter it in the {URI} box.<p>For details on how to configure the Enterprise Mode Site List, see [Interoperability and enterprise guidance](/microsoft-edge/deploy/group-policies/interoperability-enterprise-guidance-gp).


<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enterprisesitelistserviceurl"></a>**Browser/EnterpriseSiteListServiceUrl**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
> [!IMPORTANT]
> Discontinued in Windows 10, version 1511. Use the [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist) policy instead.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-homepages"></a>**Browser/HomePages**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [configure-start-pages-shortdesc](../includes/configure-start-pages-shortdesc.md)]

**Version 1607**<br>
From this version, the HomePages policy enforces that users can't change the Start pages settings.

**Version 1703**<br>
If you don't want to send traffic to Microsoft, use the \<about:blank\> value, which honors both domain and non-domain-joined devices when it's the only configured URL.

**Version 1809**<br>
When you enable the Configure Open Microsoft Edge With policy and select an option, and you enter the URLs of the pages you want to load as the Start pages in this policy, the Configure Open Microsoft Edge With policy takes precedence, ignoring the HomePages policy.


> [!NOTE]
> Turning this setting off, or not configuring it, sets your default Start pages to the webpages specified in App settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Start pages*
-   GP name: *HomePages*
-   GP element: *HomePagesPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Load the pages specified in App settings as the default Start pages.
- String - Enter the URLs of the pages you want to load as the Start pages, separating each page using angle brackets and comma:<p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<support.contoso.com\>&comma;\<support.microsoft.com\>

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-lockdownfavorites"></a>**Browser/LockdownFavorites**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1709*

[!INCLUDE [prevent-changes-to-favorites-shortdesc](../includes/prevent-changes-to-favorites-shortdesc.md)]


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent changes to Favorites on Microsoft Edge*
-   GP name: *LockdownFavorites*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) - Allowed/not locked down. Users can add, import, and make changes to the favorites.
-   1 - Prevented/locked down.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [prevent-access-to-about-flags-page-shortdesc](../includes/prevent-access-to-about-flags-page-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent access to the about:flags page in Microsoft Edge*
-   GP name: *PreventAccessToAboutFlagsInMicrosoftEdge*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed.
-   1 – Prevents users from accessing the about:flags page.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventcerterroroverrides"></a>**Browser/PreventCertErrorOverrides**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [prevent-certificate-error-overrides-shortdesc](../includes/prevent-certificate-error-overrides-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent certificate error overrides*
-   GP name: *PreventCertErrorOverrides*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) - Allowed/turned on. Override the security warning to sites that have SSL errors.
- 1 - Prevented/turned on.

Most restricted value: 1
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventfirstrunpage"></a>**Browser/PreventFirstRunPage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703*

[!INCLUDE [prevent-first-run-webpage-from-opening-shortdesc](../includes/prevent-first-run-webpage-from-opening-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent the First Run webpage from opening on Microsoft Edge*
-   GP name: *PreventFirstRunPage*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed. Load the First Run webpage.
-   1 – Prevented/not allowed.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventlivetiledatacollection"></a>**Browser/PreventLiveTileDataCollection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*

[!INCLUDE [prevent-edge-from-gathering-live-tile-info-shortdesc](../includes/prevent-edge-from-gathering-live-tile-info-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start*
-   GP name: *PreventLiveTileDataCollection*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Collect and send Live Tile metadata.
-   1 – No data collected.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [prevent-bypassing-windows-defender-prompts-for-sites-shortdesc](../includes/prevent-bypassing-windows-defender-prompts-for-sites-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent bypassing Windows Defender SmartScreen prompts for sites*
-   GP name: *PreventSmartScreenPromptOverride*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed/turned off. Users can ignore the warning and continue to the site.
-   1 – Prevented/turned on.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [prevent-bypassing-windows-defender-prompts-for-files-shortdesc](../includes/prevent-bypassing-windows-defender-prompts-for-files-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent bypassing Windows Defender SmartScreen prompts for files*
-   GP name: *PreventSmartScreenPromptOverrideForFiles*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed/turned off. Users can ignore the warning and continue to download the unverified file(s).
-   1 – Prevented/turned on.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventturningoffrequiredextensions"></a>**Browser/PreventTurningOffRequiredExtensions**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [prevent-turning-off-required-extensions-shortdesc](../includes/prevent-turning-off-required-extensions-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent turning off required extensions*
-   GP name: *PreventTurningOffRequiredExtensions*
-   GP element: *PreventTurningOffRequiredExtensions_Prompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Allowed. Users can uninstall extensions. If you previously enabled this policy and you decide to disable it, the list of extension PFNs defined in this policy get ignored.

- String - Provide a semi-colon delimited list of extension PFNs. For example, adding the following OneNote Web Clipper extension prevents users from turning it off:<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_Microsoft.OneNoteWebClipper8wekyb3d8bbwe_<p>After defining the list of extensions, you deploy them through any available enterprise deployment channel, such as Microsoft Intune. <p>Removing extensions from the list doesn't uninstall the extension from the user’s computer automatically. To uninstall the extension, use any available enterprise deployment channel. If you enable the Allow Developer Tools policy, then this policy doesn't prevent users from debugging and altering the logic on an extension.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [prevent-using-localhost-ip-address-for-webrtc-shortdesc](../includes/prevent-using-localhost-ip-address-for-webrtc-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Prevent using Localhost IP address for WebRTC*
-   GP name: *HideLocalHostIPAddress*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed. Show localhost IP addresses.
-   1 – Prevented/not allowed.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-provisionfavorites"></a>**Browser/ProvisionFavorites**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1709 or later*

[!INCLUDE [provision-favorites-shortdesc](../includes/provision-favorites-shortdesc.md)]


Define a default list of favorites in Microsoft Edge. In this case, the Save a Favorite, Import settings, and context menu options (such as Create a new folder) are turned off.

To define a default list of favorites:
1. In the upper-right corner of Microsoft Edge, click the ellipses (**...**) and select **Settings**.
2. Click **Import from another browser**, click **Export to file** and save the file.
3. In the **Options** section of the Group Policy Editor, provide the location that points the file with the list of favorites to provision. <p><p>Specify the URL as:<ul><li>HTTP location: "SiteList"=`<http://localhost:8080/URLs.html>`</li><li>Local network: "SiteList"="\network\shares\URLs.html"</li><li>Local file: "SiteList"=file:///c:/Users/Documents/URLs.html</li></ul>


>[!IMPORTANT]
>Enable only this policy or the Keep favorites in sync between Internet Explorer and Microsoft Edge policy. If you enable both, Microsoft Edge prevents users from syncing their favorites between the two browsers.




<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Provision Favorites*
-   GP name: *ConfiguredFavorites*
-   GP element: *ConfiguredFavoritesPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-sendintranettraffictointernetexplorer"></a>**Browser/SendIntranetTraffictoInternetExplorer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [send-all-intranet-sites-to-ie-shortdesc](../includes/send-all-intranet-sites-to-ie-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Send all intranet sites to Internet Explorer 11*
-   GP name: *SendIntranetTraffictoInternetExplorer*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) - All sites, including intranet sites, open in Microsoft Edge automatically.
- 1 - Only intranet sites open in Internet Explorer 11 automatically.<p><p>Enabling this policy automatically opens all intranet sites in IE11, even if the users have Microsoft Edge as their default browser.<ol><li>In Group Policy Editor, navigate to:<br><br>**Computer Configuration\\Administrative Templates\\Windows Components\\File Explorer\\Set a default associations configuration file** and click **Enable**.<p></li><li>Refresh the policy and then view the affected sites in Microsoft Edge.<p><p>A message displays saying that the page needs to open in IE. At the same time, the page opens in IE11 automatically; in a new frame if it isn't yet running, or in a new tab.</li></ol>

Most restricted value: 0

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-setdefaultsearchengine"></a>**Browser/SetDefaultSearchEngine**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703*

[!INCLUDE [set-default-search-engine-shortdesc](../includes/set-default-search-engine-shortdesc.md)]

> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the [Microsoft browser extension policy](/legal/microsoft-edge/microsoft-browser-extension-policy).


Most restricted value:  0

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Set default search engine*
-   GP name: *SetDefaultSearchEngine*
-   GP element: *SetDefaultSearchEngine_Prompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Microsoft Edge uses the default search engine specified in App settings. If you don't configure this policy and disable the [AllowSearchEngineCustomization](#browser-allowsearchenginecustomization) policy, users can't make changes.
- 0 - Microsoft Edge removes the policy-set search engine and uses the Microsoft Edge specified engine for the market.
- 1 - Microsoft Edge uses the policy-set search engine specified in the OpenSearch XML file. Users can't change the default search engine.<p><p>Specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](/microsoft-edge/dev-guide/browser/search-provider-discovery). Use this format to specify the link you want to add.<p><p>If you want users to use the default Microsoft Edge settings for each market, set the string to **EDGEDEFAULT**.<p><p>If you want users to use Microsoft Bing as the default search engine, then set the string to **EDGEBING**.

Most restricted value: 1
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-sethomebuttonurl"></a>**Browser/SetHomeButtonURL**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [set-home-button-url-shortdesc](../includes/set-home-button-url-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Set Home Button URL*
-   GP name: *SetHomeButtonURL*
-   GP element: *SetHomeButtonURLPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Show the home button and loads the Start page and locks down the home button to prevent users from changing what page loads.
- String - Load a custom URL for the home button. You must also enable the Configure Home Button policy and select the _Show home button & set a specific page_ option.<p><p>Enter a URL in string format, for example, https://www.msn.com.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-setnewtabpageurl"></a>**Browser/SetNewTabPageURL**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [set-new-tab-url-shortdesc](../includes/set-new-tab-url-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Set New Tab page URL*
-   GP name: *SetNewTabPageURL*
-   GP element: *SetNewTabPageURLPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- Blank (default) - Load the default New tab page.
- String - Prevent users from changing the New tab page.<p><p>Enter a URL in string format, for example, https://www.msn.com.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-showmessagewhenopeningsitesininternetexplorer"></a>**Browser/ShowMessageWhenOpeningSitesInInternetExplorer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
[!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](../includes/show-message-when-opening-sites-in-ie-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Show message when opening sites in Internet Explorer*
-   GP name: *ShowMessageWhenOpeningSitesInInternetExplorer*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – No other message displays.
-   1 – Show another message stating that a site has opened in IE11.
-   2 - Show another message with a "Keep going in Microsoft Edge" link.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-suppressedgedeprecationnotification"></a>**Browser/SuppressEdgeDeprecationNotification**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
This policy allows Enterprise Admins to turn off the notification for company devices that the Edge Legacy browser is no longer supported after March 9, 2021, to avoid confusion for their enterprise users and reduce help desk calls.
By default, a notification will be presented to the user informing them of this update upon application startup.
With this policy, you can either allow (default) or suppress this notification.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Suppress Edge Deprecation Notification*
-   GP name: *SuppressEdgeDeprecationNotification*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Allowed. Notification will be shown at application startup.
-   1 – Prevented/not allowed.

<hr/>
<!--Policy-->
<a href="" id="browser-syncfavoritesbetweenieandmicrosoftedge"></a><b>Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</b>

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*


[!INCLUDE [keep-favorites-in-sync-between-ie-and-edge-shortdesc](../includes/keep-favorites-in-sync-between-ie-and-edge-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Keep favorites in sync between Internet Explorer and Microsoft Edge*
-   GP name: *SyncFavoritesBetweenIEAndMicrosoftEdge*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 (default) – Turned off/not syncing
-   1 – Turned on/syncing

<!--/SupportedValues-->
<!--Validation-->
To verify that favorites are in synchronized between Internet Explorer and Microsoft Edge:

<ol>
<li>Open Internet Explorer and add some favorites.
<li>Open Microsoft Edge, then select <strong>Hub &gt; Favorites</strong>.
<li>Verify that the favorites added to Internet Explorer show up in the favorites list in Microsoft Edge.
</ol>

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-unlockhomebutton"></a>**Browser/UnlockHomeButton**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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


[!INCLUDE [unlock-home-button-shortdesc](../includes/unlock-home-button-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Unlock Home Button*
-   GP name: *UnlockHomeButton*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

- 0 (default) - Lock down and prevent users from making changes to the settings.
- 1 - Let users make changes.

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-usesharedfolderforbooks"></a>**Browser/UseSharedFolderForBooks**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|


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

[!INCLUDE [allow-a-shared-books-folder-shortdesc](../includes/allow-a-shared-books-folder-shortdesc.md)]

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow a shared Books folder*
-   GP name: *UseSharedFolderForBooks*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values:

-   0 - Prevented/not allowed, but Microsoft Edge downloads book files to a per-user folder for each user.
-   1 - Allowed. Microsoft Edge downloads book files to a shared folder. For this policy to work correctly, you must also enable the Allow a Windows app to share application data between users group policy.  Also, the users must be signed in with a school or work account.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->
<hr/>



<!--/Policies-->
