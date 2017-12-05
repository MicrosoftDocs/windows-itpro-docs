---
title: Policy CSP - Browser
description: Policy CSP - Browser
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Browser



<hr/>

<!--StartPolicies-->
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
    <a href="#browser-allowsearchenginecustomization">Browser/AllowSearchEngineCustomization</a>
  </dd>
  <dd>
    <a href="#browser-allowsearchsuggestionsinaddressbar">Browser/AllowSearchSuggestionsinAddressBar</a>
  </dd>
  <dd>
    <a href="#browser-allowsmartscreen">Browser/AllowSmartScreen</a>
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
    <a href="#browser-disablelockdownofstartpages">Browser/DisableLockdownOfStartPages</a>
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
    <a href="#browser-homepages">Browser/HomePages</a>
  </dd>
  <dd>
    <a href="#browser-lockdownfavorites">Browser/LockdownFavorites</a>
  </dd>
  <dd>
    <a href="#browser-preventaccesstoaboutflagsinmicrosoftedge">Browser/PreventAccessToAboutFlagsInMicrosoftEdge</a>
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
    <a href="#browser-showmessagewhenopeningsitesininternetexplorer">Browser/ShowMessageWhenOpeningSitesInInternetExplorer</a>
  </dd>
  <dd>
    <a href="#browser-syncfavoritesbetweenieandmicrosoftedge">Browser/SyncFavoritesBetweenIEAndMicrosoftEdge</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowaddressbardropdown"></a>**Browser/AllowAddressBarDropdown**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to allow the address bar drop-down functionality in Microsoft Edge. If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend disabling this functionality. 

> [!NOTE]
> Disabling this setting turns off the address bar drop-down functionality. Because search suggestions are shown in the drop-down list, this setting takes precedence over the Browser/AllowSearchSuggestionsinAddressBar setting.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type." 
-   1 (default) – Allowed. Address bar drop-down is enabled.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether autofill on websites is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowbrowser"></a>**Browser/AllowBrowser**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.


<p style="margin-left: 20px">Specifies whether the browser is allowed on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">When this policy is set to 0 (not allowed), the Microsoft Edge for Windows 10 Mobile tile will appear greyed out, and clicking on the tile will display a message indicating theat Internet browsing has been disabled by your administrator.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether cookies are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether employees can use F12 Developer Tools on Microsoft Edge. Turning this setting on, or not configuring it, lets employees use F12 Developer Tools. Turning this setting off stops employees from using F12 Developer Tools.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether Do Not Track headers are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Microsoft Edge extensions are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowflash"></a>**Browser/AllowFlash**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10. Specifies whether Adobe Flash can run in Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowflashclicktorun"></a>**Browser/AllowFlashClickToRun**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether users must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Adobe Flash content is automatically loaded and run by Microsoft Edge.
-   1 (default) – Users must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowinprivate"></a>**Browser/AllowInPrivate**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether InPrivate browsing is allowed on corporate networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowmicrosoftcompatibilitylist"></a>**Browser/AllowMicrosoftCompatibilityList**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to use the Microsoft compatibility list in Microsoft Edge. The Microsoft compatibility list is a Microsoft-provided list that enables sites with known compatibility issues to display properly. 
By default, the Microsoft compatibility list is enabled and can be viewed by visiting "about:compat". 

<p style="margin-left: 20px">If you enable or don’t configure this setting, Microsoft Edge periodically downloads the latest version of the compatibility list from Microsoft, applying the updates during browser navigation. Visiting any site on the compatibility list prompts the employee to use Internet Explorer 11 (or enables/disables certain browser features on mobile), where the site is automatically rendered as though it’s run in the version of Internet Explorer necessary for it to display properly. If you disable this setting, the compatibility list isn’t used during browser navigation.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not enabled.
-   1 (default) – Enabled.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether saving and managing passwords locally on the device is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowPasswordManager is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the settings **Offer to save password** and **Manage my saved passwords** are greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether pop-up blocker is allowed or enabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Pop-up blocker is not allowed. It means that pop-up browser windows are allowed.
-   1 – Pop-up blocker is allowed or enabled. It means that pop-up browser windows are blocked.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowPopups is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Block pop-ups** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowsearchenginecustomization"></a>**Browser/AllowSearchEngineCustomization**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows search engine customization for MDM-enrolled devices. Users can change their default search engine. 
  
<p style="margin-left: 20px">If this setting is turned on or not configured, users can add new search engines and change the default used in the address bar from within Microsoft Edge settings. If this setting is disabled, users will be unable to add search engines or change the default used in the address bar. This policy applies only on domain-joined machines or when the device is MDM-enrolled. For more information, see Microsoft browser extension policy (aka.ms/browserpolicy). 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether search suggestions are allowed in the address bar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-allowsmartscreen"></a>**Browser/AllowSmartScreen**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether Windows Defender SmartScreen is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowSmartScreen is set to 0 (not allowed):

