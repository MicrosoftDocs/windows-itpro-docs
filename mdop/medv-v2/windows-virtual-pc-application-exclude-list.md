---
title: Windows Virtual PC Application Exclude List
description: Windows Virtual PC Application Exclude List
author: levinec
ms.assetid: 7715f198-f5ed-421e-8740-0cec2ca4ece3
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/28/2017
---


# Windows Virtual PC Application Exclude List


In some instances, you might not want applications that are installed in the MED-V workspace to be published to the host computer **Start** menu. You can unpublish these applications by following the instructions at [How to Publish and Unpublish an Application on the MED-V Workspace](how-to-publish-and-unpublish-an-application-on-the-med-v-workspace.md). However, if the program ever automatically updates, it might also be automatically republished. This causes you to have to unpublish the application again.

Windows Virtual PC includes a feature known as the "Exclude List" that lets you specify certain installed applications that you do not want published to the host **Start** menu. The "Exclude List" is located in the guest registry in the HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Virtual Machine\\VPCVAppExcludeList key and lists those applications that are not published to the host **Start** menu. You can think of the “Exclude List” as permanently unpublishing the specified applications because any automatic updates to the applications that are listed will not cause them to be automatically republished.

## Managing Applications by Using the Exclude List in Windows Virtual PC


****

1.  Open the MED-V workspace in full screen.

    For information about opening the MED-V workspace in full-screen mode by using the MED-V Administration Toolkit, see [Viewing MED-V Workspace Configurations](viewing-med-v-workspace-configurations.md#bkmk-fullscreen). Or you can manually open it in full screen by clicking **Start**, click **All Programs**, click **Windows Virtual PC**, click **Windows Virtual PC**, and then double-click the MED-V workspace.

2.  In the MED-V workspace Windows Virtual PC window, open Registry Editor.

    Click **Start**, click **Run**, and then type regedit. Then click **OK**.

3.  In Registry Editor, locate the HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Virtual Machine\\VPCVAppExcludeList registry key.

4.  Create a new registry value for the installed application that you do not want published to the host computer **Start** menu. For example, if you want to unpublish the automatically published program Microsoft Silverlight, follow these steps:

    1.  With the VPCVAppExcludeList registry key highlighted, click **Edit**, click **New**, and then click **String Value**.

    2.  Enter the name for the new registry value. For example, for Microsoft Silverlight, you might enter sllauncher.exe.

    3.  Double-click the new registry value and enter the value data.

        The value data is the full path for the command that you want to unpublish. You can find the full path by right-clicking on the shortcut on the **Start** menu for the application that you do not want published and then clicking **Properties**. The full path is listed in the **Shortcut** tab under **Target**.

        For example, for the program Microsoft Silverlight, the full path might be "C:\\Program Files\\Microsoft Silverlight\\4.0.50917.0\\Silverlight.Configuration.exe."

        **Important**  
        If applicable, remove the quotation marks from the full path when you enter it into the value data field.

         

5.  Close Registry Editor and restart the MED-V workspace virtual machine.

    The application is still installed in the MED-V workspace but is now removed from the host computer **Start** menu.

You can also republish an excluded application to the host **Start** menu by deleting the corresponding value from the VPCVAppExcludeList key. For example, to republish Microsoft Silverlight, right-click the registry value sllauncher.exe and select **Delete**.

## Related topics


[Technical Reference for MED-V](technical-reference-for-med-v.md)

[How to Publish and Unpublish an Application on the MED-V Workspace](how-to-publish-and-unpublish-an-application-on-the-med-v-workspace.md)

 

 





