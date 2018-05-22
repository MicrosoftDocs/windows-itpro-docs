---
description: Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.
ms.assetid: 2e849894-255d-4f68-ae88-c2e4e31fa165
author: shortpatti
ms.author: pashort
manager: elizapo
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: Group Policy and Mobile Device Management settings for Microsoft Edge (Microsoft Edge for IT Pros)
ms.localizationpriority: high
ms.date: 4/30/2018 
---

# Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge

> Applies to: Windows 10, Windows 10 Mobile

Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. Group Policy objects (GPOs) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences.

By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that is linked to a domain, and then apply all of those settings to every computer in the domain.

> [!NOTE]
> For more info about the tools you can use to change your Group Policy objects, see the Internet Explorer 11 topics, [Group Policy and the Group Policy Management Console (GPMC)](https://go.microsoft.com/fwlink/p/?LinkId=617921), [Group Policy and the Local Group Policy Editor](https://go.microsoft.com/fwlink/p/?LinkId=617922), [Group Policy and the Advanced Group Policy Management (AGPM)](https://go.microsoft.com/fwlink/p/?LinkId=617923), and [Group Policy and Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=617924).


Microsoft Edge works with the following Group Policy settings to help you manage your company's web browser configurations. The Group Policy settings are found in the Group Policy Editor in the following location: 

Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\

## Allow a shared books folder
>*Supported versions: Windows 10, version 1803*<br>
>*Default setting: None*

You can configure Microsoft Edge to use a shared folder to store books from the Books Library.
 
If enabled, a shared books folder is allowed.
 
If disabled, a shared books folder not allowed. 

**MDM settings in Microsoft Intune** 
|   |   |
|---|---|
|MDM name |Browser/[UseSharedFolderForBooks](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-usesharedfolderforbooks) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/UseSharedFolderForBooks  |
|Data type |Integer  |
|Allowed values |<ul><li>**0** - No folder shared.</li><li>**1** - Use a shared folder.</li></ul> |


## Allow Address bar drop-down list suggestions
>*Supported versions: Windows 10, version 1703 or later*

The Address bar drop-down list, when enabled, allows the Address bar drop-down functionality in Microsoft Edge. By default, this policy is enabled. If disabled, you do not see the address bar drop-down functionality and disables the user-defined policy "Show search and site suggestions as I type."  Therefore, because search suggestions are shown in the drop-down, this policy takes precedence over the [Configure search suggestions in Address bar](https://review.docs.microsoft.com/en-us/microsoft-edge/deploy/available-policies?branch=pashort_edge-backlog_vsts15846461#configure-search-suggestions-in-address-bar) or [AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchsuggestionsinaddressbar) policy.

If you want to minimize network connections from Microsoft Edge to Microsoft services, we recommend that you disable this policy. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowAddressBarDropdown](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowaddressbardropdown) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not Allowed. Address bar drop-down is disabled, which also disables the user-defined policy, "Show search and site suggestions as I type."</li><li>**1 (default)** - Allowed. Address bar drop-down is enabled.</li></ul> |

 
## Allow Adobe Flash
>*Supported version: Windows 10*

Adobe Flash is integrated with Microsoft Edge and is updated via Windows Update. By default, this policy is enabled or not configured allowing you to use Adobe Flash Player in Microsoft Edge. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowFlash](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowflash) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/AllowAdobeFlash |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Adobe Flash cannot be used Microsoft Edge.</li><li>**1 (default)** - Adobe Flash can be used in Microsoft Edge. </li></ul> |

## Allow clearing browsing data on exit
>*Supported versions: Windows 10, version 1703*

Your browsing data is the information that Microsoft Edge remembers and stores as you browse websites. Browsing data includes information you entered forms, passwords, and the websites you visited. By default, this policy is disabled or not configured, the browsing data is not cleared when exiting. When this policy is disabled or not configured, you can turn on and configure the Clear browsing data option under Settings. 


**Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[ClearBrowsingDataOnExit](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-clearbrowsingdataonexit) |
|Supported devices |Desktop  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.</li><li>**1** - Browsing data is cleared on exit.</li></ul> |


## Allow configuration updates for the Books Library
>*Supported versions: Windows 10, version 1803*<br>
>*Default setting: Enabled or not configured*

Microsoft Edge automatically retrieves the configuration data for the Books Library, when this policy is enabled or
not configured. If disabled, Microsoft Edge does not retrieve the Books configuration data.

**MDM settings in Microsoft Intune** 
|   |   |
|---|---|
|MDM name |Browser/[AllowConfigurationUpdateForBooksLibrary](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowconfigurationupdateforbookslibrary) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowConfigurationUpdateForBooksLibrary  |
|Data type |Integer  |
|Allowed values |<ul><li>**0** - Disable. Microsoft Edge cannot retrieve a configuration.</li><li>**1 (default)** - Enable (default). Microsoft Edge can retrieve a configuration for Books Library.</li></ul> |


## Allow Cortana
>*Supported versions: Windows 10, version 1607 or later*

Cortana is integrated with Microsoft Edge, and when enabled, Cortana allows you to use the voice assistant on your device. If disabled, Cortana is not available for use, but you can search to find items on your device. 

**Microsoft Intune to manage your MDM settings**
|   |   |
|---|---|
|MDM name |[AllowCortana](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowcortana) |
|Supported devices |Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowCortana  |
|Location |Computer Configuration\Administrative Templates\Windows Components\Search\AllowCortana |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Not allowed.</li><li>**1 (default)** - Allowed.</li></ul> |

## Allow Developer Tools
>*Supported versions: Windows 10, version 1511 or later*

F12 developer tools is a suite of tools to help you build and debug your webpage. By default, this policy is enabled making the F12 Developer Tools available to use.  

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowDeveloperTools](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowdevelopertools) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - The F12 Developer Tools are disabled.</li><li>**1 (default)** - The F12 Developer Tools are enabled.</li></ul> |

## Allow extended telemetry for the Books tab
>*Supported versions: Windows 10, version 1803*<br>
>*Default setting: Disabled or not configured*

If you enable this policy, both basic and additional diagnostic data is sent to Microsoft about the books you are
reading from Books in Microsoft Edge. By default, this policy is disabled or not configured and only basic
diagnostic data, depending on your device configuration, is sent to Microsoft.

**MDM settings in Microsoft Intune** 
|   |   |
|---|---|
|MDM name |Browser/[EnableExtendedBooksTelemetry](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/EnableExtendedBooksTelemetry  |
|Data type |Integer  |
|Allowed values |<ul><li>**0 (default)** - Disable. No additional diagnostic data.</li><li>**1** - Enable. Additional diagnostic data for schools.</li></ul> |


## Allow Extensions
>*Supported versions: Windows 10, version 1607 or later*

If you enable this policy, you can personalize and add new features to Microsoft Edge with extensions. By default, this policy is enabled. If you want to prevent others from installing unwanted extensions, disable this policy.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowextensions) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowExtensions  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Microsoft Edge extensions are disabled.</li><li>**1 (default)** - Microsoft Edge Extensions are enabled. </li></ul> |

## Allow InPrivate browsing
>*Supported versions: Windows 10, version 1511 or later*

InPrivate browsing, when enabled, prevents your browsing data is not saved on your device. Microsoft Edge deletes temporary data from your device after all your InPrivate tabs are closed. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowInPrivate](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowinprivate) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowInPrivate  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - InPrivate browsing is disabled.</li><li>**1 (default)** - InPrivate browsing is enabled.</li></ul> |

## Allow Microsoft Compatibility List
>*Supported versions: Windows 10, version 1703 or later*

