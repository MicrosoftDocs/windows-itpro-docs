---
title: Policy CSP - Browser
description: Policy CSP - Browser
ms.topic: article
ms.prod: w10
ms.technology: windows
author: shortpatti
ms.author: pashort
ms.date: 07/18/2018
---

# Policy CSP - Browser

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

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
    <a href="#browser-allowbrowser">Browser/AllowBrowser</a>
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
    <a href="#browser-firstrunurl">Browser/FirstRunURL</a>
  </dd>
  <dd>
    <a href="#browser-forceenabledextensions">Browser/ForceEnabledExtensions</a>
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
    <a href="#browser-preventtabpreloading">Browser/PreventTabPreloading</a>
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. 

By default, Microsoft Edge shows the Address bar drop-down list and makes it available.  When enabled (default setting), this policy takes precedence over the [Browser/AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchsuggestionsinaddressbar) policy. If you want to minimize network connections from Microsoft Edge to Microsoft service, we recommend disabling this policy, which hides the Address bar drop-down list functionality. When disabled, Microsoft Edge also disables the _Show search and site suggestions as I type_ toggle in Settings.  

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Address bar drop-down list suggestions*
-   GP name: *AllowAddressBarDropdown*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type." 
-   1 (default) – Allowed. Address bar drop-down is enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
By default, users can choose to use Autofill for filling in form fields automatically.  With this policy, you can configure Microsoft Edge, when enabled to use Autofill or, when disabled to prevent using Autofill. 

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Autofill*
-   GP name: *AllowAutofill*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowbrowser"></a>**Browser/AllowBrowser**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.

By default, the device allows Microsoft Edge on Windows 10 Mobile. Disabling this policy disables the Microsoft Edge tile, and when clicking the tile, a message opens indicating that the administrator disabled Internet browsing.

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
<a href="" id="browser-allowconfigurationupdateforbookslibrary"></a>**Browser/AllowConfigurationUpdateForBooksLibrary**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
By default, Microsoft Edge automatically updates the configuration data for the Books Library.  Enabling this policy prevents Microsoft Edge from updating the configuration data.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disable. Microsoft Edge cannot retrieve a configuration
-   1 - Enable (default). Microsoft Edge can retrieve a configuration for Books Library

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
By default, Microsoft Edge allows all cookies from all websites.  With this policy, however, you can configure Microsoft to block only 3rd-party cookies or block all cookies. 


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure cookies*
-   GP name: *Cookies*
-   GP element: *CookiesListBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Block all cookies from all sites.
-   1 – Block only cookies from third party websites.
-   2 - Allow all cookies from all sites.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

By default, Microsoft Edge allows users to use the F12 developer tools to build and debug web pages. Disabling this policy prevents users from using the F12 developer tools.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Developer Tools*
-   GP name: *AllowDeveloperTools*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
By default, Microsoft Edge does not send Do Not Track requests to websites asking for tracking information, but users can choose to send tracking information to sites they visit. With this policy, you can configure Microsoft Edge to send or never send tracking information.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Do Not Track*
-   GP name: *AllowDoNotTrack*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-	Blank/Null (default) Not configured - Does not send tracking information, but allow users to choose whether to send tracking information to sites they visit.
-	0 (Disabled) - Never sends tracking information.
-	1 (Enabled) - Sends tracking information, including to the third parties whose content may be hosted on the sites visited.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Specifies whether Microsoft Edge extensions are allowed.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Extensions*
-   GP name: *AllowExtensions*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowflash"></a>**Browser/AllowFlash**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10. Specifies whether Adobe Flash can run in Microsoft Edge.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Adobe Flash*
-   GP name: *AllowFlash*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowflashclicktorun"></a>**Browser/AllowFlashClickToRun**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure the Adobe Flash Click-to-Run setting*
-   GP name: *AllowFlashClickToRun*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Adobe Flash content is automatically loaded and run by Microsoft Edge.
-   1 (default) – Users must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowfullscreenmode"></a>**Browser/AllowFullScreenMode**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge allows full-screen mode by default, which shows only the web content and hides the Microsoft Edge UI. When allowing full-screen mode, users and extensions must have the proper permissions. Disabling this policy prevents full-screen mode in Microsoft Edge.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow FullScreen Mode*
-   GP name: *AllowFullScreenMode*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether InPrivate browsing is allowed on corporate networks.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow InPrivate browsing*
-   GP name: *AllowInPrivate*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowmicrosoftcompatibilitylist"></a>**Browser/AllowMicrosoftCompatibilityList**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether to use the Microsoft compatibility list in Microsoft Edge. The Microsoft compatibility list is a Microsoft-provided list that enables sites with known compatibility issues to display properly. 
By default, the Microsoft compatibility list is enabled and can be viewed by visiting "about:compat". 

