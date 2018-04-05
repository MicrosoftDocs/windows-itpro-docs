---
description: Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.
ms.assetid: 2e849894-255d-4f68-ae88-c2e4e31fa165
author: shortpatti
ms.author: pashort
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: Group Policy and Mobile Device Management settings for Microsoft Edge (Microsoft Edge for IT Pros)
ms.localizationpriority: high
ms.date: 09/13/2017 #Previsou release date
---

# Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge

> Applies to: Windows 10, Windows 10 Mobile

Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences.

By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain.

> [!NOTE]
> For more info about the tools you can use to change your Group Policy objects, see the Internet Explorer 11 topics, [Group Policy and the Group Policy Management Console (GPMC)](https://go.microsoft.com/fwlink/p/?LinkId=617921), [Group Policy and the Local Group Policy Editor](https://go.microsoft.com/fwlink/p/?LinkId=617922), [Group Policy and the Advanced Group Policy Management (AGPM)](https://go.microsoft.com/fwlink/p/?LinkId=617923), and [Group Policy and Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=617924).


Microsoft Edge works with the following Group Policy settings to help you manage your company's web browser configurations. The Group Policy settings are found in the Group Policy Editor in the following location: 

`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`

<!-- original text 
Microsoft Edge works with these Group Policy settings (`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`) to help you manage your company's web browser configurations:
-->

## Allow Address bar drop-down list suggestions
>*Supporteded versions: Windows 10, version 1703 or later*


This policy settings specifies whether to allow the address bar drop-down functionality in Microsoft Edge. By default, this setting is enabled.  We recommend that you disable this setting if you want to minimize network connections from Microsoft Edge to Microsoft services. If disabled, employees do not see the address bar drop-down functionality and also disables the user-defined settting "Show search and site suggestions as I type."  Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the _Configure search suggestions in Address bar_ or _AllowSearchSuggestionsinAddressBar_ setting.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowAddressBarDropdown](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowaddressbardropdown) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not Allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type."</li><li>**1 (default)** - Allowed. Address bar drop-down is enabled.</li></ul> |

 
## Allow Adobe Flash
>*Supporteded version: Windows 10*


This policy setting specifies whether Adobe Flash can run in Microsoft Edge.  By default, this setting is enabled or not configured, which allows employees to use Adobe Flash. If disabled, employees cannot use Adobe Flash.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowFlash](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowflash) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowAutofill |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot use Microsoft Edge.</li><li>**1 (default)** - Employees can use Microsoft Edge. </li></ul> |

## Allow clearing browsing data on exit
>*Supporteded versions: Windows 10, version 1703*


This policy setting specifies whether to clear browsing data on exiting Microsoft Edge. By default, this setting is disabled or not configured, which means employees can turn on and configure Clear browsing data option under Settings. If enabled, browsing history on exit is turned on.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ClearBrowsingDataOnExit](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-clearbrowsingdataonexit) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.</li><li>**1** - Browsing data is cleared on exit.</li></ul> |

## Allow configuration updates for the Books Library
>*Supporteded versions: Windows 10, version 1703 or later*

This policy setting specifies whether Microsoft Edge can automatically update the configuration data for the Books Library. By default, this setting is enabled, which means Microsoft Edge retrieves a configuration for Books Library. If disabled, Microsoft Edge does not retrieve a configuration.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowConfigurationUpdateForBooksLibrary ](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowConfigurationUpdateForBooksLibrary  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Disable. Microsoft Edge cannot retrieve a configuration.</li><li>**1 (default)** - Enable (default). Microsoft Edge can retrieve a configuration for Books Library.</li></ul> |


## Allow Cortana
>*Supported versions: Windows 10, version 1607 or later*

This policy setting specifies whether Cortana is allowed on the device. By default, this setting is enabled (allowed), which allows employees to use Cortana on their devices. If disabled (not allowed), employees cannot use Cortana, but can use search to find items on the device. 

This policy setting specifies whether Cortana is allowed on the device. By default, this setting is enabled (allowed), which allows employees to use Cortana on their devices. If disabled (not allowed), employees cannot use Cortana, but can use search to find items on the device. 

**Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[AllowCortana](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowcortana) |
|Supported devices |Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowCortana  |
|Location |Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not allowed.</li><li>**1 (default)** - Allowed.</li></ul> |

## Allow Developer Tools
>*Supporteded versions: Windows 10, version 1511 or later*

This policy setting specifies whether employees cna use the F12 Developer Tools on Microsoft Edge. By default, this setting is enabled making the F12 Developer Tools availabe to use. If disabled, the F12 Developer Tools are not available. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowDeveloperTools](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowdevelopertools) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot use the F12 Developer Tools./li><li>**1 (default)** - Employees can use the F12 Developer Tools.</li></ul> |