Microsoft Edge uses the compatibility list that helps websites with known compatibility issues display properly. When enabled, Microsoft Edge checks the list to determine if the website has compatibility issues during browser navigation. By default, this policy is enabled allowing periodic downloads and installation of updates. Visiting any site on the Microsoft compatibility list prompts the employee to use Internet Explorer 11, where the site renders as though it is in whatever version of IE is necessary for it to appear properly. If disabled, the compatibility list is not used.


**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowMicrosoftCompatibilityList](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowmicrosoftcompatibilitylist) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Disabled. The Microsoft compatibility list is ignored.</li><li>**1 (default)** - Enabled. The Microsoft compatibility list is periodically update and used during browser navigation.</li></ul> |

## Allow search engine customization
>*Supported versions: Windows 10, version 1703 or later*

This policy setting allows search engine customization for domain-joined or MDM-enrolled devices only. For example, you can change the default search engine or add a new search engine. By default, this setting is enabled allowing you to add new search engines and change the default under Settings. If disabled, you cannot add search engines or change the default.

For more information, see [Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy).

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowSearchEngineCustomization](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchenginecustomization) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization  |
|Data type | Integer |
|Allowed values |<ul><li>**0** - Additional search engines are not allowed, and the default cannot be changed in the Address bar.</li><li>**1 (default)** - Additional search engines are allowed, and the default can be changed in the Address bar.</li></ul> |

## Allow web content on New Tab page
>*Supported versions: Windows 10*

This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page. 

If you enable this setting, Microsoft Edge opens a new tab with the New Tab page.  

If you disable this setting, Microsoft Edge opens a new tab with a blank page. If you use this setting, employees can't change it.  

If you don't configure this setting, employees can choose how new tabs appears.


## Always show the Books Library in Microsoft Edge
>*Supported versions: Windows 10, version 1709 or later*

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

For each additional search engine, you add, specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).

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

This policy setting specifies whether AutoFill on websites is allowed. By default, this setting is not configured allowing you to choose whether or not to use AutoFill. If enabled, AutoFill is used. If disabled, AutoFill is not used. 

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

