---
title: How to Uninstall the MED-V Components
description: How to Uninstall the MED-V Components
author: levinec
ms.assetid: c121dd27-6b2f-4d41-a21a-c6e8608c5c41
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Uninstall the MED-V Components


Under certain circumstances, you might want to uninstall all or part of the Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 components from your enterprise. For example, you have resolved all application operating system compatibility issues, or you want to deploy a different MED-V workspace in your enterprise.

Typically, you can configure your electronic software distribution (ESD) system to uninstall the MED-V components by using a Windows-based Installer. Alternately, you can uninstall all or some MED-V components manually.

**Important**  
Before you can uninstall the MED-V Host Agent, you must first uninstall any installed MED-V workspace.

 

Use the following procedures to uninstall the MED-V components from your enterprise.

**To uninstall MED-V using an electronic software distribution System**

1.  Use your ESD system to distribute a script that invokes the uninstall.exe executable program for every MED-V workspace that you want to uninstall. The file is located at C:\\ProgramData\\Microsoft\\Medv\\Workspace. You can set a flag to run the uninstall executable program silently so that end users are unaware of the uninstallation.

2.  Create a package to distribute the MED-V Host Agent installation file to each computer on which a MED-V workspace was uninstalled. Configure the package to run the uninstallation in silent mode.

The ESD client recognizes when the new packages are available and starts to uninstall the packages per the definition and requirements.

**To manually uninstall a MED-V workspace**

1.  On the host computer, click **Start**, click **Control Panel**, and then click **Programs and Features**.

2.  In the **Programs and Features** window, select the MED-V workspace that you want to remove, and then click **Uninstall**. (The MED-V workspace is named "MED-V Workspace - &lt;*workspace\_name*&gt;"). The &lt;*workspace\_name*&gt; **Setup Wizard** opens.

3.  On the **Setup Wizard**, click **Next**, and then click **Remove**.

4.  If you prefer, select the check box to delete the master VHD disk and differencing disks created by MED-V. This is not required, but frees disk space after the uninstallation finishes.

5.  Click **Remove**.

    **Note**  
    If MED-V is currently running, a dialog box appears and prompts you whether you want to shut it down. Click **Yes** to continue with the uninstallation. Click **No** to cancel the uninstallation.

     

Alternately, you can remove a MED-V workspace by running the `uninstall.exe` file, typically located at C:\\ProgramData\\Microsoft\\Medv\\Workspace.

**To manually uninstall the MED-V Host Agent**

1.  On the Windows 7 host computer, click **Start**, click **Control Panel**, and then click **Programs and Features**.

2.  In the **Programs and Features** window, select **MED-V Host Agent**, and then click **Uninstall**.

    The Windows Installer removes the MED-V Host Agent.

    **Note**  
    If you try to uninstall the MED-V Host Agent before you uninstall the MED-V workspace, a dialog box appears that states that you must first uninstall the MED-V workspace. Click **OK** to continue.

     

**To manually uninstall the MED-V Workspace Packager**

1.  On the host computer, click **Start**, click **Control Panel**, and then click **Programs and Features**.

2.  In the **Programs and Features** window, select **MED-V Workspace Packager**, and then click **Uninstall**.

    The Windows Installer removes the MED-V Workspace Packager.

    **Note**  
    You can uninstall the MED-V Workspace Packager at any time without affecting any deployed MED-V workspaces.

     

## Related topics


[Deploy the MED-V Components](deploy-the-med-v-components.md)

 

 