## Allow extended telemetry for the Books tab
>*Supporteded versions: Windows 10, version 1703 or later*


This policy settings specifies whether to allow the address bar drop-down functionality in Microsoft Edge. By default, this setting is enabled.  We recommend that you disable this setting if you want to minimize network connections from Microsoft Edge to Microsoft services. If disabled, employees do not see the address bar drop-down functionality and also disables the user-defined settting "Show search and site suggestions as I type."  Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the _Configure search suggestions in Address bar_ or _AllowSearchSuggestionsinAddressBar_ setting.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowAddressBarDropdown](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowaddressbardropdown) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not Allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type."</li><li>**1 (default)** - Allowed. Address bar drop-down is enabled.</li></ul> |

## Allow Extensions
>*Supporteded versions: Windows 10, version 1607 or later*

This policy setting specifies whether employees can use Edge Extensions.  By default, this setting is enabled allowing employees to use extensions. If disabled, employees cannot use extensions.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowextensions) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowExtensions  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot use Edge Extensions.</li><li>**1 (default)** - Employees can use Edge Extensions. </li></ul> |

## Allow InPrivate browsing
>*Supporteded versions: Windows 10, version 1511 or later*

This policy setting specifies whether InPrivate browsing is allowed on corporate networks. By default, this setting is enabled allowing employees to use InPrivate website browsing. If  disabled, employees cannot use InPrivate website browsing. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowInPrivate](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowinprivate) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowInPrivate  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot use InPrivate browsing.</li><li>**1 (default)** - Employees can use InPrivate browsing.</li></ul> |

## Allow Microsoft Compatibility List
>*Supporteded versions: Windows 10, version 1703 or later*

This policy setting specifies whether to use the Microsoft compatibility list in Microsoft Edge. The list helps websites with known compatibility issues to display properly. By default, the Microsoft compatibility list is enabled and used during browser navigation.  The list can be viewed by visiting "about:compat".  By default, this setting is enabled allowing periodic downloads and installation of updates. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site renders as though it is in whatever version of IE is necessary for it to appear properly. If disabled, the compatibility list is not used.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowMicrosoftCompatibilityList](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowmicrosoftcompatibilitylist) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Additional search engines are not allowed and the default cannot be changed in the Address bar.</li><li>**1 (default)** - Additional search engines are allowed and the default can be changed in the Address bar.</li></ul> |

## Allow search engine customization
>*Supported versions: Windows 10, version 1703 or later*

This policy setting allows search engine customization for domain-joined or MDM-enrolled devices only. For example, you can change the default search engine or add a new search engine. By default, this setting is enabled allowing employees to add new search engines and change the default under Settings. If disabled, employees cannot add search enginess or change the default.

For more information, see [Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy).

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowSearchEngineCustomization](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchenginecustomization) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Additional search engines are not allowed and the default cannot be changed in the Address bar.</li><li>**1 (default)** - Additional search engines are allowed and the default can be changed in the Address bar.</li></ul> |

## Allow web content on New Tab page
>*Supported versions: Windows 10*

This policy setting lets you configure what appears when a New Tab page is opened in Microsoft Edge. By default, this setting is disabled or not configured, which means employees cannot customize their New Tab page. If enabled, employees can customize their New Tab page. 

<!-- 
**MDM name:** 
-->
## Always enable book library
>*Supporteded versions: Windows 10*

This policy settings specifies whether to always show the Books Library in Microsoft Edge. By default, this setting is disabled, which means the library is only visible in countries or regions where available. if enabled, the Books Library is always shown regardless of countries or region of activation.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AlwaysEnableBooksLibrary](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-alwaysenablebookslibrary) |
|Supported devices |Desktop<br>Mobile  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AlwaysEnableBooksLibrary |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Disable. Use default visibility of the Books Library. The Library will be only visible in countries or regions where it’s available.</li><li>**1** - Enable. Always show the Books Library, regardless of countries or region of activation.</li></ul> |

