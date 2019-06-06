---
title: How to Recover Remote Computers Using the DaRT Recovery Image
description: How to Recover Remote Computers Using the DaRT Recovery Image
author: msfttracyp
ms.assetid: 66bc45fb-dc40-4d47-b583-5bb1ff5c97a7
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# How to Recover Remote Computers Using the DaRT Recovery Image


The Remote Connection feature in Microsoft Diagnostics and Recovery Toolset (DaRT) 7 lets an IT administrator run the DaRT tools remotely on an end-user computer. After certain information is provided by the end user (or by a helpdesk professional working on the end-user computer), the IT administrator or helpdesk agent can take control of the end user's computer and run the necessary DaRT tools remotely.

**Important**  
The two computers establishing a remote connection must be part of the same network.



**To recover a remote computer by using DaRT**

1.  Boot an end-user computer by using the DaRT recovery image.

    You will typically use one of the following methods to boot into DaRT to recover a remote computer, depending on how you deploy the DaRT recovery image. For more information about deploying the DaRT recovery image, see [Deploying the DaRT 7.0 Recovery Image](deploying-the-dart-70-recovery-image-dart-7.md).

    -   Boot into DaRT from a recovery partition on the problem computer.

    -   Boot into DaRT from a remote partition on the network.

    For information about the advantages and disadvantages of each method, see [Planning How to Save and Deploy the DaRT 7.0 Recovery Image](planning-how-to-save-and-deploy-the-dart-70-recovery-image.md).

    Whichever method that you use to boot into DaRT, you must enable the boot device in the BIOS for the boot option or options that you want to make available to the end user.

    **Note**  
    Configuring the BIOS is unique, depending on the kind of hard disk drive, network adapters, and other hardware that is used in your organization.



2.  As the computer is booting into the DaRT recovery image, the **NetStart** dialog box appears. You are asked whether you want to initialize network services. If you click **Yes**, it is assumed that a DHCP server is present on the network and an attempt is made to obtain an IP address from the server. If the network uses static IP addresses instead of DHCP, you can later use the **TCP/IP Configuration** tool in DaRT to specify a static IP address.

    To skip the network initialization process, click **No**.

3.  Following the network initialization dialog box, you are asked whether you want to remap the drive letters. When you run Windows online, the system volume is typically mapped to drive C. However, when you run Windows offline under WinRE, the original system volume might be mapped to another drive, and this can cause confusion. If you decide to remap, DaRT tries to map the offline drive letters to match the online drive letters. Remapping is performed only if an offline operating system is selected later in the startup process.

4.  Following the remapping dialog box, a **System Recovery Options** dialog box appears and asks you to select a keyboard layout. Then it displays the system root directory, the kind of operating system installed, and the partition size. If you do not see your operating system listed, and suspect that the lack of drivers is a possible cause of the failure, click **Load Drivers** to load the suspect drivers. This prompts you to insert the installation media for the device and to select the driver. Select the installation that you want to repair or diagnose, and then click **Next**.

    **Note**  
    If the Windows Recovery Environment (WinRE) detects or suspects that Windows 7 did not start correctly the last time that it was tried, **Startup Repair** might start to run automatically. For information about this situation including how to resolve it, see [Troubleshooting DaRT 7.0](troubleshooting-dart-70-new-ia.md).



~~~
If any of the registry hives are corrupted or missing, Registry Editor, and several other DaRT utilities, will have limited functionality. If no operating system is selected, some tools will not be available.

The **System Recovery Options** window appears and lists various recovery tools.
~~~

5. On the **System Recovery Options** window, select **Microsoft Diagnostics and Recovery Toolset** to open the **Diagnostics and Recovery Toolset** window.

6. On the **Diagnostics and Recovery Toolset** window, click **Remote Connection** to open the **DaRT Remote Connection** window. If you are prompted to give the help desk remote access, click **OK**.

   The DaRT Remote Connection window opens and displays a ticket number, IP address, and port information.

7. On the helpdesk agent computer, open the **DaRT Remote Connection Viewer**.

   Click **Start**, click **All Programs**, click **Microsoft DaRT 7**, and then click **DaRT Remote Connection Viewer**.

8. In the **DaRT Remote Connection** window, enter the required ticket, IP address, and port information.

   **Note**  
   This information is created on the end-user computer and must be provided by the end user. There might be multiple IP addresses to choose from, depending on how many are available on the end-user computer.



9. Click **Connect**.

The IT administrator now assumes control of the end-user computer and can run the DaRT tools remotely.

**Note**  
A file is provided that is named inv32.xml and contains remote connection information, such as the port number and IP address. By default, the file is typically located at %windir%\\system32.



**To customize the Remote Connection process**

1. You can customize the Remote Connection process by editing the winpeshl.ini file. For more information about how to edit the winpeshl.ini file, see [Winpeshl.ini Files](https://go.microsoft.com/fwlink/?LinkId=219413).

   Specify the following commands and parameters to customize how a remote connection is established with an end-user computer:

   <table>
   <colgroup>
   <col width="33%" />
   <col width="33%" />
   <col width="33%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Command</th>
   <th align="left">Parameter</th>
   <th align="left">Description</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p><strong>RemoteRecovery.exe</strong></p></td>
   <td align="left"><p>-nomessage</p></td>
   <td align="left"><p>Specifies that the confirmation prompt is not displayed. <strong>Remote Connection</strong> continues just as if the end user had responded &quot;Yes&quot; to the confirmation prompt.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>WaitForConnection.exe</strong></p></td>
   <td align="left"><p>none</p></td>
   <td align="left"><p>Prevents a custom script from continuing until either <strong>Remote Connection</strong> is not running or a valid connection is established with the end-user computer.</p>
   <div class="alert">
   <strong>Important</strong><br/><p>This command serves no function if it is specified independently. It must be specified in a script to function correctly.</p>
   </div>
   <div>

   </div></td>
   </tr>
   </tbody>
   </table>



2. The following is an example of a winpeshl.ini file that is customized to open the **Remote Connection** tool as soon as an attempt is made to boot into DaRT:

   ``` syntax
   [LaunchApps]
   "%windir%\system32\netstart.exe -network -remount"
   "cmd /C start %windir%\system32\RemoteRecovery.exe -nomessage"
   "%windir%\system32\WaitForConnection.exe"
   "%SYSTEMDRIVE%\sources\recovery\recenv.exe"
   ```

**To run the Remote Connection Viewer at the command prompt**

1.  You can run the **DaRT Remote Connection Viewer** at the command prompt by specifying the **DartRemoteViewer.exe** command and by using the following parameters:

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
    <td align="left"><p>-ticket=&lt;<em>ticketnumber</em>&gt;</p></td>
    <td align="left"><p>Where &lt;<em>ticketnumber</em>&gt; is the ticket number, including the dashes, that is generated by Remote Connection.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>-ipaddress=&lt;<em>ipaddress</em>&gt;</p></td>
    <td align="left"><p>Where &lt;<em>ipaddress</em>&gt; is the IP address that is generated by Remote Connection.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>-port=&lt;<em>port</em>&gt;</p></td>
    <td align="left"><p>Where &lt;<em>port</em>&gt; is the port that corresponds to the specified IP address.</p></td>
    </tr>
    </tbody>
    </table>



~~~
**Note**  
The variables for these parameters are created on the end-user computer and must be provided by the end user.
~~~



2. If all three parameters are specified and the data is valid, a connection is immediately tried when the program starts. If any parameter is not valid, the program starts as if there were no parameters specified.

## Related topics


[Recovering Computers Using DaRT 7.0](recovering-computers-using-dart-70-dart-7.md)









