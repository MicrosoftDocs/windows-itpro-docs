---
title: Microsoft Edge - Frequently Asked Questions (FAQs) for IT Pros 
description: Answers to frequently asked questions about Microsoft Edge features, integration, support, and potential problems.
author: lizap
ms.author: elizapo
ms.prod: edge
ms.topic: article
ms.mktglfcycl: general
ms.sitesec: library
ms.localizationpriority: medium
---

# Frequently Asked Questions (FAQs) for IT Pros

>Applies to: Microsoft Edge on Windows 10 and Windows 10 Mobile

## How can I get the next major version of Microsoft Edge, based on Chromium?
In December 2018, Microsoft [announced](https://blogs.windows.com/windowsexperience/2018/12/06/microsoft-edge-making-the-web-better-through-more-open-source-collaboration/#8jv53blDvL6TIKuS.97) our intention to adopt the Chromium open source project in the development of Microsoft Edge on the desktop, to create better web compatibility for our customers and less fragmentation of the web for all web developers. You can get more information at the [Microsoft Edge Insiders site](https://www.microsoftedgeinsider.com/).

## What’s the difference between Microsoft Edge and Internet Explorer 11? How do I know which one to use?
Microsoft Edge is the default browser for all Windows 10 devices. It’s built to be highly compatible with the modern web. For some enterprise web apps and a small set of sites that were built to work with older technologies like ActiveX, [you can use Enterprise Mode](emie-to-improve-compatibility.md) to automatically send users to Internet Explorer 11.

For more information on how Internet Explorer and Microsoft Edge work together to support your legacy web apps, while still defaulting to the higher security and modern experiences enabled by Microsoft Edge, see [Legacy apps in the enterprise](https://blogs.windows.com/msedgedev/2017/04/07/legacy-web-apps-enterprise/#RAbtRvJSYFaKu2BI.97).

## Does Microsoft Edge work with Enterprise Mode?
[Enterprise Mode](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/enterprise-mode-overview-for-ie11) helps you run many legacy web applications with better backward compatibility. You can configure both Microsoft Edge and Internet Explorer to use the same Enterprise Mode Site List, switching seamlessly between browsers to support both modern and legacy web apps.

## How do I customize Microsoft Edge and related settings for my organization?
You can use Group Policy or Microsoft Intune to manage settings related to Microsoft Edge, such as security settings, folder redirection, and preferences. See [Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/group-policies/) for a list of policies currently available for Microsoft Edge and configuration information. Note that the preview release of Chromium-based Microsoft Edge might not include management policies or other enterprise functionality; our focus during the preview is modern browser fundamentals.  

## Is Adobe Flash supported in Microsoft Edge?
Adobe Flash is currently supported as a built-in feature of Microsoft Edge on PCs running Windows 10. In July 2017, Adobe announced that Flash support will end after 2020. With this change to Adobe support, we’ve started to phase Flash out of  Microsoft Edge by adding the [Configure the Adobe Flash Click-to-Run setting group policy](https://docs.microsoft.com/microsoft-edge/deploy/available-policies#configure-the-adobe-flash-click-to-run-setting) - this lets you control which websites can run Adobe Flash content.

To learn more about Microsoft’s plan for phasing Flash out of Microsoft Edge and Internet Explorer, see [The End of an Era — Next Steps for Adobe Flash](https://blogs.windows.com/msedgedev/2017/07/25/flash-on-windows-timeline/#3Bcc3QjRw0l7XsZ4.97) (blog article).

## Does Microsoft Edge support ActiveX controls or BHOs like Silverlight or Java?
No. Microsoft Edge doesn’t support ActiveX controls and BHOs like Silverlight or Java. If you’re running web apps that use ActiveX controls, x-ua-compatible headers, or legacy document modes, you need to keep running them in IE11. IE11 offers additional security, manageability, performance, backward compatibility, and standards support.

## How often will Microsoft Edge be updated?
In Windows 10, we’re delivering Windows as a service, updated on a cadence driven by quality and the availability of new features. Microsoft Edge security updates are released every two to four weeks, while bigger feature updates are included in the Windows 10 releases on a semi-annual cadence.

## How can I provide feedback on Microsoft Edge?
Microsoft Edge is an evergreen browser - we’ll continue to evolve both the web platform and the user interface with regular updates. To send feedback on user experience, or on broken or malicious sites, use the **Send Feedback** option under the ellipses icon (**...**) in the Microsoft Edge toolbar. 

## Will Internet Explorer 11 continue to receive updates?
We’re committed to keeping Internet Explorer a supported, reliable, and safe browser. Internet Explorer is still a component of Windows and follows the support lifecycle of the OS on which it’s installed. For details, see [Lifecycle FAQ - Internet Explorer](https://support.microsoft.com/help/17454/). While we continue to support and update Internet Explorer, the latest features and platform updates will only be available in Microsoft Edge.

## How do I find out what version of Microsoft Edge I have?
In the upper right corner of Microsoft Edge, click the ellipses icon (**...**), and then click **Settings**. Look in the **About Microsoft Edge** section to find your version.

## What is Microsoft EdgeHTML?
Microsoft EdgeHTML is the web rendering engine that powers the current Microsoft Edge web browser and Windows 10 web app platform. (As opposed to *Microsoft Edge, based on Chromium*.)