## Configure additional search engines
>*Supported versions: Windows 10, version 1703 or later*

This policy setting, when enabled, lets you add up to five additional search engines. Employees cannot remove these search engines, but they can set any one as the default. By default, this setting is not configured and does not allow additional search engines to be added. If disabled, the search engines added are deleted.

For each additional search engine you add, specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).

This setting does not set the default search engine. For that, you must use the "Set default search engine" setting.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ConfigureAdditionalSearchEngines](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configureadditionalsearchengines) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Additional search engines are not allowed.</li><li>**1** - Additional search engines are allowed.</li></ul> |

## Configure Autofill
>*Supported versions: Windows 10*

This policy setting specifies whether AutoFill on websites is allowed. By default, this setting is not configured allowing employees to choose whether or not to use AutoFill. If enabled, AutoFill is used. If disabled, AutoFill is not used. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowAutofill](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowautofill) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowAutofill  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot use Autofill to complete form fields.</li><li>**1 (default)** - Employees can use Autofill to complete form fields.</li></ul> |

## Configure cookies
>*Supported versions: Windows 10*

This policy setting specifies whether cookies are allowed. By default, this setting is enabled with the Block all cookies and Block only 3rd-party cookies options available.  If disabled or not configured, all cookies are allowed from all sites. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowCookies](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowcookies) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowCookies  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Allows all cookies from all sites.</li><li>**1** - Blocks only cookies from 3rd party websites.</li><li>**2** - Blocks all cookies from all sites.</li></ul> |

## Configure Do Not Track
>*Supported versions: Windows 10*

This policy setting specifies whether Do Not Track requests to websites is allowed. By default, this setting is not configured allowing employees to choose whether or not to send tracking information. If enabled, Do Not Track requests are always sent to websites asking for tracking information. If disabled, Do Not Track requests are never sent. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowDoNotTrack](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Stops employees from sending Do Not Track headers to websites requesting tracking info.</li><li>**1** - Employees can send Do Not Track headers to websites requesting tracking info. </li></ul> |

## Configure Favorites
>*Supported versions: Windows 10, version 1709*

This policy setting allows you to configure a default list of Favorites that appear for your employee, which they cannot modify, sort, move, export or delete. By default, this setting is disabled or not configured allowing employees to customize the Favorites list, such as adding folders to organize their favorites.  If enabled, employees are not allowed to add, import, or change anything in the Favorites list. As part of this, the Save a Favorite, Import settings, and context menu items (such as Create a new folder) are turned off.

Specify the URL which points to the file that has all the data for provisioning favorites (in html format). 

URL can be specified as:
- HTTP location: "SiteList"="http://localhost:8080/URLs.html"
- Local network: "SiteList"="\network\shares\URLs.html"
- Local file: "SiteList"="file:///c:\Users\\Documents\URLs.html"

You can export a set of favorites from Edge and use that html file for provisioning user machines. 

>[!Important]
>Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ProvisionFavorites](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-provisionfavorites) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/ProvisionFavorites  |
|Data type | String |

## Configure Password Manager
>*Supported versions: Windows 10*

This policy setting specifies whether saving and managing passwords locally on the device is allowed. By default, this setting is enabled allowing employees to save their passwords locally. If not configured, employees can choose whether or not to save and manage passwords locally. If disabled, saving and managing passwords locally is turned off. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowPasswordManager](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowpasswordmanager) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Employees cannot use Password Manager to save passwords locally.</li><li>**1** - Employees can use Password Manager to save passwords locally.</li></ul> |

## Configure Pop-up Blocker
>*Supported versions: Windows 10*

This policy setting specifies whether pop-up blocker is allowed or enabled. By default, pop-up blocker is turned on. If not configured, employees can choose whether to turn on or turn off pop-up blocker. If disabled, pop-up blocker is turned off.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowPopups](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowpopups) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowPopups  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Turns off Pop-up Blocker, allowing pop-up windows.</li><li>**1** - Turns on Pop-up Blocker, stopping pop-up windows. </li></ul> |

## Configure search suggestions in Address bar
>*Supported versions: Windows 10*

This policy setting specifies whether search suggestions are allowed in the address bar. By default, this setting is not configured allowing employees to choose whether search suggestions appear in the address bar.  If enabled, search suggestions appear.  If disabled, search suggestions do not appear.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchsuggestionsinaddressbar) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Employees cannot see search suggestions in the Address bar of Microsoft Edge.</li><li>**1** - Employees can see search suggestions in the Address bar of Microsoft Edge.</li></ul> |

