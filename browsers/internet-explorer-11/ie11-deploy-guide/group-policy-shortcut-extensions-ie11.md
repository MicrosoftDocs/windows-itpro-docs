---
Description: Instructions about how to create and configure shortcut preference extensions to file system objects, URLs, and shell objects.
ms.assetid: c6fbf990-13e4-4be7-9f08-5bdd43179b3b
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
title: Group Policy, Shortcut Extensions, and Internet Explorer 11 (Internet Explorer 11 for IT Pros)
---

# Group Policy, Shortcut Extensions, and Internet Explorer 11
Group Policy includes the Shortcuts preference extension, which lets you configure shortcuts to:

-   **File system objects.** Traditional shortcuts that link to apps, files, folders, drives, shares, or computers. For example, linking a shortcut to an app from the **Start** screen.

-   **URLs.** Shortcuts to webpages or FTP sites. For example, a link to your intranet site from your employee's **Favorites** folder.

-   **Shell objects.** Shortcuts to objects that appear in the shell namespace, such as printers, desktop items, Control Panel items, the Recycle Bin, and so on.

## How do I configure shortcuts?
You can create and configure shortcuts for any domain-based Group Policy Object (GPO) in the Group Policy Management Console (GPMC).

 ![](images/wedge.gif) **To create a new Shortcut preference item**

1.  Open GPMC, right-click the Group Policy object that needs the new shortcut extension, and click **Edit**.

2.  From **Computer Configuration** or **User Configuration**, go to **Preferences**, and then go to **Windows Settings**.

3.  Right-click **Shortcuts**, click **New**, and then choose **Shortcut**.

4.  Choose what the shortcut should do, including **Create**, **Delete**, **Replace**, or **Update**.

5.  Type the required shortcut settings and your comments into the **Description** box, and click **OK**.

For more information about shortcut extensions, including step-by-step guidance, see [Shortcuts Extension](http://go.microsoft.com/fwlink/p/?LinkId=214525) and [Configure a Shortcut Item](http://go.microsoft.com/fwlink/p/?LinkId=301837).

 

 



