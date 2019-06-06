---
ms.localizationpriority: medium
ms.mktglfcycl: explore
description: Frequently asked questions about Internet Explorer 11 for IT Pros
author: lomayor
ms.prod: ie11
ms.assetid: 140e7d33-584a-44da-8c68-6c1d568e1de3
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Internet Explorer 11 - FAQ for IT Pros (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 10/16/2017
---


# Internet Explorer 11 - FAQ for IT Pros
Answering frequently asked questions about Internet Explorer 11 (IE11) features, operating system support, integration with the Windows operating system, Group Policy, and general configuration.

## Frequently Asked Questions

**Q: What operating system does IE11 run on?**

-   Windows 10

-   Windows 8.1

-   Windows Server 2012 R2

-   Windows 7 with Service Pack 1 (SP1)

-   Windows Server 2008 R2 with Service Pack 1 (SP1)


**Q: How do I install IE11 on Windows 10, Windows 8.1, or Windows Server 2012 R2?**<br>
IE11 is preinstalled with Windows 8.1 and Windows Server 2012 R2. No additional action is required.

**Q: How do I install IE11 on Windows 7 with SP1 or Windows Server 2008 R2 with SP1?**<br>
You can install IE11 on computers running either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. To download IE11, see the IE11 [home page](https://go.microsoft.com/fwlink/p/?LinkId=290956).

**Q: How does IE11 integrate with Windows 8.1?**<br>
IE11 is the default handler for the HTTP and HTTPS protocols and the default browser for Windows 8.1. There are two experiences in Windows 8.1: Internet Explorer and Internet Explorer for the desktop. IE is the default browser for touch-first, immersive experiences. Internet Explorer for the desktop provides a more traditional window and tab management experience. The underlying platform of IE11 is fully interoperable across both IE and the familiar Internet Explorer for the desktop, letting developers write the same markup for both experiences.

**Q: What are the new or improved security features?**<br>
IE11 offers improvements to Enhanced Protected Mode, password manager, and other security features. IE11 also turns on Transport Layer Security (TLS) 1.2 by default.

**Q: How is Microsoft supporting modern web standards, such as WebGL?**<br>
Microsoft is committed to providing an interoperable web by supporting modern web standards. Doing this lets developers use the same markup across web browsers, helping to reduce development and support costs.<p>
Supported web standards include:

-   Web Graphics Library (WebGL)

-   Canvas 2D L2 extensions, including image smoothing using the nearest neighbor, dashed lines, and fill rules

-   Fullscreen API

-   Encrypted media extensions

-   Media source extensions

-   CSS flexible box layout module

-   And mutation observers like DOM4 and 5.3

For more information about specific changes and additions, see the [IE11 guide for developers](https://go.microsoft.com/fwlink/p/?LinkId=313188).

**Q: What test tools exist to test for potential application compatibility issues?**<br>
The Compat Inspector tool supports Windows Internet Explorer 9 through IE11. For more information, see [Compat Inspector User Guide](https://go.microsoft.com/fwlink/p/?LinkId=313189). In addition, you can use the new [F12 Developer Tools](https://go.microsoft.com/fwlink/p/?LinkId=313190) that are included with IE11, or the [modern.ie](https://go.microsoft.com/fwlink/p/?linkid=308902) website for Microsoft Edge.

**Q: Why am I having problems launching my legacy apps with Internet Explorer 11**?<br>
It’s most likely because IE no longer starts apps that use managed browser hosting controls, like in the .NET Framework 1.1 and 2.0. You can get IE11 to use managed browser hosting controls again, by:

-   **For x86 systems or for 32-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

-   **For x64 systems or for 64-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\Wow6432Node\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

For more information, see the [Web Applications](https://go.microsoft.com/fwlink/p/?LinkId=308903) section of the Application Compatibility in the .NET Framework 4.5 page.

**Q: Is there a compatibility list for IE?**<br>
Yes. You can review the XML-based [compatibility version list](https://go.microsoft.com/fwlink/p/?LinkId=403864).

**Q: What is Enterprise Mode?**<br>
Enterprise Mode is a compatibility mode designed for Enterprises. This mode lets websites render using a modified browser configuration that’s designed to avoid the common compatibility problems associated with web apps written and tested on older versions of IE, like Windows Internet Explorer 7 or Windows Internet Explorer 8.<p>
For more information, see [Turn on Enterprise Mode and use a site list](../ie11-deploy-guide/turn-on-enterprise-mode-and-use-a-site-list.md).

**Q: What is the Enterprise Mode Site List Manager tool?**<br>
Enterprise Mode Site List Manager tool gives you a way to add websites to your Enterprise Mode site list, without having to manually code XML.<p>
For more information, see all of the topics in [Use the Enterprise Mode Site List Manager](../ie11-deploy-guide/use-the-enterprise-mode-site-list-manager.md).

**Q: Are browser plug-ins supported in IE11?**<br>
The immersive version of IE11 provides an add-on–free experience, so browser plugins won't load and dependent content won't be displayed. This doesn't apply to Internet Explorer for the desktop. For more information, see [Browsing Without Plug-ins](https://go.microsoft.com/fwlink/p/?LinkId=242587). However, Internet Explorer for the desktop and IE11 on Windows 7 with SP1 do support browser plugins, including ActiveX controls such as Adobe Flash and Microsoft Silverlight.

**Q: Is Adobe Flash supported on IE11?**<br>
Adobe Flash is included as a platform feature and is available out of the box for Windows 8.1, running on both IE and Internet Explorer for the desktop. Users can turn this feature on or off using the **Manage Add-ons** dialog box, while administrators can turn this feature on or off using the Group Policy setting, **Turn off Adobe Flash in IE and prevent applications from using IE technology to instantiate Flash objects**.<p>
**Important**<br>
The preinstalled version of Adobe Flash isn't supported on IE11 running on either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. However, you can still download and install the separate Adobe Flash plug-in.

**Q: Can I replace IE11 on Windows 8.1 with an earlier version?**<br>
No. Windows 8.1 doesn't support any of the previous versions of IE.

**Q: Are there any new Group Policy settings in IE11?**<br>
IE11 includes all of the previous Group Policy settings you've used to manage and control web browser configuration since Internet Explorer 9. It also includes the following new Group Policy settings, supporting new features:

-   Turn off Page Prediction

-   Turn on the swiping motion for Internet Explorer for the desktop

-   Allow Microsoft services to provide more relevant and personalized search results

-   Turn off phone number detection

-   Allow IE to use the SPDY/3 network protocol

-   Let users turn on and use Enterprise Mode from the **Tools** menu

-   Use the Enterprise Mode IE website list

For more information, see [New group policy settings for IE11](../ie11-deploy-guide/new-group-policy-settings-for-ie11.md).


**Q: Where can I get more information about IE11 for IT pros?**<br>
Visit the [Springboard Series for Microsoft Browsers](https://go.microsoft.com/fwlink/p/?LinkId=313191) webpage on TechNet.



**Q: Can I customize settings for IE on Windows 8.1?**<br>
Settings can be customized in the following ways:

-   IE11 **Settings** charm.

-   IE11-related Group Policy settings.

-   IEAK 11 for settings shared by both IE and Internet Explorer for the desktop.

**Q: Can I make Internet Explorer for the desktop my default browsing experience?**<br>
Group Policy settings can be set to open either IE or Internet Explorer for the desktop as the default browser experience. Individual users can configure their own settings in the **Programs** tab of **Internet Options**. The following table shows the settings and results:<p>

|Setting |Result |
|--------|-------|
|Let IE decide |Links open in the same type of experience from where they're launched. For example, clicking a link from a Microsoft Store app, opens IE. However, clicking a link from a desktop app, opens Internet Explorer for the desktop. |
|Always in IE11 |Links always open in IE. |
|Always in Internet Explorer for the desktop |Links always open in Internet Explorer for the desktop. |


**Q. Can IEAK 11 build custom Internet Explorer 11 packages in languages other than the language of the in-use IEAK 11 version?**
Yes. You can use IEAK 11 to build custom Internet Explorer 11 packages in any of the supported 24 languages. You'll select the language for the custom package on the Language Selection page of the customization wizard.

IEAK 11 is available in 24 languages but can build customized Internet Explorer 11 packages in all languages of the supported operating systems. Select a language below and download IEAK 11 from the download center:

|  |  |  |
|---------|---------|---------|
|[English](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/en-us/ieak.msi)     |[French](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/fr-fr/ieak.msi)         |[Norwegian (Bokmål)](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/nb-no/ieak.msi)         |
|[Arabic](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/ar-sa/ieak.msi)     |[Chinese (Simplified)](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/zh-cn/ieak.msi)         |[Chinese(Traditional)](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/zh-tw/ieak.msi)         |
|[Czech](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/cs-cz/ieak.msi)     |[Danish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/da-dk/ieak.msi)         |[Dutch](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/nl-nl/ieak.msi)          |
|[Finnish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/fi-fi/ieak.msi)    |[German](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/de-de/ieak.msi)         |[Greek](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/el-gr/ieak.msi)         |
|[Hebrew](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/he-il/ieak.msi)     |[Hungarian](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/hu-hu/ieak.msi)         |[Italian](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/it-it/ieak.msi)         |
|[Japanese](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/ja-jp/ieak.msi)     |[Korean](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/ko-kr/ieak.msi)         |[Polish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/pl-pl/ieak.msi)         |
|[Portuguese (Brazil)](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/pt-br/ieak.msi)     |[Portuguese (Portugal)](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/pt-pt/ieak.msi)         |[Russian](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/ru-ru/ieak.msi)         |
|[Spanish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/es-es/ieak.msi)     |[Swedish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/sv-se/ieak.msi)         |[Turkish](https://download.microsoft.com/download/A/B/1/AB1954BF-8B20-4F01-808A-FE5EE5269F08/MSI/tr-tr/ieak.msi)         |




**Q. What are the different modes available for the Internet Explorer Customization Wizard?**
The IEAK Customization Wizard displays pages based on your licensing mode selection, either **Internal** or **External**. For more information on IEAK Customization Wizard modes, see [Determine the licensing version and features to use in IEAK 11](../ie11-ieak/licensing-version-and-features-ieak11.md).

The following table displays which pages are available in IEAK 11, based on the licensing mode:

| **Wizard Pages**                          | **External** | **Internal** |
|-------------------------------------------|--------------|--------------|
| Welcome to the IEAK                       | Yes          | Yes          |
| File Locations                            | Yes          | Yes          |
| Platform Selection                        | Yes          | Yes          |
| Language Selection                        | Yes          | Yes          |
| Package Type Selection                    | Yes          | Yes          |
| Feature Selection                         | Yes          | Yes          |
| Automatic Version Synchronization         | Yes          | Yes          |
| Custom Components                         | Yes          | Yes          |
| Corporate Install                         | No           | Yes          |
| User Experience                           | No           | Yes          |
| Browser User Interface                    | Yes          | Yes          |
| Search Providers                          | Yes          | Yes          |
| Important URLs - Home page and Support    | Yes          | Yes          |
| Accelerators                              | Yes          | Yes          |
| Favorites, Favorites Bar, and Feeds       | Yes          | Yes          |
| Browsing Options                          | No           | Yes          |
| First Run Wizard and Welcome Page Options | Yes          | Yes          |
| Compatibility View                        | Yes          | Yes          |
| Connection Manager                        | Yes          | Yes          |
| Connection Settings                       | Yes          | Yes          |
| Automatic Configuration                   | No           | Yes          |
| Proxy Settings                            | Yes          | Yes          |
| Security and Privacy Settings             | No           | Yes          |
| Add a Root Certificate                    | Yes          | No           |
| Programs                                  | Yes          | Yes          |
| Additional Settings                       | No           | Yes          |
| Wizard Complete                           | Yes          | Yes          |


## Related topics
- [Microsoft Edge - Deployment Guide for IT Pros](https://go.microsoft.com/fwlink/p/?LinkId=760643)
- [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](../ie11-deploy-guide/index.md)
- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](../ie11-ieak/index.md)