If you enable or don’t configure this setting, Microsoft Edge periodically downloads the latest version of the compatibility list from Microsoft, applying the updates during browser navigation. Visiting any site on the compatibility list prompts the employee to use Internet Explorer 11 (or enables/disables certain browser features on mobile), where the site is automatically rendered as though it’s run in the version of Internet Explorer necessary for it to display properly. If you disable this setting, the compatibility list isn’t used during browser navigation.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Microsoft Compatibility List*
-   GP name: *AllowCVList*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not enabled.
-   1 (default) – Enabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether saving and managing passwords locally on the device is allowed.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Password Manager*
-   GP name: *AllowPasswordManager*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowPasswordManager is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the settings **Offer to save password** and **Manage my saved passwords** are greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether pop-up blocker is allowed or enabled.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Pop-up Blocker*
-   GP name: *AllowPopups*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

-   0 (default) – Pop-up blocker is not allowed. It means that pop-up browser windows are allowed.
-   1 – Pop-up blocker is allowed or enabled. It means that pop-up browser windows are blocked.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowPopups is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Block pop-ups** is greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowprelaunch"></a>**Browser/AllowPrelaunch**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge pre-launches during Windows startup when the system is idle, and each time Microsoft Edge closes by default. When Microsoft Edge pre-launches, it runs as a background process waiting to be launched by the user. Pre-launching helps the performance of Microsoft Edge and minimizes the amount of time required to start up Microsoft Edge. With this policy, you can configure Microsoft Edge to prevent Microsoft Edge from pre-launching.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed*
-   GP name: *AllowPrelaunch*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge allows users to print web content by default. With this policy though, you can configure Microsoft Edge to prevent users from printing web content. 

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow printing*
-   GP name: *AllowPrinting*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge saves the browsing history of visited websites and shows them in the History pane by default. Disabling this policy prevents Microsoft Edge from saving the browsing history. If browsing history existed before disabling this policy, the previous browsing history remains in the History pane. Disabling this policy does not stop roaming of existing browsing history or browsing history from other devices.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Saving History*
-   GP name: *AllowSavingHistory*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows search engine customization for MDM-enrolled devices. Users can change their default search engine. 
  
