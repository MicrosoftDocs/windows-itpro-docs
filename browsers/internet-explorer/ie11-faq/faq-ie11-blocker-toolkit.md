---
ms.localizationpriority: medium
ms.mktglfcycl: explore
description: Get answers to commonly asked questions about the Internet Explorer 11 Blocker Toolkit.
author: lomayor
ms.author: lomayor
ms.prod: ie11
ms.assetid: 
ms.reviewer: 
audience: itpromanager: dansimp
title: Internet Explorer 11 Blocker Toolkit - Frequently Asked Questions
ms.sitesec: library
ms.date: 05/10/2018
---

# Internet Explorer 11 Blocker Toolkit - Frequently Asked Questions

Get answers to commonly asked questions about the Internet Explorer 11 Blocker Toolkit.  

>[!Important]
>If you administer your company’s environment using an update management solution, such as Windows Server Update Services (WSUS) or System Center 2012 Configuration Manager, you don’t need to use the Internet Explorer 11 Blocker Toolkit. Update management solutions let you completely manage your Windows Updates and Microsoft Updates, including your Internet Explorer 11 deployment.

-   [Automatic updates delivery process](#automatic-updates-delivery-process)

-   [How the Internet Explorer 11 Blocker Toolkit works](#how-the-internet-explorer-11-blocker-toolkit-works)

-   [Internet Explorer 11 Blocker Toolkit and other update services](#internet-explorer-11-blocker-toolkit-and-other-update-services)

## Automatic Updates delivery process


**Q. Which users will receive Internet Explorer 11 as an important update?**  
A. Users running either Windows 7 with Service Pack 1 (SP1) or the 64-bit version of Windows Server 2008 R2 with Service Pack 1 (SP1) will receive Internet Explorer 11 as an important update, if Automatic Updates are turned on. Windows Update is manually run. Automatic Updates will automatically download and install the Internet Explorer 11 files if it’s turned on. For more information about how Internet Explorer works with Automatic Updates and information about other deployment blocking options, see [Internet Explorer 11 Delivery through automatic updates](../ie11-deploy-guide/ie11-delivery-through-automatic-updates.md).  
  
**Q. When is the Blocker Toolkit available?**  
A. The Blocker Toolkit is currently available from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=40722).  
  
**Q. What tools can I use to manage Windows Updates and Microsoft Updates in my company?**  
A. We encourage anyone who wants full control over their company’s deployment of Windows Updates and Microsoft Updates, to use [Windows Server Update Services (WSUS)](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus), a free tool for users of Windows Server. You can also use the more advanced configuration management tool, [System Center 2012 Configuration Manager](https://technet.microsoft.com/library/gg682041.aspx).  
  
**Q. How long does the blocker mechanism work?**  
A. The Internet Explorer 11 Blocker Toolkit uses a registry key value to permanently turn off the automatic delivery of Internet Explorer 11. This behavior lasts as long as the registry key value isn’t removed or changed.   
  
**Q. Why should I use the Internet Explorer 11 Blocker Toolkit to stop delivery of Internet Explorer 11? Why can’t I just disable all of Automatic Updates?**  
A. Automatic Updates provide you with ongoing critical security and reliability updates. Turning this feature off can leave your computers more vulnerable. Instead, we suggest that you use an update management solution, such as WSUS, to fully control your environment while leaving this feature running, managing how and when the updates get to your user’s computers.  
  
The Internet Explorer 11 Blocker Toolkit safely allows Internet Explorer 11 to download and install in companies that can’t use WSUS, Configuration Manager, or
other update management solution.  
  
**Q. Why don’t we just block URL access to Windows Update or Microsoft Update?**  
A. Blocking the Windows Update or Microsoft Update URLs also stops delivery of critical security and reliability updates for all of the supported versions of the Windows operating system; leaving your computers more vulnerable.

## How the Internet Explorer 11 Blocker Toolkit works

**Q. How should I test the Internet Explorer 11 Blocker Toolkit in my company?**  
A. Because the toolkit only sets a registry key to turn on and off the delivery of Internet Explorer 11, there should be no additional impact or side effects to your environment. No additional testing should be necessary.  
  
**Q. What’s the registry key used to block delivery of Internet Explorer 11?**  
A. HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\Setup\\11.0  
  
**Q. What’s the registry key name and values?**  
The registry key name is **DoNotAllowIE11**, where:

-   A value of **1** turns off the automatic delivery of Internet Explorer 11 using Automatic Updates and turns off the Express install option.

-   Not providing a registry key, or using a value of anything other than **1**, lets the user install Internet Explorer 11 through Automatic Updates or a
    manual update.

**Q. Does the Internet Explorer 11 Blocker Toolkit stop users from manually installing Internet Explorer 11?**  
A. No. The Internet Explorer 11 Blocker Toolkit only stops computers from automatically installing Internet Explorer 11 through Automatic Updates. Users can still download and install Internet Explorer 11 from the Microsoft Download Center or from external media.  
  
**Q. Does the Internet Explorer 11 Blocker Toolkit stop users from automatically upgrading to Internet Explorer 11?**  
A. Yes. The Internet Explorer 11 Blocker Toolkit also prevents Automatic Updates from automatically upgrading a computer from Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10 to Internet Explorer 11.  
  
**Q. How does the provided script work?**  
A. The script accepts one of two command line options:

-   **Block:** Creates the registry key that stops Internet Explorer 11 from installing through Automatic Updates.

-   **Unblock:** Removes the registry key that stops Internet Explorer 11 from installing through Automatic Updates.

**Q. What’s the ADM template file used for?**  
A. The Administrative Template (.adm file) lets you import the new Group Policy environment and use Group Policy Objects to centrally manage all of the computers in your company.  
  
**Q. Is the tool localized?**  
A. No. The tool isn’t localized, it’s only available in English (en-us). However, it does work, without any modifications, on any language edition of the supported operating systems.

## Internet Explorer 11 Blocker Toolkit and other update services

**Q: Is there a version of the Internet Explorer Blocker Toolkit that will prevent automatic installation of IE11?**<br>
Yes. The IE11 Blocker Toolkit is available for download. For more information, see [Toolkit to Disable Automatic Delivery of IE11](https://go.microsoft.com/fwlink/p/?LinkId=328195) on the Microsoft Download Center.

**Q. Does the Internet Explorer 11 blocking mechanism also block delivery of Internet Explorer 11 through update management solutions, like WSUS?**  
A. No. You can still deploy Internet Explorer 11 using one of the upgrade management solutions, even if the blocking mechanism is activated. The Internet Explorer 11 Blocker Toolkit is only intended for companies that don’t use upgrade management solutions.  
  
**Q. If WSUS is set to 'auto-approve' Update Rollup packages (this is not the default configuration), how do I stop Internet Explorer 11 from automatically installing throughout my company?**  
A. You only need to change your settings if:

-   You use WSUS to manage updates and allow auto-approvals for Update Rollup installation.  

    -and-

-   You have computers running either Windows 7 SP1 or Windows Server 2008 R2 (SP1) with Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10 installed.  

    -and-

-   You don’t want to upgrade your older versions of Internet Explorer to Internet Explorer 11 right now.

If these scenarios apply to your company, see [Internet Explorer 11 delivery through automatic updates](../ie11-deploy-guide/ie11-delivery-through-automatic-updates.md) for more information on how to prevent automatic installation.


## Additional resources

-   [Internet Explorer 11 Blocker Toolkit download](https://www.microsoft.com/download/details.aspx?id=40722)

-   [Internet Explorer 11 FAQ for IT pros](https://docs.microsoft.com/internet-explorer/ie11-faq/faq-for-it-pros-ie11)

-   [Internet Explorer 11 delivery through automatic updates](../ie11-deploy-guide/ie11-delivery-through-automatic-updates.md)

-   [Internet Explorer 11 deployment guide](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/index)
