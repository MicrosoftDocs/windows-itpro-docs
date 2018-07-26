---
title: Change history for Microsoft Edge (Microsoft Edge for IT Pros)
description: This topic lists new and updated topics in the Microsoft Edge documentation for Windows 10 and Windows 10 Mobile.
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.localizationpriority: medium
ms.date: ''
ms.author: pashort
author: shortpatti
---

# Change history for Microsoft Edge
Discover what's new and updated in the Microsoft Edge for both Windows 10 and Windows 10 Mobile.


## October 2018
...include something about the updated deployment guide---

IT admins can configure the following on the enterprise New Tab page:
- Co-branding: configuring the co-branding on Edge's default New Tab Page (NTP) and Default Homepage (DHP) and Sets NTP. This policy can list an image URL to be used as the co-branding on the page.<br><br>Name: EdgeCoBranding<br>Registry Location: HKLM\Software\Policies\Microsoft\MicrosoftEdge\EdgeCoBranding<br>Data Type: URL (String)<br>Values:<br>Null/blank/not present Non-null; 1 URL string, e.g. "http://contosto.com/images/logo.jpeg" URL will not be validated for conformity, well-formedness, or that the web destination exists.

- Top sites 
- News interests
- [Configure Bing Safe Search](configure-bing-safe-search.md)

### New Group Policies
|Group Policy  | Description |
|---------------------|-------------|
|[Allow fullscreen mode](available-policies.md#allow-fullscreen-mode) | [!INCLUDE [allow-fullscreen-mode-shortdesc](shortdesc/allow-fullscreen-mode-shortdesc.md)]  |
|[Allow printing](available-policies.md#allow-printing)  | [!INCLUDE [allow-printing-shortdesc](shortdesc/allow-printing-shortdesc.md)]  |
|[Allow Saving History](available-policies.md#allow-saving-history)  | [!INCLUDE [allow-saving-history-shortdesc](shortdesc/allow-saving-history-shortdesc.md)]  |
|[Allow sideloading of Extensions](available-policies.md#allow-sideloading-of-extensions)   | [!INCLUDE [allow-sideloading-of-extensions-shortdesc](shortdesc/allow-sideloading-of-extensions-shortdesc.md)]  |
|[Configure Home Button](available-policies.md#configure-home-button)  | [!INCLUDE [configure-home-button-shortdesc](shortdesc/configure-home-button-shortdesc.md)] |
|[Configure kiosk mode](available-policies.md#configure-kiosk-mode)  | [!INCLUDE [configure-kiosk-mode-shortdesc](shortdesc/configure-kiosk-mode-shortdesc.md)]  |
|[Configure kiosk reset after idle timeout](available-policies.md#configure-kiosk-reset-after-idle-timeout)   | [!INCLUDE [configure-kiosk-reset-after-idle-timeout-shortdesc](shortdesc/configure-kiosk-reset-after-idle-timeout-shortdesc.md)]  |
|[Configure Open Microsoft Edge With](available-policies.md#configure-open-microsoft-edge-with)   | [!INCLUDE [configure-open-microsoft-edge-with-shortdesc](shortdesc/configure-open-microsoft-edge-with-shortdesc.md)] |
|[Prevent certificate error overrides](available-policies.md#prevent-certificate-error-overrides)   | [!INCLUDE [prevent-certificate-error-overrides-shortdesc](shortdesc/prevent-certificate-error-overrides-shortdesc.md)]  |
|[Allow Start and New Tab page preload](available-policies.md#allow-start-and-new-tab-page-preload)[Allow Start and New Tab page preload] |
|[Prevent turning off required extensions](available-policies.md#prevent-turning-off-required-extensions)   | [!INCLUDE [prevent-turning-off-required-extensions-shortdesc](shortdesc/prevent-turning-off-required-extensions-shortdesc.md)]  |
|[Set Home button URL](available-policies.md#set-home-button-url)    | [!INCLUDE [set-home-button-url-shortdesc](shortdesc/set-home-button-url-shortdesc.md)]  |
|[Set New Tab page URL](available-policies.md#set-new-tab-page-url)    | [!INCLUDE [set-new-tab-url-shortdesc](shortdesc/set-new-tab-url-shortdesc.md)] | 
|[Unlock Home button](available-policies.md#unlock-home-button)    | [!INCLUDE [unlock-home-button-shortdesc](shortdesc/unlock-home-button-shortdesc.md)]  |


### Updated Group Policies
|Group Policy | Description of change |
|---------------------|-------------|
|[Configure Start pages](available-policies.md#configure-start-pages)    |[!INCLUDE [configure-start-pages-shortdesc](shortdesc/configure-start-pages-shortdesc.md)]   |
|[Disable lockdown of Start pages](available-policies.md#disable-lockdown-of-start-pages)    |[!INCLUDE [disable-lockdown-of-start-pages-shortdesc](shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]   |
|[Show message when opening sites in Internet Explorer](available-policies.md#show-message-when-opening-sites-in-internet-explorer)    |[!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]   |

### Deprecated Group Policies
Configure favorites
Why is it being deprecated?
What is used in it's place?

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
|[Microsoft Edge - Deployment Guide for IT Pros](index.md) |Added a link to the Microsoft Edge infographic, helping you to evaluate the potential impact of using Microsoft Edge in your organization. |
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