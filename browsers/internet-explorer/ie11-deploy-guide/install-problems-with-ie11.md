---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to fix potential installation problems with Internet Explorer 11
author: lomayor
ms.prod: ie11
ms.assetid: 3ae77745-86ac-40a9-a37d-eebbf37661a3
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Install problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Install problems with Internet Explorer 11
Most Internet Explorer 11 installations are straightforward and work the way they should. But it's possible that you might have problems.

If you do, you can:

-   Check that you meet the minimum operating system requirements and have the prerequisites installed.

-   Check that there are no other updates or restarts waiting.

-   Temporarily turn off your antispyware and antivirus software.

-   Try another IE11 installer. For example from [Windows Update](https://go.microsoft.com/fwlink/p/?LinkId=302315) or from the [Download Internet Explorer 11](https://go.microsoft.com/fwlink/p/?linkid=327753) website.

-   Review the `IE11_main.log` file in the `\Windows` folder. This log file has information about each installation and is appended for each subsequent installation.

-   Make sure you use the same download server URLs that you entered during the Setup process.

## Internet Explorer didn't finish installing
If Internet Explorer doesn't finish installing, it might mean that Windows Update wasn't able to install an associated update, that you have a previous, unsupported version of IE installed, or that there's a problem with your copy of IE. We recommend you try this:

 **To fix this issue**

1.  Uninstall IE:

    1.  In the Control Panel, open the **Programs and Features** box, scroll down to IE11, and then click **Uninstall**.

    2.  After the uninstall finishes, restart your computer.

2.  Run [Windows Update](https://go.microsoft.com/fwlink/p/?LinkId=302315), clicking **Check for updates**.

3.  Check the list for IE11. If it's included in the list of updates for download, exclude it before you update your computer.<p>
If you get an error during the Windows Update process, see [Fix the problem with Microsoft Windows Update that is not working](https://go.microsoft.com/fwlink/p/?LinkId=302316).

4.  Restart your computer, making sure all of your the updates are finished.

5.  Try to reinstall IE11 from either Windows Update (if you saw it in Step 3) or from the [Download Internet Explorer 11](https://go.microsoft.com/fwlink/p/?linkid=327753) website.



 

 



