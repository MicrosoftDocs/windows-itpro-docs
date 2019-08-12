---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: You can pin websites to the Windows 8.1 taskbar for quick access using the Microsoft Deployment Toolkit (MDT) 2013.
author: lomayor
ms.prod: ie11
ms.assetid: 24f4dcac-9032-4fe8-bf6d-2d712d61cb0c
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Deploy pinned websites using Microsoft Deployment Toolkit (MDT) 2013 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Deploy pinned websites using Microsoft Deployment Toolkit (MDT) 2013

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

You can pin websites to the Windows 8.1 taskbar for quick access. You pin a website simply by dragging its tab to the taskbar. Some websites can also extend the icon’s Jump List.

The ability to pin websites to the Windows 8.1 taskbar can help make end users in businesses more productive. As an IT professional, for example, you can pin intranet and SharePoint websites to the taskbar to make them immediately available to users. In this article, you learn how to deploy pinned websites by using Lite Touch Installation in the [Microsoft Deployment Toolkit (MDT) 2013](https://go.microsoft.com/fwlink/p/?LinkId=398474).

## Deploying pinned websites in MDT 2013
This topic requires that you have a complete MDT 2013 deployment share that contains Windows 8.1 which comes with Internet Explorer 11. If you’re deploying to Windows 7 clients and need to learn how to add IE11 to an MDT 2013 deployment share as an update, see [Installing Internet Explorer 11 using Microsoft Deployment Toolkit (MDT)](https://go.microsoft.com/fwlink/p/?LinkId=398475) in the TechNet library.

Deploying pinned websites in MDT 2013 is a 4-step process:

1.  Create a .website file for each website that you want to deploy. When you pin a website to the taskbar, Windows 8.1 creates a .website file that describes how the icon should look and feel.

2.  Copy the .website files to your deployment share.

3.  Copy the .website files to your target computers.

4.  Edit the task sequence of your Unattend.xml answer files to pin the websites to the taskbar. In particular, you want to add each .website file to the **TaskbarLinks** item in Unattend.xml during oobeSystem phase. You can add up to six .website files to the **TaskbarLinks** item.

Pinned websites are immediately available to every user who logs on to the computer although the user must click each icon to populate its Jump List.

**Important**<br>
To follow the examples in this topic, you’ll need to pin the Bing (https://www.bing.com/) and MSN (https://www.msn.com/) websites to the taskbar.

### Step 1: Creating .website files
The first step is to create a .website file for each website that you want to pin to the Windows 8.1 taskbar during deployment. A .website file is like a shortcut, except it’s a plain text file that describes not only the website’s URL but also how the icon looks.

 **To create each .website file**

1.  Open the website in IE11.

2.  Drag the website’s tab and drop it on the Windows 8.1 taskbar.

3.  Go to `%USERPROFILE%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar` in Windows Explorer, and copy the bing.website and msn.website files to your desktop.

### Step 2: Copying the .website files to the deployment share
Next, you must enable your deployment share to copy the bing.website and msn.website files to the **Start** menu on each target computer.

 **To copy .website files to the deployment share**

1.  Open your MDT 2013 deployment share in Windows Explorer.

2.  In the `$OEM$` folder, create the path `$1\Users\Public\Public Links`. If the `$OEM$` folder doesn’t exist, create it at the root of your deployment share.

3.  Copy the bing.website and msn.website files from your desktop to `$OEM$\$1\Users\Public\Public Links` in your deployment share.

### Step 3: Copying .website files to target computers
After your operating system is installed on the target computer, you need to copy the .website files over so they can be pinned to the taskbar.

 **To copy .website files to target computers**

1.  In the **Deployment Workbench** of MDT 2013, open the deployment share containing the task sequence during which you want to deploy pinned websites, and then click **Task Sequences**.

2.  In the right pane of the **Deployment Workbench**, right-click your task sequence (create a new one if you don’t have one yet), and click **Properties**.

3.  In the **Task Sequence** tab, click the **Postinstall** folder, click **General** from the **Add** button, and then click **Run Command Line**.

4.  Rename the newly created item to *Copy Files* and move it up to the top of the **Postinstall** folder.

5.  In the **Command Line** box enter the following text, `xcopy "%DEPLOYROOT%\$OEM$\$1" "%OSDisk%\" /yqe`.

6.  Click the **Apply** button to save your changes.

### Step 4: Pinning .website files to the Taskbar
With the .website files ready to copy to the **Public Links** folder on target computers for all users, the last step is to edit the Unattend.xml answer files to pin those .website files to the taskbar. You will need to complete the following steps for each task sequence during which you want to pin these websites to the taskbar.

 **To pin .website files to the Taskbar**

1. Open the Windows System Image Manager (Windows SIM).

2. On the **OS Info** tab, click **Edit Unattend.xml** to open the Unattend.xml file.

2.  In the **Windows Image** pane, under **Components** and then **Microsoft-Windows-Shell-Setup**, right-click **TaskbarLinks**, and then click **Add Setting to Pass 7 oobeSystem**.

3.  In the **TaskbarLinks Properties** pane, add the relative path to the target computer’s (not the deployment share’s) .website files that you created earlier. You can add up to six links to the **TaskbarLinks** item. For example, `%PUBLIC%\Users\Public\Public Links\Bing.website` and `%PUBLIC%\Users\Public\Public Links\MSN.website`

4.  On the **File** menu, click **Save Answer File**, and then close Windows SIM.

5.  To close the task sequence, click **OK**.

## Updating intranet websites for pinning
The MDT 2013 deployment share and task sequences are now ready to pin websites to the taskbar during deployment. This pinning feature can include intranet sites important in your organization.

You can make your intranet websites act more like applications by extending them to fully support the Windows 8.1 taskbar. This includes creating custom Jump Lists, thumbnail previews, and notifications. For info about extending your intranet websites, see [Pinned Sites Developer Documentation](https://go.microsoft.com/fwlink/p/?LinkId=398484) on MSDN. For more ideas about what to pin, see [Add-ons](https://go.microsoft.com/fwlink/p/?LinkId=398483) in the Internet Explorer Gallery.

## Related topics
- [Unattended Windows Setup Reference](https://go.microsoft.com/fwlink/p/?LinkId=276788)
- [Windows System Image Manager Technical Reference](https://go.microsoft.com/fwlink/p/?LinkId=276789)
- [Microsoft Deployment Toolkit (MDT)](https://go.microsoft.com/fwlink/p/?LinkId=331148)
- [Windows ADK Overview](https://go.microsoft.com/fwlink/p/?LinkId=276669)

 

 



