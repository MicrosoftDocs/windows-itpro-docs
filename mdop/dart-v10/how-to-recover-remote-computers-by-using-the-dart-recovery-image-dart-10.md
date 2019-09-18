---
title: How to Recover Remote Computers by Using the DaRT Recovery Image
description: How to Recover Remote Computers by Using the DaRT Recovery Image
author: dansimp
ms.assetid: c0062208-39cd-4e01-adf8-36a11386e2ea
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Recover Remote Computers by Using the DaRT Recovery Image


Use the Remote Connection feature in Microsoft Diagnostics and Recovery Toolset (DaRT) 10 to run the DaRT tools remotely on an end-user computer. After the end user provides the administrator or help desk worker with certain information, the IT administrator or help desk worker can take control of the end user's computer and run the necessary DaRT tools remotely.

If you disabled the DaRT tools when you created the recovery image, you still have access to all of the tools. All of the tools, except Remote Connection, are unavailable to end users.

**To recover a remote computer by using the DaRT recovery image**

1.  Boot an end-user computer by using the DaRT recovery image.

    You will typically use one of the following methods to boot into DaRT to recover a remote computer, depending on how you deploy the DaRT recovery image. For more information about deploying the DaRT recovery image, see [Deploying DaRT 10](deploying-dart-10.md).

    -   Boot into DaRT from a recovery partition on the problem computer.

    -   Boot into DaRT from a remote partition on the network.

    For information about the advantages and disadvantages of each method, see [Planning How to Save and Deploy the DaRT 10 Recovery Image](planning-how-to-save-and-deploy-the-dart-10-recovery-image.md).

    Whichever method that you use to boot into DaRT, you must enable the boot device in the BIOS for the boot option or options that you want to make available to the end user.

    **Note**  
    Configuring the BIOS is unique, depending on the kind of hard disk drive, network adapters, and other hardware that is used in your organization.



~~~
As the computer is booting into the DaRT recovery image, the **NetStart** dialog box appears.
~~~

2. When you are asked whether you want to initialize network services, select one of the following:

   **Yes** - it is assumed that a DHCP server is present on the network, and an attempt is made to obtain an IP address from the server. If the network uses static IP addresses instead of DHCP, you can later use the **TCP/IP Configuration** tool in DaRT to specify a static IP address.

   **No** - skip the network initialization process.

3. Indicate whether you want to remap the drive letters. When you run Windows online, the system volume is typically mapped to drive C. However, when you run Windows offline under WinRE, the original system volume might be mapped to another drive, and this can cause confusion. If you decide to remap, DaRT tries to map the offline drive letters to match the online drive letters. Remapping is performed only if an offline operating system is selected later in the startup process.

4. On the **System Recovery Options** dialog box, select a keyboard layout.

5. Check the displayed system root directory, the kind of operating system installed, and the partition size. If you do not see your operating system listed, and suspect that the lack of drivers is a possible cause of the failure, click **Load Drivers** to load the suspect drivers, and then insert the installation media for the device and select the driver.

6. Select the installation that you want to repair or diagnose, and then click **Next**.

   **Note**  
   If the Windows Recovery Environment (WinRE) detects or suspects that Windows 10 did not start correctly the last time that it was tried, **Startup Repair** might start to run automatically. For information about how to resolve this issue, see [Troubleshooting DaRT 10](troubleshooting-dart-10.md).



~~~
If any of the registry hives are corrupted or missing, Registry Editor and several other DaRT utilities will have limited functionality. If no operating system is selected, some tools will not be available.

The **System Recovery Options** window appears and lists various recovery tools.
~~~

7. On the **System Recovery Options** window, click **Microsoft Diagnostics and Recovery Toolset** to open the **Diagnostics and Recovery Toolset**.

8. On the **Diagnostics and Recovery Toolset** window, click **Remote Connection** to open the **DaRT Remote Connection** window. If you are prompted to give the help desk remote access, click **OK**.

   The DaRT Remote Connection window opens and displays a ticket number, IP address, and port information.

9. On the help desk computer, open the **DaRT Remote Connection Viewer**.

10. Click **Start**, click **All Programs**, click **Microsoft DaRT 10**, and then click **DaRT Remote Connection Viewer**.

11. In the **DaRT Remote Connection** window, enter the required ticket, IP address, and port information.

   **Note**  
   This information is created on the end-user computer and must be provided by the end user. There might be multiple IP addresses to choose from, depending on how many are available on the end-user computer.



12. Click **Connect**.

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

   ```ini
   [LaunchApps]
   "%windir%\system32\netstart.exe -network -remount"
   "cmd /C start %windir%\system32\RemoteRecovery.exe -nomessage"
   "%windir%\system32\WaitForConnection.exe"
   "%SYSTEMDRIVE%\sources\recovery\recenv.exe"
   ```

When DaRT starts, it creates the file inv32.xml in \\Windows\\System32\\ on the RAM disk. This file contains connection information: IP address, port, and ticket number. You can copy this file to a network share to trigger a Help desk workflow. For example, a custom program can check the network share for connection files, and then create a support ticket or send email notifications.

**To run the Remote Connection Viewer at the command prompt**

1.  To run the **DaRT Remote Connection Viewer** at the command prompt, specify the **DartRemoteViewer.exe** command and use the following parameters:

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


[Operations for DaRT 10](operations-for-dart-10.md)

[Recovering Computers Using DaRT 10](recovering-computers-using-dart-10.md)









