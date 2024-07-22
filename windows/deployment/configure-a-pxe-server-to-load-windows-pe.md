---
title: Configure a PXE server to load Windows PE (Windows 10)
description: This article describes how to configure a PXE server to load Windows PE so that it can be used with an image file to install Windows 10 from the network.
ms.service: windows-client
ms.localizationpriority: medium
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.topic: conceptual
ms.date: 11/23/2022
ms.subservice: itpro-deploy
---

# Configure a PXE server to load Windows PE

*Applies to:*

- Windows 10

This walkthrough describes how to configure a PXE server to load Windows PE by booting a client computer from the network. Using the Windows PE tools and a Windows 10 image file, you can install Windows 10 from the network.

## Prerequisites

- A deployment computer: A computer with the [Windows Assessment and Deployment Kit](/windows-hardware/get-started/adk-install) (Windows ADK) and the Windows PE add-on with ADK installed.
- A DHCP server: A DHCP server or DHCP proxy configured to respond to PXE client requests is required.
- A PXE server: A server running the TFTP service that can host Windows PE boot files that the client will download.
- A file server: A server hosting a network file share.

All four of the roles specified above can be hosted on the same computer or each can be on a separate computer.

## Step 1: Copy Windows PE source files

1. On the deployment computer, select **Start**, and type **deployment**.

2. Right-click **Deployment and Imaging Tools Environment** and then select **Run as administrator**. The Deployment and Imaging Tools Environment shortcut opens a Command Prompt window and automatically sets environment variables to point to all the necessary tools.

3. Run the following command to copy the base Windows PE files into a new folder. The script requires two arguments: hardware architecture and destination location. The value of **&lt;architecture&gt;** can be **x86**, **amd64**, or **arm** and **&lt;destination&gt;** is a path to a local directory. If the directory doesn't already exist, it will be created.

    ```cmd
    copype.cmd <architecture> <destination>
    ```

    For example, the following command copies **amd64** architecture files to the **C:\winpe_amd64** directory:

    ```cmd
    copype.cmd amd64 C:\winpe_amd64
    ```

    The script creates the destination directory structure and copies all the necessary files for that architecture. In the previous example, the following directories are created:

    ```cmd
    C:\winpe_amd64
    C:\winpe_amd64\fwfiles
    C:\winpe_amd64\media
    C:\winpe_amd64\mount
    ```

4. Mount the base Windows PE image (winpe.wim) to the \mount directory using the DISM tool. Mounting an image file unpacks the file contents into a folder so that you can make changes directly or by using tools such as DISM. See the following example.

    ```cmd
    dism.exe /mount-image /imagefile:c:\winpe_amd64\media\sources\boot.wim /index:1 /mountdir:C:\winpe_amd64\mount
    ```

    Verify that the message **The operation completed successfully** is displayed.

    > [!NOTE]
    > To view currently mounted images, enter **`dism.exe /get-MountedWiminfo`**.

5. Map a network share to the root TFTP directory on the PXE/TFTP server and create a \Boot folder. Consult your TFTP server documentation to determine the root TFTP server directory, then enable sharing for this directory, and verify it can be accessed on the network. In the following example, the PXE server name is PXE-1 and the TFTP root directory is shared using a network path of **\\\PXE-1\TFTPRoot**:

    ```cmd
    net.exe use y: \\PXE-1\TFTPRoot
    y:
    md Boot
    ```

6. Copy the PXE boot files from the mounted directory to the \boot folder. For example:

    ```cmd
    copy c:\winpe_amd64\mount\windows\boot\pxe\*.* y:\Boot
    ```

7. Copy the boot.sdi file to the PXE/TFTP server.

    ```cmd
    copy C:\winpe_amd64\media\boot\boot.sdi y:\Boot
    ```

8. Copy the bootable Windows PE image (boot.wim) to the \boot folder.

    ```cmd
    copy C:\winpe_amd64\media\sources\boot.wim y:\Boot
    ```

9. (Optional) Copy TrueType fonts to the \boot folder

    ```cmd
    copy C:\winpe_amd64\media\Boot\Fonts y:\Boot\Fonts
    ```

## Step 2: Configure boot settings and copy the BCD file

1. Create a BCD store using bcdedit.exe:

    ```cmd
    bcdedit.exe /createstore c:\BCD
    ```

2. Configure RAMDISK settings:

    ```cmd
    bcdedit.exe /store c:\BCD /create {ramdiskoptions} /d "Ramdisk options"
    bcdedit.exe /store c:\BCD /set {ramdiskoptions} ramdisksdidevice boot
    bcdedit.exe /store c:\BCD /set {ramdiskoptions} ramdisksdipath \Boot\boot.sdi
    bcdedit.exe /store c:\BCD /create /d "winpe boot image" /application osloader
    ```

    The last command will return a GUID, for example:

    ```console
    The entry {a4f89c62-2142-11e6-80b6-00155da04110} was successfully created. 
    ```

    Copy this GUID for use in the next set of commands. In each command shown, replace "GUID1" with your GUID.