This policy setting specifies whether Do Not Track requests to websites is allowed. By default, this setting is not configured allowing you to choose if to send tracking information. If enabled, Do Not Track requests are always sent to websites asking for tracking information. If disabled, Do Not Track requests are never sent. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowDoNotTrack](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Stops you from sending Do Not Track headers to websites requesting tracking info.</li><li>**1** - Employees can send Do Not Track headers to websites requesting tracking info. </li></ul> |


## Configure Favorites
>*Supported versions: Microsoft Edge on Windows 10, version 1511 or later*
This policy setting lets you configure the default list of Favorites that appear for your employees. Employees can change their favorites by adding or removing items at any time.

If you enable this setting, you can configure what default Favorites appear for your employees. If this setting is enabled, you must also provide a list of Favorites in the Options section. This list is imported after your policy is deployed.

If you disable or don't configure this setting, employees will see the Favorites that they set in the Favorites hub.


## Configure Password Manager
>*Supported versions: Windows 10*

This policy setting specifies whether saving and managing passwords locally on the device is allowed. By default, this setting is enabled allowing you to save their passwords locally. If not configured, you can choose if to save and manage passwords locally. If disabled, saving and managing passwords locally is turned off. 

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

This policy setting specifies whether pop-up blocker is allowed or enabled. By default, pop-up blocker is turned on. If not configured, you can choose whether to turn on or turn off pop-up blocker. If disabled, pop-up blocker is turned off.

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

This policy setting specifies whether search suggestions are allowed in the address bar. By default, this setting is not configured allowing you to choose whether search suggestions appear in the address bar.  If enabled, search suggestions appear.  If disabled, search suggestions do not appear.

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
|Allowed values |Configure the Start page (previously known as Home page) URLs for your you. |

## Configure the Adobe Flash Click-to-Run setting
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether you must take action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. By default, this setting is enabled. When the setting is enabled, you must click the content, Click-to-Run button, or have the site appear on an auto-allow list before the Adobe Flash content loads. If disabled, Adobe Flash loads and runs automatically.

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

This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps. By default, this setting is disabled or not configured, which means the Enterprise Mode Site List is not used. In this case, you might experience compatibility problems while using legacy apps. If enabled, you must add the location to your site list in the **{URI}** box. when enabled, Microsoft Edge looks for the Enterprise Mode Site List XML file, which includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode.

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

This policy setting specifies whether Windows Defender SmartScreen is allowed. By default, this setting is enabled or turned on, and you cannot turn it off. If disabled, Windows Defender SmartScreen is turned off, and you cannot turn it on. If not configured, you can choose whether to use Windows Defender SmartScreen.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[AllowSmartScreen](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsmartscreen) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Turns off Windows Defender SmartScreen.</li><li>**1** - Turns on Windows Defender SmartScreen, providing warning messages to your you about potential phishing scams and malicious software.</li></ul> |

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

This policy setting specifies whether you can use the Sync your Settings option to sync their settings to and from their device. By default, this setting is disabled or not configured, which means the Sync your Settings options are turned on, letting you pick what can sync on their device. If enabled, the Sync your Settings options are turned off and none of the Sync your Setting groups are synced on the device. You can use the Allow users to turn syncing on the option to turn the feature off by default, but to let the employee change this setting. For information about what settings are synced, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

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

## Keep favorites in sync between Internet Explorer and Microsoft Edge
>*Supported versions: Windows 10, version 1703 or later*

This policy setting specifies whether favorites are kept in sync between Internet Explorer and Microsoft Edge. Changes to favorites in one browser are reflected in the other, including additions, deletions, modifications, and ordering. By default, this setting is disabled or not configured. When disabled or not configured, you cannot sync their favorites. If enabled, you can sync their favorites and stops Microsoft Edge favorites from syncing between connected Windows 10 devices. This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile. 

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

This policy setting specifies whether you can access the about:flags page, which is used to change developer settings and to enable experimental features. By default, this setting is disabled or not configured, which means you can access the about:flags page. If enabled, you cannot access the about:flags page.

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

This policy setting specifies whether you can override the Windows Defender SmartScreen warnings about downloading unverified files. By default, this setting is disabled or not configured (turned off), which means you can ignore the warnings and can continue the download process. If enabled (turned on), you cannot ignore the warnings and blocks them from downloading unverified files.  

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventSmartScreenPromptOverrideForFiles](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverrideforfiles) |
|Supported devices |Desktop<br>Mobile  |
|URI full path | ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Lets you ignore the Windows Defender SmartScreen warnings about unverified files and lets them continue the download process.</li><li>**1** - Stops you from ignoring the Windows Defender SmartScreen warnings about unverified files.</li></ul> |

## Prevent bypassing Windows Defender SmartScreen prompts for sites
>*Supported versions: Windows 10, version 1511 or later*

This policy setting specifies whether you can override the Windows Defender SmartScreen warnings about potentially malicious websites. By default, this setting is disabled or not configured (turned off), which means you can ignore the warnings and allows them to continue to the site. If enabled (turned on), you cannot ignore the warnings and blocks them from continuing to the site.

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

This policy setting specifies whether you can add, import, sort, or edit the Favorites list in Microsoft Edge. By default, this setting is disabled or not configured (turned on), which means the Favorites list is not locked down and you can make changes to the Favorites list. If enabled, you cannot make changes to the Favorites list. Also, the Save a Favorite, Import settings, and the context menu items, such as Create a new folder, are turned off. 

>[!Important]
>Don't enable both this setting and the Keep favorites in sync between Internet Explorer and Microsoft Edge setting. Enabling both settings stops you from syncing their favorites between Internet Explorer and Microsoft Edge.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[LockdownFavorites](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-lockdownfavorites) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/LockdownFavorites  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Disabled. Do not lockdown Favorites.</li><li>**1** - Enabled. Lockdown Favorites.</li></ul> |

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

