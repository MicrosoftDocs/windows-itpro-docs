---
description: You can customize your organization’s browser settings in Microsoft Edge with Group Policy or Microsoft Intune, or other MDM service. When you do this, you set the policy once and then copy it onto many computers—that is, touch once, configure many. 
ms.assetid: 2e849894-255d-4f68-ae88-c2e4e31fa165
ms.reviewer: 
author: eavena
ms.author: eravena
manager: dansimp
ms.prod: edge
ms.mktglfcycl: explore
ms.topic: reference
ms.sitesec: library
title: Group Policy and Mobile Device Management settings for Microsoft Edge (Microsoft Edge for IT Pros)
ms.localizationpriority: medium
ms.date: 10/29/2018
---

# Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge

> Applies to: Microsoft Edge on Windows 10 and Windows 10 Mobile

You can customize your organization’s browser settings in Microsoft Edge with Group Policy or Microsoft Intune, or other MDM service. When you do this, you set the policy once and then copy it onto many computers—that is, touch once, configure many. For example, you can set up multiple security settings in a Group Policy Object (GPO) linked to a domain, and then apply those settings to every computer in the domain. 

Other policy settings in Microsoft Edge include allowing Adobe Flash content to play automatically, provision a favorites list, set default search engine, and more. You configure a Group Policy setting in the Administrative Templates folders, which are registry-based policy settings that Group Policy enforces. Group Policy stores these settings in a specific registry location, which users cannot change. Also, Group Policy-aware Windows features and applications look for these settings in the registry, and if found the policy setting gets used instead of the regular settings. 

**_You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor:_**
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\*

When you edit a Group Policy setting, you have the following configuration options:

- **Enabled** - writes the policy setting to the registry with a value that enables it.
- **Disabled** - writes the policy setting to the registry with a value that disables it.
- **Not configured** - leaves the policy setting undefined. Group Policy does not write the policy setting to the registry and has no impact on computers or users.

Some policy settings have additional options you can configure. For example, if you want to set the default search engine, set the Start page, or configure the Enterprise Mode Site List, you would type the URL. 


## Allow a shared books folder
[!INCLUDE [allow-shared-folder-books-include.md](includes/allow-shared-folder-books-include.md)] 

## Allow Address bar drop-down list suggestions
[!INCLUDE [allow-address-bar-suggestions-include.md](includes/allow-address-bar-suggestions-include.md)]

## Allow Adobe Flash 
[!INCLUDE [allow-adobe-flash-include.md](includes/allow-adobe-flash-include.md)]

## Allow clearing browsing data on exit
[!INCLUDE [allow-clearing-browsing-data-include.md](includes/allow-clearing-browsing-data-include.md)]

## Allow configuration updates for the Books Library
[!INCLUDE [allow-config-updates-books-include.md](includes/allow-config-updates-books-include.md)]

## Allow Cortana
[!INCLUDE [allow-cortana-include.md](includes/allow-cortana-include.md)]

## Allow Developer Tools
[!INCLUDE [allow-dev-tools-include.md](includes/allow-dev-tools-include.md)]

## Allow extended telemetry for the Books tab
[!INCLUDE [allow-ext-telemetry-books-tab-include.md](includes/allow-ext-telemetry-books-tab-include.md)]

## Allow Extensions
[!INCLUDE [allow-extensions-include.md](includes/allow-extensions-include.md)]

## Allow fullscreen mode
[!INCLUDE [allow-full-screen-include](includes/allow-full-screen-include.md)]

## Allow InPrivate browsing
[!INCLUDE [allow-inprivate-browsing-include.md](includes/allow-inprivate-browsing-include.md)]

## Allow Microsoft Compatibility List
[!INCLUDE [allow-microsoft-compatibility-list-include.md](includes/allow-microsoft-compatibility-list-include.md)]

## Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed
[!INCLUDE [allow-prelaunch-include](includes/allow-prelaunch-include.md)]

## Allow Microsoft Edge to load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed
[!INCLUDE [allow-tab-preloading-include](includes/allow-tab-preloading-include.md)]

## Allow printing
[!INCLUDE [allow-printing-include.md](includes/allow-printing-include.md)]

## Allow Saving History
[!INCLUDE [allow-saving-history-include.md](includes/allow-saving-history-include.md)]

## Allow search engine customization
[!INCLUDE [allow-search-engine-customization-include.md](includes/allow-search-engine-customization-include.md)]

## Allow sideloading of Extensions
[!INCLUDE [allow-sideloading-extensions-include.md](includes/allow-sideloading-extensions-include.md)]

## Allow web content on New Tab page
[!INCLUDE [allow-web-content-new-tab-page-include.md](includes/allow-web-content-new-tab-page-include.md)]

## Always show the Books Library in Microsoft Edge
[!INCLUDE [always-enable-book-library-include.md](includes/always-enable-book-library-include.md)]

## Configure additional search engines
[!INCLUDE [configure-additional-search-engines-include.md](includes/configure-additional-search-engines-include.md)]

## Configure Autofill
[!INCLUDE [configure-autofill-include.md](includes/configure-autofill-include.md)]

## Configure collection of browsing data for Microsoft 365 Analytics
[!INCLUDE [configure-browser-telemetry-for-m365-analytics-include](includes/configure-browser-telemetry-for-m365-analytics-include.md)]

## Configure cookies
[!INCLUDE [configure-cookies-include.md](includes/configure-cookies-include.md)]

## Configure Do Not Track
[!INCLUDE [configure-do-not-track-include.md](includes/configure-do-not-track-include.md)]

## Configure Favorites
[!INCLUDE [configure-favorites-include.md](includes/configure-favorites-include.md)]

