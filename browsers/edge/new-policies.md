---
description: Windows Insider Preview - The Microsoft Edge team introduces new Group Policies and MDM Settings for IT administrators to configure Microsoft Edge. The new policies allow you to enable/disabled full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure New tab page, Home button and startup options, as well as manage extensions.
ms.assetid: 
author: shortpatti
ms.author: pashort
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
title: New Microsoft Edge Group Policies and MDM settings
ms.localizationpriority: 
ms.date: 07/18/2018 
---

# New Microsoft Edge Group Policies and MDM settings (Preview)

> Applies to: Microsoft Edge on Windows 10 <br>
> Preview build 17718

The Microsoft Edge team introduces new Group Policies and MDM Settings for IT administrators to configure Microsoft Edge. The new policies allow you to enable/disable full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure New tab page, Home button and startup options, as well as manage extensions.

You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor:<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge\

<!-- add links to the below policies -->

- [Allow fullscreen mode](#allow-fullscreen-mode)
- [Allow Microsoft Edge to start and load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed](#allow-microsoft-edge-to-start-and-load-the-start-and-new-tab-page-at-windows-startup-and-each-time-microsoft-edge-is-closed)
- [Allow Prelaunch](#allow-prelaunch)
- [Allow printing](#allow-printing)
- [Allow Saving History](#allow-saving-history)
- [Allow sideloading of Extensions](#allow-sideloading-of-extensions)
- [Configure collection of browsing data for Microsoft 365 Analytics](#configure-collection-of-browsing-data-for-microsoft-365-analytics)
- [Configure Favorites Bar](#configure-favorites-bar)
- [Configure Home Button](#configure-home-button)
- [Configure kiosk mode](#configure-kiosk-mode)
- [Configure kiosk reset after idle timeout](#configure-kiosk-reset-after-idle-timeout)
- [Configure Open Microsoft Edge With](#configure-open-microsoft-edge-with)
- [Prevent certificate error overrides](#prevent-certificate-error-overrides)
- [Prevent turning off required extensions](#prevent-turning-off-required-extensions)
- [Prevent users from turning on browser syncing](#preventusersfromturningonbrowsersyncing)
- [Set Home button URL](#set-home-button-url)
- [Set New Tab page URL](#set-new-tab-page-url)
- - *(Modified)* [Show message when opening sites in Internet Explorer](#showmessagewhenopeninginteretexplorersites)
- [Unlock Home button](#unlock-home-button)

In addition to the new group policies, we added a couple of new MDM policies to align with the existing group policies.

- **(New MDM)** [Experience/DoNotSyncBrowserSetting](#donotsyncbrowsersetting)
- **(New MDM)** [Browser/AllowWebContentOnNewTabPage](#allowwebcontentonnewtabpage)

We are also deprecating the **Configure Favorites** group policy because ... Use the __ in place of Configure Favorites.  
 
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

## AllowWebContentOnNewTabPage
[!INCLUDE [allow-web-content-new-tab-page-include](includes/allow-web-content-new-tab-page-include.md)]

## Configure collection of browsing data for Microsoft 365 Analytics
[!INCLUDE [configure-browser-telemetry-for-m365-analytics-include](includes/configure-browser-telemetry-for-m365-analytics-include.md)]

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

## DoNotSyncBrowserSetting
[!INCLUDE [do-not-sync-browser-settings-include](includes/do-not-sync-browser-settings-include.md)]

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

<hr>