---
ms.mktglfcycl: deploy
description: Use this guide to learn about the several options and processes you'll need to consider while you're planning for, deploying, and customizing Internet Explorer 11 for your employee's devices.
author: lomayor
ms.author: lomayor
ms.prod: ie11
ms.assetid: bddc2d97-c38d-45c5-9588-1f5bbff2e9c3
title: Internet Explorer 11 (IE11) - Deployment Guide for IT Pros (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.localizationpriority: medium
manager: dansimp
---


# Internet Explorer 11 (IE11) - Deployment Guide for IT Pros

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Use this guide to learn about the several options and processes you'll need to consider while you're planning for, deploying, and customizing Internet Explorer 11 for your employee's computers.

**Important**<br>
Because this content isn't intended to be a step-by-step guide, not all of the steps are necessary to deploy IE11.

## In this guide
|Topic |Description |
|------|------------|
|[Change history for Internet Explorer 11](change-history-for-internet-explorer-11.md) |Lists new and updated topics in the Internet Explorer 11 documentation for both Windows 10 and Windows 10 Mobile. |
|[System requirements and language support for Internet Explorer 11 (IE11)](system-requirements-and-language-support-for-ie11.md) |IE11 is available for a number of systems and languages. This topic provides info about the minimum system requirements and language support. |
|[List of updated features and tools - Internet Explorer 11 (IE11)](updated-features-and-tools-with-ie11.md) |IE11 includes several new features and tools. This topic includes high-level info about the each of them. |
|[Install and Deploy Internet Explorer 11 (IE11)](install-and-deploy-ie11.md) |Use the topics in this section to learn how to customize your Internet Explorer installation package, how to choose the right method for installation, and how to deploy IE into your environment. You can also find more info about your virtualization options for legacy apps. |
|[Collect data using Enterprise Site Discovery](collect-data-using-enterprise-site-discovery.md) |Use IE to collect data on computers running Windows Internet Explorer 8 through IE11 on Windows 10, Windows 8.1, or Windows 7. This inventory information helps you build a list of websites used by your company so you can make more informed decisions about your IE deployments, including figuring out which sites might be at risk or require overhauls during future upgrades. |
|[Enterprise Mode for Internet Explorer 11 (IE11)](enterprise-mode-overview-for-ie11.md) |Use the topics in this section to learn how to set up and use Enterprise Mode, the Enterprise Mode Site List Manager, and the Enterprise Mode Site List Portal in your company. |
|[Group Policy and Internet Explorer 11 (IE11)](group-policy-and-ie11.md) |Use the topics in this section to learn about Group Policy and how to use it to manage IE. |
|[Manage Internet Explorer 11](manage-ie11-overview.md) |Use the topics in this section to learn about how to auto detect your settings, auto configure your configuration settings, and auto configure your proxy configuration settings for IE. |
|[Troubleshoot Internet Explorer 11 (IE11)](troubleshoot-ie11.md) |Use the topics in this section to learn how to troubleshoot several of the more common problems experienced with IE. |
|[Out-of-date ActiveX control blocking](out-of-date-activex-control-blocking.md) |ActiveX controls are small apps that let websites provide content, like videos, games, and let you interact with content like toolbars. Unfortunately, because many ActiveX controls aren’t automatically updated, they can become outdated as new versions are released. It’s very important that you keep your ActiveX controls up-to-date because malicious software (or malware) can target security flaws in outdated controls, damaging your computer by collecting info from it, installing unwanted software, or by letting someone else control it remotely. To help avoid this situation, IE includes a new security feature, called <em>out-of-date ActiveX control blocking</em>. |
|[Deprecated document modes and Internet Explorer 11](deprecated-document-modes.md) |Internet Explorer 8 introduced document modes as a way to move from the proprietary coding of web features to a more standardized type of coding that could run on multiple browsers and devices. Starting with Windows 10, we’re deprecating document modes.<p>This means that while IE11 will continue to support document modes, Microsoft Edge won’t. And because of that, it also means that if you want to use Microsoft Edge, you’re going to have to update your legacy webpages and apps to support modern features, browsers, and devices.<p><b>Note</b><br>For specific details about the technologies and APIs that are no longer supported in Microsoft Edge, see [A break from the past, part 2: Saying goodbye to ActiveX, VBScript, attachEvent](https://go.microsoft.com/fwlink/p/?LinkId=615953). |
|[What is the Internet Explorer 11 Blocker Toolkit?](what-is-the-internet-explorer-11-blocker-toolkit.md) |The IE11 Blocker Toolkit lets you turn off the automatic delivery of IE11 through the <b>Automatic Updates</b> feature of Windows Update. |
|[Missing Internet Explorer Maintenance (IEM) settings for Internet Explorer 11](missing-internet-explorer-maintenance-settings-for-ie11.md) |The Internet Explorer Maintenance (IEM) settings have been deprecated in favor of Group Policy preferences, Administrative Templates (.admx), and the Internet Explorer Administration Kit 11 (IEAK 11).<p>Because of this change, your IEM-configured settings will no longer work on computers running Internet Explorer 10 or newer. To fix this, you need to update the affected settings using Group Policy preferences, Administrative Templates (.admx), or the IEAK 11.<p>Because Group Policy Preferences and IEAK 11 run using asynchronous processes, you should choose to use only one of the tools within each group of settings. For example, using only IEAK 11 in the <b>Security</b> settings or Group Policy Preferences within the <b>Internet Zone</b> settings. Also, it's important to remember that policy is enforced and can't be changed by the user, while preferences are configured, but can be changed by the user. |
|[Missing the Compatibility View Button](missing-the-compatibility-view-button.md) |Compatibility View was introduced in Internet Explorer 8 to help existing content continue to work with Windows Internet Explorer 7, while developers updated their content to support modern interoperable web standards. Since then, the IE web platform, and the web itself, have changed so that most public web content looks for standards-based features instead of IE 7-compatible behavior.<p>Thanks to these changes, using IE11 in the latest standards mode is more compatible with the web than ever before. As a result, IE11 simplifies web page compatibility for users by removing the <b>Compatibility View</b> button and reducing the number of compatibility options in the F12 developer tools for developers. |
|[Deploy pinned websites using Microsoft Deployment Toolkit (MDT) 2013](deploy-pinned-sites-using-mdt-2013.md) |You can pin websites to the Windows 8.1 taskbar for quick access. You pin a website simply by dragging its tab to the taskbar. Some websites can also extend the icon’s Jump List.<p>The ability to pin websites to the Windows 8.1 taskbar can help make end-users in businesses more productive. As an IT professional, for example, you can pin intranet and SharePoint websites to the taskbar to make them immediately available to employees. In this article, you learn how to deploy pinned websites by using Lite Touch Installation in the [Microsoft Deployment Toolkit (MDT) 2013](https://go.microsoft.com/fwlink/p/?LinkId=398474).


## IE11 naming conventions
IE11 offers differing experiences in Windows 8.1:

|Name |Description |
|-----|------------|
|Internet Explorer or IE |The immersive browser, or IE, without a specific version. |
|Internet Explorer for the desktop |The desktop browser. This is the only experience available when running IE11 on Windows 7 SP1 |
|Internet Explorer 11 or IE11 |The whole browser, which includes both IE and Internet Explorer for the desktop. |

## Related topics
- [Internet Explorer 11 - FAQ for IT Pros](../ie11-faq/faq-for-it-pros-ie11.md)
- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](../ie11-ieak/index.md)
- [Microsoft Edge - Deployment Guide for IT Pros](https://go.microsoft.com/fwlink/p/?LinkId=760643)