## Configure Start pages
>*Supported versions: Windows 10, version 1511 or later*

This policy setting specifies your Start pages for domain-joined or MDM-enrolled devices. By default, this setting is disabled or not configured. Therefore, the Start page is the webpages specified in App settings. If enabled, you can configure one or more corporate Start pages. If enabling this setting, you must include URLs separating multiple pages by using XML-escaped characters < and >, for example, **<\support.contoso.com><\support.microsoft.com>**. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[HomePages](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-homepages) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/HomePages  |
|Data type |String |
|Allowed values |Configure the Start page (previously known as Home page) URLs for your employees. |

## Configure the Adobe Flash Click-to-Run setting
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether employees must take action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. By default, this setting is enabled. when the setting is enabled, employees must click the content, Click-to-Run button, or have the site appear on an auto-allow list before before the Adobe Flash content loads. If disabled, Adobe Flash loads and runs automatically.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowFlashClickToRun](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowflashclicktorun) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowFlashClickToRun  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Adobe Flash content is automatically loaded and run by Microsoft Edge.</li><li>**1 (default)** - An employee must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.</li></ul> |

## Configure the Enterprise Mode Site List
>*Supported versions: Windows 10*

This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps. By default, this setting is disabled or not configured, which means the Enterprise Mode Site List is not used. In this case, employees might experience compatibility problems while using legacy apps. If enabled, you must add the location to your site list in the **{URI}** box. when enabled, Microsoft Edge looks for the Enterprise Mode Site List XML file, which includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode.

>[!Note] 
>If there is a .xml file in the cache container, IE waits 65 seconds and then checks the local cache for a newer version of the file from the server, based on standard caching rules. If the server has a different version number than the version in the cache container, the server file is used and stored in the cache container.<br><br>
>If you already use a site list, enterprise mode continues to work during the 65-second wait; it just uses the existing site list instead of the new one.  

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[EnterpriseModeSiteList](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-enterprisemodesitelist) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList  |
|Data type | String |
|Allowed values |<ul><li>Not configured.</li><li>**1 (default)** - Use the Enterprise Mode Site List, if configured.</li><li>**2** - Specify the location to the site list.</li></ul> |

## Configure Windows Defender SmartScreen
>*Supported versions: Windows 10*

This policy setting specifies whether Windows Defender SmartScreen is allowed. By default, this setting is enabled or turned on and employees cannot turn it off. If disabled, Windows Defender SmartScreen is turned off and employees cannot turn it on. If not configured, employees can choose whether to use Windows Defender SmartScreen.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowSmartScreen](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsmartscreen) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Turns off Windows Defender SmartScreen.</li><li>**1** - Turns on Windows Defender SmartScreen, providing warning messages to your employees about potential phishing scams and malicious software.</li></ul> |

## Disable lockdown of Start pages
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether the lockdown on the Start pages is disabled on domain-joined or MDM-enrolled devices. By default, this policy is enabled locking down the Start pages according to the settings specified in the Browser/HomePages policy. When enabled, users cannot change the Start pages. If disabled, users can modify the Start pages.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[DisableLockdownOfStartPages](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-disablelockdownofstartpages) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages.</li><li>**1** - Disable lockdown of the Start pages and allow users to modify them.</li></ul> |

 
## Do not sync
>*Supported versions: Windows 10*

This policy setting specifies whether employees can use the Sync your Settings option to sync their settings to and from their device. By default, this setting is disabled or not configured, which means the Sync your Settings options are turned on, letting employees pick what can sync on their device. If enabled, the Sync your Settings options are turned off and none of the Sync your Setting groups are synced on the device. You can use the Allow users to turn syncing on option to turn the feature off by default, but to let the employee change this setting. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

**Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[AllowSyncMySettings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings  |
|Location |Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot sync settings between PCs.</li><li>**1 (default)** - Employees can sync between PCs.</li></ul> |


## Do not sync browser settings
>*Supported versions: Windows 10*

This policy setting specifies whether a browser group can use the Sync your Settings options to sync their information to and from their device. Settings include information like History and Favorites. By default, this setting is disabled or not configured, which means the Sync your Settings options are turned on, letting browser groups pick what can sync on their device. If enabled, the Sync your Settings options are turned off so that browser groups are unable to sync their settings and info. You can use the Allow users to turn browser syncing on option to turn the feature off by default, but to let the employee change this setting.

## Enable extended books telemetry
>*Supporteded versions: Windows 10*

This policy setting specifies how much data to send to Microsoft about the books you are reading from the Books tab in Microsoft Edge. By default, this setting is disabled or not configured, which means Microsoft Edge sends basic diagnostic data, depending on your device configuration. If enabled, Microsoft Edge sends additional diagnostic data in addition to the basic diagnostic data.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[EnableExtendedBooksTelemetry](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry) |
|Supported devices |Desktop<br>Mobile  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AlwaysEnableBooksLibrary |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Disable. No additional diagnostic data.</li><li>**1** - Enable. Additional diagnostic data for schools.</li></ul> |


## Keep favorites in sync between Internet Explorer and Microsoft Edge
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether favorites are kept in sync between Internet Explorer and Microsoft Edge. Changes to favorites in one browser are reflected in the other, including additions, deletions, modifications, and ordering. By default, this setting is disabled or not configured. When disabled or not configured, employees cannot sync their favorites. If enabled, employees can sync their favorites and stops Microsoft Edge favorites from syncing between connected Windows 10 devices. This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[SyncFavoritesBetweenIEAndMicrosoftEdge](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-syncfavoritesbetweenieandmicrosoftedge) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/SyncFavoritesBetweenIEAndMicrosoftEdge  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Synchronization is turned off.</li><li>**1** - Synchronization is turned on.</li></ul> |

## Prevent access to the about:flags page
>*Supported versions: Windows 10, version 1607 or later*

This policy setting specifies whether employees can access the about:flags page, which is used to change developer settings and to enable experimental features. By default, this setting is disabled or not configured, which means employees can access the about:flags page. If enabled, employees cannot access the about:flags page.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventAccessToAboutFlagsInMicrosoftEdge](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventaccesstoaboutflagsinmicrosoftedge) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Employees can access the about:flags page in Microsoft Edge.</li><li>**1** - Employees cannot access the about:flags page in Microsoft Edge.</li></ul> |

## Prevent bypassing Windows Defender SmartScreen prompts for files
>*Supported versions: Windows 10, version 1511 or later*

This policy setting specifies whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files. By default, this setting is disabled or not configured (turned off), which means employees can ignore the warnings and can continue the download process. If enabled (turned on), employees cannot ignore the warnings and blocks them from downloading unverified files.  

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventSmartScreenPromptOverrideForFiles](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverrideforfiles) |
|Supported devices |Desktop<br>Mobile  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Lets employees ignore the Windows Defender SmartScreen warnings about unverified files and lets them continue the download process.</li><li>**1** - Stops employees from ignoring the Windows Defender SmartScreen warnings about unverified files.</li></ul> |

## Prevent bypassing Windows Defender SmartScreen prompts for sites
>*Supported versions: Windows 10, version 1511 or later*

This policy setting specifies whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites. By default, this setting is disabled or not configured (turned off), which means employees can ignore the warnings and allows them to continue to the site. If enabled (turned on), employees cannot ignore the warnings and blocks them from continuing to the site.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventSmartScreenPromptOverride](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverride) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/PreventSmartscreenPromptOverride  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Turns off Windows Defender SmartScreen.</li><li>**1** - Turns on Windows Defender SmartScreen.</li></ul> |

## Prevent changes to Favorites on Microsoft Edge
>*Supported versions: Windows 10, version 1709*

This policy setting specifies whether employees can add, import, sort, or edit the Favorites list in Microsoft Edge. By default, this setting is disabled or not configured (turned on), which means the Favorites list is not locked down and employees can make changes to the Favorites list. If enabled, employees cannot make changes to the Favorites list. Also, the Save a Favorite, Import settings, and the context menu items, such as Create a new folder, are turned off. 

>[!Important]
>Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops employees from syncing their favorites between Internet Explorer and Microsoft Edge.
<!-- 
**MDM name:** 
-->

## Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether Microsoft can collect information to create a Live Tile when pinning a site to Start from Microsoft Edge. By default, this setting is disabled or not configured (turned off), which means Microsoft servers are contacted if a site is pinned. If enabled (turned on), Microsoft servers are not contacted if a site is pinned.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventLiveTileDataCollection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventlivetiledatacollection) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.</li><li>**1** - Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.</li></ul> |

## Prevent the First Run webpage from opening on Microsoft Edge
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether to enable or disable the First Run webpage. On the first explicit user-launch of Microsoft Edge, the First Run webpage hosted on microsoft.com opens automatically. This policy allows enterprises, such as those enrolled in a zero-emissions configuration, to prevent this page from opening. By default, this setting is disabled or not configured (turned off), which means employees see the First Run page. If enabled (turned on), the employees do not see the First Run page.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventFirstRunPage](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventfirstrunpage) |
|Supported devices |Desktop<br>Mobile  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Employees see the First Run webpage.</li><li>**1** - Employees do not see the First Run webpage.</li></ul> |

## Prevent using Localhost IP address for WebRTC
>*Supported versions: Windows 10, version 1511 or later*


This policy setting specifies whether localhost IP address are visible or hiddle while making phone calls to the WebRTC protocol. By default, this setting is disabled or not configured (turned off), which means the localhost IP address are visible. If enabled (turned on), localhost IP addresses are hidden. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventUsingLocalHostIPAddressForWebRTC](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventusinglocalhostipaddressforwebrtc) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Shows an employee's LocalHost IP address while using the WebRTC protocol.</li><li>**1** - Does not show an employee's LocalHost IP address while using the WebRTC protocol.</li></ul> |


## Send all intranet sites to Internet Explorer 11
>*Supported versions: Windows 10*


This policy setting specifies whether to send intranet traffic to Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge. By default, this setting is disabled or not configured (turned off), which means all websites, including intranet sites, open in Microsoft Edge. If enabled, all intranet sites are opened in Internet Explorer 11 automatically.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[SendIntranetTraffictoInternetExplorer](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-sendintranettraffictointernetexplorer) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Automatically opens all websites, including intranet sites, using Microsoft Edge.</li><li>**1** - Automatically opens all intranet sites using Internet Explorer 11.</li></ul> |

## Set default search engine
>*Supported versions: Windows 10, version 1703 or later*


This policy setting allows you to configure the default search engine for domain-joined or MDM-enrolled devices. By default, this setting is not configured, which means the default search engine is specified in App settings. In this case, employees can change the default search engine at any time unless you disable the "Allow search engine customization" setting, which restricts any changes. If enabled, you can configure a default search engine for employees. When enabled, employees cannot change the default search engine. If disabled, the policy-set search engine will be removed, and, if it is the current default, the default will be set back to the factory Microsoft Edge search engine for the market. 

To set the default search engine, you must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see Search provider discovery. If you'd like your employees to use the default Microsoft Edge settings for each market, you can set the string to EDGEDEFAULT. If you'd like your employees to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[SetDefaultSearchEngine](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-setdefaultsearchengine) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - The default search engine is set to the one specified in App settings.</li><li>**1** - Allows you to configure the default search engine for your employees.</li></ul> |

## Show message when opening sites in Internet Explorer
>*Supported versions: Windows 10, version 1607 and later*


