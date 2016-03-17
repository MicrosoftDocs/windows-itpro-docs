---
Description: Frequently asked questions about Internet Explorer 11 for IT Pros
ms.assetid: 140e7d33-584a-44da-8c68-6c1d568e1de3
author: eross-msft
ms.prod: IE11
ms.mktglfcycl: explore
ms.sitesec: library
title: Internet Explorer 11 - FAQ for IT Pros (Internet Explorer 11 for IT Pros)
---

# Internet Explorer 11 - FAQ for IT Pros
Answering frequently asked questions about Internet Explorer 11 features, operating system support, integration with the Windows operating system, Group Policy, and general configuration.

## Frequently Asked Questions

**Q: What operating system does IE11 run on?**

-   Windows 10

-   Windows 8.1

-   Windows Server 2012 R2

-   Windows 7 with Service Pack 1 (SP1)

-   Windows Server 2008 R2 with Service Pack 1 (SP1)


**Q: How do I install IE11 on Windows 10, Windows 8.1, or Windows Server 2012 R2?**<br>
IE11 is preinstalled with Windows 8.1 and Windows Server 2012 R2. No additional action is required.

**Q: How do I install IE11 on Windows 7 with SP1 or Windows Server 2008 R2 with SP1?**<br>
You can install IE11 on computers running either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. To download IE11, see the IE11 [home page](http://go.microsoft.com/fwlink/p/?LinkId=290956).

**Q: How does IE11 integrate with Windows 8.1?**<br>
IE11 is the default handler for the HTTP and HTTPS protocols and the default browser for Windows 8.1. There are two experiences in Windows 8.1: Internet Explorer and Internet Explorer for the desktop. IE is the default browser for touch-first, immersive experiences. Internet Explorer for the desktop provides a more traditional window and tab management experience. The underlying platform of IE11 is fully interoperable across both IE and the familiar Internet Explorer for the desktop, letting developers write the same markup for both experiences.

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

For more information about specific changes and additions, see the [IE11 guide for developers](http://go.microsoft.com/fwlink/p/?LinkId=313188).

**Q: What test tools exist to test for potential application compatibility issues?**<br>
The Compat Inspector tool supports Windows Internet Explorer 9 through IE11. For more information, see [Compat Inspector User Guide](http://go.microsoft.com/fwlink/p/?LinkId=313189). In addition, you can use the new [F12 Developer Tools](http://go.microsoft.com/fwlink/p/?LinkId=313190) that are included with IE11, or the [modern.ie](http://go.microsoft.com/fwlink/p/?linkid=308902) website for Microsoft Edge.

**Q: Why am I having problems launching my legacy apps with Internet Explorer 11**?<br>
It’s most likely because IE no longer starts apps that use managed browser hosting controls, like in the .NET Framework 1.1 and 2.0. You can get IE11 to use managed browser hosting controls again, by:

-   **For x86 systems or for 32-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

-   **For x64 systems or for 64-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\Wow6432Node\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

For more information, see the [Web Applications](http://go.microsoft.com/fwlink/p/?LinkId=308903) section of the Application Compatibility in the .NET Framework 4.5 page.

**Q: Is there a compatibility list for IE?**<br>
Yes. You can review the XML-based [compatibility version list](http://go.microsoft.com/fwlink/p/?LinkId=403864).

**Q: What is Enterprise Mode?**<br>
Enterprise Mode is a compatibility mode designed for Enterprises. This mode lets websites render using a modified browser configuration that’s designed to avoid the common compatibility problems associated with web apps written and tested on older versions of IE, like Windows Internet Explorer 7 or Windows Internet Explorer 8.<p>
For more information, see [Turn on Enterprise Mode and use a site list](../ie11-deploy-guide/turn-on-enterprise-mode-and-use-a-site-list.md).

**Q: What is the Enterprise Mode Site List Manager tool?**<br>
Enterprise Mode Site List Manager tool gives you a way to add websites to your Enterprise Mode site list, without having to manually code XML.<p>
For more information, see all of the topics in [Use the Enterprise Mode Site List Manager tool](../ie11-deploy-guide/use-the-enterprise-mode-site-list-manager-tool.md).

**Q: Are browser plug-ins supported in IE11?**<br>
The immersive version of IE11 provides an add-on–free experience, so browser plugins won't load and dependent content won't be displayed. This doesn't apply to Internet Explorer for the desktop. For more information, see [Browsing Without Plug-ins](http://go.microsoft.com/fwlink/p/?LinkId=242587). However, Internet Explorer for the desktop and IE11 on Windows 7 with SP1 do support browser plugins, including ActiveX controls such as Adobe Flash and Microsoft Silverlight.

**Q: Is Adobe Flash supported on IE11?**<br>
Adobe Flash is included as a platform feature and is available out of the box for Windows 8.1, running on both IE and Internet Explorer for the desktop. Users can turn this feature on or off using the **Manage Add-ons** dialog box, while administrators can turn this feature on or off using the Group Policy setting, **Turn off Adobe Flash in IE and prevent applications from using IE technology to instantiate Flash objects**.<p>
**Important**<br>
The preinstalled version of Adobe Flash isn't supported on IE11 running on either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. However, you can still download and install the separate Adobe Flash plug-in.

**Q: Can I replace IE11 on Windows 8.1 with an earlier version?**<br>
No. Windows 8.1 doesn't support any of the previous versions of IE.

**Q: Are there any new Group Policy settings in IE11?**<br>
IE11 includes all of the previous Group Policy settings you've used to manage and control web browser configuration since Internet Explorer 9. It also includes the following new Group Policy settings, supporting new features:

-   Turn off Page Prediction

-   Turn on the swiping motion for Internet Explorer for the desktop

-   Allow Microsoft services to provide more relevant and personalized search results

-   Turn off phone number detection

-   Allow IE to use the SPDY/3 network protocol

-   Let users turn on and use Enterprise Mode from the **Tools** menu

-   Use the Enterprise Mode IE website list

For more information, see [New group policy settings for IE11](../ie11-deploy-guide/new-group-policy-settings-for-ie11.md).

**Q: Is there a version of the Internet Explorer Administration Kit (IEAK) supporting IE11?**<br>
Yes. The Internet Explorer Administration Kit 11 (IEAK 11) is available for download. IEAK 11 lets you create custom versions of IE11 for use in your organization. For more information, see the following resources:

-   [Internet Explorer Administration Kit Information and Downloads](http://go.microsoft.com/fwlink/p/?LinkId=214250) on the Internet Explorer TechCenter.

-   [Internet Explorer Administration Kit 11 product documentation](http://go.microsoft.com/fwlink/p/?LinkId=327739) on TechNet.

**Q: Where can I get more information about IE11 for IT pros?**<br>
Visit the [Springboard Series for Microsoft Browsers](http://go.microsoft.com/fwlink/p/?LinkId=313191) webpage on TechNet.

**Q: Is there a version of the Internet Explorer Blocker Toolkit that will prevent automatic installation of IE11?**<br>
Yes. The IE11 Blocker Toolkit is available for download. For more information, see [Toolkit to Disable Automatic Delivery of IE11](http://go.microsoft.com/fwlink/p/?LinkId=328195) on the Microsoft Download Center.

**Q: Can I customize settings for IE on Windows 8.1?**<br>
Settings can be customized in the following ways:

-   IE11 **Settings** charm.

-   IE11-related Group Policy settings.

-   IEAK 11 for settings shared by both IE and Internet Explorer for the desktop.

**Q: Can I make Internet Explorer for the desktop my default browsing experience?**<br>
Group Policy settings can be set to open either IE or Internet Explorer for the desktop as the default browser experience. Individual users can configure their own settings in the **Programs** tab of **Internet Options**. The following table shows the settings and results:<p>

|Setting |Result |
|--------|-------|
|Let IE decide |Links open in the same type of experience from where they're launched. For example, clicking a link from a Windows Store app, opens IE. However, clicking a link from a desktop app, opens Internet Explorer for the desktop. |
|Always in IE11 |Links always open in IE. |
|Always in Internet Explorer for the desktop |Links always open in Internet Explorer for the desktop. |

## Related topics
- [Microsoft Edge - Deployment Guide for IT Pros](http://go.microsoft.com/fwlink/p/?LinkId=760643)
- [Internet Explorer 11 (IE11) - Deployment Guide for IT Pros](http://go.microsoft.com/fwlink/p/?LinkId=760644)
- [Internet Explorer Administration Kit 11 (IEAK 11) - Administrator's Guide](http://go.microsoft.com/fwlink/p/?LinkId=760646)
 

 

 



