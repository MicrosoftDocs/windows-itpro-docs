---
title: How to Recover Local Computers Using the DaRT Recovery Image
description: How to Recover Local Computers Using the DaRT Recovery Image
author: msfttracyp
ms.assetid: be29b5a8-be08-4cf2-822e-77a51d3f3b65
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Recover Local Computers Using the DaRT Recovery Image


To recover a local computer by using Microsoft Diagnostics and Recovery Toolset (DaRT) 7, you must be physically present at the end-user computer that is experiencing problems that require DaRT. You can also run DaRT remotely by following the instructions at [How to Recover Remote Computers Using the DaRT Recovery Image](how-to-recover-remote-computers-using-the-dart-recovery-image-dart-7.md).

**To recover a local computer by using DaRT**

1.  As the computer is booting into the DaRT recovery image, the **NetStart** dialog box appears. You are asked whether you want to initialize network services. If you click **Yes**, it is assumed that a DHCP server is present on the network and an attempt is made to obtain an IP address from the server. If the network uses static IP addresses instead of DHCP, you can later use the **TCP/IP Configuration** tool in DaRT to specify a static IP address.

    To skip the network initialization process, click **No**.

2.  Following the network initialization dialog box, you are asked whether you want to remap the drive letters. When you run Windows online, the system volume is typically mapped to drive C. However, when you run Windows offline under WinRE, the original system volume might be mapped to another drive, and this can cause confusion. If you decide to remap, DaRT tries to map the offline drive letters to match the online drive letters. Remapping is performed only if an offline operating system is selected later in the startup process.

3.  Following the remapping dialog box, a **System Recovery Options** dialog box appears and asks you to select a keyboard layout. Then it displays the system root directory, the kind of operating system installed, and the partition size. If you do not see your operating system listed, and suspect that the lack of drivers is a possible cause of the failure, click **Load Drivers** to load the suspect drivers. This prompts you to insert the installation media for the device and to select the driver. Select the installation that you want to repair or diagnose, and then click **Next**.

    **Note**  
    If the Windows Recovery Environment (WinRE) detects or suspects that Windows 7 did not start correctly the last time that it was tried, **Startup Repair** might start to run automatically.



~~~
If any of the registry hives are corrupted or missing, Registry Editor, and several other DaRT utilities, will have limited functionality. If no operating system is selected, some tools will not be available.

The **System Recovery Options** window appears and lists various recovery tools.
~~~

4. On the **System Recovery Options** window, click **Microsoft Diagnostics and Recovery Toolset**.

   The **Diagnostics and Recovery Toolset** window opens. You can now run any of the individual tools or wizards that were included when the DaRT recovery image was created.

You can click **Help** on the **Diagnostics and Recovery Toolset** window to open the client Help file that provides detailed instruction and information needed to run the individual DaRT tools. You can also click the **Solution Wizard** on the **Diagnostics and Recovery Toolset** window to choose the best tool for the situation, based on a brief interview that the wizard provides.

For general information about any of the DaRT tools, see [Overview of the Tools in DaRT 7.0](overview-of-the-tools-in-dart-70-new-ia.md).

**To run DaRT at the command prompt**

1. You can run DaRT at the command prompt by specifying the **netstart.exe** command and by using any of the following parameters:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Parameter</th>
   <th align="left">Description</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>-network</p></td>
   <td align="left"><p>Initializes the network services.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>-remount</p></td>
   <td align="left"><p>Remaps the drive letters.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>-prompt</p></td>
   <td align="left"><p>Displays messages asking the end user to specify whether to initialize the network and remap the drives.</p>
   <div class="alert">
   <strong>Important</strong><br/><p>The end user’s response to the prompts overrides the -network and -remount switches.</p>
   </div>
   <div>

   </div></td>
   </tr>
   </tbody>
   </table>



2. You can customize DaRT so that a computer that boots into DaRT automatically opens the **Remote Connection** tool that is used to establish a remote connection with the help desk.

## Related topics


[Recovering Computers Using DaRT 7.0](recovering-computers-using-dart-70-dart-7.md)









