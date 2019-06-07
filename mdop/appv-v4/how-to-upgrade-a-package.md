---
title: How to Upgrade a Package
description: How to Upgrade a Package
author: eavena
ms.assetid: 831c7556-6f6c-4b3a-aefb-26889094dc1a
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade a Package


The process for an automatic upgrade is the same as for adding a package version in the Application Virtualization Server Management Console. An automatic upgrade is performed when you resequence the application in an existing package. Then you can add this new version to your servers for streaming.

When you upgrade a package with a new version, you can leave the existing version in place or delete it and leave only the newest one. You might want to leave the old version in place for compatibility with legacy documents or so that you can test the new version before making it available to all users.

**To upgrade a package automatically**

1.  Copy the new SFT file to the Application Virtualization Server's content folder.

    **Note**  
    If resequencing did not add features that changed the Open Software Descriptor (OSD), icon (ICO), or Sequencer Project (SPRJ) files, you do not need to copy those. You can include these files if you want all these files to display the same date.

     

2.  In left pane of the Application Virtualization Server Management Console, expand **Packages**.

3.  Right-click the package you want to upgrade, and select **Add Version**.

4.  In the **Add Package Version** dialog box, browse for or type the full path name for the new application version in the **Full Path for the file** field. This must be an SFT file.

5.  Click **Next**.

6.  The **Summary** dialog box shows the file location and prompts you to copy the file there if you have not already done so. Click **Finish** after you have verified the information.

    The new version is now complete and ready to stream.

## Related topics


[How to Manage Packages in the Server Management Console](how-to-manage-packages-in-the-server-management-console.md)

 

 





