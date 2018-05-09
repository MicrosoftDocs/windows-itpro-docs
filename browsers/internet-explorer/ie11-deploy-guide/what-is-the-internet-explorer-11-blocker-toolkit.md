---
ms.localizationpriority: low
ms.mktglfcycl: support
ms.pagetype: security
description: How to download and use the Internet Explorer 11 Blocker Toolkit to turn off the automatic delivery of IE11 through the Automatic Updates feature of Windows Update.
author: shortpatti
ms.author: pashort
ms.manager: elizapo
ms.prod: ie11
ms.assetid: fafeaaee-171c-4450-99f7-5cc7f8d7ba91
title: What is the Internet Explorer 11 Blocker Toolkit? (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 04/24/2018
---


# What is the Internet Explorer 11 Blocker Toolkit?

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The Internet Explorer 11 Blocker Toolkit lets you turn off the automatic delivery of IE11 through the **Automatic Updates** feature of Windows Update.

>[!IMPORTANT]
>The IE11 Blocker Toolkit does not stop users from manually installing IE11 from the [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?linkid=327753). Also, even if you have installed previous versions of the toolkit before, like for Internet Explorer 10, you still need to install this version to prevent the installation of IE11.

## Install the toolkit

1.  Download the IE11 Blocker Toolkit from [Toolkit to Disable Automatic Delivery of Internet Explorer 11](https://go.microsoft.com/fwlink/p/?LinkId=327745).

2.  Accept the license agreement and store the included four files on your local computer.

3.  Start an elevated Command Prompt by going to **Start**&gt;**All Programs**&gt;**Accessories**&gt; right-clicking on **Command Prompt**, and then choosing **Run as Administrator**.

4.  In the Command Prompt, change to the location where you put the 4 files.

5.  In the Command Prompt, type `ie11_blocker.cmd /B` and press Enter.<p>
Wait for the message, **Blocking deployment of IE11 on the local machine. The operation completed successfully.**

6.  Close the Command Prompt.

For answers to frequently asked questions, see [Internet Explorer 11 Blocker Toolkit: Frequently Asked Questions](https://go.microsoft.com/fwlink/p/?LinkId=314063).

## Automatic updates 
Internet Explorer 11 makes browsing the web faster, easier, safer, and more reliable than ever. To help customers become more secure and up-to-date, Microsoft will distribute Internet Explorer 11 through Automatic Updates and the Windows Update and Microsoft Update sites. Internet Explorer 11 will be available for users of the 32-bit and 64-bit versions of Windows 7 Service Pack 1 (SP1), and 64-bit version of Windows Server 2008 R2 SP1. This article provides an overview of the delivery process and options available for IT administrators to control how and when Internet Explorer 11 is deployed to their organization through Automatic Updates.

### Automatic delivery process
Internet Explorer 11 only downloads and installs if it’s available for delivery through Automatic Updates; and Automatic Updates only offer Internet Explorer 11 to users with local administrator accounts. User’s without local administrator accounts won’t be prompted to install the update and will continue using their current version of Internet Explorer.

Internet Explorer 11 replaces Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10. If you decide you don’t want Internet Explorer 11, and you’re running Windows 7 SP1 or Windows Server 2008 R2 with SP1, you can uninstall it from the **View installed updates** section of the **Uninstall an update** page of the Control Panel. 

### Internet Explorer 11 automatic upgrades

Internet Explorer 11 is offered through Automatic Updates and Windows Update as an Important update. Users running Windows 7 SP1, who have chosen to download and install updates automatically through Windows Update, are automatically upgraded to Internet Explorer 11.  
  
Users who were automatically upgraded to Internet Explorer 11 can decide to uninstall Internet Explorer 11. However, Internet Explorer 11 will still appear as an optional update through Windows Update.

### Options for blocking automatic delivery

If you use Automatic Updates in your company, but want to stop your users from automatically getting Internet Explorer 11, do one of the following:

-   **Download and use the Internet Explorer 11 Blocker Toolkit.**  Includes a Group Policy template and a script that permanently blocks Internet Explorer 11 from being offered by Windows Update or Microsoft Update as a high-priority update. You can download this kit from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=40722).
 
    >[!NOTE]
    >The toolkit won't stop users with local administrator accounts from manually installing Internet Explorer 11. Using this toolkit also prevents your users from receiving automatic upgrades from Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10 to Internet Explorer 11. For more information, see the [Internet Explorer 11 Blocker Toolkit frequently asked questions](#faq). 
 
-   **Use an update management solution to control update deployment.** If you already use an update management solution, like [Windows Server Update Services (WSUS)](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus) or the more advanced [System Center 2012 Configuration Manager](http://go.microsoft.com/fwlink/?LinkID=276664), you should use that instead of the Internet Explorer Blocker Toolkit.

>[!NOTE] 
>If you use WSUS to manage updates, and Update Rollups are configured for automatic installation, Internet Explorer will automatically install throughout your company. 
 

### Prevent automatic installation of Internet Explorer 11 with WSUS

Internet Explorer 11 will be released to WSUS as an Update Rollup package. Therefore, if you’ve configured WSUS to “auto-approve” Update Rollup packages, it’ll be automatically approved and installed. To stop Internet Explorer 11 from being automatically approved for installation, you need to:

1.  Click **Start**, click **Administrative Tools**, and then click **Microsoft Windows Server Update Services 3.0**.

2.  Expand *ComputerName*, and then click **Options**.

3.  Click **Automatic Approvals**.

4.  Click the rule that automatically approves an update that is classified as Update Rollup, and then click **Edit.**

    >[!NOTE]
    >If you don’t see a rule like this, you most likely haven’t configured WSUS to automatically approve Update Rollups for installation. In this situation, you don’t have to do anything else. 

5.  Click the **Update Rollups** property under the **Step 2: Edit the properties (click an underlined value)** section.

    >[!NOTE]
    >The properties for this rule will resemble the following:<ul><li>When an update is in Update Rollups</li><li>Approve the update for all computers</li></ul>

6.  Clear the **Update Rollup** check box, and then click **OK**.

7.  Click **OK** to close the **Automatic Approvals** dialog box.

After the new Internet Explorer 11 package is available for download, you should manually synchronize the new package to your WSUS server, so that when you re-enable auto-approval it won’t be automatically installed.

1.  Click **Start**, click **Administrative Tools**, and then click **Microsoft Windows Server Update Services 3.0**.

2.  Expand *ComputerName*, and then click **Synchronizations**.

3.  Click **Synchronize Now**.

4.  Expand *ComputerName*, expand **Updates**, and then click **All Updates**.

5.  Choose **Unapproved** in the **Approval**drop down box.

6.  Check to make sure that Microsoft Internet Explorer 11 is listed as an unapproved update.

>[!NOTE]
>There may be multiple updates, depending on the imported language and operating system updates.

### Optional - Reset update rollups packages to auto-approve

1.  Click **Start**, click **Administrative Tools**, and then click **Microsoft Windows Server Update Services 3.0**.

2.  Expand *ComputerName*, and then click **Options**.

3.  Click **Automatic Approvals**.

4.  Click the rule that automatically approves updates of different classifications, and then click **Edit**.

5.  Click the **Update Rollups** property under the **Step 2: Edit the properties (click an underlined value)** section.

6.  Check the **Update Rollups** check box, and then click **OK**.

7.  Click **OK** to close the **Automatic Approvals** dialog box.

>[!NOTE]
>Because auto-approval rules are only evaluated when an update is first imported into WSUS, turning this rule back on after the Internet Explorer 11 update has been imported and synchronized to the server won’t cause this update to be auto-approved.

## <a name="faq"></a>Frequently Asked Questions 
Get answers to commonly asked questions about the Internet Explorer 11 Blocker Toolkit. 

### Automatic updates delivery process
**Q. What tools can I use to manage Windows Updates and Microsoft Updates in my company?**  
A. We encourage anyone who wants full control over their company’s deployment of Windows Updates and Microsoft Updates, to use [Windows Server Update Services (WSUS)](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus), a free tool for users of Windows Server. You can also use the more advanced configuration management tool, [System Center 2012 Configuration Manager](https://technet.microsoft.com/library/gg682041.aspx).  
  
**Q. How long does the blocker mechanism work?**  
A. The Internet Explorer 11 Blocker Toolkit uses a registry key value to permanently turn off the automatic delivery of Internet Explorer 11. This behavior lasts as long as the registry key value isn’t removed or changed.  
  
**Q. Why should I use the Internet Explorer 11 Blocker Toolkit to stop delivery of Internet Explorer 11? Why can’t I just disable all of utomatic Updates?**  
A. Automatic Updates provide you with ongoing critical security and reliability updates. Turning this feature off can leave your computers more vulnerable. Instead, we suggest that you use an update management solution, such as WSUS, to fully control your environment while leaving this feature running, managing how and when the updates get to your user’s computers.  
  
The Internet Explorer 11 Blocker Toolkit safely allows Internet Explorer 11 to download and install in companies that can’t use WSUS, Configuration Manager, or other update management solution.  
  
**Q. Why don’t we just block URL access to Windows Update or Microsoft Update?**  
A. Blocking the Windows Update or Microsoft Update URLs also stops delivery of critical security and reliability updates for all of the supported versions of the Windows operating system; leaving your computers more vulnerable.

### How the Internet Explorer 11 Blocker Toolkit works

**Q. How should I test the Internet Explorer 11 Blocker Toolkit in my company?**  
A. Because the toolkit only sets a registry key to turn on and off the delivery of Internet Explorer 11, there should be no additional impact or side effects to your environment. No additional testing should be necessary.  
  
**Q. What’s the registry key used to block delivery of Internet Explorer 11?**  
A. HKLM\\SOFTWARE\\Microsoft\\Internet Explorer\\Setup\\11.0  
  
**Q. What’s the registry key name and values?**  
The registry key name is **DoNotAllowIE11**, where:

-   A value of **1** turns off the automatic delivery of Internet Explorer 11
    using Automatic Updates and turns off the Express install option.

-   Not providing a registry key, or using a value of anything other than **1**,
    lets the user install Internet Explorer 11 through Automatic Updates or a
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

### Internet Explorer 11 Blocker Toolkit and other update services

**Q. Does the Internet Explorer 11 blocking mechanism also block delivery of Internet Explorer 11 through update management solutions, like SUS?**  
A. No. You can still deploy Internet Explorer 11 using one of the upgrade management solutions, even if the blocking mechanism is activated. The Internet Explorer 11 Blocker Toolkit is only intended for companies that don’t use upgrade management solutions.  
  
**Q. If WSUS is set to 'auto-approve' Update Rollup packages (this is not the default configuration), how do I stop Internet Explorer 11 from automatically installing throughout my company?**  
A. You only need to change your settings if:

-   You use WSUS to manage updates and allow auto-approvals for Update Rollup installation.  
    
    -and-

-   You have computers running either Windows 7 SP1 or Windows Server 2008 R2 (SP1) with Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10 installed.  
    
    -and-

-   You don’t want to upgrade your older versions of Internet Explorer to Internet Explorer 11 right now.

If these scenarios apply to your company, see [Internet Explorer 11 delivery through automatic updates](https://technet.microsoft.com/microsoft-edge/dn449235) for more information on how to prevent automatic installation.


