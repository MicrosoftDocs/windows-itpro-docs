---
title: How to Use the DaRT Recovery Image Wizard to Create the Recovery Image
description: How to Use the DaRT Recovery Image Wizard to Create the Recovery Image
author: msfttracyp
ms.assetid: 1b8ef983-fff9-4d75-a2f6-53120c5c00c9
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# How to Use the DaRT Recovery Image Wizard to Create the Recovery Image


Microsoft Diagnostics and Recovery Toolset (DaRT) 7 includes the **DaRT Recovery Image Wizard** that is used in Windows to create a bootable International Organization for Standardization (ISO) image. An ISO image is a file that represents the raw contents of a CD.

The **DaRT Recovery Image Wizard** requires the following information:

-   **Boot Image**˚˚You must provide the path of a Windows 7 DVD or Windows 7 source files that are required to create the DaRT recovery image.

-   **Tool Selection**˚˚You can select the tools to include on the DaRT recovery image.

-   **Remote Connections**˚˚You can select whether you want the DaRT recovery image to include the ability to establish a remote connection between the helpdesk and the end-user computer.

-   **Debugging Tools for Windows**˚˚You are asked to provide the location of the Debugging Tools for Windows.

-   **Definitions for Standalone System Sweeper**˚˚You can decide whether to download the latest definitions at the time that you create the recovery image or download the definitions later.

-   **Drivers**˚˚You are asked whether you want to add drivers to the ISO image.

-   **Additional Files**˚˚You can add files to the ISO image that might help diagnose problems.

-   **ISO Image Location**˚˚You are asked to specify where the ISO image should be located.

-   **CD/DVD Drive**˚˚You are asked to specify whether the CD or DVD drive should be used to burn the CD or DVD.

**Note**  
The ISO image size can vary, depending on the tools that were selected in the **DaRT Recovery Image Wizard**.

 

## To create the recovery image using the DaRT Recovery Image Wizard


Follow these instructions to use the **DaRT Recovery Image Wizard** to create the DaRT recovery image.

### To select the tools to include on the DaRT recovery image

The **DaRT Recovery Image Wizard** presents a **Tool Selection** dialog box. You can select or remove tools from the list of tools to be included on the DaRT recovery image by highlighting a tool and then clicking the **Enable** or **Disable** buttons.

After you have selected all the tools that you want to include on the recovery image, click **Next**.

### To add the option to allow remote connectivity

You can select the **Allow remote connections** check box to provide the option in the **Diagnostics and Recovery Toolset** window to establish a remote connection between the helpdesk agent and an end-user computer. After a helpdesk agent establishes a remote connection, they can run the DaRT tools on the end-user computer from a remote location.

You can select the **Specify the port number** check box to enter a specific port number that will be used when establishing a remote connection. You can specify a port number between 1 and 65535. We recommend that the port number be 1024 or higher to minimize the possibility of a conflict.

You can also create a customized message that an end user will receive when they establish a remote connection. The message can be a maximum of 2048 characters.

For more information about remotely running the DaRT tools, see [How to Recover Remote Computers Using the DaRT Recovery Image](how-to-recover-remote-computers-using-the-dart-recovery-image-dart-7.md).

### To add the Debugging Tools for Windows to the DaRT recovery image

