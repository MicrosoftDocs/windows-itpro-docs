---
title: Managing Software Updates for MED-V Workspaces
description: Managing Software Updates for MED-V Workspaces
author: levinec
ms.assetid: a28d6dcd-cb9f-46ba-8dac-1d990837a3a3
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Managing Software Updates for MED-V Workspaces


You have several different options available to you for providing software updates for the applications in the deployed MED-V workspace.

**Note**  
For information about how to specify the configuration settings that define how MED-V receives automatic updates, see [Managing Automatic Updates for MED-V Workspaces](managing-automatic-updates-for-med-v-workspaces.md).

 

**Updating Software in a MED-V Workspace**

1.  **Using an Electronic Software Distribution System**

    If your organization uses an Electronic Software Distribution System (ESD) system to deploy software, you can use it to provide software updates for applications on MED-V workspaces just as you provide updates for applications on physical computers.

2.  **Using Group Policy**

    If your organization deploys software by using Group Policy, you can use it to provide software updates for applications on MED-V workspaces just as you provide updates for applications on physical computers.

3.  **Using Application Virtualization (APP-V)**

    If you use MED-V together with App-V, you can provide software updates to applications in the MED-V workspace by following the steps that are required by App-V for updating software. For more information, see [Application Virtualization](https://go.microsoft.com/fwlink/?LinkId=122939) (https://go.microsoft.com/fwlink/?LinkId=122939).

4.  **Updating Software in the Core Image**

    Although not considered a MED-V best practice, you can install software updates to applications on the core image. After you have installed the updates, you can then redeploy the MED-V workspace back out to your enterprise just as you deployed it originally.

    **Important**  
    We do not recommend this method of managing software updates. In addition, if you update software in the core image and redeploy the MED-V workspace back out to your enterprise, first time setup must run again, and any data saved in the virtual machine is lost.

     

## Related topics


[Managing Automatic Updates for MED-V Workspaces](managing-automatic-updates-for-med-v-workspaces.md)

[How to Test Application Publishing](how-to-test-application-publishing.md)

[How to Publish and Unpublish an Application on the MED-V Workspace](how-to-publish-and-unpublish-an-application-on-the-med-v-workspace.md)

 

 





