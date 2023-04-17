---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to install the Internet Explorer 11 update using Windows Server Update Services (WSUS)'
author: dansimp
ms.prod: ie11
ms.assetid: 6cbd6797-c670-4236-8423-e0919478f2ce
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: Install Internet Explorer 11 (IE11) using Windows Server Update Services (WSUS) (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Install Internet Explorer 11 (IE11) using Windows Server Update Services (WSUS)

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]

Windows Server Update Services (WSUS) lets you download a single copy of the Microsoft product update and cache it on your local WSUS servers. You can then configure your computers to get the update from your local servers instead of Windows Update. For more information about WSUS, see [Windows Server Update Services](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh852345(v=ws.11)).

 **To import from Windows Update to WSUS**

1. Open your WSUS admin site. For example, `https://<wsus_server-name>/WSUSAdmin/`.<P>
   Where `<wsus_server_name>` is the name of your WSUS server.

2. Choose the top server node or the **Updates** node, and then click **Import Updates**.

3. To get the updates, install the Microsoft Update Catalog ActiveX control.

4. Search for Internet Explorer 11 and add its contents to your basket.

5. After you're done browsing, go to your basket and click **Import**.

   You can also download the updates without importing them by unchecking the **Import directly into Windows Server Update Services** box.

   **To approve Internet Explorer in WSUS for installation**

6. Open your WSUS admin site and check the **Review synchronization settings** box from the **To Do** list.

7. Click **Synchronize now** to sync your WSUS server with Windows Update, and then click **Updates** from the navigation bar.

8. Enter **Internet Explorer 11** into the **Search Contains** box, and then click **Apply**.

9. Choose the right version of IE11 for your operating system, and click **Approve for installation**.

10. Click each computer group you want to set up for the WSUS server, picking the right approval level, and then click **OK**.

 