3. Create a new boot application entry for the Windows PE image:

    ```cmd
    bcdedit.exe /store c:\BCD /set {GUID1} device ramdisk=[boot]\Boot\boot.wim,{ramdiskoptions} 
    bcdedit.exe /store c:\BCD /set {GUID1} path \windows\system32\winload.exe 
    bcdedit.exe /store c:\BCD /set {GUID1} osdevice ramdisk=[boot]\Boot\boot.wim,{ramdiskoptions} 
    bcdedit.exe /store c:\BCD /set {GUID1} systemroot \windows
    bcdedit.exe /store c:\BCD /set {GUID1} detecthal Yes
    bcdedit.exe /store c:\BCD /set {GUID1} winpe Yes
    ```

4. Configure BOOTMGR settings (remember to replace GUID1 in the third command with your GUID):

    ```cmd
    bcdedit.exe /store c:\BCD /create {bootmgr} /d "boot manager"
    bcdedit.exe /store c:\BCD /set {bootmgr} timeout 30 
    bcdedit.exe /store c:\BCD -displayorder {GUID1} -addlast
    ```

5. Copy the BCD file to your TFTP server:

    ```cmd
    copy c:\BCD \\PXE-1\TFTPRoot\Boot\BCD
    ```

Your PXE/TFTP server is now configured. You can view the BCD settings that have been configured using the command bcdedit.exe /store &lt;BCD file location&gt; /enum all. See the following example. Note: Your GUID will be different than the one shown below.

```cmd
C:\>bcdedit.exe /store C:\BCD /enum all
Windows Boot Manager
--------------------
identifier              {bootmgr}
description             boot manager
displayorder            {a4f89c62-2142-11e6-80b6-00155da04110}
timeout                 30

Windows Boot Loader
-------------------
identifier              {a4f89c62-2142-11e6-80b6-00155da04110}
device                  ramdisk=[boot]\Boot\boot.wim,{ramdiskoptions}
description             winpe boot image
osdevice                ramdisk=[boot]\Boot\boot.wim,{ramdiskoptions}
systemroot              \Windows
detecthal               Yes
winpe                   Yes

Setup Ramdisk Options
---------------------
identifier              {ramdiskoptions}
description             ramdisk options
ramdisksdidevice        boot
ramdisksdipath          \Boot\boot.sdi
```

> [!TIP]
> If you start the PXE boot process, but receive the error **The boot configuration data for your PC is missing or contains error**, then verify that `\boot` directory is installed under the correct TFTP server root directory.  In the example used here the name of this directory is TFTPRoot, but your TFTP server might be different.

## PXE boot process summary

The following process summarizes the PXE client boot.

<!--

DHCP OPTIONS ARE NOT RECOMMENDED AND IN SOME SCENARIOS NOT SUPPORTED. SWITCHING TO IP HELPERS.

>The following assumes that you have configured DHCP option 67 (Bootfile Name) to `boot\PXEboot.n12` which enables direct boot to PXE with no user interaction. For more information about DHCP options for network boot, see [Managing Network Boot Programs](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732351(v=ws.10)).

1. A client is directed by DHCP options 066 and 067 to download `boot\PXEboot.n12` from the TFTP server.
-->

> [!NOTE]
> The following assumes that the client and PXE server are on the same network/subnet/vlan or that PXE requests have been appropriately forwarded from the client to the PXE server using IP helpers configured in the router or switch. For more information about IP helpers, see [Configuring Your Router to Forward Broadcasts](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc732351(v=ws.10)#configuring-your-router-to-forward-broadcasts-recommended).

1. A client contacts the PXE server. When the client is on a different network/subnet/vlan as the PXE server, the client is routed to the PXE server using the IP helpers.

2. The PXE server sends DHCP options 060 (client identifier **PXEClient**), 066 (boot server host name) and 067 (boot file name) to the client.

3. The client downloads `boot\PXEboot.n12` from the TFTP server based on DHCP option 067 boot file name value received from the PXE server.

4. `PXEboot.n12` immediately begins a network boot.

5. The client downloads `boot\bootmgr.exe` and the `boot\BCD` file from the TFTP server.

   > [!NOTE]
   > The BCD store must reside in the `\boot` directory on the TFTP server and must be named BCD.

6. `Bootmgr.exe` reads the BCD operating system entries and downloads `boot\boot.sdi` and the Windows PE image (`boot\boot.wim`). Optional files that can also be downloaded include TrueType fonts (`boot\Fonts\wgl4_boot.ttf`) and the hibernation state file (`\hiberfil.sys`) if these files are present.

7. `Bootmgr.exe` starts Windows PE by calling `winload.exe` within the Windows PE image.

8. Windows PE loads, a command prompt opens and `wpeinit.exe` is run to initialize Windows PE.

9. The Windows PE client provides access to tools like `imagex.exe`, `diskpart.exe`, and `bcdboot.exe` using the Windows PE command prompt. With the help of these tools accompanied by a Windows 10 image file, the destination computer can be formatted properly to load a full Windows 10 operating system.

### Related articles

[Windows PE Walkthroughs](/previous-versions/windows/it-pro/windows-vista/cc748899(v=ws.10))