This policy setting specifies whether employees see an additional page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List. By default, this policy is disabled, which means no additional pages display. If enabled, employees see an additional page.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ShowMessageWhenOpeningInteretExplorerSites](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInteretExplorer  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Doesn’t show an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.</li><li>**1** - Shows an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.</li></ul> |

## User shared folder for books
>*Supported versions: Windows 10*

This policy setting specifies whether organizations should use a folder shared across users to store books from the Books Library. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[UseSharedFolderForBooks](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks   |
|Data type | Integer |
|Allowed values |<ul><li>**0** - No shared folder.</li><li>**1** - Use as shared folder.</li></ul> |

<!-- 
## Using Microsoft Intune to manage your Mobile Device Management (MDM) settings for Microsoft Edge
If you manage your policies using Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]( https://go.microsoft.com/fwlink/p/?LinkId=722885) page.

> [!NOTE]
> **Supported Devices** uses these options:
> - **Desktop.** Supports Windows 10 Pro and Windows 10 Enterprise computers that are enrolled with Intune only.
> - **Mobile.** Supports Windows 10 Mobile devices only.
> - **Both.** Supports both desktop and mobile devices.

All devices must be enrolled with Intune if you want to use the Windows Custom URI Policy.

## AllowAddressBarDropdown
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type."
        
        - **1 (default).** Allowed. Address bar drop-down is enabled.

## AllowAutofill
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAutofill

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Autofill to complete form fields.
        
        - **1 (default).** Employees can use Autofill to complete form fields.

## AllowBrowser
- **Supported versions:** Windows 10

- **Supported devices:** Mobile

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowBrowser

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Microsoft Edge.

        - **1 (default).** Employees can use Microsoft Edge. 

## AllowCookies
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowCookies

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Allows all cookies from all sites.
        
        - **1.** Blocks only cookies from 3rd party websites.

        - **2.** Blocks all cookies from all sites.

## AllowDeveloperTools
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use the F12 Developer Tools.
        
        - **1 (default).** Employees can use the F12 Developer Tools.

## AllowDoNotTrack
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Stops employees from sending Do Not Track headers to websites requesting tracking info.
        
        - **1.** Employees can send Do Not Track headers to websites requesting tracking info.    

## AllowExtensions
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowExtensions

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Edge Extensions.
        
        - **1 (default).** Employees can use Edge Extensions.    

## AllowFlash
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlash

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Not allowed. Employees cannot use Adobe Flash.
        
        - **1 (default).** Allowed. Employees can use Adobe Flash.    

## AllowFlashClickToRun
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop|

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlashClickToRun

    - **Data type:** Integer

    - **Allowed values:**

        - **0.**  Adobe Flash content is automatically loaded and run by Microsoft Edge
        
        - **1 (default).** An employee must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.

## AllowInPrivate
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowInPrivate

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use InPrivate browsing.
        
        - **1 (default).** Employees can use InPrivate browsing.

## AllowMicrosoftCompatibilityList
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList

    - **Data type:** Integer

    - **Allowed values:** 

        - **0.** Additional search engines are not allowed and the default cannot be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.

## AllowPasswordManager
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees cannot use Password Manager to save passwords locally.
        
        - **1.** Employees can use Password Manager to save passwords locally.

## AllowPopups
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPopups

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Pop-up Blocker, allowing pop-up windows.
        
        - **1.** Turns on Pop-up Blocker, stopping pop-up windows. 

## AllowSearchEngineCustomization
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Additional search engines are not allowed and the default cannot be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.


## AllowSearchSuggestionsinAddressBar
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees cannot see search suggestions in the Address bar of Microsoft Edge.
        
        - **1.** Employees can see search suggestions in the Address bar of Microsoft Edge.

## AllowSmartScreen
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Windows Defender SmartScreen.
        
        - **1.** Turns on Windows Defender SmartScreen, providing warning messages to your employees about potential phishing scams and malicious software.

## ClearBrowsingDataOnExit
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.
        
        - **1.** Browsing data is cleared on exit.

## ConfigureAdditionalSearchEngines
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Additional search engines are not allowed.
        
        - **1.**  Additional search engines are allowed.

## DisableLockdownOfStartPages
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages.
        
        - **1.** Disable lockdown of the Start pages and allow users to modify them.

## EnterpriseModeSiteList
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList

    - **Data type:** String

    - **Allowed values:**

        - Not configured.

        - **1 (default).** Use the Enterprise Mode Site List, if configured.
        
        - **2.** Specify the location to the site list.

            >[!NOTE]
            >If there’s an .xml file in the cache container, IE waits 65 seconds and then checks the local cache for a newer version of the file from the server, based on standard caching rules. If the server file has a different version number than the version in the cache container, the server file is used and stored in the cache container.<p>If you’re already using a site list, enterprise mode continues to work during the 65 second wait; it just uses your existing site list instead of your new one.

## Favorites
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/Favorites

    - **Data type:** String

    - **Allowed values:**

        - Configure the **Favorite** URLs for your employees.
        
            **Example:**
            
                <contoso.com>
                <fabrikam.com>
            
            URLs must be on separate lines and are not shared between Microsoft Edge and Internet Explorer 11.

## FirstRunURL
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Mobile

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/FirstRunURL

    - **Data type:** String

    - **Allowed values:**

        - Configure the first run URL for your employees.
        
            **Example:**
            
                <contoso.one>

## HomePages
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/HomePages

    - **Data type:** String

    - **Allowed values:**

        - Configure the Start page (previously known as Home page) URLs for your employees.
        
            **Example:**
            
                <contoso.com/support><fabrikam.com/support>

## PreventAccessToAboutFlagsInMicrosoftEdge
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees can access the about:flags page in Microsoft Edge.
        
        - **1.** Employees cannot access the about:flags page in Microsoft Edge.

## PreventFirstRunPage
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees see the First Run webpage.
        
        - **1.** Employees do not see the First Run webpage.

## PreventLiveTileDataCollection
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.
        
        - **1.** Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.

## PreventSmartScreenPromptOverride
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartscreenPromptOverride

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Windows Defender SmartScreen.
        
        - **1.** Turns on Windows Defender SmartScreen.

## PreventSmartScreenPromptOverrideForFiles
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Lets employees ignore the Windows Defender SmartScreen warnings about unverified files and lets them continue the download process.
        
        - **1.** Stops employees from ignoring the Windows Defender SmartScreen warnings about unverified files.

## PreventUsingLocalHostIPAddressForWebRTC
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Shows an employee's LocalHost IP address while using the WebRTC protocol.
        
        - **1.** Does not show an employee's LocalHost IP address while using the WebRTC protocol.

## SendIntranetTraffictoInternetExplorer
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Automatically opens all websites, including intranet sites, using Microsoft Edge.
        
        - **1.** Automatically opens all intranet sites using Internet Explorer 11.

## SetDefaultSearchEngine
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** The default search engine is set to the one specified in App settings.
        
        - **1.** Allows you to configure the default search engine for your employees.

## ShowMessageWhenOpeningInteretExplorerSites
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInteretExplorer

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Doesn’t show an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.
        
        - **1.** Shows an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.

## SyncFavoritesBetweenIEAndMicrosoftEdge
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SyncFavoritesBetweenIEAndMicrosoftEdge

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Synchronization is turned off.
        
        - **1.** Synchronization is turned on.

        >[!Note]
        >Enabling this setting stops Edge favorites from syncing between connected Windows 10 devices.


## Microsoft Edge and Windows 10-specific Group Policy settings
These are additional Windows 10-specific Group Policy settings that work with Microsoft Edge.

## Allow Cortana
- **Location:** Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana

- **Description:** This policy setting specifies whether Cortana is allowed on the device. By default, this setting is enabled (allowed), which allows employees to use Cortana on their devices. If disabled (not allowed), employees cannot use Cortana, but can use search to find items on the device. 
- 
**Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[AllowCortana](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowcortana) |
|Supported devices |Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowCortana  |
|Location |Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not allowed.</li><li>**1 (default)** - Allowed.</li></ul> |

## Do not sync
- **Location:** Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync

- **Description:** This policy setting specifies whether employees can use the Sync your Settings option to sync their settings to and from their device. By default, this setting is disabled or not configured, which means the Sync your Settings options are turned on, letting employees pick what can sync on their device. If enabled, the Sync your Settings options are turned off and none of the Sync your Setting groups are synced on the device. You can use the Allow users to turn syncing on option to turn the feature off by default, but to let the employee change this setting. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).
- 
- 

    
## Do not sync browser settings
- **Location:** 

- **Description:** This policy setting specifies whether a browser group can use the Sync your Settings options to sync their information to and from their device. Settings include information like History and Favorites. By default, this setting is disabled or not configured, which means the Sync your Settings options are turned on, letting browser groups pick what can sync on their device. If enabled, the Sync your Settings options are turned off so that browser groups are unable to sync their settings and info. You can use the Allow users to turn browser syncing on option to turn the feature off by default, but to let the employee change this setting.
- **Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[AllowSyncMySettings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings  |
|Location |Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync browser settings |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Employees cannot sync settings between PCs.</li><li>**1 (default)** - Employees can sync between PCs.</li></ul> |


## Microsoft Edge and Windows 10-specific MDM policy settings
These are additional Windows 10-specific MDM policy settings that work with Microsoft Edge.

## AllowCortana
- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowCortana

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Cortana on their devices.
        
        - **1 (default).** Employees can use Cortana on their devices.

## AllowSyncMySettings
- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot sync settings between PCs.
        
        - **1 (default).** Employees can sync between PCs.
-->

## Related topics
* [Mobile Device Management (MDM) settings]( https://go.microsoft.com/fwlink/p/?LinkId=722885)
