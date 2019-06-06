---
title: How to Recover Local Computers by Using the DaRT Recovery Image
description: How to Recover Local Computers by Using the DaRT Recovery Image
author: msfttracyp
ms.assetid: a6adc717-827c-45e8-b9c3-06d0e919e0bd
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Recover Local Computers by Using the DaRT Recovery Image


Use these instructions to recover a computer when you are physically present at the end-user computer that is experiencing problems.

**How to recover a local computer by using the DaRT recovery image**

1.  Boot the end-user computer by using the Microsoft Diagnostics and Recovery Toolset (DaRT) 10 recovery image.

    As the computer is booting into the DaRT 10 recovery image, the **NetStart** dialog box appears.

2.  When you are asked whether you want to initialize network services, select one of the following:

    **Yes** - it is assumed that a DHCP server is present on the network, and an attempt is made to obtain an IP address from the server. If the network uses static IP addresses instead of DHCP, you can later use the **TCP/IP Configuration** tool in DaRT to specify a static IP address.

    **No** - skip the network initialization process.

3.  Indicate whether you want to remap the drive letters. When you run Windows online, the system volume is typically mapped to drive C. However, when you run Windows offline under WinRE, the original system volume might be mapped to another drive, and this can cause confusion. If you decide to remap, DaRT tries to map the offline drive letters to match the online drive letters. Remapping is performed only if an offline operating system is selected later in the startup process.

4.  On the **System Recovery Options** dialog box, select a keyboard layout.

5.  Check the displayed system root directory, the kind of operating system installed, and the partition size. If you do not see your operating system listed, and suspect that the lack of drivers is a possible cause of the failure, click **Load Drivers** to load the suspect drivers, and then insert the installation media for the device and select the driver.

6.  Select the installation that you want to repair or diagnose, and then click **Next**.

    **Note**  
    If the Windows Recovery Environment (WinRE) detects or suspects that Windows 10 did not start correctly the last time that it was tried, **Startup Repair** might start to run automatically.

     

    If any of the registry hives are corrupted or missing, Registry Editor and several other DaRT utilities will have limited functionality. If no operating system is selected, some tools will not be available.

    The **System Recovery Options** window appears and lists various recovery tools.

7.  On the **System Recovery Options** window, click **Microsoft Diagnostics and Recovery Toolset**.

    The **Diagnostics and Recovery Toolset** window opens. You can now run any of the individual tools or wizards that were included when the DaRT recovery image was created.

You can click **Help** on the **Diagnostics and Recovery Toolset** window to open the client Help file that provides detailed instruction and information needed to run the individual DaRT tools. You can also click the **Solution Wizard** on the **Diagnostics and Recovery Toolset** window to choose the best tool for the situation, based on a brief interview that the wizard provides.

For general information about any of the DaRT tools, see [Overview of the Tools in DaRT 10](overview-of-the-tools-in-dart-10.md).

**How to run DaRT at the command prompt**

-   To run DaRT at the command prompt, specify the **netstart.exe** command then use any of the following parameters:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Parameter</strong></p></td>
    <td align="left"><p><strong>Description</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>-network</p></td>
    <td align="left"><p>Initializes the network services.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>-remount</p></td>
    <td align="left"><p>Remaps the drive letters.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>-prompt</p></td>
    <td align="left"><p>Displays messages that ask the end user to specify whether to initialize the network and remap the drives.</p>
    <div class="alert">
    <strong>Warning</strong>  
    <p>The end user’s response to the prompt overrides the –network and –remount switches.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    </tbody>
    </table>

     

## Related topics


[Operations for DaRT 10](operations-for-dart-10.md)

[Recovering Computers Using DaRT 10](recovering-computers-using-dart-10.md)

 

 