If this setting is turned on or not configured, users can add new search engines and change the default used in the address bar from within Microsoft Edge settings. If this setting is disabled, users will be unable to add search engines or change the default used in the address bar. This policy applies only on domain-joined machines or when the device is MDM-enrolled. For more information, see Microsoft browser extension policy (aka.ms/browserpolicy). 

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow search engine customization*
-   GP name: *AllowSearchEngineCustomization*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether search suggestions are allowed in the address bar.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure search suggestions in Address bar*
-   GP name: *AllowSearchSuggestionsinAddressBar*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowsideloadingofextensions"></a>**Browser/AllowSideloadingOfExtensions**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
By default, Microsoft Edge allows sideloading, which installs and runs unverified extensions. Disabling this policy prevents sideloading of extensions but does not prevent sideloading using Add-AppxPackage via PowerShell. You can only install extensions through Microsoft store (including a store for business), enterprise storefront (such as Company Portal) or PowerShell (using Add-AppxPackage).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Sideloading of extension*
-   GP name: *AllowSideloadingOfExtensions*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- 0 - Prevented, but does not prevent sideloading of extensions using Add-AppxPackage via PowerShell. To prevent this, enable ApplicationManagement/AllowDeveloperUnlock.
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether Windows Defender SmartScreen is allowed.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Windows Defender SmartScreen*
-   GP name: *AllowSmartScreen*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--Validation-->
To verify AllowSmartScreen is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Help protect me from malicious sites and download with SmartScreen Filter** is greyed out.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-allowtabpreloading"></a>**Browser/AllowTabPreloading**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge allows preloading of the Start and New tab pages during Windows sign in, and each time Microsoft Edge closes by default. Preloading minimizes the amount of time required to start Microsoft Edge and load a new tab. With this policy, you can configure Microsoft Edge to prevent preloading of tabs.



<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed*
-   GP name: *AllowTabPreloading*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- 0 (default) - Allowed. Preload Start and New tab pages.
- 1 - Prevented/not allowed.
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page.

If you enable this setting, Microsoft Edge opens a new tab with the New Tab page.

If you disable this setting, Microsoft Edge opens a new tab with a blank page. If you use this setting, employees can't change it.

If you don't configure this setting, employees can choose how new tabs appears.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow web content on New Tab page*
-   GP name: *AllowWebContentOnNewTabPage*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

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
<a href="" id="browser-alwaysenablebookslibrary"></a>**Browser/AlwaysEnableBooksLibrary**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, next majot update. Always show the Books Library in Microsoft Edge

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Always show the Books Library in Microsoft Edge*
-   GP name: *AlwaysEnableBooksLibrary*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disable. Use default visibility of the Books Library. The Library will be only visible in countries or regions where it’s available.
-   1 - Enable. Always show the Books Library, regardless of countries or region of activation.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-clearbrowsingdataonexit"></a>**Browser/ClearBrowsingDataOnExit**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether to clear browsing data on exiting Microsoft Edge.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow clearing browsing data on exit*
-   GP name: *AllowClearingBrowsingDataOnExit*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – (default) Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.
-   1 – Browsing data is cleared on exit.

<!--/SupportedValues-->
<!--Validation-->
To verify that browsing data is cleared on exit (ClearBrowsingDataOnExit is set to 1): 

1.  Open Microsoft Edge and browse to websites.
2.  Close the Microsoft Edge window.
3.  Open Microsoft Edge and start typing the same URL in address bar. Verify that it does not auto-complete from history.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configureadditionalsearchengines"></a>**Browser/ConfigureAdditionalSearchEngines**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows you to add up to 5 additional search engines for MDM-enrolled devices. 
 
If this policy is enabled, you can add up to 5 additional search engines for your employees. For each additional search engine you want to add, specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).
Employees cannot remove these search engines, but they can set any one as the default. This setting does not affect the default search engine. 

If this setting is not configured, the search engines used are the ones that are specified in the App settings. If this setting is disabled, the search engines you added will be deleted from your employee's machine.
 
> [!IMPORTANT]
> Due to Protected Settings (aka.ms/browserpolicy), this setting will apply only on domain-joined machines or when the device is MDM-enrolled. 


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure additional search engines*
-   GP name: *ConfigureAdditionalSearchEngines*
-   GP element: *ConfigureAdditionalSearchEngines_Prompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Additional search engines are not allowed.
-   1 – Additional search engines are allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-configurefavoritesbar"></a>**Browser/ConfigureFavoritesBar**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

Microsoft Edge hides the favorites bar by default but shows the favorites bar on the Start and New tab pages. Also, by default, the favorites bar toggle, in Settings, is set to Off but enabled allowing users to make changes. With this policy, you can configure Microsoft Edge to either show or hide the favorites bar on all pages.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Favorites Bar*
-   GP name: *ConfigureFavoritesBar*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

