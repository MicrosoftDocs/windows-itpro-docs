---
title: Installing and Removing an Application on the MED-V Workspace
description: Installing and Removing an Application on the MED-V Workspace
author: levinec
ms.assetid: 24f32720-51ab-4385-adfe-4f5a65e45fdf
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Installing and Removing an Application on the MED-V Workspace


Applications that are incompatible with the host operating system can be run in the MED-V workspace and opened in the MED-V workspace in the same manner in which they are opened from the host computer, on the **Start** menu or by using a localhost shortcut.

After you have deployed a MED-V workspace, you have several different options available to you for installing and removing applications in the MED-V workspace. These options include the following:

-   [Using Group Policy](#bkmk-grouppolicy)

-   [Using an Electronic Software Distribution System](#bkmk-esd)

-   [Using Application Virtualization (APP-V)](#bkmk-appv)

-   [Updating the Core Image](#bkmk-coreimage)

**Important**  
To make sure that an installed application is automatically published to the host, install the application on the virtual machine for **All Users**. For more information about application publishing, see [How to Publish and Unpublish an Application on the MED-V Workspace](how-to-publish-and-unpublish-an-application-on-the-med-v-workspace.md).

 

**Tip**  
MED-V does not support guest-to-host redirection for content handling, such as double-clicking a Microsoft Word document in Internet Explorer in the MED-V workspace. Therefore, the required applications, such as Microsoft Word, must be installed in MED-V workspace to provide the default content handling functionality that an end user might expect.

 

## <a href="" id="bkmk-grouppolicy"></a> Adding and Removing Applications by Using Group Policy


You can use Group Policy and Group Policy objects to assign or publish applications to all or some MED-V workspaces in your enterprise. For assigned applications, when an end user logs on to their computer, the application appears on the **Start** menu. When they select the new application for the first time, the application installs and is ready for use. For published applications, the application does not appear on the **Start** menu. It is only available for the end user to install by using **Add or Remove Programs** in **Control Panel** or by opening a file that is associated with the application.

You can also use Group Policy and Group Policy objects in the same manner to remove applications from the MED-V workspace.

For more information about how to add and remove applications by using Group Policy, see [Group Policy Software Installation](https://go.microsoft.com/fwlink/?LinkId=195931) (https://go.microsoft.com/fwlink/?LinkId=195931).

## <a href="" id="bkmk-esd"></a> Adding and Removing Applications by Using an ESD System


An electronic software distribution (ESD) system is designed to efficiently deploy software and other information to many different computers over network connections. If your organization uses an ESD system to deploy software, you can use it to add and remove applications on MED-V workspaces just as you add and remove applications on physical computers.

## <a href="" id="bkmk-appv"></a> Adding and Removing Applications by Using APP-V


Microsoft Application Virtualization (App-V) provides the administrative capability to make applications available to end-user computers without having to install the applications directly on those computers. You might want to use MED-V and App-V together if, for example, your organization has applications that you sequenced with App-V in Windows XP, and re-sequencing them would delay your migration to Windows 7.

You can use MED-V together with App-V to add and remove virtual applications on a deployed MED-V workspace. To manage applications in this manner, you must first install the App-V agent on the MED-V guest operating system. You can then use App-V in the MED-V workspace to add and remove the virtual applications.

For information about how to install and use App-V, see [Application Virtualization](https://go.microsoft.com/fwlink/?LinkId=122939) (https://go.microsoft.com/fwlink/?LinkId=122939).

**Important**  
App-V applications that you publish to the MED-V workspace have file-type associations that cannot redirect from the host computer to the guest virtual machine. However, the end user can still access these file types by clicking **File**, and then by clicking **Open** on the published App-V application.

To force redirection of those file-type associations, query App-V for mapped file type associations by typing the following at a command prompt in the guest virtual machine: **sftmime /QUERY OBJ:TYPE**. Then, map those file type associations in the host computer.

 

## <a href="" id="bkmk-coreimage"></a> Adding and Removing Applications on the Core Image


Although not considered a MED-V best practice, you can add and remove applications directly on the core image. After you have added or removed an application, you can redeploy the MED-V workspace back out to your enterprise just as you deployed it originally.

For more information about how to add or remove applications on the core image, see [Installing Applications on a Windows Virtual PC Image](installing-applications-on-a-windows-virtual-pc-image.md).

**Important**  
We do not recommend this method of managing applications. If you add or remove applications on the core image and redeploy the MED-V workspace back out to your enterprise, first time setup must run again, and any data saved on the virtual machine is lost.

 

**Note**  
Even though an application is installed into a MED-V workspace, you might also have to publish the application before it becomes available to the end user. For example, you might have to publish an installed application if the installation did not automatically create a shortcut on the **Start** menu. Likewise, to unpublish an application, you might have to manually remove a shortcut from the **Start** menu.

By default, most applications are published at the time that they are installed, when shortcuts are automatically created and enabled.

 

## Related topics


[How to Test Application Publishing](how-to-test-application-publishing.md)

[How to Publish and Unpublish an Application on the MED-V Workspace](how-to-publish-and-unpublish-an-application-on-the-med-v-workspace.md)

 

 





