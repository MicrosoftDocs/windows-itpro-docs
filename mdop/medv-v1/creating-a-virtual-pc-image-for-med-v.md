---
title: Creating a Virtual PC Image for MED-V
description: Creating a Virtual PC Image for MED-V
author: dansimp
ms.assetid: 5e02ea07-25b9-41a5-a803-d70c55eef586
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Creating a Virtual PC Image for MED-V


To create a Virtual PC (VPC) image for MED-V, you must perform the following:

1.  [Create a VPC image](#bkmk-creatingavirtualmachinebyusingmicrosoftvirtualpc).

2.  [Install the MED-V workspace .msi package onto the VPC image](#bkmk-howtoinstallthemedvworkspacemsipackage).

3.  [Run the MED-V virtual machine prerequisites tool on the VPC image](#bkmk-howtorunthevirtualmachineprerequisitestool).

4.  [Manually configure virtual machine prerequisites on the VPC image](#bkmk-howtoconfiguremedvvirtualmachinemanualinstallationprerequisites).

5.  [Configure Sysprep for MED-V images](#bkmk-howtoconfiguresysprepformedvimages) (optional).

6.  [Turn off Microsoft Virtual PC](#bkmk-turningoffmicrosoftvirtualpc).

## <a href="" id="bkmk-creatingavirtualmachinebyusingmicrosoftvirtualpc"></a>Creating a Virtual PC Image by Using Microsoft Virtual PC


To create a Virtual PC image using Microsoft Virtual PC, refer to the Virtual PC documentation.

For more information, see the following:

-   [Windows Virtual PC Help](https://go.microsoft.com/fwlink/?LinkId=182378)

-   [Create a virtual machine and install a guest operating system](https://go.microsoft.com/fwlink/?LinkId=182379)

## <a href="" id="bkmk-howtoinstallthemedvworkspacemsipackage"></a>How to Install the MED-V Workspace .msi Package


After the Virtual PC image is created, install the MED-V workspace .msi package onto the image.

**To install the MED-V workspace image**

1.  Start the virtual machine, and copy the MED-V workspace .msi package inside.

    The MED-V workspace .msi package is called *MED-V\_workspace\_x.msi*, where *x* is the version number.

    For example, *MED-V\_workspace\_1.0.65.msi*.

2.  Double-click the MED-V workspace .msi package, and follow the installation wizard instructions.

    **Note**  
    When a new MED-V version is released, and an existing Virtual PC image is updated, uninstall the existing MED-V workspace .msi package, reboot the computer, and install the new MED-V workspace .msi package.

     

    **Note**  
    After the MED-V workspace .msi package is installed, other products that replace GINA cannot be installed.

     

## <a href="" id="bkmk-howtorunthevirtualmachineprerequisitestool"></a>How to Run the Virtual Machine Prerequisites Tool


The virtual machine (VM) prerequisites tool is a wizard that automates several of the prerequisites.

**Note**  
Although many parameters are configurable in the wizard, the properties required for the proper functioning of MED-V are not configurable.

 

**To run the virtual machine prerequisites tool**

1.  After the MED-V workspace .msi package is installed, on the Windows **Start** menu, select **All Programs &gt; MED-V &gt; VM Prerequisites Tool**.

    **Note**  
    The user running the virtual machine prerequisites tool must have local administrator rights and must be the only user logged in.

     

    The **MED-V VM Prerequisite Wizard Welcome** page appears.

2.  Click **Next**.

3.  On the **Windows Settings** page, from the following configurable properties, select the ones to be configured:

    -   **Clear users’ personal history information**

    -   **Clear local profiles temp directory**

    -   **Disable sounds on following Windows events: start, logon, logoff**

    **Note**  
    Do not enable Windows page saver in a group policy.

     

4.  Click **Next**.

5.  On the **Internet Explorer Settings** page, from the following configurable properties, select the ones to be configured:

    -   **Don't use auto complete features**

    -   **Disable reuse of windows for launching shortcuts**

    -   **Clear browsing history**

    -   **Enable tabbed browsing in Internet Explorer 7**

6.  Click **Next**.

7.  On the **Windows Services** page, from the following configurable properties, select the ones to be configured:

    -   **Security center service**

    -   **Task scheduler service**

    -   **Automatic updates service**

    -   **System restore service**

    -   **Indexing service**

    -   **Wireless Zero Configuration**

    -   **Fast User Switching Compatibility**

8.  Click **Next**.

9.  On the **Windows Auto Logon** page, do the following:

    1.  Select the **Enable Windows Auto Logon** check box.

    2.  Assign a **User name** and **Password**.

10. Click **Apply**, and in the confirmation box that appears, click **Yes**.

11. On the **Summary** page, click **Finish** to quit the wizard

**Note**  
Verify that group policies do not overwrite the mandatory settings set in the prerequisites tool.

 

## <a href="" id="bkmk-howtoconfiguremedvvirtualmachinemanualinstallationprerequisites"></a>How to Configure MED-V Virtual Machine Manual Installation Prerequisites


Several of the configurations cannot be configured through the virtual machine prerequisites tool and must be performed manually.

-   Virtual Machine Settings

    It is recommended to configure the following virtual machine settings in the Microsoft Virtual PC console:

    -   Disable floppy disk drives.

    -   Disable undo-disks (**Settings &gt; undo-disks**).

    -   Ensure that the image has only one virtual CPU.

    -   Eliminate interactions between the virtual machine and the user, where they are not related to published applications (such as, messages requiring user input).

-   Image Settings

    Configure the following manual settings inside the image:

    1.  In the **Power Options Properties** window, disable hibernation and sleep.

    2.  Apply the most recent Windows updates.

    3.  In the **Windows Startup and Recovery** dialog box, in the **System Failure** section, clear the **Automatically restart** check box.

    4.  Ensure that the image uses a VLK license key.

-   Installing VPC Additions

    On the **Action** menu, select **Install or Update Virtual Machine Additions**.

-   Configuring Printing

    You can configure printing from the MED-V workspace in either of the following ways:

    -   Add a printer to the virtual machine.

    -   Allow printing with printers that are configured on the host computer.

## <a href="" id="bkmk-howtoconfiguresysprepformedvimages"></a>How to Configure Sysprep for MED-V Images


In a MED-V workspace, Sysprep can be configured in order to assign unique security ID (SID), particularly when multiple MED-V workspaces are run on a single computer. It is not recommended to use Sysprep to join a domain; instead, use the MED-V join domain script action as described in [How to Set Up Script Actions](how-to-set-up-script-actions.md).

**Note**  
Sysprep is Microsoft's system preparation utility for the Windows operating system.

 

**To configure Sysprep in a MED-V workspace**

1.  Create a directory in the root of the system drive named *Sysprep*.

2.  From the Windows installation CD, extract *deploy.cab* to the root of the system drive, or download the latest Deployment Tools update from the Microsoft Web site.

    -   For Windows 2000, see [Deployment Tools update for Windows 2000](https://go.microsoft.com/fwlink/?LinkId=143001).

    -   For Windows XP, see [Deployment Tools update for Windows XP](https://go.microsoft.com/fwlink/?LinkId=143000).

3.  Run **Setup Manager** (setupmgr.exe).

4.  Follow the Setup Manager wizard.

After Sysprep is configured and the MED-V workspace is created, Sysprep must be executed.

**To run Sysprep**

1.  From the Sysprep folder located in the root of the system drive, run the System Preparation Tool (Sysprep.exe).

2.  In the warning message box that appears, click **OK**.

3.  In the **Sysprep Properties** dialog box, select the **Don't reset grace period for activation** and **Use Mini-Setup** check boxes.

4.  Click **Reseal**.

5.  If you are not satisfied with the information listed in the confirmation message box that appears, click **Cancel** and change the selections.

6.  Click **OK** to complete the system preparation process.

## <a href="" id="bkmk-turningoffmicrosoftvirtualpc"></a>Turning Off Microsoft Virtual PC


After all the components are installed and configured, close Microsoft Virtual PC and select **Turn Off**.

## Related topics


Creating a MED-V Image
[How to Set Up Script Actions](how-to-set-up-script-actions.md)

 

 