Microsoft Edge shows the home button and by clicking it the Start page loads by default. With this policy, you can configure the Home button to load the New tab page or a URL defined in the Set Home Button URL policy. You can also configure Microsoft Edge to hide the home button. 


<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Home Button*
-   GP name: *ConfigureHomeButton*
-   GP element: *ConfigureHomeButtonDropdown*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- 0 (default) - Show the home button and load the Start page.
- 1 - Show the home button and load the New tab page.
- 2 - Show the home button and load the custom URL defined in the Set Home Button URL policy.
- 3 - Hide the home button.

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Configure how Microsoft Edge behaves when it’s running in kiosk mode with assigned access, either as a single-app or as one of many apps running on the kiosk device. You can control whether Microsoft Edge runs InPrivate full screen, InPrivate multi-tab with limited functionality, or normal Microsoft Edge.

For this policy to work, you must configure Microsoft Edge in assigned access; otherwise, Microsoft Edge ignores the settings in this policy. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://aka.ms/E489vw).



<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure kiosk mode*
-   GP name: *ConfigureKioskMode*
-   GP element: *ConfigureKioskMode_TextBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

**0 (Default or not configured)**:
- If it’s a single app, it runs InPrivate full screen for digital signage or interactive displays.
- If it’s one of many apps, Microsoft Edge runs as normal.

**1**:
- If it’s a single app, it runs a limited multi-tab version of InPrivate and is the only app available for public browsing. Users can’t minimize, close, or open windows or customize Microsoft Edge, but can clear browsing data and downloads and restart by clicking “End session.” You can configure Microsoft Edge to restart after a period of inactivity by using the “Configure kiosk reset after idle timeout” policy.
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
You can configure Microsoft Edge kiosk mode to reset to the configured start experience after a specified amount of idle time in minutes (0-1440). The reset timer begins after the last user interaction. Once the idle time meets the time specified, a confirmation message prompts the user to continue, and if no user action, Microsoft Edge kiosk mode resets after 30 seconds. Resetting to the configured start experience deletes the current user’s browsing data.

