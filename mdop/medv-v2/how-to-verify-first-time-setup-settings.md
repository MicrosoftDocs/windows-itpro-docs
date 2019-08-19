---
title: How to Verify First Time Setup Settings
description: How to Verify First Time Setup Settings
author: levinec
ms.assetid: e8a07d4c-5786-4455-ac43-2deac4042efd
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Verify First Time Setup Settings


While your test of first time setup is running or after it finishes, you can verify the settings that you configured in your MED-V workspace by performing the following tasks.

**Note**  
For information about how to monitor the successful completion of first time setup throughout your enterprise after deployment, see [Monitoring MED-V Workspace Deployments](monitoring-med-v-workspace-deployments.md).

 

**To verify settings during first time setup**

1.  While first time setup is running, verify the following:

    If you specified **Unattended** mode, verify that the virtual machine does not appear when first time setup is running.

    If you specified attended mode, verify that the virtual machine appears and that all fields that require user input are displayed.

2.  You can also monitor the complete first time setup process by viewing the virtual machine when first time setup is running. To do this, follow these steps:

    1.  Open the Windows Virtual PC Console.

        Click **Start**, click **All Programs**, click **Windows Virtual PC**, and then click **Windows Virtual PC**.

    2.  Start MED-V if it is not already running.

        If not already present, in a short time, a virtual machine with the name of the deployed MED-V workspace appears in the list of virtual machines.

    3.  Double-click the MED-V virtual machine to open it.

        You can observe the MED-V virtual machine when it is being set up, and you can troubleshoot the Mini-Setup procedure. Verify the information in the different screens as they go by, such as configuring networking settings, computer domain join information, configuring of the Guest Agent, set up of personal settings, and shutdown.

    4.  The virtual machine closes automatically when first time setup finishes.

        **Note**  
        You can close the virtual machine window at any time and first time setup continues.

         

**To verify settings after first time setup finishes**

1.  Ensure that first time setup finished successfully.

2.  Verify that the MED-V workspace is set up correctly.

    1.  Open the Windows Virtual PC Console.

        Click **Start**, click **All Programs**, click **Windows Virtual PC**, and then click **Windows Virtual PC**.

    2.  Double-click your installed MED-V workspace.

        If the MED-V workspace is already running a virtual application, you might be prompted to close the application before you can open the virtual machine.

    3.  In the MED-V workspace, right-click **My Computer**, and then click **Properties**.

    4.  Verify that the MED-V workspace joined the correct domain. If applicable to your organization, test domain joining by specifying two different domains to verify that the guest domain is overridden by the host domain.

    5.  Verify that the MED-V workspace joined the domain organizational unit that you specified.

    6.  If you specified the computer name mask, verify that the new computer name matches what was specified.

3.  Verify that the locale settings that you specified are correct.

    1.  In the MED-V workspace, click **Start** and then click **Control Panel**.

    2.  Verify your specified configuration settings, for example, **Date and Time** and **Regional and Language**.

**Note**  
If you encounter any problems when verifying your first time setup settings, see [Operations Troubleshooting](operations-troubleshooting-medv2.md).

 

After you have verified that your first time setup settings are correct, you can test other MED-V workspace configurations to verify that they function as intended, such as application publishing and URL redirection.

After you have completed all testing of your MED-V workspace package and have verified that it is functioning as intended, you can deploy the MED-V workspace to your enterprise.

## Related topics


[How to Test Application Publishing](how-to-test-application-publishing.md)

[How to Test URL Redirection](how-to-test-url-redirection.md)

[Deploying the MED-V Workspace Package](deploying-the-med-v-workspace-package.md)

[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)

 

 





