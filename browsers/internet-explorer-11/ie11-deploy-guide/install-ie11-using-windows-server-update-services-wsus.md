---
Description: 'Install Internet Explorer 11 (IE11) - Windows Server Update Services (WSUS)'
MS-HAID: 'p\_ie11deploy.install\_internet\_explorer\_11\_\_ie11\_\_\_\_windows\_server\_update\_services\_\_wsus\_'
MSHAttr: 'PreferredLib:/library'
title: Install Internet Explorer 11 (IE11) using Windows Server Update Services (WSUS) (Internet Explorer 11 for IT Pros)
---

# Install Internet Explorer 11 (IE11) using Windows Server Update Services (WSUS)
Windows Server Update Services (WSUS) lets you download a single copy of the Microsoft product update and cache it on your local WSUS servers. You can then configure your computers to get the update from your local servers instead of Windows Update. For more information about WSUS, see [Windows Server Update Services](http://go.microsoft.com/fwlink/p/?LinkID=276790).

![](../common/wedge.gif)**To import from Windows Update to WSUS**

1.  Open your WSUS admin site. For example, `http://WSUSServerName/WSUSAdmin/`.

    Where *WSUSServerName* is the name of your WSUS server.

2.  Choose the top server node or the **Updates** node, and then click **Import Updates**.

3.  To get the updates, install the Microsoft Update Catalog ActiveX control.

4.  Search for Internet Explorer 11 and add its contents to your basket.

5.  After you're done browsing, go to your basket and click **Import**.

    You can also download the updates without importing them by unchecking the **Import directly into Windows Server Update Services** box.

![](../common/wedge.gif)**To approve Internet Explorer in WSUS for installation**

1.  Open your WSUS admin site and check the **Review synchronization settings** box from the **To Do** list.

2.  Click **Synchronize now** to sync your WSUS server with Windows Update, and then click **Updates** from the navigation bar.

3.  Enter **Internet Explorer 11** into the **Search Contains** box, and then click **Apply**.

4.  Choose the right version of IE11 for your operating system, and click **Approve for installation**.

5.  Click each computer group you want to set up for the WSUS server, picking the right approval level, and then click **OK**.

 

 



