---
ms.localizationpriority: medium
ms.mktglfcycl: support
ms.pagetype: security
description:
author: lomayor
ms.author: lomayor
ms.manager: elizapo
ms.prod: ie11
ms.assetid:
ms.reviewer: 
audience: itpromanager: dansimp
title: Internet Explorer 11 delivery through automatic updates
ms.sitesec: library
ms.date: 05/22/2018
---

# Internet Explorer 11 delivery through automatic updates
Internet Explorer 11 makes browsing the web faster, easier, safer, and more reliable than ever. To help customers become more secure and up-to-date, Microsoft will distribute Internet Explorer 11 through Automatic Updates and the Windows Update and Microsoft Update sites. Internet Explorer 11 will be available for users of the 32-bit and 64-bit versions of Windows 7 Service Pack 1 (SP1), and 64-bit version of Windows Server 2008 R2 SP1. This article provides an overview of the delivery process and options available for IT administrators to control how and when Internet Explorer 11 is deployed to their organization through Automatic Updates.

- [Automatic updates delivery process](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/ie11-delivery-through-automatic-updates#automatic-updates-delivery-process)

- [Internet Explorer 11 automatic upgrades](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/ie11-delivery-through-automatic-updates#internet-explorer-11-automatic-upgrades)

- [Options for blocking automatic delivery](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/ie11-delivery-through-automatic-updates#options-for-blocking-automatic-delivery)

- [Availability of Internet Explorer 11](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/ie11-delivery-through-automatic-updates#availability-of-internet-explorer-11)

- [Prevent automatic installation of Internet Explorer 11 with WSUS](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/ie11-delivery-through-automatic-updates#prevent-automatic-installation-of-internet-explorer-11-with-wsus)

## Automatic updates delivery process

Internet Explorer 11 only downloads and installs if it’s available for delivery through Automatic Updates; and Automatic Updates only offer Internet Explorer 11
to users with local administrator accounts. User’s without local administrator accounts won’t be prompted to install the update and will continue using their
current version of Internet Explorer.

Internet Explorer 11 replaces Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10. If you decide you don’t want Internet Explorer 11, and you’re running Windows 7 SP1 or Windows Server 2008 R2 with SP1, you can uninstall it from the **View installed updates** section of the **Uninstall an update** page of the Control Panel.

>[!Note]
>If a user installs Internet Explorer 11 and then removes it, it won’t be re-offered to that computer through Automatic Updates. Instead, the user will have to manually re-install the app.

## Internet Explorer 11 automatic upgrades

Internet Explorer 11 is offered through Automatic Updates and Windows Update as an Important update. Users running Windows 7 SP1, who have chosen to download and install updates automatically through Windows Update, are automatically upgraded to Internet Explorer 11.

Users who were automatically upgraded to Internet Explorer 11 can decide to uninstall Internet Explorer 11. However, Internet Explorer 11 will still appear as an optional update through Windows Update.

## Options for blocking automatic delivery

If you use Automatic Updates in your company, but want to stop your users from automatically getting Internet Explorer 11, do one of the following:

-   **Download and use the Internet Explorer 11 Blocker Toolkit.**  Includes a Group Policy template and a script that permanently blocks Internet Explorer 11 from being offered by Windows Update or Microsoft Update as a high-priority update. You can download this kit from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=40722).

    >[!Note]
    >The toolkit won't stop users with local administrator accounts from manually installing Internet Explorer 11. Using this toolkit also prevents your users from receiving automatic upgrades from Internet Explorer 8, Internet Explorer 9, or Internet Explorer 10 to Internet Explorer 11. For more information, see the [Internet Explorer 11 Blocker Toolkit frequently asked questions](../ie11-faq/faq-ie11-blocker-toolkit.md).

-   **Use an update management solution to control update deployment.**
    If you already use an update management solution, like [Windows Server Update Services (WSUS)](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus) or the more advanced [System Center 2012 Configuration Manager](https://go.microsoft.com/fwlink/?LinkID=276664), you should use that instead of the Internet Explorer Blocker Toolkit.

    >[!Note]
    >If you use WSUS to manage updates, and Update Rollups are configured for automatic installation, Internet Explorer will automatically install throughout your company. This scenario is discussed in detail in the Knowledge Base article [here](https://support.microsoft.com/kb/946202).

Additional information on Internet Explorer 11, including a Readiness Toolkit, technical overview, in-depth feature summary, and Internet Explorer 11 download is available on the [Internet Explorer 11 page of the Microsoft Edge IT Center](https://technet.microsoft.com/microsoft-edge/dn262703.aspx).

## Availability of Internet Explorer 11

Automatic Updates will start to distribute Internet Explorer 11 shortly after the final release of the product and will distribute it through the System Center Configuration Manager, Microsoft Systems Management Server, and WSUS.

## Prevent automatic installation of Internet Explorer 11 with WSUS

Internet Explorer 11 will be released to WSUS as an Update Rollup package. Therefore, if you’ve configured WSUS to “auto-approve” Update Rollup packages, it’ll be automatically approved and installed. To stop Internet Explorer 11 from being automatically approved for installation, you need to:

1. Click **Start**, click **Administrative Tools**, and then click **Microsoft
   Windows Server Update Services 3.0**.

2. Expand *ComputerName*, and then click **Options**.

3. Click **Automatic Approvals**.

4. Click the rule that automatically approves an update that is classified as
   Update Rollup, and then click **Edit.**

   >[!Note]
   >If you don’t see a rule like this, you most likely haven’t configured WSUS to automatically approve Update Rollups for installation. In this situation, you don’t have to do anything else.

5. Click the **Update Rollups** property under the **Step 2: Edit the properties (click an underlined value)** section.

   >[!Note]
   >The properties for this rule will resemble the following:<ul><li>When an update is in Update Rollups</li><li>Approve the update for all computers</li></ul>

6. Clear the **Update Rollup** check box, and then click **OK**.

7. Click **OK** to close the **Automatic Approvals** dialog box.<p>After the new Internet Explorer 11 package is available for download, you should manually synchronize the new package to your WSUS server, so that when you re-enable auto-approval it won’t be automatically installed.

8. Click **Start**, click **Administrative Tools**, and then click **Microsoft Windows Server Update Services 3.0**.

9. Expand *ComputerName*, and then click **Synchronizations**.

10. Click **Synchronize Now**.

11. Expand *ComputerName*, expand **Updates**, and then click **All Updates**.

12. Choose **Unapproved** in the **Approval**drop down box.

13. Check to make sure that Microsoft Internet Explorer 11 is listed as an unapproved update.

    >[!Note]
    >There may be multiple updates, depending on the imported language and operating system updates.

**Optional**

If you need to reset your Update Rollups packages to auto-approve, do this:

1.  Click **Start**, click **Administrative Tools**, and then click **Microsoft Windows Server Update Services 3.0**.

2.  Expand *ComputerName*, and then click **Options**.

3.  Click **Automatic Approvals**.

4.  Click the rule that automatically approves updates of different classifications, and then click **Edit**.

5.  Click the **Update Rollups** property under the **Step 2: Edit the properties (click an underlined value)** section.

6.  Check the **Update Rollups** check box, and then click **OK**.

7.  Click **OK** to close the **Automatic Approvals** dialog box.

>[!Note]
>Because auto-approval rules are only evaluated when an update is first imported into WSUS, turning this rule back on after the Internet Explorer 11 update has been imported and synchronized to the server won’t cause this update to be auto-approved.


## Additional resources

-   [Automatic delivery process](what-is-the-internet-explorer-11-blocker-toolkit.md#automatic-delivery-process)

-   [Internet Explorer 11 Blocker Toolkit download](https://www.microsoft.com/download/details.aspx?id=40722)

-   [Internet Explorer 11 FAQ for IT pros](https://docs.microsoft.com/internet-explorer/ie11-faq/faq-for-it-pros-ie11)

-   [Internet Explorer 11 delivery through automatic updates](https://technet.microsoft.com/microsoft-edge/dn449235)

-   [Internet Explorer 11 deployment guide](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/index)