You must set the Configure kiosk mode policy to enabled (1 - InPrivate public browsing) and configure Microsoft Edge as a single-app in assigned access for this policy to take effect; otherwise, Microsoft Edge ignores this setting. To learn more about assigned access and kiosk configuration, see [Configure kiosk and shared devices running Windows desktop editions](https://docs.microsoft.com/en-us/windows/configuration/kiosk-shared-pc).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure kiosk reset after idle timeout*
-   GP name: *ConfigureKioskResetAfterIdleTimeout*
-   GP element: *ConfigureKioskResetAfterIdleTimeout_TextBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

By default, Microsoft Edge loads a specific page or pages defined in the Configure Start Pages policy and allow users to make changes. With this policy, you can configure Microsoft Edge to load either the Start page, New tab page, previously opened pages. You can also configure Microsoft Edge to prevent users from changing or customizing the Start page. For this policy to work correctly, you must also configure the Configure Start Pages. If you want to prevent users from making changes, don’t configure the Disable Lockdown of Start Pages policy.

**Version 1703 or later**:<br>
If you don't want to send traffic to Microsoft, use the <about:blank> value, which honors both domain and non domain-joined devices when it's the only configured URL.


**Version 1810**:<br>
When you enable this policy and select an option, and also enable the Configure Start Pages policy, Microsoft Edge ignores the Configure Start Page policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Open Microsoft Edge With*
-   GP name: *ConfigureOpenEdgeWith*
-   GP element: *ConfigureOpenEdgeWithListBox*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- Blank - If you don't configure this policy and you enable the Disable Lockdown of Start Pages policy, users can change or customize the Start page.
- 0 - Loads the Start page.
- 1 - Load the New tab page.
- 2 - Load the previous pages.
- 3 (default) - Load a specific page or pages.
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Microsoft Edge does not send browsing history data to Microsoft 365 Analytics by default. With this policy though, you can configure Microsoft Edge to send intranet history only, internet history only, or both to Microsoft 365 Analytics for enterprise devices with a configured Commercial ID.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure collection of browsing data for Microsoft 365 Analytics*
-   GP name: *ConfigureTelemetryForMicrosoft365Analytics*
-   GP element: *ZonesListBox*
-   GP path: *Data Collection and Preview Builds*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- 0 (default) - Microsoft Edge does not collect or send browsing history data.
- 1 - Send intranet history only.
- 2 - Send Internet history only.
- 3 - Send both intranet and Internet history.

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Boolean value that specifies whether the lockdown on the Start pages is disabled. This policy works with the Browser/HomePages policy, which locks down the Start pages that the users cannot modify. You can use the DisableLockdownOfStartPages policy to allow users to modify the Start pages when the Browser/HomePages policy is in effect. 
  
> [!NOTE]
> This policy has no effect when the Browser/HomePages policy is not configured. 
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Disable lockdown of Start pages*
-   GP name: *DisableLockdownOfStartPages*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages. 
-   1  – Disable lockdown of the Start pages and allow users to modify them.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enableextendedbookstelemetry"></a>**Browser/EnableExtendedBooksTelemetry**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you decide how much data to send to Microsoft about the book you're reading from the Books tab in Microsoft Edge.

If you enable this setting, Microsoft Edge sends additional diagnostic data, on top of the basic diagnostic data, from the Books tab. If you disable or don't configure this setting, Microsoft Edge only sends basic diagnostic data, depending on your device configuration.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow extended telemetry for the Books tab*
-   GP name: *EnableExtendedBooksTelemetry*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - Disable. No additional diagnostic data.
-   1 - Enable. Additional diagnostic data for schools.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 
Allows the user to specify an URL of an enterprise site list.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure the Enterprise Mode Site List*
-   GP name: *EnterpriseModeSiteList*
-   GP element: *EnterSiteListPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL location of the enterprise site list.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-enterprisesitelistserviceurl"></a>**Browser/EnterpriseSiteListServiceUrl**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!IMPORTANT]
> This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist).

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-firstrunurl"></a>**Browser/FirstRunURL**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


Specifies the URL that Microsoft Edge for Windows 10 Mobile. will use when it is opened the first time.

The data type is a string.

The default value is an empty string. Otherwise, the string should contain the URL of the webpage users will see the first time Microsoft Edge is run. For example, “contoso.com”.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-forceenabledextensions"></a>**Browser/ForceEnabledExtensions**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting lets you decide which extensions should be always enabled.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP name: *ForceEnabledExtensions*
-   GP element: *ForceEnabledExtensions_List*
-   GP ADMX file name: *MicrosoftEdge.admx*

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
<a href="" id="browser-homepages"></a>**Browser/HomePages**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only available for Windows 10 for desktop and not supported in Windows 10 Mobile.

Specifies your Start pages for MDM-enrolled devices. Turning this setting on lets you configure one or more corporate Start pages. If this setting is turned on, you must also include URLs to the pages, separating multiple pages by using the XML-escaped characters **&lt;** and **&gt;**. For example, "&lt;support.contoso.com&gt;&lt;support.microsoft.com&gt;"

Starting in Windows 10, version 1607, this policy will be enforced so that the Start pages specified by this policy cannot be changed by the users.

Starting in Windows 10, version 1703, if you don’t want to send traffic to Microsoft, you can use the "&lt;about:blank&gt;" value, which is honored for both domain- and non-domain-joined machines, when it’s the only configured URL. 

> [!NOTE]
> Turning this setting off, or not configuring it, sets your default Start pages to the webpages specified in App settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Start pages*
-   GP name: *HomePages*
-   GP element: *HomePagesPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-lockdownfavorites"></a>**Browser/LockdownFavorites**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. This policy setting lets you decide whether employees can add, import, sort, or edit the Favorites list on Microsoft Edge.

