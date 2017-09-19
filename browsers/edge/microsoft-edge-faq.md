---
title: Microsoft Edge - Frequently Asked Questions (FAQs) for IT Pros (Microsoft Edge for IT Pros)
description: Answering frequently asked questions about Microsoft Edge features, integration, support, and potential problems.
author: eross-msft
ms.author: lizross
ms.prod: edge
ms.mktglfcycl: general
ms.sitesec: library
ms.localizationpriority: high
ms.date: 09/07/2017
---

# Microsoft Edge - Frequently Asked Questions (FAQs) for IT Pros

**Applies to:**

- Windows 10
- Windows 10 Mobile

**Q: What is the difference between Microsoft Edge and Internet Explorer 11? How do I know which one to use?**

**A:** Microsoft Edge is the default browser for all Windows 10 devices. It is built to be highly compatible with the modern web. For some enterprise web apps and a small set of sites on the web that were built to work with older technologies like ActiveX, [you can use Enterprise Mode](https://docs.microsoft.com/en-us/microsoft-edge/deploy/emie-to-improve-compatibility) to automatically send users to Internet Explorer 11 for those sites.

For more information on how Internet Explorer and Microsoft Edge can work together to support your legacy web apps, while still defaulting to the higher bar for security and modern experiences enabled by Microsoft Edge, see [Legacy apps in the enterprise](https://blogs.windows.com/msedgedev/2017/04/07/legacy-web-apps-enterprise/#RAbtRvJSYFaKu2BI.97).

**Q: Does Microsoft Edge work with Enterprise Mode?**

**A:** [Enterprise Mode](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/enterprise-mode-overview-for-ie11) offers better backward compatibility and enables customers to run many legacy web applications. Microsoft Edge and Internet Explorer can be configured to use the same Enterprise Mode Site List, switching seamlessly between browsers to support both modern and legacy web apps. For guidance and additional resources, please visit the [Microsoft Edge IT Center](https://technet.microsoft.com/en-us/microsoft-edge).


**Q: I have Windows 10, but I don’t seem to have Microsoft Edge. Why?**

**A:** Long-Term Servicing Branch (LTSB) versions of Windows, including Windows Server 2016, don't include Microsoft Edge or many other Universal Windows Platform (UWP) apps. These apps and their services are frequently updated with new functionality and can't be supported on systems running LTSB operating systems. For customers who require the LTSB for specialized devices, we recommend using Internet Explorer 11.

**Q: How do I get the latest Canary/Beta/Preview version of Microsoft Edge?**

**A:** You can access the latest preview version of Microsoft Edge by updating to the latest Windows 10 preview via the [Windows Insider Program](https://insider.windows.com/). To run the preview version of Microsoft Edge on a stable version of Windows 10 (or any other OS), you can download a [Virtual Machine](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/windows/) that we provide or use the upcoming RemoteEdge service.

**Q: How do I customize Microsoft Edge and related settings for my organization?**

**A:** You can use Group Policy or Microsoft Intune to manage settings related to Microsoft Edge, such as security settings, folder redirection, and preferences. See [Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge](https://docs.microsoft.com/en-us/microsoft-edge/deploy/available-policies) for a list of available policies for Microsoft Edge.

**Q: Is Adobe Flash supported in Microsoft Edge?**

**A:** Currently, Adobe Flash is supported as a built-in feature of Microsoft Edge on devices running the desktop version of Windows 10. In July 2017, Adobe announced that Flash will no longer be supported after 2020. We will phase out Flash from Microsoft Edge and Internet Explorer, culminating in the removal of Flash from Windows entirely by the end of 2020. This process began already for Microsoft Edge with [Click-to-Run for Flash](https://blogs.windows.com/msedgedev/2016/12/14/edge-flash-click-run/) in the Windows 10 Creators Update.

For more information about the phasing out of Flash, read the [End of an Era – Next Steps for Adobe Flash](https://blogs.windows.com/msedgedev/2017/07/25/flash-on-windows-timeline/#85ZBy7aiVlDQHebO.97) blog post.

**Q: Does Microsoft Edge support ActiveX controls or BHOs like Silverlight or Java?**

**A:** No, ActiveX controls and BHOs such as Silverlight or Java are not supported in Microsoft Edge. The need for ActiveX controls has been significantly reduced by modern web standards, which are more interoperable across browsers. We are working on plans for an extension model based on the modern web platform in Microsoft Edge. We look forward to sharing more details on these plans soon. Not supporting legacy controls in Microsoft Edge provides many benefits including better interoperability with other modern browsers, as well as increased performance, security, and reliability.

**Q: How often will Microsoft Edge be updated?**

**A:** In Windows 10, we are delivering Windows as a service, updated on a cadence driven by quality and the availability of new features. Microsoft Edge security updates are released every two to four weeks, and the bigger feature updates are currently pushed out with the Windows 10 releases on a semi-annual cadence.

**Q: How can I provide feedback on Microsoft Edge?**

**A:** Microsoft Edge is an evergreen browser and we will continue to evolve both the web platform and the user interface with regular updates. To send feedback on user experience, or on broken or malicious sites, you can use the **Send Feedback** option under the ellipses icon (**...**) in the Microsoft Edge toolbar. You can also provide feedback through the [Microsoft Edge Dev Twitter](https://twitter.com/MSEdgeDev) account. 

**Q: Will Internet Explorer 11 continue to receive updates?**

**A:** We will continue to deliver security updates to Internet Explorer 11 through its supported lifespan. To ensure consistent behavior across Windows versions, we will evaluate Internet Explorer 11 bugs for servicing on a case by case basis. The latest features and platform updates will only be available in Microsoft Edge. 

**Q: I loaded a web page and Microsoft Edge sent me to Internet Explorer - what happened?**

**A:** In some cases, Internet Explorer loads automatically for sites that still rely on legacy technologies such as ActiveX. For more information, read [Legacy web apps in the enterprise](https://blogs.windows.com/msedgedev/2017/04/07/legacy-web-apps-enterprise/#uHpbs94kAaVsU1qB.97).

**Q: Why is Do Not Track (DNT) off by default in Microsoft Edge?**

**A:** When Microsoft first set the Do Not Track setting to “On” by default in Internet Explorer 10, industry standards had not yet been established. We are now making this default change as the World Wide Web Consortium (W3C) formalizes industry standards to recommend that default settings allow customers to actively indicate whether they want to enable DNT. As a result, DNT will not be enabled by default in upcoming versions of Microsoft’s browsers, but we will provide customers with clear information on how to turn this feature on in the browser settings should you wish to do so.

**Q: How do I find out what version of Microsoft Edge I have?**

**A:** Open Microsoft Edge. In the upper right corner click the ellipses icon (**…**), and then click **Settings**. Look in the **About this app** section to find your version. 
 
**Q: What is Microsoft EdgeHTML?**

**A:** Microsoft EdgeHTML is the new web rendering engine that powers the Microsoft Edge web browser and Windows 10 web app platform, and that helps web developers build and maintain a consistent site across all modern browsers. The Microsoft EdgeHTML engine also helps to defend against hacking through support for the W3C standard for [Content Security Policy (CSP)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/content-Security-Policy), which can help web developers defend their sites against cross-site scripting attacks, and support for the [HTTP Strict Transport Security (HSTS)](https://developer.microsoft.com/microsoft-edge/platform/documentation/dev-guide/security/HSTS/) security feature (IETF-standard compliant), which helps ensure that connections to important sites, such as to your bank, are always secured.

**Q: Will Windows 7 or Windows 8.1 users get Microsoft Edge or the new Microsoft EdgeHTML rendering engine?**

**A:** Microsoft Edge has been designed and built to showcase Windows 10 features like Cortana, and is built on top of the Universal Windows Platform. Although we don’t have any plans to bring Microsoft Edge to Windows 7 or Windows 8.1 at this time, you can test Microsoft Edge with older versions of Internet Explorer using [free virtual machines](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/).

