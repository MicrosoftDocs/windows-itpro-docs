---
title: How to Add a Package Version
description: How to Add a Package Version
author: dansimp
ms.assetid: dbb829c1-e5cb-4a2f-bc17-9a9bb50c671c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Add a Package Version


In the Application Virtualization Server Management Console, when you resequence a package, you can use the following procedure to add the new version to your servers for streaming.

**Note**  
When you upgrade a package with a new version, you can leave the existing version in place or delete it and leave only the newest one. You might want to leave the old version in place for compatibility with legacy documents or so that you can test the new version before making it available to all users.

 

**To add a package version**

1.  Copy the new SFT file to the application server's content folder. If resequencing did not add changes to the Open Software Descriptor (OSD), icon (ICO), or Sequencer Project (SPRJ) files, you do not need to copy those. You can include those files if you want all the files to display the same date.

2.  In left pane of the Application Virtualization Server Management Console, expand the **Packages** node.

3.  Right-click the package you want to upgrade, and choose **Add Version**.

4.  In the **Add Package Version** dialog box, browse for or type the path name for the new application file in the **Full path for package file** field. This must be an SFT file.

5.  Click **Next**.

6.  The **Summary** dialog box shows the file location and prompts you to copy the file there if you have not already done so. Click **Finish** after you have verified the information.

    The new version is now complete and ready to stream.

## Related topics


[How to Delete a Package](how-to-delete-a-packageserver.md)

[How to Manage Packages in the Server Management Console](how-to-manage-packages-in-the-server-management-console.md)

 

 