## Configure Favorites Bar
[!INCLUDE [configure-favorites-bar-include.md](includes/configure-favorites-bar-include.md)]

## Configure Home Button
[!INCLUDE [configure-home-button-include.md](includes/configure-home-button-include.md)]

## Configure kiosk mode
[!INCLUDE [configure-microsoft-edge-kiosk-mode-include.md](includes/configure-microsoft-edge-kiosk-mode-include.md)]

## Configure kiosk reset after idle timeout
[!INCLUDE [configure-edge-kiosk-reset-idle-timeout-include.md](includes/configure-edge-kiosk-reset-idle-timeout-include.md)]

## Configure Open Microsoft Edge With
[!INCLUDE [configure-open-edge-with-include.md](includes/configure-open-edge-with-include.md)]

## Configure Password Manager
[!INCLUDE [configure-password-manager-include.md](includes/configure-password-manager-include.md)]

## Configure Pop-up Blocker
[!INCLUDE [configure-pop-up-blocker-include.md](includes/configure-pop-up-blocker-include.md)]

## Configure search suggestions in Address bar
[!INCLUDE [configure-search-suggestions-address-bar-include.md](includes/configure-search-suggestions-address-bar-include.md)]

## Configure Start pages
[!INCLUDE [configure-start-pages-include.md](includes/configure-start-pages-include.md)]

## Configure the Adobe Flash Click-to-Run setting
[!INCLUDE [configure-adobe-flash-click-to-run-include.md](includes/configure-adobe-flash-click-to-run-include.md)]

## Configure the Enterprise Mode Site List
[!INCLUDE [configure-enterprise-mode-site-list-include.md](includes/configure-enterprise-mode-site-list-include.md)]

## Configure Windows Defender SmartScreen
[!INCLUDE [configure-windows-defender-smartscreen-include.md](includes/configure-windows-defender-smartscreen-include.md)]

## Disable lockdown of Start pages
[!INCLUDE [disable-lockdown-of-start-pages-include.md](includes/disable-lockdown-of-start-pages-include.md)]

## Do not sync
[!INCLUDE [do-not-sync-include.md](includes/do-not-sync-include.md)]

## Do not sync browser settings
[!INCLUDE [do-not-sync-browser-settings-include.md](includes/do-not-sync-browser-settings-include.md)] 

## Keep favorites in sync between Internet Explorer and Microsoft Edge
[!INCLUDE [keep-fav-sync-ie-edge-include.md](includes/keep-fav-sync-ie-edge-include.md)] 

## Prevent access to the about:flags page
[!INCLUDE [prevent-access-about-flag-include.md](includes/prevent-access-about-flag-include.md)] 

## Prevent bypassing Windows Defender SmartScreen prompts for files
[!INCLUDE [prevent-bypassing-win-defender-files-include.md](includes/prevent-bypassing-win-defender-files-include.md)] 

## Prevent bypassing Windows Defender SmartScreen prompts for sites
[!INCLUDE [prevent-bypassing-win-defender-sites-include.md](includes/prevent-bypassing-win-defender-sites-include.md)] 

## Prevent certificate error overrides
[!INCLUDE [prevent-certificate-error-overrides-include.md](includes/prevent-certificate-error-overrides-include.md)]

## Prevent changes to Favorites on Microsoft Edge
[!INCLUDE [prevent-changes-to-favorites-include.md](includes/prevent-changes-to-favorites-include.md)] 

## Prevent Microsoft Edge from gathering Live Tile information when pinning a site to Start
[!INCLUDE [prevent-live-tile-pinning-start-include](includes/prevent-live-tile-pinning-start-include.md)]

## Prevent the First Run webpage from opening on Microsoft Edge
[!INCLUDE [prevent-first-run-webpage-open-include.md](includes/prevent-first-run-webpage-open-include.md)] 

## Prevent turning off required extensions
[!INCLUDE [prevent-turning-off-required-extensions-include.md](includes/prevent-turning-off-required-extensions-include.md)]

## Prevent users from turning on browser syncing
[!INCLUDE [prevent-users-to-turn-on-browser-syncing-include](includes/prevent-users-to-turn-on-browser-syncing-include.md)]

## Prevent using Localhost IP address for WebRTC
[!INCLUDE [prevent-localhost-address-for-webrtc-include.md](includes/prevent-localhost-address-for-webrtc-include.md)] 

## Provision Favorites
[!INCLUDE [provision-favorites-include](includes/provision-favorites-include.md)]

## Send all intranet sites to Internet Explorer 11
[!INCLUDE [send-all-intranet-sites-ie-include.md](includes/send-all-intranet-sites-ie-include.md)] 

## Set default search engine
[!INCLUDE [set-default-search-engine-include.md](includes/set-default-search-engine-include.md)] 

## Set Home Button URL
[!INCLUDE [set-home-button-url-include](includes/set-home-button-url-include.md)]

## Set New Tab page URL
[!INCLUDE [set-new-tab-url-include.md](includes/set-new-tab-url-include.md)]

## Show message when opening sites in Internet Explorer
[!INCLUDE [show-message-opening-sites-ie-include](includes/show-message-opening-sites-ie-include.md)]

## Unlock Home Button
[!INCLUDE [unlock-home-button-include.md](includes/unlock-home-button-include.md)]



## Related topics
- [Mobile Device Management (MDM) settings](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider)
- [Group Policy and the Group Policy Management Console (GPMC)](https://go.microsoft.com/fwlink/p/?LinkId=617921)
- [Group Policy and the Local Group Policy Editor](https://go.microsoft.com/fwlink/p/?LinkId=617922)
- [Group Policy and the Advanced Group Policy Management (AGPM)](https://go.microsoft.com/fwlink/p/?LinkId=617923)
- [Group Policy and Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=617924).
