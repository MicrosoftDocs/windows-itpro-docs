---
description: Microsoft Edge now has new Group Policies and MDM Settings for IT administrators to configure Microsoft Edge. The new policies allow you to enable/disabled full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure New tab page, Home button and startup options, as well as manage extensions.
ms.assetid: 
author: shortpatti
ms.author: pashort
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: New Microsoft Edge Group Policies and MDM settings
ms.localizationpriority: 
ms.date: 07/23/2018 
---

# New Microsoft Edge Group Policies and MDM settings (Preview)

> Applies to: Microsoft Edge on Windows 10 <br>
> Preview build 17713+

The Microsoft Edge team introduces new Group Policies and MDM Settings for the Windows 10 Insider Preview Build 17713+. The new policies allow IT administrators to enable/disable full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure New tab page, Home button and startup options, as well as manage extensions.

We are discontinuing the use of the **Configure Favorites** group policy. Use the **[Provision Favorites](available-policies.md#provision-favorites)** instead. 



>>You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor:
>> 
>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**_Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\_**
<p>
<!-- add links to the below policies -->


| **Group Policy** | **New/update?** | **MDM Setting** | **New/update?** |
| --- | --- | --- | --- |
| [Allow fullscreen mode](#allow-fullscreen-mode) | New |  [AllowFullscreen](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowfullscreenmode) | New |
| [Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed](#allow-microsoft-edge-to-start-and-load-the-start-and-new-tab-page-at-windows-startup-and-each-time-microsoft-edge-is-closed) | New | [AllowTabPreloading](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading) | New |
| [Allow Prelaunch](#allow-prelaunch) | New | [AllowPrelaunch](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch) | New |
| [Allow printing](#allow-printing) | New |  [AllowPrinting](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowprinting) | New |
| [Allow Saving History](#allow-saving-history) | New | [AllowSavingHistory](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsavinghistory) | New |
| [Allow sideloading of Extensions](#allow-sideloading-of-extensions) | New | [AllowSideloadingExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsideloadingofextensions) | New |
| [Allow web content on new tab page](available-policies.md#allow-web-content-on-new-tab-page) | -- | [AllowWebContentOnNewTabPage](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowwebcontentonnewtabpage) | New |
| [Configure collection of browsing data for Microsoft 365 Analytics](#configure-collection-of-browsing-data-for-microsoft-365-analytics) | New | [ConfigureTelemetryForMicrosoft365Analytics](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics) | New |
| [Configure Favorites Bar](#configure-favorites-bar) | New | [ConfigureFavoritesBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar) | New |
| [Configure Home button](#configure-home-button) | New | [ConfigureHomeButton](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton) | New |
| [Configure kiosk mode](#configure-kiosk-mode) | New |  [ConfigureKioskMode](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode) | New |
| [Configure kiosk reset after idle timeout](#configure-kiosk-reset-after-idle-timeout) | New |  [ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout) | New |
| [Configure Open Microsoft Edge With](#configure-open-microsoft-edge-with) | New | [ConfigureOpenEdgeWith](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configureopenmicrosoftedgewith) | New |
| [Do not sync browser settings](available-policies.md#do-not-sync-browser-settings) | -- | Experience/DoNotSyncBrowserSetting  | New |
| [Prevent certificate error overrides](#prevent-certificate-error-overrides) | New | [PreventCertErrorOverrides](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides) | New |
| [Prevent users from turning on browser syncing](#preventusersfromturningonbrowsersyncing) | New | Experience/PreventUsersFromTurningOnBrowserSyncing | New |
| [Prevent turning off required extensions](#prevent-turning-off-required-extensions) | New | PreventTurningOffRequiredExtensions | New |
| [Set Home button URL](#set-home-button-url) | New | [SetHomeButtonURL](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl) | New |
| [Set New Tab page URL](#set-new-tab-page-url) | New | [SetNewTabPageURL](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl) | New |
| [Show message when opening sites in Internet Explorer](#showmessagewhenopeninginteretexplorersites) | Updated | [ShowMessageWhenOpeningSitesInInternetExplorer](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer) | Updated |
| [Unlock Home button](#unlock-home-button) | New | [UnlockHomeButton](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton) | New |
---

 
 <!-- RS5 policies -->

## Allow fullscreen mode
[!INCLUDE [allow-full-screen-include](includes/allow-full-screen-include.md)]

## Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed
[!INCLUDE [allow-tab-preloading-include](includes/allow-tab-preloading-include.md)]

## Allow Prelaunch
[!INCLUDE [allow-prelaunch-include](includes/allow-prelaunch-include.md)]

## Allow printing
[!INCLUDE [allow-printing-include.md](includes/allow-printing-include.md)]

## Allow Saving History
[!INCLUDE [allow-saving-history-include.md](includes/allow-saving-history-include.md)]

## Allow sideloading of Extensions
[!INCLUDE [allow-sideloading-extensions-include.md](includes/allow-sideloading-extensions-include.md)]


## Configure collection of browsing data for Microsoft 365 Analytics
[!INCLUDE [configure-browser-telemetry-for-m365-analytics-include](includes/configure-browser-telemetry-for-m365-analytics-include.md)]

## Configure Favorites Bar
[!INCLUDE [configure-favorites-bar-include.md](includes/configure-favorites-bar-include.md)]

## Configure Home button
[!INCLUDE [configure-home-button-include.md](includes/configure-home-button-include.md)]

## Configure kiosk mode
[!INCLUDE [configure-microsoft-edge-kiosk-mode-include.md](includes/configure-microsoft-edge-kiosk-mode-include.md)]

## Configure kiosk reset after idle timeout
[!INCLUDE [configure-edge-kiosk-reset-idle-timeout-include.md](includes/configure-edge-kiosk-reset-idle-timeout-include.md)]

## Configure Open Microsoft Edge With
[!INCLUDE [configure-open-edge-with-include.md](includes/configure-open-edge-with-include.md)]

## Prevent certificate error overrides
[!INCLUDE [prevent-certificate-error-overrides-include.md](includes/prevent-certificate-error-overrides-include.md)]

## Prevent turning off required extensions
[!INCLUDE [prevent-turning-off-required-extensions-include.md](includes/prevent-turning-off-required-extensions-include.md)]

## Prevent users from turning on browser syncing
[!INCLUDE [prevent-users-to-turn-on-browser-syncing-include](includes/prevent-users-to-turn-on-browser-syncing-include.md)]

## Set Home button URL
[!INCLUDE [set-home-button-url-include](includes/set-home-button-url-include.md)]

## Set New Tab page URL
[!INCLUDE [set-new-tab-url-include.md](includes/set-new-tab-url-include.md)]

## Show message when opening sites in Internet Explorer
[!INCLUDE [show-message-opening-sites-ie-include](includes/show-message-opening-sites-ie-include.md)]

## Unlock Home button
[!INCLUDE [unlock-home-button-include.md](includes/unlock-home-button-include.md)]