If you enable this setting, employees won't be able to add, import, or change anything in the Favorites list. Also as part of this, Save a Favorite, Import settings, and the context menu items (such as, Create a new folder) are all turned off.

> [!Important]  
> Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

If you disable or don't configure this setting (default), employees can add, import and make changes to the Favorites list.

Data type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent changes to Favorites on Microsoft Edge*
-   GP name: *LockdownFavorites*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disabled. Do not lockdown Favorites.
-   1 - Enabled. Lockdown Favorites.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether users can access the about:flags page, which is used to change developer settings and to enable experimental features.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent access to the about:flags page in Microsoft Edge*
-   GP name: *PreventAccessToAboutFlagsInMicrosoftEdge*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Users can access the about:flags page in Microsoft Edge.
-   1 – Users can't access the about:flags page in Microsoft Edge.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventcerterroroverrides"></a>**Browser/PreventCertErrorOverrides**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>
Web security certificates are used to ensure a site that users go to is legitimate, and in some circumstances, encrypts the data. By default, Microsoft Edge allows overriding of the security warnings to sites that have SSL errors, bypassing or ignoring certificate errors. Enabling this policy prevents overriding of the security warnings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent certificate error overrides*
-   GP name: *PreventCertErrorOverrides*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether to enable or disable the First Run webpage. On the first explicit user-launch of Microsoft Edge, a First Run webpage hosted on Microsoft.com opens automatically via a FWLINK. This policy allows enterprises (such as those enrolled in a zero-emissions configuration) to prevent this page from opening.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent the First Run webpage from opening on Microsoft Edge*
-   GP name: *PreventFirstRunPage*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Employees see the First Run webpage. 
-   1 – Employees don't see the First Run webpage.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventlivetiledatacollection"></a>**Browser/PreventLiveTileDataCollection**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge.

Most restricted value is 1.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start*
-   GP name: *PreventLiveTileDataCollection*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.
-   1 – Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether users can override the Windows Defender SmartScreen Filter warnings about potentially malicious websites.

Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from going to the site. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about potentially malicious websites and to continue to the site.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent bypassing Windows Defender SmartScreen prompts for sites*
-   GP name: *PreventSmartScreenPromptOverride*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether users can override the Windows Defender SmartScreen Filter warnings about downloading unverified files. Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from downloading unverified files. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about unverified files and lets them continue the download process.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent bypassing Windows Defender SmartScreen prompts for files*
-   GP name: *PreventSmartScreenPromptOverrideForFiles*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventtabpreloading"></a>**Browser/PreventTabPreloading**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. <p>




<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent Microsoft Edge from starting and loading the Start and New Tab page at Windows startup and each time Microsoft Edge is closed*
-   GP name: *PreventTabPreloading*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Allow pre-launch and preload.
-   1 – Prevent pre-launch and preload.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


Specifies whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. Turning this setting on hides an user’s localhost IP address while making phone calls using WebRTC. Turning this setting off, or not configuring it, shows an user’s localhost IP address while making phone calls using WebRTC.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Prevent using Localhost IP address for WebRTC*
-   GP name: *HideLocalHostIPAddress*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – The localhost IP address is shown.
-   1 – The localhost IP address is hidden.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-provisionfavorites"></a>**Browser/ProvisionFavorites**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. This policy setting allows you to configure a default set of favorites, which will appear for employees. Employees cannot modify, sort, move, export or delete these provisioned favorites. Specify the URL which points to the file that has all the data for provisioning favorites (in html format). You can export a set of favorites from Edge and use that html file for provisioning user machines. 
 
URL can be specified as:

- HTTP location: "SiteList"="http://localhost:8080/URLs.html"
- Local network: "SiteList"="\\network\shares\URLs.html"
- Local file: "SiteList"="file:///c:\\Users\\<user>\\Documents\\URLs.html"

> [!Important]  
> Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

If you disable or don't configure this setting, employees will see the favorites they set in the Hub and Favorites Bar.