This policy setting specifies whether to enable or disable the First Run webpage. On the first explicit user-launch of Microsoft Edge, the First Run webpage hosted on microsoft.com opens automatically. This policy allows enterprises, such as those enrolled in a zero-emissions configuration, to prevent this page from opening. By default, this setting is disabled or not configured (turned off), which means you see the First Run page. If enabled (turned on), the you do not see the First Run page.

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


This policy setting specifies whether localhost IP address is visible or hidden while making phone calls to the WebRTC protocol. By default, this setting is disabled or not configured (turned off), which means the localhost IP address is visible. If enabled (turned on), localhost IP addresses are hidden. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[PreventUsingLocalHostIPAddressForWebRTC](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventusinglocalhostipaddressforwebrtc) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Shows an employee's LocalHost IP address while using the WebRTC protocol.</li><li>**1** - Does not show an employee's LocalHost IP address while using the WebRTC protocol.</li></ul> |

## Provision Favorites
>*Supported versions: Windows 10, version 1709*

You can configure a default list of favorites that appear for your users in Microsoft Edge. 

If disabled or not configured, a default list of favorites is not defined in Microsoft Edge. In this case, users can customize the Favorites list, such as adding folders for organizing, adding, or removing favorites.

If enabled, a default list of favorites is defined for users in Microsoft Edge. Users are not allowed to add, import, or change the Favorites list. In this case, the Save a Favorite, Import settings, and context menu options (such as Create a new folder) are turned off. 

To define a default list of favorites, you can export favorites from Microsoft Edge and use the HTML file for provisioning user machines. In HTML format, specify the URL which points to the file that has all the data for provisioning favorites.

URL can be specified as:
- HTTP location: "SiteList"="http://localhost:8080/URLs.html"
- Local network: "SiteList"="\network\shares\URLs.html"
- Local file: "SiteList"="file:///c:\Users\\Documents\URLs.html"

>[!Important]
>You can only enable either this policy or the Keep favorites in sync between Internet Explorer and Microsoft Edge policy, but not both. Enabling both stops you from syncing favorites between Internet Explorer and Microsoft Edge. 

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ProvisionFavorites](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-provisionfavorites) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/ProvisionFavorites  |
|Data type | String |


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


This policy setting allows you to configure the default search engine for domain-joined or MDM-enrolled devices. By default, this setting is not configured, which means the default search engine is specified in App settings. In this case, you can change the default search engine at any time unless you disable the "Allow search engine customization" setting, which restricts any changes. If enabled, you can configure a default search engine for you. When enabled, you cannot change the default search engine. If disabled, the policy-set search engine will be removed, and, if it is the current default, the default will be set back to the factory Microsoft Edge search engine for the market. 

To set the default search engine, you must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see Search provider discovery. If you'd like your you to use the default Microsoft Edge settings for each market, you can set the string to EDGEDEFAULT. If you'd like your you to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[SetDefaultSearchEngine](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-setdefaultsearchengine) |
|Supported devices |Desktop<br>Mobile  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - The default search engine is set to the one specified in App settings.</li><li>**1** - Allows you to configure the default search engine for your you.</li></ul> |

## Show message when opening sites in Internet Explorer
>*Supported versions: Windows 10, version 1607 and later*


This policy setting specifies whether you see an additional page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List. By default, this policy is disabled, which means no additional page’s display. If enabled, you see an additional page.

**Microsoft Intune to manage your MDM settings** 
|   |   |
|---|---|
|MDM name |[ShowMessageWhenOpeningInteretExplorerSites](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer) |
|Supported devices |Desktop  |
|URI full path |./Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInteretExplorer  |
|Data type | Integer |
|Allowed values |<ul><li>**0 (default)** - Doesn’t show an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.</li><li>**1** - Shows an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.</li></ul> |

## Related topics
* [Mobile Device Management (MDM) settings]( https://go.microsoft.com/fwlink/p/?LinkId=722885)
