---
title: Change history for Microsoft Edge (Microsoft Edge for IT Pros)
description: Discover what's new and updated in the Microsoft Edge for both Windows 10 and Windows 10 Mobile.
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.localizationpriority: medium
ms.date: ''
ms.author: pashort
author: shortpatti
ms.date: 09/03/2018
---

# Change history for Microsoft Edge
Discover what's new and updated in the Microsoft Edge for both Windows 10 and Windows 10 Mobile.


# [2018](#tab/2018)

> Applies to: Microsoft Edge on Windows 10 <br>
> Preview build 17713+

The Microsoft Edge team introduces new Group Policies and MDM Settings for the Windows 10 Insider Preview Build 17713+. The new policies allow IT administrators to enable/disable full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure New tab page, Home button and startup options, as well as manage extensions.

We are discontinuing the **Configure Favorites** group policy. Use the **[Provision Favorites](available-policies.md#provision-favorites)** instead. 



>>You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:
>> 
>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**_Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\_**
<p>
<!-- links to the policies -->


| **Group Policy** | **New/update?** | **MDM Setting** | **New/update?** |
| --- | --- | --- | --- |
| [Allow fullscreen mode](available-policies.md#allow-fullscreen-mode) | New |  [AllowFullscreen](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowfullscreenmode) | New |
| [Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed](available-policies.md#allow-microsoft-edge-to-pre-launch-at-windows-startup-when-the-system-is-idle-and-each-time-microsoft-edge-is-closed) | New | [AllowPrelaunch](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch) | New |
| [Allow Microsoft Edge to load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed](available-policies.md#allow-microsoft-edge-to-start-and-load-the-start-and-new-tab-page-at-windows-startup-and-each-time-microsoft-edge-is-closed) | New | [AllowTabPreloading](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading) | New |
| [Allow printing](available-policies.md#allow-printing) | New |  [AllowPrinting](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowprinting) | New |
| [Allow Saving History](available-policies.md#allow-saving-history) | New | [AllowSavingHistory](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsavinghistory) | New |
| [Allow sideloading of Extensions](available-policies.md#allow-sideloading-of-extensions) | New | [AllowSideloadingExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsideloadingofextensions) | New |
| [Allow web content on new tab page](available-policies.md#allow-web-content-on-new-tab-page) | -- | [AllowWebContentOnNewTabPage](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowwebcontentonnewtabpage) | New |
| [Configure collection of browsing data for Microsoft 365 Analytics](available-policies.md#configure-collection-of-browsing-data-for-microsoft-365-analytics) | New | [ConfigureTelemetryForMicrosoft365Analytics](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configuretelemetryformicrosoft365analytics) | New |
| [Configure Favorites Bar](available-policies.md#configure-favorites-bar) | New | [ConfigureFavoritesBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar) | New |
| [Configure Home Button](available-policies.md#configure-home-button) | New | [ConfigureHomeButton](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurehomebutton) | New |
| [Configure kiosk mode](available-policies.md#configure-kiosk-mode) | New |  [ConfigureKioskMode](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurekioskmode) | New |
| [Configure kiosk reset after idle timeout](available-policies.md#configure-kiosk-reset-after-idle-timeout) | New |  [ConfigureKioskResetAfterIdleTimeout](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurekioskresetafteridletimeout) | New |
| [Configure Open Microsoft Edge With](available-policies.md#configure-open-microsoft-edge-with) | New | [ConfigureOpenEdgeWith](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configureopenmicrosoftedgewith) | New |
| [Do not sync browser settings](available-policies.md#do-not-sync-browser-settings) | -- | [Experience/DoNotSyncBrowserSettings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-donotsyncbrowsersetting)  | New |
| [Prevent certificate error overrides](available-policies.md#prevent-certificate-error-overrides) | New | [PreventCertErrorOverrides](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides) | New |
| [Prevent users from turning on browser syncing](available-policies.md#preventusersfromturningonbrowsersyncing) | New | [Experience/PreventUsersFromTurningOnBrowserSyncing](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-preventusersfromturningonbrowsersyncing) | New |
| [Prevent turning off required extensions](available-policies.md#prevent-turning-off-required-extensions) | New | [PreventTurningOffRequiredExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-preventusersfromturningonbrowsersyncing) | New |
| [Set Home Button URL](available-policies.md#set-home-button-url) | New | [SetHomeButtonURL](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl) | New |
| [Set New Tab page URL](available-policies.md#set-new-tab-page-url) | New | [SetNewTabPageURL](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-setnewtabpageurl) | New |
| [Show message when opening sites in Internet Explorer](available-policies.md#showmessagewhenopeninginteretexplorersites) | Updated | [ShowMessageWhenOpeningSitesInInternetExplorer](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer) | Updated |
| [Unlock Home Button](available-policies.md#unlock-home-button) | New | [UnlockHomeButton](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton) | New |
---



# [2017](#tab/2017)

## September 2017
|New or changed topic | Description |
|---------------------|-------------|
|[Microsoft Edge - Frequently Asked Questions (FAQs) for IT Pros](microsoft-edge-faq.md) | New |

## February 2017
|New or changed topic | Description |
|----------------------|-------------|
|[Available Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge](available-policies.md) |Added new Group Policy and MDM settings for the Windows Insider Program. Reformatted for easier readability outside of scrolling table. |


# [2016](#tab/2016)

## November 2016
|New or changed topic | Description |
|----------------------|-------------|
|[Browser: Microsoft Edge and Internet Explorer 11](enterprise-guidance-using-microsoft-edge-and-ie11.md) |Added the infographic image and a download link.|
|[Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md) |Added a note about the 65 second wait before checking for a newer version of the site list .XML file. |
|[Available policies for Microsoft Edge](available-policies.md) |Added notes to the Configure the Enterprise Mode Site List Group Policy and the EnterpriseModeSiteList MDM policy about the 65 second wait before checking for a newer version of the site list .XML file. |
|Microsoft Edge - Deployment Guide for IT Pros |Added a link to the Microsoft Edge infographic, helping you to evaluate the potential impact of using Microsoft Edge in your organization. |
|[Browser: Microsoft Edge and Internet Explorer 11](enterprise-guidance-using-microsoft-edge-and-ie11.md) |Added a link to the Microsoft Edge infographic, helping you to evaluate the potential impact of using Microsoft Edge in your organization. |

## July 2016
|New or changed topic | Description |
|----------------------|-------------|
|[Microsoft Edge requirements and language support](hardware-and-software-requirements.md)| Updated to include a note about the Long Term Servicing Branch (LTSB). |
|[Enterprise guidance about using Microsoft Edge and Internet Explorer 11](enterprise-guidance-using-microsoft-edge-and-ie11.md) | Content moved from What's New section. |
|[Available policies for Microsoft Edge](available-policies.md) |Updated |


## June 2016
|New or changed topic | Description |
|----------------------|-------------|
|[Security enhancements for Microsoft Edge](security-enhancements-microsoft-edge.md) |New |

## May 2016

|New or changed topic | Description |
|----------------------|-------------|
|[Available Policies for Microsoft Edge](available-policies.md) | Added new policies and the Supported versions column for Windows 10 Insider Preview. |

---