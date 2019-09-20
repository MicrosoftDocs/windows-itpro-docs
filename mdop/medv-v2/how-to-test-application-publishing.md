---
title: How to Test Application Publishing
description: How to Test Application Publishing
author: dansimp
ms.assetid: 17ba2e12-50a0-4f41-8300-f61f09db9f6c
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Test Application Publishing


After your test of first time setup finishes, you can verify that the application publishing functionality is working as expected by performing the following tasks.

<a href="" id="bkmk-apppub"></a>**To test application publishing**

1.  Verify that the applications that you specified for publishing are visible.

    Click **Start** and then click **All Programs** and search for the specified applications.

    In some cases, you might have the same application installed two times, one time on the host computer and one time on the guest. If a published application that has the same name is published to the same location on the host **Start** menu, it is distinguished from the host application shortcut by adding the virtual machine name to the shortcut name. For example, for a virtual machine named “MEDVHost1”, a host application might be "Notepad" and a published application might be "Notepad (MEDVHost1)".

2.  Verify that the applications function as intended.

    On the host computer, start the applications that you published and verify that they open in Windows XP SP3 on the guest. The application must appear in a Windows XP-style window on the host computer desktop.

3.  If applicable, verify that document redirection functions as intended.

    If a published application on the guest has to open a folder on the host system drive, ensure that it can open the specified folder.

    **Important**  
    Because Windows Virtual PC does not support creating a share from a folder that is already shared, redirection does not occur for any documents that open from a shared folder, such as a My Documents folder that is located on the network. For more information, see [Operations Troubleshooting](operations-troubleshooting-medv2.md).

After you have verified that published applications are installed and functioning correctly, you can test whether applications can be added or removed from the MED-V workspace.

**To test that an application can be added or removed**

1.  Add or remove an application from the MED-V workspace.

    For information about how to add and remove applications from a MED-V workspace, see [Managing Applications Deployed to MED-V Workspaces](managing-applications-deployed-to-med-v-workspaces.md).

2.  If you added an application, repeat the steps in [To Test Application Publishing](#bkmk-apppub) to verify that the new application functions as intended.

3.  If you removed an application, click **Start** and then click **All Programs** and verify that any applications that you removed are no longer listed.

**Note**  
If you encounter any problems when verifying your application publication settings, see [Operations Troubleshooting](operations-troubleshooting-medv2.md).

After you have completed testing application publishing, you can test other MED-V workspace configurations to verify that they function as intended.

After you have completed testing your MED-V workspace package and have verified that it is functioning as intended, you can deploy the MED-V workspace to your enterprise.

## Related topics

[How to Test URL Redirection](how-to-test-url-redirection.md)

[How to Verify First Time Setup Settings](how-to-verify-first-time-setup-settings.md)

[Deploying the MED-V Workspace Package](deploying-the-med-v-workspace-package.md)

 

 





