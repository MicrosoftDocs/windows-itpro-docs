---
title: Change history for Microsoft Edge (Microsoft Edge for IT Pros)
description: Discover what's new and updated in the Microsoft Edge for both Windows 10 and Windows 10 Mobile.
ms.prod: edge
ms.topic: reference
ms.mktglfcycl: explore
ms.sitesec: library
ms.localizationpriority: medium
manager: dansimp
ms.author: eravena
author: eavena
ms.date: 10/02/2018
---

# Change history for Microsoft Edge
Discover what's new and updated in the Microsoft Edge for both Windows 10 and Windows 10 Mobile.


# [2018](#tab/2018)

## October 2018

The Microsoft Edge team introduces new group policies and MDM settings for Microsoft Edge on Windows 10. The new policies let you enable/disable
full-screen mode, printing, favorites bar, saving history. You can also prevent certificate error overrides, and configure the New Tab page, Home button, and startup options, as well as manage extensions. 

We have discontinued the **Configure Favorites** group policy, so use the [Provision Favorites](available-policies.md#provision-favorites) policy instead.

>>You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:
>>
>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\**



| **New or updated** | **Group Policy**     | **Description**  |
|------------|-----------------|--------------------|
| New           | [Allow fullscreen mode](group-policies/browser-settings-management-gp.md#allow-fullscreen-mode)      | [!INCLUDE [allow-fullscreen-mode-shortdesc](shortdesc/allow-fullscreen-mode-shortdesc.md)]                     |
| New               | [Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed](group-policies/prelaunch-preload-gp.md#allow-microsoft-edge-to-pre-launch-at-windows-startup-when-the-system-is-idle-and-each-time-microsoft-edge-is-closed) |     [!INCLUDE [allow-prelaunch-shortdesc](shortdesc/allow-prelaunch-shortdesc.md)]             |
| New              | [Allow Microsoft Edge to load the Start and New Tab page at Windows startup and each time Microsoft Edge is closed](group-policies/prelaunch-preload-gp.md#allow-microsoft-edge-to-load-the-start-and-new-tab-page-at-windows-startup-and-each-time-microsoft-edge-is-closed)         | [!INCLUDE [allow-tab-preloading-shortdesc](shortdesc/allow-tab-preloading-shortdesc.md)]                  |
| New             | [Allow printing](group-policies/browser-settings-management-gp.md#allow-printing)              | [!INCLUDE [allow-printing-shortdesc](shortdesc/allow-printing-shortdesc.md)]                   |
| New             | [Allow Saving History](group-policies/browser-settings-management-gp.md#allow-saving-history)         | [!INCLUDE [allow-saving-history-shortdesc](shortdesc/allow-saving-history-shortdesc.md)]                   |
| New               | [Allow sideloading of Extensions](group-policies/extensions-management-gp.md#allow-sideloading-of-extensions)        | [!INCLUDE [allow-sideloading-of-extensions-shortdesc](shortdesc/allow-sideloading-of-extensions-shortdesc.md)]                 |
| New              | [Configure collection of browsing data for Microsoft 365 Analytics](group-policies/telemetry-management-gp.md#configure-collection-of-browsing-data-for-microsoft-365-analytics)     | [!INCLUDE [configure-browser-telemetry-for-m365-analytics-shortdesc](shortdesc/configure-browser-telemetry-for-m365-analytics-shortdesc.md)]                  |
| New               | [Configure Favorites Bar](group-policies/favorites-management-gp.md#configure-favorites-bar)        | [!INCLUDE [configure-favorites-bar-shortdesc](shortdesc/configure-favorites-bar-shortdesc.md)]                 |
| New           | [Configure Home Button](group-policies/home-button-gp.md#configure-home-button)     | [!INCLUDE [configure-home-button-shortdesc](shortdesc/configure-home-button-shortdesc.md)]                     |
| New             | [Configure kiosk mode](available-policies.md#configure-kiosk-mode)     | [!INCLUDE [configure-kiosk-mode-shortdesc](shortdesc/configure-kiosk-mode-shortdesc.md)]                   |
| New      | [Configure kiosk reset after idle timeout](available-policies.md#configure-kiosk-reset-after-idle-timeout)    |[!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)]        |
| New              | [Configure Open Microsoft Edge With](group-policies/start-pages-gp.md#configure-open-microsoft-edge-with)      | [!INCLUDE [configure-open-microsoft-edge-with-shortdesc](shortdesc/configure-open-microsoft-edge-with-shortdesc.md)]            |
| New            | [Prevent certificate error overrides](group-policies/security-privacy-management-gp.md#prevent-certificate-error-overrides)   | [!INCLUDE [prevent-certificate-error-overrides-shortdesc](shortdesc/prevent-certificate-error-overrides-shortdesc.md)]        |
| New      | [Prevent users from turning on browser syncing](group-policies/sync-browser-settings-gp.md#prevent-users-from-turning-on-browser-syncing)  | [!INCLUDE [prevent-users-to-turn-on-browser-syncing-shortdesc](shortdesc/prevent-users-to-turn-on-browser-syncing-shortdesc.md)]      |
| New         | [Prevent turning off required extensions](group-policies/extensions-management-gp.md#prevent-turning-off-required-extensions)   | [!INCLUDE [prevent-turning-off-required-extensions-shortdesc](shortdesc/prevent-turning-off-required-extensions-shortdesc.md)]         |
| New              | [Set Home Button URL](group-policies/home-button-gp.md#set-home-button-url)   |  [!INCLUDE [set-home-button-url-shortdesc](shortdesc/set-home-button-url-shortdesc.md)]                 |
| New              | [Set New Tab page URL](group-policies/new-tab-page-settings-gp.md#set-new-tab-page-url)   | [!INCLUDE [set-new-tab-url-shortdesc](shortdesc/set-new-tab-url-shortdesc.md)]                  |
| Updated            | [Show message when opening sites in Internet Explorer](group-policies/interoperability-enterprise-guidance-gp.md#show-message-when-opening-sites-in-internet-explorer)  | [!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]                |
| New                | [Unlock Home Button](group-policies/home-button-gp.md#unlock-home-button)   |  [!INCLUDE [unlock-home-button-shortdesc](shortdesc/unlock-home-button-shortdesc.md)]               |


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
