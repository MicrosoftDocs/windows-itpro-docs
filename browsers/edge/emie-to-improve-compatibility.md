---
description: If you're having problems with Microsoft Edge, this topic tells how to use the Enterprise Mode site list to automatically open sites using IE11.
ms.assetid: 89c75f7e-35ca-4ca8-96fa-b3b498b53bE4
ms.reviewer: 
manager: dansimp
author: eavena
ms.author: eravena
ms.manager: dougkim
ms.prod: browser-edge
ms.topic: reference
ms.mktglfcycl: support
ms.sitesec: library
ms.pagetype: appcompat
title: Use Enterprise Mode to improve compatibility (Microsoft Edge for IT Pros)
ms.localizationpriority: medium
ms.date: 10/24/2018
---

# Use Enterprise Mode to improve compatibility

> Applies to: Windows 10

If you have specific websites and apps that have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites open in Internet Explorer 11 automatically. Additionally, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to automatically open using IE11 with the **Send all intranet sites to IE** group policy.

Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.


[!INCLUDE [interoperability-goals-enterprise-guidance](../includes/interoperability-goals-enterprise-guidance.md)]

## Enterprise guidance
Microsoft Edge is the default browser experience for Windows 10 and Windows 10 Mobile. However, if you're running web apps that rely on ActiveX controls, continue using Internet Explorer 11 for the web apps to work correctly. If you don't have IE11 installed anymore, you can download it from the Microsoft Store or the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956). Also, if you use an earlier version of Internet Explorer, upgrade to IE11. 

Windows 7, Windows 8, and Windows 10 support IE11 so that you can continue using legacy apps even as you migrate to Windows 10 and Microsoft Edge.  

If you're having trouble deciding whether Microsoft Edge is right for your organization, then take a look at the infographic about the potential impact of using Microsoft Edge in an organization.

![Microsoft Edge infographic](images/microsoft-edge-infographic-sm.png)<br>
[Click to enlarge](img-microsoft-edge-infographic-lg.md)<br>
[Click to download image](https://www.microsoft.com/download/details.aspx?id=53892)


|Microsoft Edge  |IE11  |
|---------|---------|
|Microsoft Edge takes you beyond just browsing to actively engaging with the web through features like Web Note, Reading View, and Cortana.<ul><li>**Web Note.** Microsoft Edge lets you annotate, highlight, and call things out directly on web pages.</li><li>**Reading view.** Microsoft Edge lets you enjoy and print online articles in a distraction-free layout optimized for your screen size. While in reading view, you can also save web pages or PDF files to your reading list, for later viewing.</li><li>**Cortana.** Enabled by default in Microsoft Edge, Cortona lets you highlight words for more info and gives you one-click access to things like restaurant reservations and reviews, without leaving the webpage.</li><li>**Compatibility and security.** Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or that are included on your Enterprise Mode Site List. You must use IE11 to run older, less secure technology, such as ActiveX controls.</li></ul>     |IE11 offers enterprises additional security, manageability, performance, backward compatibility, and modern standards support.<ul><li>**Backward compatibility.** IE11 supports 9 document modes that include high-fidelity emulations for older versions of IE.</li><li>**Modern web standards.** IE11 supports modern web technologies like HTML5, CSS3, and WebGL, which help to ensure today's modern websites and apps work just as well as your old, legacy websites and apps.</li><li>**More secure.** IE11 was designed with security in mind and is more secure than older versions. Using security features like SmartScreen and Enhanced Protected Mode can help IE11 reduce your risk.</li><li>**Faster.** IE11 is significantly faster than previous versions of Internet Explorer, taking advantage of network optimization and hardware-accelerated text, graphics, and JavaScript rendering.</li><li>**Easier migration to Windows 10.** IE11 is the only version of IE that runs on Windows 7, Windows 8.1, and Windows 10. Upgrading to IE11 on Windows 7 can also help your organization support the next generation of software, services, and devices.</li><li>**Administration.** IE11 can use the Internet Explorer Administration Kit (IEAK) 11 or MSIs for deployment and includes more than 1,600 Group Policies and preferences for granular control.</li></ul>         |


## Configure the Enterprise Mode Site List
[Available policy options](includes/configure-enterprise-mode-site-list-include.md)


## Related topics
- [Blog: How Microsoft Edge and Internet Explorer 11 on Windows 10 work better together in the Enterprise](https://go.microsoft.com/fwlink/p/?LinkID=624035)
- [Enterprise Mode for Internet Explorer 11 (IE11)](https://go.microsoft.com/fwlink/p/?linkid=618377)
- [Download the Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853)
- [Download the Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378)
- [Use the Enterprise Mode Site List Manager](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/use-the-enterprise-mode-site-list-manager)
- [Web Application Compatibility Lab Kit for Internet Explorer 11](https://technet.microsoft.com/browser/mt612809.aspx)
- [Download Internet Explorer 11](https://go.microsoft.com/fwlink/p/?linkid=290956)
- [Microsoft Edge - Deployment Guide for IT Pros](https://technet.microsoft.com/itpro/microsoft-edge/index)
- [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](https://go.microsoft.com/fwlink/p/?LinkId=760644)
- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](https://go.microsoft.com/fwlink/p/?LinkId=760646)
- [Internet Explorer 11 - FAQ for IT Pros](https://technet.microsoft.com/itpro/internet-explorer/ie11-faq/faq-for-it-pros-ie11)