In the **Crash Analyzer** dialog box of the **DaRT Recovery Image Wizard**, you are asked to specify the location of the Debugging Tools for Windows. If you do not have a copy of the tools, you can download them from Microsoft. The following link to the download page is provided in the wizard: [Download and Install Debugging Tools for Windows](https://go.microsoft.com/fwlink/?LinkId=99934).

You can either specify the location of the debugging tools on the computer where you are running the **DaRT Recovery Image Wizard**, or you can decide to use the tools that are located on the destination computer. If you decide to use a copy on another computer, you must make sure that the tools are installed on each computer on which you are diagnosing a crash.

**Note**  
If you include the **Crash Analyzer** in the ISO image, we recommend that you also include the Debugging Tools for Windows.

 

Follow these steps to add the Debugging Tools for Windows:

1.  (Optional) Click the hyperlink to download the Debugging Tools for Windows.

2.  Select one of the following options:

    -   **Use the Debugging Tools for Windows in the following location**. If you select this option, you can browse to the location of the tools.

    -   **Locate the Debugging Tools for Windows on the system that you are repairing**. If you select this option, the **Crash Analyzer** will not work if the Debugging Tools for Windows are not found on the problem computer.

3.  After you have finished, click **Next**.

### To add definitions for Standalone System Sweeper to the DaRT recovery image

Definitions are a repository of known malware and other potentially unwanted software. Because malware is being continually developed, **Standalone System Sweeper** relies on current definitions to determine whether software that is trying to install, run, or change settings on a computer is potentially unwanted or malicious software.

To include the latest definitions in the DaRT recovery image (recommended), click **Yes, download the latest definitions.** The definition update starts automatically. You must be connected to the Internet to complete this process.

To skip the definition update, click **No, manually download definitions later**. Definitions will not be included in the DaRT recovery image.

If you decide not to include the latest definitions on the recovery image, or if the definitions included on the recovery image are no longer current by the time that you are ready to use **Standalone System Sweeper**, obtain the latest definitions before you begin a scan by following the instructions that are provided in the **Standalone System Sweeper**.

**Important**  
You cannot scan if there are no definitions.

 

After you have finished, click **Next**.

### To add drivers to the DaRT recovery image

**Caution**  
By default, when you add a driver to the DaRT recovery image, all additional files and subfolders that are located in that folder are added into the recovery image. For more information, see [Troubleshooting DaRT 7.0](troubleshooting-dart-70-new-ia.md).

 

You should include additional drivers on the recovery image for DaRT 7 that you may need when repairing a computer. These may typically include storage or network controllers that are not included on the Windows DVD.

**Important**  
When you select drivers to include, be aware that wireless connectivity (such as Bluetooth or 802.11a/b/g/n) is not supported in DaRT.

 

**To add a storage or network controller driver to the recovery image**

1.  In the **Additional Drivers** dialog box of the **DaRT Recovery Image Wizard**, click **Add Device**.

2.  Browse to the file to be added for the driver, and then click **Open**.

    **Note**  
    The **driver** file is provided by the manufacturer of the storage or network controller.

     

3.  Repeat Steps 1 and 2 for every driver that you want to include.

4.  After you have finished, click **Next**.

### To add files to the DaRT recovery image

Follow these steps to add files to the recovery image so that you can use them to diagnose computer problems.

1.  In the **Additional Files** dialog box of the **DaRT Recovery Image Wizard**, click **Show Files**. This opens an Explorer window that displays the folder that holds the shared files.

2.  Create a subfolder in the folder that is listed in the dialog box.

3.  Copy the files that you want to the new subfolder.

4.  After you have finished, click **Next.**

### To select a location for the ISO that contains the DaRT recovery image

Follow these steps to specify the location where the ISO image is created:

1.  In the **Create Startup Image** dialog box of the **DaRT Recovery Image Wizard**, click **Browse**.

2.  Browse to the preferred location in the **Save As** window, and then click **Save**.

3.  After you have finished, click **Next**.

The size of the ISO image will vary, depending on the tools that you select and the files that you add in the wizard.

The wizard requires the ISO image to have an **.iso** file name extension because most programs that burn a CD or DVD require that extension. If you do not specify a different location, the ISO image is created on your desktop with the name **DaRT70.ISO**.

### To burn the recovery image to a CD or DVD

If the **DaRT Recovery Image Wizard** detects a compatible CD-RW drive on your computer, it offers to burn the ISO image to a disc for you. If you want to burn a CD or DVD and the wizard does not recognize your drive, you must use another program, such as the program that was included with your drive. You can use a duplicator, a duplicating service, or CD or DVD-burning software to make any additional copies.

1.  In the **Burn to a recordable CD/DVD** dialog box of the **DaRT Recovery Image Wizard**, select **Burn the image to the following recordable CD/DVD drive**.

2.  Select the CD or DVD drive.

    **Note**  
    If a drive is not recognized and you install a new drive, you can click **Refresh Drive List** to force the wizard to update the list of available drives.

     

3.  Click **Next**.

## Related topics


[Creating the DaRT 7.0 Recovery Image](creating-the-dart-70-recovery-image-dart-7.md)

 

 