1.  Open Microsoft Edge or Microsoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Help protect me from malicious sites and download with SmartScreen Filter** is greyed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-alwaysenablebookslibrary"></a>**Browser/AlwaysEnableBooksLibrary**  

<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">

<p style="margin-left: 20px">This is only a placeholder.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-clearbrowsingdataonexit"></a>**Browser/ClearBrowsingDataOnExit**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to clear browsing data on exiting Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – (default) Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.
-   1 – Browsing data is cleared on exit.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify that browsing data is cleared on exit (ClearBrowsingDataOnExit is set to 1): 

1.  Open Microsoft Edge and browse to websites.
2.  Close the Microsoft Edge window.
3.  Open Microsoft Edge and start typing the same URL in address bar. Verify that it does not auto-complete from history.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-configureadditionalsearchengines"></a>**Browser/ConfigureAdditionalSearchEngines**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows you to add up to 5 additional search engines for MDM-enrolled devices. 
 
<p style="margin-left: 20px">If this policy is enabled, you can add up to 5 additional search engines for your employees. For each additional search engine you want to add, specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).
Employees cannot remove these search engines, but they can set any one as the default. This setting does not affect the default search engine. 

<p style="margin-left: 20px">If this setting is not configured, the search engines used are the ones that are specified in the App settings. If this setting is disabled, the search engines you added will be deleted from your employee's machine.
 
> [!IMPORTANT]
> Due to Protected Settings (aka.ms/browserpolicy), this setting will apply only on domain-joined machines or when the device is MDM-enrolled. 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Additional search engines are not allowed.
-   1 – Additional search engines are allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-disablelockdownofstartpages"></a>**Browser/DisableLockdownOfStartPages**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Boolean value that specifies whether the lockdown on the Start pages is disabled. This policy works with the Browser/HomePages policy, which locks down the Start pages that the users cannot modify. You can use the DisableLockdownOfStartPages policy to allow users to modify the Start pages when the Browser/HomePages policy is in effect. 
  
> [!NOTE]
> This policy has no effect when the Browser/HomePages policy is not configured. 
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages. 
-   1  – Disable lockdown of the Start pages and allow users to modify them.  

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Allows the user to specify an URL of an enterprise site list.

