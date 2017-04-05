---
description: Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.
ms.assetid: 2e849894-255d-4f68-ae88-c2e4e31fa165
author: eross-msft
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: Available Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge (Microsoft Edge for IT Pros)
localizationpriority: high
---

# Available Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge

**Applies to:**

- Windows 10
- Windows 10 Mobile

Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences.

By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain.

> [!NOTE]
> For more info about Group Policy, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514). This site provides links to the latest technical documentation, videos, and downloads for Group Policy. For more info about the tools you can use to change your Group Policy objects, see the Internet Explorer 11 topics, [Group Policy and the Group Policy Management Console (GPMC)](https://go.microsoft.com/fwlink/p/?LinkId=617921), [Group Policy and the Local Group Policy Editor](https://go.microsoft.com/fwlink/p/?LinkId=617922), [Group Policy and the Advanced Group Policy Management (AGPM)](https://go.microsoft.com/fwlink/p/?LinkId=617923), and [Group Policy and Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=617924).

## Group Policy settings
Microsoft Edge works with these Group Policy settings (`Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\`) to help you manage your company's web browser configurations:

### Allow Address bar drop-down list suggestions
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you decide whether the Address bar drop-down functionality is available in Microsoft Edge. We recommend disabling this setting if you want to minimize network connections from Microsoft Edge to Microsoft services.

    - If you enable or don't configure this setting (default), employees can see the Address bar drop-down functionality in Microsoft Edge.

    - If you disable this setting, employees won't see the Address bar drop-down functionality in Microsoft Edge. This setting also disables the user-defined setting, "Show search and site suggestions as I type".

        > [!Note]
        > Disabling this setting turns off the Address bar drop-down functionality. Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the "Configure search suggestions in Address bar" setting.

### Allow Adobe Flash
- **Supported versions:** Windows 10 or later

- **Description:** This setting lets you decide whether employees can run Adobe Flash in Microsoft Edge.

    - If you enable or don't configure this setting (default), employees can use Adobe Flash.
    
    - If you disable this setting, employees can't use Adobe Flash.

### Allow clearing browsing data on exit
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting allows the automatic clearing of browsing data when Microsoft Edge closes.

    - If you enable this policy setting, clearing browsing history on exit is turned on.

    - If you disable or don't configure this policy setting (default), it can be turned on and configured by the employee in the Clear browsing data options area, under Settings.

### Allow Developer Tools
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you decide whether F12 Developer Tools are available on Microsoft Edge.
    - If you enable or don’t configure this setting (default), the F12 Developer Tools are available in Microsoft Edge.

    - If you disable this setting, the F12 Developer Tools aren’t available in Microsoft Edge.

### Allow Extensions
- **Supported versions:** Windows 10, version 1607 or later

- **Description:** This policy setting lets you decide whether employees can use Edge Extensions.

    - If you enable or don’t configure this setting, employees can use Edge Extensions.
    
    - If you disable this setting, employees can’t use Edge Extensions.

### Allow InPrivate browsing
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you decide whether employees can browse using InPrivate website browsing.

    - If you enable or don’t configure this setting (default), employees can use InPrivate website browsing.
    
    - If you disable this setting, employees can’t use InPrivate website browsing.

### Allow Microsoft Compatibility List
- **Supported versions:** Windows 10, version 1607 or later

- **Description:** This policy setting lets you decide whether to use the Microsoft Compatibility List (a Microsoft-provided list that helps sites with known compatibility issues to display properly) in Microsoft Edge. By default, the Microsoft Compatibility List is enabled and can be viewed by visiting about:compat.

    - If you enable or don’t configure this setting (default), Microsoft Edge periodically downloads the latest version of the list from Microsoft, applying the updates during browser navigation. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site is automatically rendered as though it’s in whatever version of IE is necessary for it to appear properly.
    
    - If you disable this setting, the Microsoft Compatibility List isn’t used during browser navigation.

### Allow search engine customization
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you decide whether users can change their search engine.

    >[!Important]
    >This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).

    - If you enable or don't configure this policy (default), users can add new search engines and change the default used in the Address bar from within Microsoft Edge Settings.
    
    - If you disable this setting, users can't add search engines or change the default used in the address bar.

### Allow web content on New Tab page
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you configure what appears when Microsoft Edge opens a new tab. By default, Microsoft Edge opens the New Tab page. If you use this setting, employees can’t change it.

    - If you enable this setting, Microsoft Edge opens a new tab with the New Tab page.
    
    - If you disable this setting, Microsoft Edge opens a new tab with a blank page.
    
    - If you don’t configure this setting (default), employees can choose how new tabs appears.

### Configure additional search engines
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you add up to 5 additional search engines, which can't be removed by your employees, but can be made a personal default engine. This setting doesn't set the default search engine. For that, you must use the "Set default search engine" setting.

    > [!Important]
    > This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).

    - If you enable this setting, you can add up to 5 additional search engines. For each additional engine, you must also add a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine, using this format:
    
            <https://fabrikam.com/opensearch.xml>https://www.contoso.com/opensearch.xml

        For more info about creating the OpenSearch XML file, see the [Understanding OpenSearch Standards](https://msdn.microsoft.com/en-us/library/dd163546.aspx) topic.
    
    - If you disable this setting (default), any added search engines are removed from your employee's devices.
    
    - If you don't configure this setting, the search engine list is set to what is specified in App settings.

### Configure Autofill
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether employees can use Autofill to automatically fill in form fields while using Microsoft Edge. By default, employees can choose whether to use Autofill.

    - If you enable this setting, employees can use Autofill to automatically fill in forms while using Microsoft Edge.
    
    - If you disable this setting, employees can’t use Autofill to automatically fill in forms while using Microsoft Edge.
    
    - If you don’t configure this setting (default), employees can choose whether to use Autofill to automatically fill in forms while using Microsoft Edge.

### Configure cookies
- **Supported versions:** Windows 10 or later

- **Description:** This setting lets you configure how to work with cookies.

    - If you enable this setting, you must also decide whether to:
        - **Allow all cookies (default):** Allows all cookies from all websites.
        
        - **Block all cookies:** Blocks all cookies from all websites.
        
        - **Block only 3rd-party cookies:** Blocks only cookies from 3rd-party websites.
    
    - If you disable or don't configure this setting, all cookies are allowed from all sites.

### Configure Do Not Track
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether employees can send Do Not Track requests to websites that ask for tracking info. By default, Do Not Track requests aren’t sent, but employees can choose to turn on and send requests.

    - If you enable this setting, Do Not Track requests are always sent to websites asking for tracking info.
    
    - If you disable this setting, Do Not Track requests are never sent to websites asking for tracking info.
    
    - If you don’t configure this setting (default), employees can choose whether to send Do Not Track requests to websites asking for tracking info.

### Configure Favorites
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you configure the default list of Favorites that appear for your employees. Employees can change their Favorites by adding or removing items at any time.

    - If you enable this setting, you can configure what default Favorites appear for your employees. If this setting is enabled, you must also provide a list of Favorites in the Options section. This list is imported after your policy is deployed.
    
    - If you disable or don’t configure this setting, employees will see the Favorites that they set in the Favorites hub.

### Configure Password Manager
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether employees can save their passwords locally, using Password Manager. By default, Password Manager is turned on.

    - If you enable this setting (default), employees can use Password Manager to save their passwords locally.
    
    - If you disable this setting, employees can’t use Password Manager to save their passwords locally.
    
    - If you don’t configure this setting, employees can choose whether to use Password Manager to save their passwords locally.

### Configure Pop-up Blocker
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether to turn on Pop-up Blocker. By default, Pop-up Blocker is turned on.

    - If you enable this setting (default), Pop-up Blocker is turned on, stopping pop-up windows from appearing.
    
    - If you disable this setting, Pop-up Blocker is turned off, letting pop-ups windows appear.
    
    - If you don’t configure this setting, employees can choose whether to use Pop-up Blocker.

### Configure search suggestions in Address bar
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether search suggestions appear in the Address bar of Microsoft Edge. By default, employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.

    - If you enable this setting, employees can see search suggestions in the Address bar of Microsoft Edge.

    - If you disable this setting, employees can't see search suggestions in the Address bar of Microsoft Edge.

    - If you don’t configure this setting (default), employees can choose whether search suggestions appear in the Address bar of Microsoft Edge.

### Configure Start pages
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you configure one or more Start pages, for domain-joined devices. Your employees won't be able to change this after you set it.

    - If you enable this setting, you can configure one or more Start pages. If this setting is enabled, you must also include URLs to the pages, separating multiple pages by using angle brackets in this format: 
        
            <support.contoso.com><support.microsoft.com>
    
    - If you disable or don’t configure this setting (default), your default Start page is the webpage specified in App settings.

### Configure the Adobe Flash Click-to-Run setting
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you decide whether employees must take an action, such as clicking the content or a Click-to-Run button, before seeing content in Adobe Flash.

    >[!Important]
    >Sites are put on the auto-allowed list based on how frequently employees load and run the content.

    - If you enable or don’t configure the Adobe Flash Click-to-Run setting, an employee must click the content, click a Click-to-Run button, or have the site appear on an auto-allow list before Microsoft Edge loads and runs Adobe Flash content.
    
    - If you disable this setting, Adobe Flash content is automatically loaded and run by Microsoft Edge.

### Configure the Enterprise Mode Site List
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps.

    - If you enable this setting, Microsoft Edge looks for the Enterprise Mode Site List XML file, which includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode. If you use this option, you must also add the location to your site list in the **{URI}** box. When configured, any site on the list will always open in Internet Explorer 11.
    
    - If you disable or don’t configure this setting (default), Microsoft Edge won’t use the Enterprise Mode Site List XML file. In this case, employees might experience compatibility problems while using legacy apps.

    >[!Note]
    >If there’s an .xml file in the cache container, IE waits 65 seconds and then checks the local cache for a newer version of the file from the server, based on standard caching rules. If the server file has a different version number than the version in the cache container, the server file is used and stored in the cache container.<p>
    >If you’re already using a site list, enterprise mode continues to work during the 65 second wait; it just uses your existing site list instead of your new one.

### Configure Windows Defender SmartScreen
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your employees from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on.

    - If you enable this setting, Windows Defender SmartScreen is turned on and employees can’t turn it off.
    
    - If you disable this setting, Windows Defender SmartScreen is turned off and employees can’t turn it on.
    
    - If you don’t configure this setting (default), employees can choose whether to use Windows Defender SmartScreen.

### Disable lockdown of Start pages
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you disable the lock down of Start pages, letting employees modify the Start pages when the "Configure Start pages" setting is in effect.

    >[!Important]
    >This setting only applies when you're using the “Configure Start pages" setting and can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).
    
    - If you enable this setting, you can't lock down any Start pages that are configured using the "Configure Start pages" setting, which means that employees can modify them.
    
    - If you disable or don't configure this setting (default), employees can't change any Start pages configured using the "Configure Start pages" setting, thereby locking down the Start pages.

### Keep favorites in sync between Internet Explorer and Microsoft Edge
- **Supported versions:** Windows 10, version 1703

- **Description:** This setting lets you decide whether people can sync their favorites between Internet Explorer and Microsoft Edge.

    - If you enable this setting, employees can sync their favorites between Internet Explorer and Microsoft Edge.
    
    - If you disable or don't configure this setting (default), employees can’t sync their favorites between Internet Explorer and Microsoft Edge.

### Prevent access to the about:flags page
- **Supported versions:** Windows 10, version 1607 or later

- **Description:** This policy setting lets you decide whether employees can access the about:flags page, which is used to change developer settings and to enable experimental features.

    - If you enable this policy setting, employees can’t access the about:flags page.
    
    - If you disable or don’t configure this setting (default), employees can access the about:flags page.

### Prevent bypassing Windows Defender SmartScreen prompts for files
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about downloading unverified files.

    - If you enable this setting, employees can’t ignore Windows Defender SmartScreen warnings and they’re blocked from downloading the unverified files.

    - If you disable or don’t configure this setting (default), employees can ignore Windows Defender SmartScreen warnings and continue the download process.

### Prevent bypassing Windows Defender SmartScreen prompts for sites
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you decide whether employees can override the Windows Defender SmartScreen warnings about potentially malicious websites.

    - If you enable this setting, employees can’t ignore Windows Defender SmartScreen warnings and they’re blocked from continuing to the site.
    
    - If you disable or don’t configure this setting (default), employees can ignore Windows Defender SmartScreen warnings and continue to the site.

### Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy lets you decide whether Microsoft Edge can gather Live Tile metadata from the ieonline.microsoft.com service to provide a better experience while pinning a Live Tile to the Start menu.

    - If you enable this setting, Microsoft Edge won't gather the Live Tile metadata, providing a minimal experience when a user pins a Live Tile to the Start menu.
    
    - If you disable or don't configure this setting (default), Microsoft Edge gathers the Live Tile metadata, providing a fuller and more complete experience when a user pins a Live Tile to the Start menu.

### Prevent the First Run webpage from opening on Microsoft Edge
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you decide whether employees see Microsoft's First Run webpage when opening Microsoft Edge for the first time.

    - If you enable this setting, employees won't see the First Run page when opening Microsoft Edge for the first time.
    
    - If you disable or don't configure this setting (default), employees will see the First Run page when opening Microsoft Edge for the first time.

### Prevent using Localhost IP address for WebRTC
- **Supported versions:** Windows 10, version 1511 or later

- **Description:** This policy setting lets you decide whether an employee’s Localhost IP address shows while making calls using the WebRTC protocol. By default, this setting is turned off.

    - If you enable this setting, Localhost IP addresses are hidden while making calls using the WebRTC protocol.
    
    - If you disable or don’t configure this setting (default), Localhost IP addresses are shown while making calls using the WebRTC protocol.

### Send all intranet sites to Internet Explorer 11
- **Supported versions:** Windows 10 or later

- **Description:** This policy setting lets you decide whether your intranet sites should all open using Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge.

    - If you enable this setting, all intranet sites are automatically opened using Internet Explorer 11.
    
    - If you disable or don’t configure this setting (default), all websites, including intranet sites, are automatically opened using Microsoft Edge.

### Set default search engine
- **Supported versions:** Windows 10, version 1703

- **Description:** This policy setting lets you configure the default search engine for your employees. Employees can change the default search engine at any time unless you disable the "Allow search engine customization" setting, which restricts any changes.

    >[!Important]
    >This setting can only be used with domain-joined or MDM-enrolled devices. For more info, see the Microsoft browser extension policy (aka.ms/browserpolicy).<p>
    >If you'd like your employees to use the default Microsoft Edge settings for each market, you can set the string to EDGEDEFAULT. If you'd like your employees to use Microsoft Bing as the default search engine, you can set the string to EDGEBING.

    - If you enable this setting, you can choose a default search engine for your employees. To choose the default engine, you must add a link to your OpenSearch XML file, including at least the short name and https: URL of the search engine, using this format:
    
            https://fabrikam.com/opensearch.xml
    
    - If you disable this setting, the policy-set default search engine is removed. If this is also the current in-use default, the engine changes to the Microsoft Edge specified engine for the market.<p>If you don't configure this setting, the default search engine is set to the one specified in App settings.

    - If you don't configure this setting (default), the default search engine is set to the one specified in App settings.

### Show message when opening sites in Internet Explorer
- **Supported versions:** Windows 10, version 1607 and later

- **Description:** This policy setting lets you decide whether employees see an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.

    - If you enable this setting, employees see an additional page in Microsoft Edge, stating that a site has been opened using Internet Explorer 11.
    
    - If you disable or don’t configure this setting (default), the default app behavior occurs and no additional page appears.

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
- **Supported versions:** Windows 10 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAutofill

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees can’t use Autofill to complete form fields.
        
        - **1 (default).** Employees can use Autofill to complete form fields.

### AllowBrowser
- **Supported versions:** Windows 10 or later

- **Supported devices:** Mobile

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowBrowser

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees can’t use Microsoft Edge.

        - **1 (default).** Employees can use Microsoft Edge. 

### AllowCookies
- **Supported versions:** Windows 10 or later

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

        - **0.** Employees can't use the F12 Developer Tools.
        
        - **1 (default).** Employees can use the F12 Developer Tools.

### AllowDoNotTrack
- **Supported versions:** Windows 10 or later

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

        - **0.** Employees can’t use Edge Extensions.
        
        - **1 (default).** Employees can use Edge Extensions.    

### AllowFlash
- **Supported versions:** Windows 10 or later

- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlash

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Not allowed. Employees can’t use Adobe Flash.
        
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

        - **0.** Employees can’t use InPrivate browsing.
        
        - **1 (default).** Employees can use InPrivate browsing.

### AllowMicrosoftCompatibilityList
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList

    - **Data type:** Integer

    - **Allowed values:** 

        - **0.** Additional search engines aren't allowed and the default can’t be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.

### AllowPasswordManager
- **Supported versions:** Windows 10 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees can't use Password Manager to save passwords locally.
        
        - **1.** Employees can use Password Manager to save passwords locally.

### AllowPopups
- **Supported versions:** Windows 10 or later

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

        - **0.** Additional search engines are not allowed and the default can’t be changed in the Address bar.
        
        - **1 (default).** Additional search engines are allowed and the default can be changed in the Address bar.


### AllowSearchSuggestionsinAddressBar
- **Supported versions:** Windows 10 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees can’t see search suggestions in the Address bar of Microsoft Edge.
        
        - **1.** Employees can see search suggestions in the Address bar of Microsoft Edge.

### AllowSmartScreen
- **Supported versions:** Windows 10 or later

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Turns off Windows Defender SmartScreen.
        
        - **1.** Turns on Windows Defender SmartScreen, providing warning messages to your employees about potential phishing scams and malicious software.

### ClearBrowsingDataOnExit
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

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
- **Supported versions:** Windows 10 or later

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
            
            URLs must be on separate lines and aren't shared between Microsoft Edge and Internet Explorer 11.

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
        
        - **1.** Employees can't access the about:flags page in Microsoft Edge.

### PreventFirstRunPage
- **Supported versions:** Windows 10, version 1703

- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage

    - **Data type:** Integer

    - **Allowed values:**

        - **0 (default).** Employees see the First Run webpage.
        
        - **1.** Employees don't see the First Run webpage.

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
        
        - **1.** Doesn't show an employee's LocalHost IP address while using the WebRTC protocol.

### SendIntranetTraffictoInternetExplorer
- **Supported versions:** Windows 10 or later

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


## Microsoft Edge and Windows 10-specific Group Policy settings
These are additional Windows 10-specific Group Policy settings that work with Microsoft Edge.

### Allow Cortana
- **Location:** Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana

- **Description:** This policy settings lets you decide whether employees can use Cortana.

    - If you enable or don't configure this setting, employees can use Cortana on their devices.
    
    - If you disable this setting, employees won't be able to use Cortana on their devices.
    
        >[!Note]
        >Employees can still perform searches even with Cortana turned off.

### Do not sync
- **Location:** Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync

- **Description:** This policy settings lets you decide whether employees can use the Sync your Settings options to sync their settings to and from their device.

    - If you enable this setting, the Sync your Settings options are turned off and none of the Sync your Setting groups are synced on the device. You can use the Allow users to turn syncing on option to turn the feature off by default, but to let the employee change this setting.
    
    - If you disable or don't configure this setting (default), the Sync your Settings options are turned on, letting employees pick what can sync on their device.
    
### Do not sync browser settings
- **Location:** Computer Configuration\Administrative Templates\Windows Components\sync your settings\Do not sync browser settings

- **Description:** This policy settings lets you decide whether a browser group can use the Sync your Settings options to sync their info to and from their device. This includes settings and info like History and Favorites.

    - If you enable this setting, the Sync your Settings options are turned off so that browser groups are unable to sync their settings and info. You can use the Allow users to turn browser syncing on option to turn the feature off by default, but to let the employee change this setting.
    
    - If you disable or don't configure this setting (default), the Sync your Settings options are turned on, letting browser groups pick what can sync on their device.


## Microsoft Edge and Windows 10-specific MDM policy settings
These are additional Windows 10-specific MDM policy settings that work with Microsoft Edge.

### AllowCortana
- **Supported devices:** Both

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowCortana

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees can’t use Cortana on their devices.
        
        - **1 (default).** Employees can use Cortana on their devices.

### AllowSyncMySettings
- **Supported devices:** Desktop

- **Details:**

    - **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings

    - **Data type:** Integer

    - **Allowed values:**

        - **0.** Employees can’t sync settings between PCs.
        
        - **1 (default).** Employees can sync between PCs.

## Related topics
* [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514)
* [Mobile Device Management (MDM) settings]( https://go.microsoft.com/fwlink/p/?LinkId=722885)