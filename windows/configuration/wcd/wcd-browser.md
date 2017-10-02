---
title: Browser (Windows 10)
description: This section describes the Browser settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Browser (Windows Configuration Designer reference)

Use to configure browser settings that should only be set by OEMs who are part of the Partner Search Code program.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Favorites](#favorites) |  |  X  |  |  |  |
| [PartnerSearchCode](#partnersearchcode)  | X | X | X | X |  |
| [SearchProviders](#searchproviders) |   |  X  |  |  |  |

## Favorites

Use to configure the default list of Favorites that show up in the browser.

To add a new item under the browser's **Favorites** list:

1. In the **Name** field, enter a friendly name for the item, and then click **Add**.

2. In the **Available customizations** pane, select the friendly name that you just created, and in the text field, enter the URL for the item.

For example, to include the corporate Web site to the list of browser favorites, a company called Contoso can specify **Contoso** as the value for the name and "http://www.contoso.com" for the URL. 


## PartnerSearchCode

>[!IMPORTANT]
>This setting should only be set by OEMs who are part of the Partner Search Code program.

Set the value to a character string that corresponds to the OEM's Partner Search Code. This identification code must match the one assigned to you by Microsoft.

OEMs who are part of the program only have one PartnerSearchCode and this should be used for all Windows 10 for desktop editions images.

 


## SearchProviders

Contains the settings you can use to configure the default and additional search providers.

Microsoft Bing is the default search provider for Windows 10 Mobile. The default search provider must be set to Bing, except for devices shipping to certain countries where a different default search provider is required as specified in the [Specific region guidance](#specific-region-guidance) section of [Default](#default).


### Default

Use *Default* to specify a name that matches one of the search providers you enter in [SearchProviderList](#searchproviderlist). If you don't specify a default search provider, this will default to Microsoft Bing. 

#### Specific region guidance

Some countries require specific, default search providers. The following table lists the applicable countries and information for configuring the necessary search provider.

>[!NOTE]
>For Russia + Commonwealth of Independent States (CIS), the independent states consist of Russia, Ukraine, Georgia, The Republic of Azerbaijan, Republic Of Belarus, The Republic of Kazakhstan, The Kyrgyz Republic, The Republic of Moldova, The Republic of Tajikistan, The Republic of Armenia, Turkmenistan, The Republic of Uzbekistan, and Turkey.



### SearchProviderList

Use to specify a list of additional search providers.

1. In the **Name** field, enter a name for the item, and then click **Add**.

2. In the **Available customizations** pane, select the name that you just created, and in the text field, enter the URL for the additional search provider.

For example, to specify Yandex in Russia and Commonwealth of Independent States (CIS), set the value of URL to "https://yandex.ru/search/touch/?text={searchTerm}&clid=2234144".

When configured with multiple search providers, the browser can display up to ten search providers.

>[!IMPORTANT]
>Microsoft Bing is the default search provider for Windows 10 Mobile. The default search provider must be set to Bing, except for devices shipping to certain countries where a different default search provider is required as specified in the [Specific region guidance](#specific-region-guidance) section of [Default](#default).



