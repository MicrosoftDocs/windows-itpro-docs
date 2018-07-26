---
title: Microsoft Edge - Interoperability and enterprise guidance
description: 
ms.author: pashort
author: shortpatti
ms.date: 07/23/2018
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
---

# Interoperability and enterprise guidance
>*Supported versions: Microsoft Edge on Windows 10*  


default browser for Windows 10 and Windows 10 Mobile

goal is that all websites work in Microsoft Edge but at the same time if you have apps that use any of the following legacy technologies, you must keep running them in Internet Explorer 11:

* ActiveX controls

* x-ua-compatible headers

* &lt;meta&gt; tags

* Enterprise mode or compatibility view to address compatibility issues

* legacy document modes


>[!TIP]
>You can also use Enterprise Mode with Microsoft Edge to transition only the sites that need these technologies to load in IE11. For info about Enterprise Mode and Edge, see [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md). 




If you have specific websites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to open using IE11 automatically.

Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.

## Use Enterprise Mode in Microsoft Edge

1. [Configure the Enterprise Mode Site List](#configure-the-enterprise-mode-site-list)
2. [Send all intranet sites to Internet Explorer 11](#send-all-intranet-sites-to-internet-explorer-11)
3. [Show message when opening sites in Internet Explorer](#show-message-when-opening-sites-in-internet-explorer)
4. [(IE11 policy) Send all sites not included in the Enterprise Mode Site List to Microsoft Edge](#ie11-policy-send-all-sites-not-included-in-the-enterprise-mode-site-list-to-microsoft-edge)


![Use Enterprise Mode with Microsoft Edge to improve compatibility](../images/use-enterprise-mode-with-microsoft-edge-sm.png)



### Configure the Enterprise Mode Site List
[!INCLUDE [configure-enterprise-mode-site-list-include](../includes/configure-enterprise-mode-site-list-include.md)] 

### Send all intranet sites to Internet Explorer 11
[!INCLUDE [send-all-intranet-sites-ie-include](../includes/send-all-intranet-sites-ie-include.md)]

### Show message when opening sites in Internet Explorer
[!INCLUDE [show-message-opening-sites-ie-include](../includes/show-message-opening-sites-ie-include.md)] 

### (IE11 policy) Send all sites not included in the Enterprise Mode Site List to Microsoft Edge 
[!INCLUDE [ie11-send-all-sites-not-in-site-list-include](../includes/ie11-send-all-sites-not-in-site-list-include.md)] 