Data type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Provision Favorites*
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


By default, all websites, including intranet sites, open in Microsoft Edge automatically.  Only enable this policy if there are known compatibility problems with Microsoft Edge.  Enabling this policy loads only intranet sites in Internet Explorer 11 automatically.

Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Send all intranet sites to Internet Explorer 11*
-   GP name: *SendIntranetTraffictoInternetExplorer*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 (default) - All websites, including intranet sites, open in Microsoft Edge automatically.
- 1 - Only intranet sites open in Internet Explorer 11 automatically.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-setdefaultsearchengine"></a>**Browser/SetDefaultSearchEngine**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Allows you configure the default search engine for your employees. By default, your employees can change the default search engine at any time. If you want to prevent your employees from changing the default search engine that you set, you can do so by configuring the AllowSearchEngineCustomization policy.

You must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/). If you want your employees to use the Microsoft Edge factory settings for the default search engine for their market, set the string EDGEDEFAULT; otherwise, if you want your employees to use Bing as the default search engine, set the string EDGEBING. 
 
If this setting is not configured, the default search engine is set to the one specified in App settings and can be changed by your employees. If this setting is disabled, the policy-set search engine will be removed, and, if it is the current default, the default will be set back to the factory Microsoft Edge search engine for the market.   
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).


Most restricted value is 0.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Set default search engine*
-   GP name: *SetDefaultSearchEngine*
-   GP element: *SetDefaultSearchEngine_Prompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) - The default search engine is set to the one specified in App settings.
-   1 - Allows you to configure the default search engine for your employees.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-sethomebuttonurl"></a>**Browser/SetHomeButtonURL**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

By default, Microsoft Edge shows the home button and loads the Start page, and locks down the home button to prevent users from changing what page loads. Enabling this policy loads a custom URL for the home button. When you enable this policy, and enable the Configure Home Button policy with the _Show home button & set a specific page_ option selected, a custom URL loads when the user clicks the home button.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Set Home Button URL*
-   GP name: *SetHomeButtonURL*
-   GP element: *SetHomeButtonURLPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- Blank (default) - Show the home button and loads the Start page and locks down the home button to prevent users from changing what page loads.
- String - A custom URL loads when clicking the home button. You must also enable the Configure Home Button policy and select the _Show home button & set a specific page_ option. Enter a URL in string format, for example, https://www.msn.com.

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

Microsoft Edge loads the default New tab page by default. Enabling this policy lets you set a New tab page URL in Microsoft Edge, preventing users from changing it. When you enable this policy, and you disable the Allow web content on New tab page policy, Microsoft Edge ignores any URL specified in this policy and opens about:blank. 

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Set New Tab page URL*
-   GP name: *SetNewTabPageURL*
-   GP element: *SetNewTabPageURLPrompt*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- Blank (default) - Load the default New tab page.
- String - Prevent users from changing the New tab page. Enter a URL in string format, for example, https://www.msn.com.
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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


Microsoft Edge does not show a notification before opening sites in Internet Explorer 11. However, with this policy, you can configure Microsoft Edge to display a notification before a site opens in IE11 or let users continue in Microsoft Edge. If you want users to continue in Microsoft Edge, enable this policy to show the “Keep going in Microsoft Edge” link in the notification. For this policy to work correctly, you must also enable the Configure the Enterprise Mode Site List or Send all intranet sites to Internet Explorer 11, or both.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Show message when opening sites in Internet Explorer*
-   GP name: *ShowMessageWhenOpeningSitesInInternetExplorer*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

-   0 (default) – No additional message displays.
-   1 – Show an additional message stating that a site has opened in IE11.
-   2 - Show an additional message with a "Keep going in Microsoft Edge" link.

Most restricted value: 0
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-syncfavoritesbetweenieandmicrosoftedge"></a>**Browser/SyncFavoritesBetweenIEAndMicrosoftEdge**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies whether favorites are kept in sync between Internet Explorer and Microsoft Edge. Changes to favorites in one browser are reflected in the other, including: additions, deletions, modifications, and ordering.

