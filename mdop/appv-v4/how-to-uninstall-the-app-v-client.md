---
title: How to Uninstall the App-V Client
description: How to Uninstall the App-V Client
author: dansimp
ms.assetid: 07591270-9651-4bb5-a5b3-e0fc009bd9e2
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Uninstall the App-V Client


Use the following procedure to uninstall the Application Virtualization Client from the computer.

**To uninstall the Application Virtualization Desktop Client**

1.  In Control Panel, double-click **Add or Remove Programs** (or in Windows Vista, **Programs and Features**), and then double-click **Microsoft Application Virtualization Desktop Client**.

2.  In the dialog box that appears, click **Yes** to continue with the uninstall process.

    **Important**  
    The uninstall process cannot be canceled or interrupted.

     

3.  When a message stating that the Microsoft Application Virtualization Client Tray application must be closed before continuing appears, right-click the App-V icon in the notification area and select **Exit** to close the application. Then click **Retry** to continue with the uninstall process.

    **Important**  
    You might see a message stating that one or more virtual applications are in use. Close any open applications and save your data before you continue. Then click **OK** to continue with the uninstall process.

     

4.  A progress bar shows the time remaining. When this step finishes, you must restart the computer so that all associated drivers can be stopped to complete the uninstall process.

    **Note**  
    The following registry keys remain after the uninstall process is complete:

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\SystemGuard "Client"=dword:00000000

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\SystemGuard\\SecKey

     

## Related topics


[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

 

 