<p style="margin-left: 20px">The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL location of the enterprise site list.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-enterprisesitelistserviceurl"></a>**Browser/EnterpriseSiteListServiceUrl**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!IMPORTANT]
> This policy (introduced in Windows 10, version 1507) was deprecated in Windows 10, version 1511 by [Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-firstrunurl"></a>**Browser/FirstRunURL**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies the URL that Microsoft Edge for Windows 10 Mobile. will use when it is opened the first time.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the string should contain the URL of the webpage users will see the first time Microsoft Edge is run. For example, “contoso.com”.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-homepages"></a>**Browser/HomePages**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only available for Windows 10 for desktop and not supported in Windows 10 Mobile.

<p style="margin-left: 20px">Specifies your Start pages for MDM-enrolled devices. Turning this setting on lets you configure one or more corporate Start pages. If this setting is turned on, you must also include URLs to the pages, separating multiple pages by using the XML-escaped characters **&lt;** and **&gt;**. For example, "&lt;support.contoso.com&gt;&lt;support.microsoft.com&gt;"

<p style="margin-left: 20px">Starting in Windows 10, version 1607, this policy will be enforced so that the Start pages specified by this policy cannot be changed by the users.

<p style="margin-left: 20px">Starting in Windows 10, version 1703, if you don’t want to send traffic to Microsoft, you can use the "&lt;about:blank&gt;" value, which is honored for both domain- and non-domain-joined machines, when it’s the only configured URL. 

> [!NOTE]
> Turning this setting off, or not configuring it, sets your default Start pages to the webpages specified in App settings.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-lockdownfavorites"></a>**Browser/LockdownFavorites**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting lets you decide whether employees can add, import, sort, or edit the Favorites list on Microsoft Edge.

<p style="margin-left: 20px">If you enable this setting, employees won't be able to add, import, or change anything in the Favorites list. Also as part of this, Save a Favorite, Import settings, and the context menu items (such as, Create a new folder) are all turned off.

> [!Important]  
> Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

<ul>
<li> 0 - Disabled. Do not lockdown Favorites.</li>
<li> 1 - Enabled. Lockdown Favorites.</li>
</ul>

<p style="margin-left: 20px">If you disable or don't configure this setting (default), employees can add, import and make changes to the Favorites list.

<p style="margin-left: 20px">Data type is integer.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can access the about:flags page, which is used to change developer settings and to enable experimental features.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Users can access the about:flags page in Microsoft Edge.
-   1 – Users can't access the about:flags page in Microsoft Edge.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventfirstrunpage"></a>**Browser/PreventFirstRunPage**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether to enable or disable the First Run webpage. On the first explicit user-launch of Microsoft Edge, a First Run webpage hosted on Microsoft.com opens automatically via a FWLINK. This policy allows enterprises (such as those enrolled in a zero-emissions configuration) to prevent this page from opening.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Employees see the First Run webpage. 
-   1 – Employees don't see the First Run webpage.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventlivetiledatacollection"></a>**Browser/PreventLiveTileDataCollection**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.
-   1 – Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can override the Windows Defender SmartScreen Filter warnings about potentially malicious websites.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<p style="margin-left: 20px">Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from going to the site. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about potentially malicious websites and to continue to the site.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether users can override the Windows Defender SmartScreen Filter warnings about downloading unverified files. Turning this setting on stops users from ignoring the Windows Defender SmartScreen Filter warnings and blocks them from downloading unverified files. Turning this setting off, or not configuring it, lets users ignore the Windows Defender SmartScreen Filter warnings about unverified files and lets them continue the download process.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. Turning this setting on hides an user’s localhost IP address while making phone calls using WebRTC. Turning this setting off, or not configuring it, shows an <p style="margin-left: 20px">user’s localhost IP address while making phone calls using WebRTC.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – The localhost IP address is shown.
-   1 – The localhost IP address is hidden.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-provisionfavorites"></a>**Browser/ProvisionFavorites**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. This policy setting allows you to configure a default set of favorites, which will appear for employees. Employees cannot modify, sort, move, export or delete these provisioned favorites. Specify the URL which points to the file that has all the data for provisioning favorites (in html format). You can export a set of favorites from Edge and use that html file for provisioning user machines. 
 
<p style="margin-left: 20px">URL can be specified as:

- HTTP location: "SiteList"="http://localhost:8080/URLs.html"
- Local network: "SiteList"="\\network\shares\URLs.html"
- Local file: "SiteList"="file:///c:\\Users\\<user>\\Documents\\URLs.html"

> [!Important]  
> Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.

<p style="margin-left: 20px">If you disable or don't configure this setting, employees will see the favorites they set in the Hub and Favorites Bar.

<p style="margin-left: 20px">Data type is string.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-sendintranettraffictointernetexplorer"></a>**Browser/SendIntranetTraffictoInternetExplorer**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to send intranet traffic over to Internet Explorer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Intranet traffic is sent to Internet Explorer.
-   1 – Intranet traffic is sent to Microsoft Edge.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-setdefaultsearchengine"></a>**Browser/SetDefaultSearchEngine**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows you configure the default search engine for your employees. By default, your employees can change the default search engine at any time. If you want to prevent your employees from changing the default search engine that you set, you can do so by configuring the AllowSearchEngineCustomization policy.

<p style="margin-left: 20px">You must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/). If you want your employees to use the Microsoft Edge factory settings for the default search engine for their market, set the string EDGEDEFAULT; otherwise, if you want your employees to use Bing as the default search engine, set the string EDGEBING. 
 
<p style="margin-left: 20px">If this setting is not configured, the default search engine is set to the one specified in App settings and can be changed by your employees. If this setting is disabled, the policy-set search engine will be removed, and, if it is the current default, the default will be set back to the factory Microsoft Edge search engine for the market.   
 
> [!IMPORTANT]
> This setting can be used only with domain-joined or MDM-enrolled devices. For more information, see the Microsoft browser extension policy (aka.ms/browserpolicy).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) - The default search engine is set to the one specified in App settings.
-   1 - Allows you to configure the default search engine for your employees.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-showmessagewhenopeningsitesininternetexplorer"></a>**Browser/ShowMessageWhenOpeningSitesInInternetExplorer**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Interstitial pages are not shown.
-   1 – Interstitial pages are shown.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="browser-syncfavoritesbetweenieandmicrosoftedge"></a>**Browser/SyncFavoritesBetweenIEAndMicrosoftEdge**  

<!--StartSKU-->
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

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether favorites are kept in sync between Internet Explorer and Microsoft Edge. Changes to favorites in one browser are reflected in the other, including: additions, deletions, modifications, and ordering.

> [!NOTE]  
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.  
>
> Enabling this setting stops Microsoft Edge favorites from syncing between connected Windows 10 devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Synchronization is off.
-   1 – Synchronization is on.

<p style="margin-left: 20px">To verify that favorites are in synchronized between Internet Explorer and Microsoft Edge:

<ol>
<li>Open Internet Explorer and add some favorites.
<li>Open Microsoft Edge, then select Hub > Favorites.
<li>Verify that the favorites added to Internet Explorer show up in the favorites list in Microsoft Edge.
</ol>

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

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

