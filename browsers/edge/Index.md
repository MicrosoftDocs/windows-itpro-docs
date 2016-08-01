---
description: Overview information about Microsoft Edge, the default browser for Windows 10. This topic includes links to other Microsoft Edge topics.
ms.assetid: 70377735-b2f9-4b0b-9658-4cf7c1d745bb
author: eross-msft
ms.prod: edge
ms.mktglfcycl: general
ms.sitesec: library
title: Microsoft Edge - Deployment Guide for IT Pros (Microsoft Edge for IT Pros)
---

# Microsoft Edge - Deployment Guide for IT Pros

**Applies to:**

- Windows 10
- Windows 10 Mobile

Microsoft Edge is the new, default web browser for Windows 10, helping you to experience modern web standards, better performance, improved security, and increased reliability. Microsoft Edge also introduces new features like Web Note, Reading View, and Cortana that you can use along with your normal web browsing abilities.

Microsoft Edge lets you stay up-to-date through the Windows Store and to manage your enterprise through Group Policy or your mobile device management (MDM) tools.
<p>**Note**<br>This content isn't meant to be a step-by-step guide, so not everything that's talked about in this guide will be necessary for you to manage and deploy Microsoft Edge in your company.

## In this section

| Topic                  | Description                         |
| -----------------------| ----------------------------------- |
|[Change history for Microsoft Edge](change-history-for-microsoft-edge.md) |Lists new and updated topics in the Microsoft Edge documentation for both Windows 10 and Windows 10 Mobile. |
| [Microsoft Edge requirements and language support](hardware-and-software-requirements.md) | Microsoft Edge is pre-installed on all Windows 10-capable devices that meet the minimum system requirements and are on the supported language list.|
| [Available policies for Microsoft Edge](available-policies.md)  | Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings. <p>Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences. By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain. |
| [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md) | If you have specific web sites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the web sites will automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work properly with Microsoft Edge, you can set all intranet sites to automatically open using IE11. <p>Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11. |
| [Security enhancements for Microsoft Edge](security-enhancements-microsoft-edge.md) |Microsoft Edge is designed with significant security improvements over existing browsers, helping to defend people from increasingly sophisticated and prevalent web-based attacks against Windows. |

## Interoperability goals and enterprise guidance

Our primary goal is that your modern websites work in Microsoft Edge. To that end, we've made Microsoft Edge the default browser.

However, if you're running web apps that continue to use:

* ActiveX controls

* x-ua-compatible headers

* &lt;meta&gt; tags

* Enterprise mode or compatibility view to address compatibility issues

* legacy document modes

You'll need to keep running them using IE11. If you don't have IE11 installed anymore, you can download it from the Windows Store or from the [Internet Explorer 11 download page](http://go.microsoft.com/fwlink/p/?linkid=290956). Alternatively, you can also use Enterprise Mode with Microsoft Edge to transition only the sites that need these technologies to load in IE11. For info about Enterprise Mode and Edge, see [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md).

## Related topics

- [Download Internet Explorer 11](http://go.microsoft.com/fwlink/p/?linkid=290956)
- [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](http://go.microsoft.com/fwlink/p/?LinkId=760644)
- [Internet Explorer 11 - FAQ for IT Pros](http://go.microsoft.com/fwlink/p/?LinkId=760645)
- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](http://go.microsoft.com/fwlink/p/?LinkId=760646)
