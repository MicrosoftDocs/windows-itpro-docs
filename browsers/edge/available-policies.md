---
description: Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.
ms.assetid: 2e849894-255d-4f68-ae88-c2e4e31fa165
author: eross-msft
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: Group Policy and Mobile Device Management settings for Microsoft Edge (Microsoft Edge for IT Pros)
ms.localizationpriority: high
ms.date: 09/13/2017 #Previsou release date
---

<!-- pashort 2/9/2018: as per Brian Altman, the documentation descrepancies must be addressed for RS5. Find out what those discrepancies are. Scenario 15403628 -->

# Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge

> Applies to: Windows 10, Windows 10 Mobile

Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences.

By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain.

> [!NOTE]
> For more info about the tools you can use to change your Group Policy objects, see the Internet Explorer 11 topics, [Group Policy and the Group Policy Management Console (GPMC)](https://go.microsoft.com/fwlink/p/?LinkId=617921), [Group Policy and the Local Group Policy Editor](https://go.microsoft.com/fwlink/p/?LinkId=617922), [Group Policy and the Advanced Group Policy Management (AGPM)](https://go.microsoft.com/fwlink/p/?LinkId=617923), and [Group Policy and Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=617924).

## Group Policy settings
Microsoft Edge works with the following Group Policy settings to help you manage your company's web browser configurations. The Group Policy settings are found in the Group Policy Editor in the following location: 

`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`

<!-- original text 
Microsoft Edge works with these Group Policy settings (`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`) to help you manage your company's web browser configurations:
-->

### Allow Address bar drop-down list suggestions
>*Supporteded versions: Windows 10, version 1703*

This policy setting lets you decide whether the Address bar drop-down functionality is available in Microsoft Edge. We recommend disabling this setting if you want to minimize network connections from Microsoft Edge to Microsoft services.
| If you... | Then... |
| --- | --- |
| Enable (default) | Employees can see the Address bar drop-down functionality in Microsoft Edge. | 
| Disable | Employees do not see the Address bar drop-down functionality in Microsoft Edge. This setting also disables the user-defined setting, "Show search and site suggestions as I type."<p>Disabling this setting turns off the Address bar drop-down functionality. Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the "Configure search suggestions in Address bar" setting. |
 
### Allow Adobe Flash
>*Supporteded version: Windows 10*

This policy setting lets you decide whether employees can run Adobe Flash on Microsoft Edge.
| If you… | Then… |
| --- | --- |
| Enable or don’t configure (default) | Employees can use Adobe Flash. | 
| Disable | Employees cannot use Adobe Flash. | 

### Allow clearing browsing data on exit
>*Supporteded versions: Windows 10, version 1703*

This policy setting allows the automatic clearing of browsing data when Microsoft Edge closes.
| If you… | Then… |
| --- | --- |
| Enable | Clear browsing history on exit is turned on. <!-- <span style="background: #ffff99;">[@Reviewer: can employees do anything to this setting at this point? Or is this controlled by the system administrator?]</span> --> |
| Disable or don’t configure (default) | Employees can turn on and configure the Clear browsing data option under Settings. |

### Allow Developer Tools
>*Supporteded versions: Windows 10, version 1511 or later*

This policy setting lets you decide whether F12 Developer Tools are available on Microsoft Edge.
| If you… | Then… | 
| --- | --- |
| Enable (default) | F12 Developer Tools are available. |
| Disable | F12 Developer Tools are not available. |

### Allow Extensions
>*Supporteded versions: Windows 10, version 1607 or later*

This policy setting lets you decide whether employees can use Microsft Edge Extensions.
| If you… | Then… |
| --- | --- |
| Enable | Employees can use Microsoft Edge Extensions. |
| Disable | <!-- <span style="background: #ffff99;">[@Reviewer: why would a company Disable setting? Is this because of potential memory leaks?]</span> --> Employees cannot use Microsoft Edge Extensions. |

### Allow InPrivate browsing
>*Supporteded versions: Windows 10, version 1511 or later*

This policy setting lets you decide whether employees can browse using InPrivate website browsing.
| If you… | Then… |
| --- | --- |
| Enable (default) | Employees can use InPrivate website browsing. |
| Disable | <!-- <span style="background: #ffff99;">[@Reviewer: why would a company disable this setting? Is this to discourage users from browser inappropriate websites? What are the use cases for having this turned off?]</span> --> Employees cannot use InPrivate website browsing. |

### Allow Microsoft Compatibility List
>*Supporteded versions: Windows 10, version 1607 or later*

This policy setting lets you decide whether to use the Microsoft Compatibility List (a Microsoft-provided list that helps sites with known compatibility issues to display properly) in Microsoft Edge. By default, the Microsoft Compatibility List is enabled and can be viewed by visiting about:compat. <!-- <span style="background: #ffff99;">[@Reviewer: Is this supposed to be a link to another topic? Is the topic Use Enterprise Mode to improve compatibility emie-to-improve-compatibility.md?]</span> -->
| If you… | Then… |
| --- | --- |
| Enable (default) | Microsoft Edge periodically downloads the latest version of the list from Microsoft, applying the updates during browser navigation <!-- <span style="background: #ffff99;">[@Reviewer: are the updates really applied “during browser navigation?" shouldn't just be as simple as "...applying the updates automatically”?]</span> -->. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site renders as though it’s in whatever version of IE is necessary for it to appear properly. |
| Disable | Browser navigation does not use the Microsoft Compatibility List. |

### Allow search engine customization
>*Supported versions: Windows 10, version 1703*

This policy setting lets you decide whether users can change their search engine. Important. You can only use this setting with domain-joined or MDM-enrolled devices. 

For more info, see the [Microsoft browser extension policy](http://aka.ms/browserpolicy).

| If you… | Then… |
| --- | --- |
| Enable or don’t configure (default) | Employees can add new search engines and change the default used in the Address bar from within Microsoft Edge Settings. | 
| Disable | Employees cannot add search engines or change the default used in the Address bar. |

### Allow web content on New Tab page
>*Supported versions: Windows 10*

This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page. If you use this setting, employees cannot change it.
| If you… | Then… |
| --- | --- |
| Enable | Microsoft Edge opens a new tab with the New Tab page. |
| Disable | Microsoft Edge opens a new tab with a blank page. | 
| Do not configure (default) | Employees can choose how new tabs appear. |

### Configure additional search engines
>*Supported versions: Windows 10, version 1703*

This policy setting lets you add up to 5 additional search engines, which cannot be removed by your employees but can make a personal default engine. This setting does not set the default search engine. For that, you must use the "Set default search engine" setting.
| If you… | Then… |
| --- | --- |
| Enable | You can add up to 5 additional search engines. For each additional search engine, you must add a link to your OpenSearch XML file, including at least the short name and https URL of the search engine, using this format:<br><br> `<https://www.contoso.com/opensearch.xml>` <p>For more info about creating the OpenSearch XML file, see the [Understanding OpenSearch Standards](https://msdn.microsoft.com/en-us/library/dd163546.aspx) topic. | Disable setting (default) | Any added search engines are removed from the employee’s device. <!-- <span style="background: #ffff99;">[@Reviewer: is this implying that Bing is the only search engine on the employee’s device?]</span> --> |
| Do not configure | The search engine list is set to what is specified in App settings. <!-- <span style="background: #ffff99;">[@Reviewer: what’s the difference between “don’t configure this setting”, “Enable setting”, and “Disable this setting”?]</span> --> |

### Configure Autofill
>*Supported versions: Windows 10*

This policy setting lets you decide whether employees can use Autofill the form fields automatically while using Microsoft Edge. By default, employees can choose whether to use Autofill.
| If you… | Then… |
| --- | --- |
| Enable  | Employees can use Autofill to populate form fields automatically. |
| Disable  | Employees cannot use Autofill to populate form fields automatically. |
| Do not configure (default) | Employees can choose whether to use Autofill to populate the form fields automatically. |

### Configure cookies
>*Supported versions: Windows 10*

This setting lets you configure how to work with cookies.
| If you… | Then… |
| --- | --- |
| Enable (default) | You must also decide whether to:<ul><li>**Allow all cookies (default)** from all websites.</li><li>**Block all cookies** from all websites.</li><li>**Block only 3rd-party cookies** from 3rd-party websites.</li></ul> |
| Disable or do not configure | All cookies are allowed from all sites. |

### Configure Do Not Track
>*Supported versions: Windows 10*

This policy setting lets you decide whether employees can send Do Not Track requests to websites that ask for tracking info. By default, Do Not Track requests are never sent, but employees can choose to turn on and send requests.
| If you… | Then… |
| --- | --- |
| Enable | Do Not Track requests are always sent to websites asking for tracking information. |
| Disable | Do Not Track requests are never sent to websites asking for tracking information. | 
| Do not configure (default) | Employees can choose whether to send Do Not Track requests to websites asking for tracking information. |

### Configure Favorites
>*Supported versions: Windows 10, version 1511 or later*

This policy setting lets you configure the default list of Favorites that appear for your employees. Employees can change their Favorites by adding or removing items at any time. <!-- <span style="background: #ffff99;">[@Reviewer: what is the default setting, enabled or disabled? I’m guessing it’s Disabled is the default.]</span> -->
| If you… | Then… |
| --- | --- |
| Enable | You must provide a list of Favorites in the Options section. The list imports automatically after you deploy this policy. |
| Disable or do not configure | Employees will see the Favorites that they set in the Favorites hub. |

### Configure Password Manager
>*Supported versions: Windows 10*

This policy setting lets you decide whether employees can save their passwords locally, using Password Manager. By default, Password Manager is turned on.
| If you… | Then… |
| --- | --- |
| Enable (default) | Employees can use Password Manager to save their passwords locally. |
| Disable | Employees cannot use Password Manager to save their passwords locally. | 
| Do not configure | Employees can choose whether to use Password Manager to save their passwords locally. |

### Configure Pop-up Blocker
>*Supported versions: Windows 10*

This policy setting lets you decide whether to turn on Pop-up Blocker. By default, Pop-up Blocker is turned on.
| If you… | Then… |
| --- | --- |
| Enable (default) | Pop-up Blocker is turned on, stopping pop-up windows from appearing. |
| Disable | Pop-up Blocker is turned off, letting pop-up windows appear. |
| Do not configure | Employees can choose whether to use Pop-up Blocker. |

### Configure search suggestions in Address bar
>*Supported versions: Windows 10*

This policy setting lets you decide whether search suggestions appear in the Address bar of Microsoft Edge. By default, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.
| If you… | Then… |
| --- | --- |
| Enable | Employees can see search suggestions in the Address bar. |
| Disable | Employees cannot see search suggestions in the Address bar. |
| Do not configure (default) | Employees can choose whether search suggestions appear in the Address bar. |

### Configure Start pages
>*Supported versions: Windows 10, version 1511 or later*

This policy setting lets you configure one or more Start pages, for domain-joined devices. Your employees will not be able to change this after you set it.
| If you… | Then… |
| --- | --- |
| Enable | You must include URLs to the pages, separating multiple pages by using angle brackets in this format: <br><br>`<support.contoso.com><support.microsoft.com>` |  
| Disable or do not configure (default) | The default Start page is the webpage specified in App settings. |

### Configure the Adobe Flash Click-to-Run setting
>*Supported versions: Windows 10, version 1703*

This policy setting lets you decide whether employees must take action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash. <!-- <span style="background: #ffff99;">[@Reviewer: what is the default, enabled or disabled?]</span> -->
| If you… | Then… |
| --- | --- |
| Enable or don’t configure | Employees must click the content, click the Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content. |
| Disable | Adobe Flash loads automatically and runs in Microsoft Edge. |

### Configure the Enterprise Mode Site List
>*Supported versions: Windows 10*

This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps.
| If you… | Then… |
| --- | --- |
| Enable | You must add the location to your site list in the **{URI}** box. When configured, Microsoft Edge looks for the Enterprise Mode Site List XML file, which includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode. |
Disable or do not configure (default) | Microsoft Edge won’t use the Enterprise Mode Site List XML file. In this case, employees might experience compatibility problems while using legacy apps. |

>[!Note] 
>If there is a .xml file in the cache container, IE waits 65 seconds and then checks the local cache for a newer version of the file from the server, based on standard caching rules. If the server has a different version number than the version in the cache container, the server file is used and stored in the cache container.<br><br>
>If you already use a site list, enterprise mode continues to work during the 65-second wait; it just uses the existing site list instead of the new one.  

### Configure Windows Defender SmartScreen
>*Supported versions: Windows 10*

This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your employees from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on.
| If you… | Then… |
| --- | --- |
| Enable | Windows Defender SmartScreen is turned on, and employees cannot turn it off. | 
| Disable | Windows Defender SmartScreen is turned off, and employees cannot turn it on. |
| Do not configure | Employees can choose whether to use Windows Defender SmartScreen. |

### Disable lockdown of Start pages
>*Supported versions: Windows 10, version 1703*

This policy setting lets you disable the lockdown of Start pages if the Configure Start pages setting is in effect <!-- <span style="background: #ffff99;">[@Reviewer: shouldn't this be “…is enabled” instead of "...is in effect"?]</span> -->. This setting only applies to domain-joined or MDM-enrolled devices. 

For more info, see the [Microsoft browser extension policy](http://aka.ms/browserpolicy).

| If you… | Then… |
| --- | --- |
| Enable | You cannot lock down Start pages that are configured using the “Configure Start pages” setting. Employees can, therefore, modify the pages. |
| Disable or do not configure (default) | Employees cannot change Start pages configured using the “Configure Start pages” setting. |                                                                 

### Keep favorites in sync between Internet Explorer and Microsoft Edge
>*Supported versions: Windows 10, version 1703*

This policy setting lets you decide whether people can sync their favorites between Internet Explorer and Microsoft Edge, including additions, deletions, changes, and position.

<!-- 
<span style="background: #ffff99;">[@Reviewer: what is the default: enable or disable?]</span> -->
| If you… | Then… |
| --- | --- |
| Enable | Employees can sync their favorites between Internet Explorer and Microsoft Edge.<br><br>Enabling this setting stops Microsoft Edge favorites from syncing between connected Windows 10 devices. <!-- <span style="background: #ffff99;">[@Reviewer: what does this mean? I want to know more about what this is saying. More details and maybe an example or scenario.]</span> --> |
| Disable or do not configure | Employees cannot sync their favorites between Internet Explorer and Microsoft Edge. |

### Prevent access to the about:flags page
>*Supported versions: Windows 10, version 1607 or later*

This policy setting lets you decide whether employees can access the about:flags page, which is used to change developer settings and to enable experimental features.
| If you… | Then… |
| --- | --- |
| Enable | Employees cannot access the about:flags page. |
| Disable or do not configure (default) | Employees can access the about:flags page. |                                                                 

### Prevent bypassing Windows Defender SmartScreen prompts for files
>*Supported versions: Windows 10, version 1511 or later*

This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files.
| If you… | Then… |
| --- | --- |
| Enable | Employees cannot ignore Windows Defender SmartScreen warnings when downloading files. |
| Disable or do not configure (default) | Employees can ignore Windows Defender SmartScreen warnings and can continue the download process. |                                                                                                                                                  
### Prevent bypassing Windows Defender SmartScreen prompts for sites
>*Supported versions: Windows 10, version 1511 or later*

This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites.
| If you… | Then… |
| --- | --- |
| Enable | Employees cannot ignore Windows Defender SmartScreen warnings and prevents them from continuing to the site. |
| Disable or do not configure (default) | Employees can ignore Windows Defender SmartScreen warnings, allowing them to continue to the site. |

### Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start
>*Supported versions: Windows 10, version 1703*

This policy lets you decide whether Microsoft Edge can gather Live Tile metadata from the ieonline.microsoft.com service to provide a better experience while pinning a Live Tile to the Start menu.
| If you… | Then… |
| --- | --- |
| Enable | Microsoft Edge does not gather the Live Tile metadata, providing a minimal experience. | 
| Disable or do not configure (default) | Microsoft Edge gathers the Live Tile metadata, providing a fuller and complete experience. |


### Prevent the First Run webpage from opening on Microsoft Edge
>*Supported versions: Windows 10, version 1703*

This policy setting lets you decide whether employees see Microsoft's First Run webpage when opening Microsoft Edge for the first time.
| If you… | Then… |
| --- | --- |
| Enable | Employees do not see the First Run page. |
| Disable or do not configure (default) | Employees see the First Run page. |

### Prevent using Localhost IP address for WebRTC
>*Supported versions: Windows 10, version 1511 or later*

This policy setting lets you decide whether localhost IP addresses are visible or hidden while making calls to the WebRTC protocol.
| If you… | Then… |
| --- | --- |
| Enable | Localhost IP addresses are hidden. |
| Disable or do not configure (default) | Localhost IP addresses are visible. |

### Send all intranet sites to Internet Explorer 11
>*Supported versions: Windows 10*

This policy setting lets you decide whether your intranet sites should all open using Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge.
| If you… | Then… |
| --- | --- |
| Enable | All intranet sites are opened in Internet Explorer 11 automatically. |
| Disable or do not configure (default) | All websites, including intranet sites, open in Microsoft Edge. |

### Set default search engine
>*Supported versions: Windows 10, version 1703*

This policy setting applies only to domain-joined or MDM-enrolled devices and lets you configure the default search engine for Microsoft Edge. Employees can change the default search engine at any time unless you disable the "Allow search engine customization" setting, which restricts any changes. 

For more info, see the [Microsoft browser extension policy](http://aka.ms/browserpolicy).

| If you… | Then… |
| --- | --- |
| Enable | To set a default search engine, you must add a link to your OpenSearch XML file, including at least the short name and https URL of the search engine, using this format:<br><br>`https://fabrikam.com/opensearch.xml` |
| Disable | The policy-set default search engine is removed. If this is also the current in-use default, the search engine changes to the Microsoft Edge specified engine for the market <!-- <span style="background: #ffff99;">[@Reviewer: what does “market” mean in this context?]</span> -->. |
| Do not configure | The default search engine is set to the one specified in App settings. |

>[!Important]
>If you'd like your employees to use the default Microsoft Edge settings for each market <!-- <span style="background: #ffff99;">[@Reviewer: what does “each market” refer to in this context?]</span> -->, you can set the string to EDGEDEFAULT. If you'd like your employees to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.

### Show message when opening sites in Internet Explorer
>*Supported versions: Windows 10, version 1607 and later*

This policy setting lets you decide whether employees see an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.
| If you… | Then… |
| --- | --- |
| Enable | Employees see an additional page. |
| Disable or do not configure (default) | No additional pages display. |

## Using Microsoft Intune to manage your Mobile Device Management (MDM) settings for Microsoft Edge
If you manage your policies using Intune, you'll want to use these MDM policy settings. You can see the full list of available policies, on the [Policy CSP]( https://go.microsoft.com/fwlink/p/?LinkId=722885) page.

> [!NOTE]
> **Supported Devices** uses these options:
> - **Desktop.** Supports Windows 10 Pro and Windows 10 Enterprise computers that are enrolled with Intune only.
> - **Mobile.** Supports Windows 10 Mobile devices only.
> - **Both.** Supports both desktop and mobile devices.

All devices must be enrolled with Intune if you want to use the Windows Custom URI Policy.

### AllowAddressBarDropdown
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAddressBarDropdown

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Not allowed. Address bar drop-down is disabled, which also disables the user-defined setting, "Show search and site suggestions as I type."
        
        - **1 (default).** Allowed. Address bar drop-down is enabled.

### AllowAutofill
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAutofill

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Autofill to complete form fields.
        
        - **1 (default).** Employees can use Autofill to complete form fields.

### AllowBrowser
- **Supported versions:** Windows 10

- **Supported devices:** Mobile

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowBrowser

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Microsoft Edge.

        - **1 (default).** Employees can use Microsoft Edge. 

### AllowCookies
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowCookies

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Allows all cookies from all sites.
        
        - **1.** Blocks only cookies from 3rd party websites.

        - **2.** Blocks all cookies from all sites.

### AllowDeveloperTools
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use the F12 Developer Tools.
        
        - **1 (default).** Employees can use the F12 Developer Tools.

### AllowDoNotTrack
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Stops employees from sending Do Not Track headers to websites requesting tracking info.
        
        - **1.** Employees can send Do Not Track headers to websites requesting tracking info.    

### AllowExtensions
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowExtensions

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Edge Extensions.
        
        - **1 (default).** Employees can use Edge Extensions.    

### AllowFlash
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlash

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Not allowed. Employees cannot use Adobe Flash.
        
        - **1 (default).** Allowed. Employees can use Adobe Flash.    

### AllowFlashClickToRun
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop|

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlashClickToRun

    - **Data type:** Integer

    - **Allowed values:**

        - **0.**  Adobe Flash content is automatically loaded and run by Microsoft Edge
        
        - **1 (default).** An employee must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.

### AllowInPrivate
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowInPrivate

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use InPrivate browsing.
        
        - **1 (default).** Employees can use InPrivate browsing.

### AllowMicrosoftCompatibilityList
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList

    - **Data type:** Integer

    - **Allowed values:** 

        - **0.** Additional search engines are not allowed and the default cannot be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.

### AllowPasswordManager
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees cannot use Password Manager to save passwords locally.
        
        - **1.** Employees can use Password Manager to save passwords locally.

### AllowPopups
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPopups

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Pop-up Blocker, allowing pop-up windows.
        
        - **1.** Turns on Pop-up Blocker, stopping pop-up windows. 

### AllowSearchEngineCustomization
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Additional search engines are not allowed and the default cannot be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.


### AllowSearchSuggestionsinAddressBar
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees cannot see search suggestions in the Address bar of Microsoft Edge.
        
        - **1.** Employees can see search suggestions in the Address bar of Microsoft Edge.

### AllowSmartScreen
- **Supported versions:** Windows 10

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Windows Defender SmartScreen.
        
        - **1.** Turns on Windows Defender SmartScreen, providing warning messages to your employees about potential phishing scams and malicious software.

### ClearBrowsingDataOnExit
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Browsing data is not cleared on exit. The type of browsing data to clear can be configured by the employee in the Clear browsing data options under Settings.
        
        - **1.** Browsing data is cleared on exit.

### ConfigureAdditionalSearchEngines
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Additional search engines are not allowed.
        
        - **1.**  Additional search engines are allowed.

### DisableLockdownOfStartPages
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/DisableLockdownOfStartPages

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Enable lockdown of the Start pages according to the settings specified in the Browser/HomePages policy. Users cannot change the Start pages.
        
        - **1.** Disable lockdown of the Start pages and allow users to modify them.

### EnterpriseModeSiteList
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

### Favorites
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

### FirstRunURL
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Mobile

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/FirstRunURL

    - **Data type:** String

    - **Allowed values:**

        - Configure the first run URL for your employees.
        
            **Example:**
            
                <contoso.one>

### HomePages
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/HomePages

    - **Data type:** String

    - **Allowed values:**

        - Configure the Start page (previously known as Home page) URLs for your employees.
        
            **Example:**
            
                <contoso.com/support><fabrikam.com/support>

### PreventAccessToAboutFlagsInMicrosoftEdge
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees can access the about:flags page in Microsoft Edge.
        
        - **1.** Employees cannot access the about:flags page in Microsoft Edge.

### PreventFirstRunPage
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees see the First Run webpage.
        
        - **1.** Employees do not see the First Run webpage.

### PreventLiveTileDataCollection
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventLiveTileDataCollection

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Microsoft servers will be contacted if a site is pinned to Start from Microsoft Edge.
        
        - **1.** Microsoft servers will not be contacted if a site is pinned to Start from Microsoft Edge.

### PreventSmartScreenPromptOverride
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartscreenPromptOverride

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Windows Defender SmartScreen.
        
        - **1.** Turns on Windows Defender SmartScreen.

### PreventSmartScreenPromptOverrideForFiles
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Lets employees ignore the Windows Defender SmartScreen warnings about unverified files and lets them continue the download process.
        
        - **1.** Stops employees from ignoring the Windows Defender SmartScreen warnings about unverified files.

### PreventUsingLocalHostIPAddressForWebRTC
- **Supported versions:** Windows 10, version 1511 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventUsingLocalHostIPAddressForWebRTC

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Shows an employee's LocalHost IP address while using the WebRTC protocol.
        
        - **1.** Does not show an employee's LocalHost IP address while using the WebRTC protocol.

### SendIntranetTraffictoInternetExplorer
- **Supported versions:** Windows 10

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Automatically opens all websites, including intranet sites, using Microsoft Edge.
        
        - **1.** Automatically opens all intranet sites using Internet Explorer 11.

### SetDefaultSearchEngine
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** The default search engine is set to the one specified in App settings.
        
        - **1.** Allows you to configure the default search engine for your employees.

### ShowMessageWhenOpeningInteretExplorerSites
- **Supported versions:** Windows 10, version 1607 and later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInteretExplorer

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Doesn’t show an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.
        
        - **1.** Shows an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.

### SyncFavoritesBetweenIEAndMicrosoftEdge
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

### Allow Cortana
- **Location:** Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana

- **Description:** This policy settings lets you decide whether employees can use Cortana.

    - If you enable or do not configure this setting, employees can use Cortana on their devices.
    
    - If you disable this setting, employees will not be able to use Cortana on their devices.
    
        >[!Note]
        >Employees can still perform searches even with Cortana turned off.

### Do not sync
- **Location:** Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync

- **Description:** This policy settings lets you decide whether employees can use the Sync your Settings options to sync their settings to and from their device.

    - If you enable this setting, the Sync your Settings options are turned off and none of the Sync your Setting groups are synced on the device. You can use the Allow users to turn syncing on option to turn the feature off by default, but to let the employee change this setting.
    
    - If you disable or do not configure this setting (default), the Sync your Settings options are turned on, letting employees pick what can sync on their device.
    
### Do not sync browser settings
- **Location:** Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync browser settings

- **Description:** This policy settings lets you decide whether a browser group can use the Sync your Settings options to sync their info to and from their device. This includes settings and info like History and Favorites.

    - If you enable this setting, the Sync your Settings options are turned off so that browser groups are unable to sync their settings and info. You can use the Allow users to turn browser syncing on option to turn the feature off by default, but to let the employee change this setting.
    
    - If you disable or do not configure this setting (default), the Sync your Settings options are turned on, letting browser groups pick what can sync on their device.


## Microsoft Edge and Windows 10-specific MDM policy settings
These are additional Windows 10-specific MDM policy settings that work with Microsoft Edge.

### AllowCortana
- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowCortana

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot use Cortana on their devices.
        
        - **1 (default).** Employees can use Cortana on their devices.

### AllowSyncMySettings
- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees cannot sync settings between PCs.
        
        - **1 (default).** Employees can sync between PCs.

## Related topics
* [Mobile Device Management (MDM) settings]( https://go.microsoft.com/fwlink/p/?LinkId=722885)
