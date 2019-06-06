---
title: How to Create a Test Environment
description: How to Create a Test Environment
author: levinec
ms.assetid: a0db2299-16f3-4516-8769-7d55ca4a1e98
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Create a Test Environment


The following are some steps and instructions to help you create a test environment that you can use to test your MED-V workspace package locally before deploying it throughout your enterprise. This section provides guidance about how to create a test environment, either manually or by using an electronic software distribution system.

**To create a test environment by using an ESD**

1.  Use your company’s method of deploying software throughout the enterprise to deploy the following necessary components to a test computer. Install them in the following order:

    -   **Windows Virtual PC** – if not already installed. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    -   **Windows Virtual PC Additions and Updates**– if not already installed. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    -   **MED-V Host Agent Installation File** – installs the Host Agent (MED-V\_HostAgent\_Setup installation file). For more information, see [How to Manually Install the MED-V Host Agent](how-to-manually-install-the-med-v-host-agent.md).

    -   **MED-V Workspace Installer, VHD, and Setup Executable** – created in the **MED-V Workspace Packager**. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

        **Important**  
        The VHD and Setup executable program must be in the same folder as the MED-V workspace installer. Then, install the MED-V workspace installer by running setup.exe.

         

2.  After all of the components are installed on the test computer, run the MED-V Host Agent to start first time setup.

    Click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Host Agent**.

    **Note**  
    If you cannot physically run the MED-V Host Agent on the test computer, first time setup starts automatically the next time that the computer restarts.

     

First time setup starts and can take ten minutes or more to finish.

For information about testing your configuration settings when first time setup is running, see [How to Verify First Time Setup Settings](how-to-verify-first-time-setup-settings.md).

**To create a test environment manually**

1.  Install the MED-V Host Agent in a local test environment that includes MED-V prerequisites, such as Windows Virtual PC with additions and updates. For information, see [How to Manually Install the MED-V Host Agent](how-to-manually-install-the-med-v-host-agent.md).

2.  Copy the MED-V workspace files to your test environment. The MED-V workspace files are located in the destination folder that you specified in the **MED-V Workspace Packager**.

    **Important**  
    The VHD and Setup executable program must be in the same folder on your test environment as the MED-V workspace installer.

     

3.  Install the MED-V workspace by running setup.exe.

4.  Start first time setup by running the MED-V Host Agent.

    Click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Host Agent**.

First time setup starts and might take several minutes to complete, depending on the size of the VHD specified.

You are now ready to test the different settings for configuration, application publishing, and URL redirection that you specified for your MED-V workspace.

**Note**  
By default, MED-V overrides the screen lock policy in the guest. However, this does not pose a security problem because the host computer still honors the screen lock policy.

 

## Related topics


[How to Verify First Time Setup Settings](how-to-verify-first-time-setup-settings.md)

[How to Test Application Publishing](how-to-test-application-publishing.md)

[How to Test URL Redirection](how-to-test-url-redirection.md)

 

 





