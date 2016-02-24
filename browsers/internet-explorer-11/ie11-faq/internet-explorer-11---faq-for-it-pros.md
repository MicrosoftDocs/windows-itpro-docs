---
Description: 'Internet Explorer 11 - FAQ for IT Pros'
MS-HAID: 'p\_ie11faq.internet\_explorer\_11\_\_\_faq\_for\_it\_pros'
MSHAttr: 'PreferredLib:/library'
title: 'Internet Explorer 11 - FAQ for IT Pros'
---

# Internet Explorer 11 - FAQ for IT Pros


Answering frequently asked questions about Internet Explorer 11 features, operating system support, integration with the Windows operating system, Group Policy, and general configuration.

## Frequently Asked Questions


**What operating system does IE11 run on?**

-   Windows 10

-   Windows 8.1

-   Windows Server 2012 R2

-   Windows 7 with Service Pack 1 (SP1)

-   Windows Server 2008 R2 with Service Pack 1 (SP1)

**How do I install IE11 on Windows 10, Windows 8.1, or Windows Server 2012 R2?**

IE11 is preinstalled with Windows 8.1 and Windows Server 2012 R2. No additional action is required.

**How do I install IE11 on Windows 7 with SP1 or Windows Server 2008 R2 with SP1?**

You can install IE11 on computers running either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. To download IE11, see the IE11[home page](http://go.microsoft.com/fwlink/p/?LinkId=290956).

**How does IE11 integrate with Windows 8.1?**

IE11 is the default handler for the HTTP and HTTPS protocols and the default browser for Windows 8.1. There are two experiences in Windows 8.1: Internet Explorer and Internet Explorer for the desktop. IE is the default browser for touch-first, immersive experiences. Internet Explorer for the desktop provides a more traditional window and tab management experience. The underlying platform of IE11 is fully interoperable across both IE and the familiar Internet Explorer for the desktop, letting developers write the same markup for both experiences.

**What are the new or improved security features?**

IE11 offers improvements to Enhanced Protected Mode, password manager, and other security features. IE11 also turns on Transport Layer Security (TLS) 1.2 by default.

**How is Microsoft supporting modern web standards, such as WebGL?**

Microsoft is committed to providing an interoperable web by supporting modern web standards. Doing this lets developers use the same markup across web browsers, helping to reduce development and support costs.

Supported web standards include:

-   Web Graphics Library (WebGL)

-   Canvas 2D L2 extensions, including image smoothing using the nearest neighbor, dashed lines, and fill rules

-   Fullscreen API

-   Encrypted media extensions

-   Media source extensions

-   CSS flexible box layout module

-   And mutation observers like DOM4 and 5.3

For more information about specific changes and additions, see the [IE11 guide for developers](http://go.microsoft.com/fwlink/?LinkId=313188).

**What test tools exist to test for potential application compatibility issues?**

The Compat Inspector tool supports Windows Internet Explorer 9 through IE11. For more information, see [Compat Inspector User Guide](http://go.microsoft.com/fwlink/?LinkId=313189). In addition, you can use the new [F12 Developer Tools](http://go.microsoft.com/fwlink/?LinkId=313190) that are included with IE11, or the [modern.ie](http://go.microsoft.com/fwlink/p/?linkid=308902) website for older versions of IE.

**Why am I having problems launching my legacy apps with Internet Explorer 11**?

It’s most likely because IE no longer starts apps that use managed browser hosting controls, like in the .NET Framework 1.1 and 2.0. You can get IE11 to use managed browser hosting controls again, by:

-   **For x86 systems or for 32-bit processes on x64 systems:** Go to the HKLM/SOFTWARE/MICROSOFT/.NETFramework registry key and change the EnableIEHosting value to 1.

-   **For x64 systems or for 64-bit processes on x64 systems:** Go to the HKLM/SOFTWARE/Wow6432Node/.NETFramework registry key and change the EnableIEHosting value to 1.

For more information, see the [Web Applications](http://go.microsoft.com/fwlink/?LinkId=308903) section of the Application Compatibility in the .NET Framework 4.5 page.

**Is there a compatibility list for IE?**

Yes. You can review the XML-based [compatibility list](http://go.microsoft.com/fwlink/p/?LinkId=242586).

**What is Enterprise Mode?**

Enterprise Mode is a compatibility mode designed for Enterprises. This mode lets websites render using a modified browser configuration that’s designed to avoid the common compatibility problems associated with web apps written and tested on older versions of IE, like Windows Internet Explorer 7 or Windows Internet Explorer 8.

For more information, see [Turn on Enterprise Mode and use a site list](p_ie11deploy.turn_on_enterprise_mode_and_use_a_site_list).

**What is the Enterprise Mode Site List Manager tool?**

Enterprise Mode Site List Manager tool gives you a way to add websites to your Enterprise Mode site list, without having to manually code XML.

For more information, see all of the topics in [Use the Enterprise Mode Site List Manager tool](p_ie11deploy.use_the_enterprise_mode_site_list_manager_tool).

**Are browser plug-ins supported in IE11?**

The immersive version of IE11 provides an add-on–free experience, so browser plugins won't load and dependent content won't be displayed. This doesn't apply to Internet Explorer for the desktop. For more information, see [Browsing Without Plug-ins](http://go.microsoft.com/fwlink/p/?LinkId=242587). However, Internet Explorer for the desktop and IE11 on Windows 7 with SP1 do support browser plugins, including ActiveX controls such as Adobe Flash and Microsoft Silverlight.

**Is Adobe Flash supported on IE11?**

Adobe Flash is included as a platform feature and is available out of the box for Windows 8.1, running on both IE and Internet Explorer for the desktop. Users can turn this feature on or off using the **Manage Add-ons** dialog box, while administrators can turn this feature on or off using the Group Policy setting, **Turn off Adobe Flash in IE and prevent applications from using IE technology to instantiate Flash objects**.

**Important**  
The preinstalled version of Adobe Flash isn't supported on IE11 running on either Windows 7 with SP1 or Windows Server 2008 R2 with SP1. However, you can still download and install the separate Adobe Flash plug-in.

 

**Can I replace IE11 on Windows 8.1 with an earlier version?**

No. Windows 8.1 doesn't support any of the previous versions of IE.

**Are there any new Group Policy settings in IE11?**

IE11 includes all of the previous Group Policy settings you've used to manage and control web browser configuration since Internet Explorer 9. It also includes the following new Group Policy settings, supporting new features:

-   Turn off Page Prediction

-   Turn on the swiping motion for Internet Explorer for the desktop

-   Allow Microsoft services to provide more relevant and personalized search results

-   Turn off phone number detection

-   Allow IE to use the SPDY/3 network protocol

-   Let users turn on and use Enterprise Mode from the **Tools** menu

-   Use the Enterprise Mode IE website list

For more information, see [New group policy settings for IE11](p_ie11deploy.new_group_policy_settings_for_internet_explorer_11).

**Is there a version of the Internet Explorer Administration Kit (IEAK) supporting IE11?**

Yes. The Internet Explorer Administration Kit 11 (IEAK 11) is available for download. IEAK 11 lets you create custom versions of IE11 for use in your organization. For more information, see the following resources:

-   [Internet Explorer Administration Kit Information and Downloads](http://go.microsoft.com/fwlink/p/?LinkId=214250) on the Internet Explorer TechCenter.

-   [Internet Explorer Administration Kit 11 product documentation](http://go.microsoft.com/fwlink/p/?LinkId=327739) on TechNet.

**Where can I get more information about IE11 for IT pros?**

Visit the [Springboard Series for IE11](http://go.microsoft.com/fwlink/?LinkId=313191) webpage on TechNet.

**Is there a version of the Internet Explorer Blocker Toolkit that will prevent automatic installation of IE11?**

Yes. The IE11 Blocker Toolkit is available for download. For more information, see [Toolkit to Disable Automatic Delivery of IE11](http://go.microsoft.com/fwlink/?LinkId=328195) on the Microsoft Download Center.

**Can I customize settings for IE on Windows 8.1?**

Settings can be customized in the following ways:

-   IE11**Settings** charm.

-   IE11-related Group Policy settings.

-   IEAK 11 for settings shared by both IE and Internet Explorer for the desktop.

**Can I make Internet Explorer for the desktop my default browsing experience?**

Group Policy settings can be set to open either IE or Internet Explorer for the desktop as the default browser experience. Individual users can configure their own settings in the **Programs** tab of **Internet Options**. The following table shows the settings and results:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Let IE decide</strong></p></td>
<td align="left"><p>Links open in the same type of experience from where they're launched. For example, clicking a link from a Windows Store app, opens IE. However, clicking a link from a desktop app, opens Internet Explorer for the desktop.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Always in IE11</strong></p></td>
<td align="left"><p>Links always open in IE.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Always in Internet Explorer for the desktop</strong></p></td>
<td align="left"><p>Links always open in Internet Explorer for the desktop.</p></td>
</tr>
</tbody>
</table>

 

 

 