> [!NOTE]  
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.  
>
> Enabling this setting stops Microsoft Edge favorites from syncing between connected Windows 10 devices.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Keep favorites in sync between Internet Explorer and Microsoft Edge*
-   GP name: *SyncFavoritesBetweenIEAndMicrosoftEdge*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Synchronization is off.
-   1 – Synchronization is on.

<!--/SupportedValues-->
<!--Validation-->
To verify that favorites are in synchronized between Internet Explorer and Microsoft Edge:

<ol>
<li>Open Internet Explorer and add some favorites.
<li>Open Microsoft Edge, then select Hub > Favorites.
<li>Verify that the favorites added to Internet Explorer show up in the favorites list in Microsoft Edge.
</ol>

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="browser-unlockhomebutton"></a>**Browser/UnlockHomeButton**  

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
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Next Windows 10 major release<p>

By default, when you enable the Configure Home Button policy or provide a URL in the Set Home Button URL policy, Microsoft Edge locks down the home button to prevent users from changing the settings. When you enable this policy, users can make changes to the home button even if you enabled the Configure Home Button or Set Home Button URL policies. 

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Unlock Home Button*
-   GP name: *UnlockHomeButton*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Allowed values:

- 0 (default) - Lock down the home button to prevent users from making changes.
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting specifies whether organizations should use a folder shared across users to store books from the Books Library.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Allow a shared Books folder*
-   GP name: *UseSharedFolderForBooks*
-   GP path: *Windows Components/Microsoft Edge*
-   GP ADMX file name: *MicrosoftEdge.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - No shared folder.
-   1 - Use a shared folder.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in the next major release of Windows 10.

<!--/Policies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Browser policies that can be set using Exchange Active Sync (EAS)  

-   [Browser/AllowBrowser](#browser-allowbrowser)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Browser policies supported by Windows Holographic for Business  

-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowPasswordManager](#browser-allowpasswordmanager)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Browser policies supported by IoT Core  

-   [Browser/AllowAutofill](#browser-allowautofill)  
-   [Browser/AllowBrowser](#browser-allowbrowser)  
-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowInPrivate](#browser-allowinprivate)  
-   [Browser/AllowPasswordManager](#browser-allowpasswordmanager)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist)  
-   [Browser/EnterpriseSiteListServiceUrl](#browser-enterprisesitelistserviceurl)  
-   [Browser/SendIntranetTraffictoInternetExplorer](#browser-sendintranettraffictointernetexplorer)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Browser policies supported by Microsoft Surface Hub  

-   [Browser/AllowAddressBarDropdown](#browser-allowaddressbardropdown)  
-   [Browser/AllowCookies](#browser-allowcookies)  
-   [Browser/AllowDeveloperTools](#browser-allowdevelopertools)  
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)  
-   [Browser/AllowMicrosoftCompatibilityList](#browser-allowmicrosoftcompatibilitylist)  
-   [Browser/AllowPopups](#browser-allowpopups)  
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)  
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)  
-   [Browser/ClearBrowsingDataOnExit](#browser-clearbrowsingdataonexit)  
-   [Browser/ConfigureAdditionalSearchEngines](#browser-configureadditionalsearchengines)  
-   [Browser/DisableLockdownOfStartPages](#browser-disablelockdownofstartpages)  
-   [Browser/HomePages](#browser-homepages)  
-   [Browser/PreventLiveTileDataCollection](#browser-preventlivetiledatacollection)  
-   [Browser/PreventSmartScreenPromptOverride](#browser-preventsmartscreenpromptoverride)  
-   [Browser/PreventSmartScreenPromptOverrideForFiles](#browser-preventsmartscreenpromptoverrideforfiles)  
-   [Browser/SetDefaultSearchEngine](#browser-setdefaultsearchengine)  
<!--EndSurfaceHub-->

