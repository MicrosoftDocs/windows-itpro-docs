---
title: Microsoft Edge - Interoperability and enterprise mode guidance
description: Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or included on your Enterprise Mode Site List. If you are running web apps that continue to use ActiveX controls, x-ua-compatible headers, or legacy document modes, you need to keep running them in IE11.  IE11 offers additional security, manageability, performance, backward compatibility, and modern standards support.
ms.localizationpriority: medium
manager: dansimp
ms.author: eravena
author: eavena
ms.date: 10/02/2018
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
ms.topic: reference
---

# Interoperability and enterprise mode guidance

Microsoft Edge is the default browser experience for Windows 10 and Windows 10 Mobile. However, Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or included on your Enterprise Mode Site List. If you are running web apps that continue to use ActiveX controls, x-ua-compatible headers, or legacy document modes, you need to keep running them in IE11. IE11 offers additional security, manageability, performance, backward compatibility, and modern standards support.

>[!TIP] 
>If you are running an earlier version of Internet Explorer, we recommend upgrading to IE11, so that any legacy apps continue to work correctly.

**Technology not supported by Microsoft Edge**  


- ActiveX controls

- Browser Helper Objects

- VBScript

- x-ua-compatible headers

- \<meta\> tags

- Legacy document modes

If you have specific websites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to open using IE11 automatically. 

Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.

## Relevant group policies


1.  [Configure the Enterprise Mode Site List](#configure-the-enterprise-mode-site-list)

2.  [Send all intranet sites to Internet Explorer 11](#send-all-intranet-sites-to-internet-explorer-11)

3.  [Show message when opening sites in Internet Explorer](#show-message-when-opening-sites-in-internet-explorer)

4.  [(IE11 policy) Send all sites not included in the Enterprise Mode Site List to Microsoft Edge](#ie11-policy-send-all-sites-not-included-in-the-enterprise-mode-site-list-to-microsoft-edge)

You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\**

## Configuration options

![Use Enterprise Mode with Microsoft Edge to improve compatibility](../images/use-enterprise-mode-with-microsoft-edge-sm.png)


## Configure the Enterprise Mode Site List

[!INCLUDE [configure-enterprise-mode-site-list-include](../includes/configure-enterprise-mode-site-list-include.md)]


## Send all intranet sites to Internet Explorer 11

[!INCLUDE [send-all-intranet-sites-ie-include](../includes/send-all-intranet-sites-ie-include.md)]


## Show message when opening sites in Internet Explorer

[!INCLUDE [show-message-opening-sites-ie-include](../includes/show-message-opening-sites-ie-include.md)]


## (IE11 policy) Send all sites not included in the Enterprise Mode Site List to Microsoft Edge

[!INCLUDE [ie11-send-all-sites-not-in-site-list-include](../includes/ie11-send-all-sites-not-in-site-list-include.md)]
