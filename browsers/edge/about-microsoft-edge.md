---
description: Overview information about Microsoft Edge, the default browser for Windows 10. This topic includes links to other Microsoft Edge topics.
ms.assetid: 70377735-b2f9-4b0b-9658-4cf7c1d745bb
author: shortpatti
ms.prod: edge
ms.mktglfcycl: general
ms.sitesec: library
title: Microsoft Edge - Deployment Guide for IT Pros (Microsoft Edge for IT Pros)
ms.localizationpriority: high
ms.date: 10/16/2017
---

# Microsoft Edge - Deployment Guide for IT Pros
>Applies to:  Microsoft Edge on Windows 10 and Windows 10 Mobile



>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Microsoft Edge is the new, default web browser for Windows 10, helping you to experience modern web standards, better performance, improved security, and increased reliability. Microsoft Edge also introduces new features like Web Note, Reading View, and Cortana that you can use along with your normal web browsing abilities.

Microsoft Edge lets you stay up-to-date through the Microsoft Store and to manage your enterprise through Group Policy or your mobile device management (MDM) tools.

>[!Note]
>For more information about the potential impact of using Microsoft Edge in a large organization, refer to the [Measuring the impact of Microsoft Edge](https://www.microsoft.com/itpro/microsoft-edge/technical-benefits) topic on the Microsoft Edge IT Center.

>If you are looking for Internet Explorer 11 content, please visit the [Internet Explorer 11 (IE11)](https://docs.microsoft.com/en-us/internet-explorer/) area. 

## In this section

| Topic                  | Description                         |
| -----------------------| ----------------------------------- |
|[Change history for Microsoft Edge](change-history-for-microsoft-edge.md) |Lists new and updated topics in the Microsoft Edge documentation for both Windows 10 and Windows 10 Mobile. |
|[Enterprise guidance about using Microsoft Edge and Internet Explorer 11](enterprise-guidance-using-microsoft-edge-and-ie11.md) |Guidance about how to use both Microsoft Edge and Internet Explorer 11 in your enterprise.|
| [Microsoft Edge requirements and language support](hardware-and-software-requirements.md) |Microsoft Edge is pre-installed on all Windows 10-capable devices that meet the minimum system requirements and are on the supported language list.|
| [Available policies for Microsoft Edge](available-policies.md)  |Microsoft Edge works with Group Policy and Microsoft Intune to help you manage your organization's computer settings.<br><br>Group Policy objects (GPO's) can include registry-based Administrative Template policy settings, security settings, software deployment information, scripts, folder redirection, and preferences. By using Group Policy and Intune, you can set up a policy setting once, and then copy that setting onto many computers. For example, you can set up multiple security settings in a GPO that's linked to a domain, and then apply all of those settings to every computer in the domain. |
| [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md) |If you have specific web sites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the web sites will automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work properly with Microsoft Edge, you can set all intranet sites to automatically open using IE11.<br><br>Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11. |
|[Microsoft Edge Frequently Asked Questions (FAQs)](microsoft-edge-faq.md)|Answering frequently asked questions about Microsoft Edge features, integration, support, and potential problems.

## Interoperability goals and enterprise guidance

Our primary goal is that your modern websites work in Microsoft Edge. To that end, we've made Microsoft Edge the default browser.

However, if you're running web apps that continue to use:

* ActiveX controls

* x-ua-compatible headers

* &lt;meta&gt; tags

* Enterprise mode or compatibility view to address compatibility issues

* legacy document modes

You'll need to keep running them using IE11. If you don't have IE11 installed anymore, you can download it from the Microsoft Store or from the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956). Alternatively, you can also use Enterprise Mode with Microsoft Edge to transition only the sites that need these technologies to load in IE11. For info about Enterprise Mode and Edge, see [Use Enterprise Mode to improve compatibility](emie-to-improve-compatibility.md).

## Security and privacy


| | |
|---|---|
| **Windows Hello** | Authenticates the user and the website with asymmetric cryptography. |
| **Microsoft SmartScreen** | Defends against phishing by performing reputation checks on sites visited and blocking any site that is thought to be a phishing site. SmartScreen also helps to defend against installing malicious software or file downloads, even from trusted sites. |
| **Certificate Reputation system** | Collects data about certificates in use, detecting new certificates and flagging fraudulent certificates automatically. |
| **Microsoft EdgeHTML** | Defends against hacking through the following security standards features:<ul><li>Support for the W3C standard for Content Security Policy (CSP), which helps web developers defend their sites against cross-site scripting attacks.</li><li>Support for the HTTP Strict Transport Security (HSTS) feature, which is IETF-standard compliant, and helps to ensure that connections to sites are always secure.</li></ul> |
| **Code integrity and image loading restrictions** | Prevents malicious DLLs from loading or injecting into the content processes. Only signed images are allowed to load in Microsoft Edge. Binaries on remote devices (such as UNC or WebDAV) can&#39;t load. |
| **Memory corruption mitigations** | Defends against memory corruption weaknesses and vulnerabilities with the use of [CWE-416: Use After Free](http://cwe.mitre.org/data/definitions/416.html) (UAF). |
| **Memory Garbage Collector (MemGC) mitigation** | Replaces Memory Protector and helps to defend the browser from UAF vulnerabilities by freeing memory from the programmer and automating it, only freeing memory when the automation detects that there are no more references left pointing to a given block of memory. |
| **Control Flow Guard** | Compiles checks around code that performs indirect jumps based on a pointer, restricting those jumps to only going to function entry points with known addresses. Control Flow Guard is a Microsoft Visual Studio technology. |

## Related topics

- [Total Economic Impact of Microsoft Edge: Infographic](https://www.microsoft.com/download/details.aspx?id=55956)

- [Total Economic Impact of Microsoft Edge: Forrester Study](https://www.microsoft.com/download/details.aspx?id=55847)

- [Download Internet Explorer 11](https://go.microsoft.com/fwlink/p/?linkid=290956)

- [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](https://go.microsoft.com/fwlink/p/?LinkId=760644)

- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](https://go.microsoft.com/fwlink/p/?LinkId=760646)

