---
title: Quick fixes - Windows IT Pro
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Learn how to quickly resolve many problems, which may come up during a Windows 10 upgrade.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.custom: seo-marvel-apr2020
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Quick fixes

**Applies to**
-   Windows 10

>[!NOTE]
>This is a 100 level topic (basic).<br>
>See [Resolve Windows 10 upgrade errors](resolve-windows-10-upgrade-errors.md) for a full list of topics in this article.

The following list of fixes can resolve many Windows upgrade problems. You should try these steps before contacting Microsoft support, or attempting a more advanced analysis of a Windows upgrade failure. Also review information at [Windows 10 help](https://support.microsoft.com/products/windows?os=windows-10).

The Microsoft Virtual Agent provided by [Microsoft Support](https://support.microsoft.com/contactus/) can help you to analyze and correct some Windows upgrade errors. **To talk to a person about your issue**, start the Virtual Agent (click **Get started**) and enter "Talk to a person" two times. 

> [!TIP]
> You might also wish to try a new tool available from Microsoft that helps to diagnose many Windows upgrade errors. For more information and to download this tool, see [SetupDiag](setupdiag.md). The topic is more advanced (300 level) because several advanced options are available for using the tool. However, you can now just download and then double-click the tool to run it. By default when you click Save, the tool is saved in your **Downloads** folder. Double-click the tool in the folder and wait until it finishes running (it might take a few minutes), then double-click the **SetupDiagResults.log** file and open it using Notepad to see the results of the analysis.

## List of fixes

<ol>
<li>Remove nonessential external hardware, such as docks and USB devices. <a href="#remove-external-hardware" data-raw-source="[More information](#remove-external-hardware)">More information</a>.</li>
<li>Check the system drive for errors and attempt repairs. <a href="#repair-the-system-drive" data-raw-source="[More information](#repair-the-system-drive)">More information</a>.</li>
<li>Run the Windows Update troubleshooter. <a href="#windows-update-troubleshooter" data-raw-source="[More information](#windows-update-troubleshooter)">More information</a>.</li>
<li>Attempt to restore and repair system files. <a href="#repair-system-files" data-raw-source="[More information](#repair-system-files)">More information</a>.</li>
<li>Check for unsigned drivers and update or repair them. <a href="#repair-unsigned-drivers" data-raw-source="[More information](#repair-unsigned-drivers)">More information</a>.</li>
<li>Update Windows so that all available recommended updates are installed, and ensure the computer is rebooted if this is necessary to complete installation of an update. <a href="#update-windows" data-raw-source="[More information](#update-windows)">More information</a>.</li>
<li>Temporarily uninstall non-Microsoft antivirus software.
  <a href="#uninstall-non-microsoft-antivirus-software" data-raw-source="[More information](#uninstall-non-microsoft-antivirus-software)">More information</a>.</li>

<li>Uninstall all nonessential software. <a href="#uninstall-non-essential-software" data-raw-source="[More information](#uninstall-non-essential-software)">More information</a>.</li>
<li>Update firmware and drivers. <a href="#update-firmware-and-drivers" data-raw-source="[More information](#update-firmware-and-drivers)">More information</a></li>
<li>Ensure that &quot;Download and install updates (recommended)&quot; is accepted at the start of the upgrade process. <a href="#ensure-that-download-and-install-updates-is-selected" data-raw-source="[More information](#ensure-that-download-and-install-updates-is-selected)">More information</a>.</li>
<li>Verify at least 16 GB of free space is available to upgrade a 32-bit OS, or 20 GB for a 64-bit OS. <a href="#verify-disk-space" data-raw-source="[More information](#verify-disk-space)">More information</a>.</li>
</ol>

## Step by step instructions

### Remove external hardware

If the computer is portable and it is currently in a docking station, [undock the computer](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754084(v=ws.11)).

Unplug nonessential external hardware devices from the computer, such as:
- Headphones
- Joysticks
- Printers
- Plotters
- Projectors
- Scanners
- Speakers
- USB flash drives
- Portable hard drives
- Portable CD/DVD/Blu-ray drives
- Microphones
- Media card readers
- Cameras/Webcams
- Smart phones
- Secondary monitors, keyboards, mice

For more information about disconnecting external devices, see [Safely remove hardware in Windows 10](https://support.microsoft.com/help/4051300/windows-10-safely-remove-hardware)

### Repair the system drive

The system drive is the drive that contains the [system partition](/windows-hardware/manufacture/desktop/hard-drives-and-partitions#span-idpartitionsspanspan-idpartitionsspanspan-idpartitionsspanpartitions). This is usually the **C:** drive.

To check and repair errors on the system drive:

1. Click **Start**.
2. Type **command**.
3. Right-click **Command Prompt** and then left-click **Run as administrator**.
4. If you are prompted by UAC, click **Yes**.
5. Type **chkdsk /F** and press ENTER.
6. When you are prompted to schedule a check the next time the system restarts, type **Y**.
7. See the following example

    ```
    C:\WINDOWS\system32>chkdsk /F
    The type of the file system is NTFS.
    Cannot lock current drive.
    
    Chkdsk cannot run because the volume is in use by another
    process.  Would you like to schedule this volume to be
    checked the next time the system restarts? (Y/N) Y

    This volume will be checked the next time the system restarts.
    ```

8. Restart the computer. The computer will pause before loading Windows and perform a repair of your hard drive.

### Windows Update Troubleshooter

The Windows Update troubleshooter tool will automatically analyze and fix problems with Windows Update, such as a corrupted download. It will also tell you if there is a pending reboot that is preventing Windows from updating.

For Windows 7 and 8.1, the tool is [here](https://aka.ms/diag_wu).

For Windows 10, the tool is [here](https://aka.ms/wudiag).

To run the tool, click the appropriate link above. Your web browser will prompt you to save or open the file. Select **open** and the tool will automatically start. The tool will walk you through analyzing and fixing some common problems.

You can also download the Windows Update Troubleshooter by starting the Microsoft [Virtual Agent](https://support.microsoft.com/contact/virtual-agent/), typing **update Windows**, selecting the version of Windows you are running, and then answering **Yes** when asked "Do you need help troubleshooting Windows Update?"

If any errors are displayed in the Windows Update Troubleshooter, use the Microsoft [Virtual Agent](https://support.microsoft.com/contact/virtual-agent/) to ask about these errors. The Virtual Agent will perform a search and provide a list of helpful links.

### Repair system files

This fix is also described in detail at [answers.microsoft.com](https://answers.microsoft.com/en-us/windows/forum/windows_10-update/system-file-check-sfc-scan-and-repair-system-files/bc609315-da1f-4775-812c-695b60477a93).

To check and repair system files:

1. Click **Start**.
2. Type **command**.
3. Right-click **Command Prompt** and then left-click **Run as administrator**.
4. If you are prompted by UAC, click **Yes**.
5. Type **sfc /scannow** and press ENTER. See the following example:

    ```
    C:\>sfc /scannow

    Beginning system scan.  This process will take some time.

    Beginning verification phase of system scan.
    Verification 100% complete.

    Windows Resource Protection did not find any integrity violations.
    ```
6. If you are running Windows 8.1 or later, type **DISM.exe /Online /Cleanup-image /Restorehealth** and press ENTER (the DISM command options are not available for Windows 7). See the following example:

    ```
    C:\>DISM.exe /Online /Cleanup-image /Restorehealth

    Deployment Image Servicing and Management tool
    Version: 10.0.16299.15

    Image Version: 10.0.16299.309

    [==========================100.0%==========================] The restore operation completed successfully.
    The operation completed successfully.

    ```
    > [!NOTE] 
    > It may take several minutes for the command operations to be completed. For more information, see [Repair a Windows Image](/windows-hardware/manufacture/desktop/repair-a-windows-image) and [Use the System File Checker tool](https://support.microsoft.com/help/929833/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system).


### Repair unsigned drivers

[Drivers](/windows-hardware/drivers/gettingstarted/what-is-a-driver-) are files ending in *.dll or *.sys that are used to communicate with hardware components.  Because drivers are so important, they are cryptographically signed to ensure they are genuine. Drivers with a *.sys extension that are not properly signed frequently block the upgrade process. Drivers might not be properly signed if you:
- Disabled driver signature verification (highly not recommended).
- A catalog file used to sign a driver is corrupt or missing.

 Catalog files (files with a *.cat extension) are used to sign drivers. If a catalog file is corrupt or missing, the driver will appear to be unsigned, even though it should be signed. To restore the catalog file, reinstall the driver or copy the catalog file from another device. You might need to analyze another device to determine the catalog file that is associated with the unsigned driver.  All drivers should be signed to ensure the upgrade process works.

To check your system for unsigned drivers:

1. Click **Start**.
2. Type **command**.
3. Right-click **Command Prompt** and then left-click **Run as administrator**.
4. If you are prompted by UAC, click **Yes**.
5. Type **sigverif** and press ENTER. 
6. The File Signature Verification tool will open. Click **Start**.

    ![File Signature Verification.](../images/sigverif.png)

7. After the scanning process is complete, if you see **Your files have been scanned and verified as digitally signed** then you have no unsigned drivers. Otherwise, you will see **The following files have not been digitally signed** and a list will be provided with name, location, and version of all unsigned drivers.
8. To view and save a log file, click **Advanced**, and then click **View Log**. Save the log file if desired.
9. Locate drivers in the log file that are unsigned, write down the location and file names. Also write down the catalog that is associated to the driver if it is provided. If the name of a catalog file is not provided you might need to analyze another device that has the same driver with sigverif and sigcheck (described below).
10. The next step is to check that the driver reported as unsigned by sigverif.exe has a problem. In some cases, sigverif.exe might not be successful at locating the catalog file used to sign a driver, even though the catalog file exists. To perform a detailed driver check, download [sigcheck.zip](https://download.sysinternals.com/files/Sigcheck.zip) and extract the tool to a directory on your computer, for example: **C:\sigcheck**.

    [Sigcheck](/sysinternals/downloads/sigcheck) is a tool that you can download and use to review digital signature details of a file. To use sigcheck:

11. In the command window, use the **cd** command to switch to the directory where you extracted sigcheck, for example **cd c:\sigcheck**.
12. Using the list of unsigned drivers and their associated paths that you obtained from the File Signature Verification tool, run sigcheck to obtain details about the driver, including the catalog file used for signing. Type **sigcheck64 -i \<driver path\>** and press ENTER (or sigcheck -i for a 32 bit OS). See the following example:
    ```
    C:\Sigcheck>sigcheck64.exe -i c:\windows\system32\drivers\afd.sys
    
    Sigcheck v2.80 - File version and signature viewer
    Copyright (C) 2004-2020 Mark Russinovich
    Sysinternals - www.sysinternals.com

    c:\windows\system32\drivers\afd.sys:
	    Verified:	Signed
	    Signing date:	6:18 PM 11/29/2017
	    Signing date:	6:18 PM 11/29/2017
	    Catalog:	C:\Windows\system32\CatRoot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\Package_163_for_KB4054518~31bf3856ad364e35~x86~~6.1.1.2.cat
	    Signers:
	       Microsoft Windows
		    Cert Status:	This certificate or one of the certificates in the certificate chain is not time valid.
		    Valid Usage:	NT5 Crypto, Code Signing
		    Cert Issuer:	Microsoft Windows Verification PCA
		    Serial Number:	33 00 00 00 4B 76 63 2D 24 A2 39 9A 8B 00 01 00 00 00 4B
		    Thumbprint:	B8037C46D0DB7A8CEE502407469B0EE3234D3365
		    Algorithm:	sha1RSA
		    Valid from:	11:46 AM 3/1/2017
		    Valid to:	11:46 AM 5/9/2018
            (output truncated)
    ```
    In the example above, the afd.sys driver is properly signed by the catalog file Package_163_for_KB4054518~31bf3856ad364e35~x86~~6.1.1.2.cat. 


13. Optionally, you can generate a list of drivers using driverquery.exe, which is included with Windows. To save a list of signed and unsigned drivers with driverquery, type **driverquery /si > c:\drivers.txt** and press ENTER. See the following example:

    ```cmd
    C:\>Driverquery /si
    
    DeviceName                     InfName       IsSigned Manufacturer             
    ============================== ============= ======== =========================
    Microsoft ISATAP Adapter       nettun.inf    TRUE     Microsoft                
    Generic volume shadow copy     volsnap.inf   TRUE     Microsoft                
    Generic volume                 volume.inf    TRUE     Microsoft                
    (truncated)               
    ```
    For more information about using driverquery, see [Two Minute Drill: DriverQuery.exe](https://techcommunity.microsoft.com/t5/ask-the-performance-team/two-minute-drill-driverquery-exe/ba-p/374977) and [driverquery](/windows-server/administration/windows-commands/driverquery).

### Update Windows

You should ensure that all important updates are installed before attempting to upgrade. This includes updates to hardware drivers on your computer.

The Microsoft [Virtual Agent](https://support.microsoft.com/contact/virtual-agent/) can walk you through the process of making sure that Windows is updated. 

Start the [Virtual Agent](https://support.microsoft.com/contact/virtual-agent/) and then type "update windows."

Answer questions that the agent asks, and follow instructions to ensure that Windows is up to date. You can also run the [Windows Update Troubleshooter](#windows-update-troubleshooter) described above.

Click **Start**, click power options, and then restart the computer.

### Uninstall non-Microsoft antivirus software

Use Windows Defender for protection during the upgrade.

Verify compatibility information, and if desired re-install antivirus applications after the upgrade. If you plan to re-install the application after upgrading, be sure that you have the installation media and all required activation information before removing the program.

To remove the application, go to **Control Panel\Programs\Programs and Features** and click the antivirus application, then click Uninstall. Choose **Yes** when you are asked to confirm program removal.

For more information, see [Windows 7 - How to properly uninstall programs](https://support.microsoft.com/help/2601726) or [Repair or remove programs in Windows 10](https://support.microsoft.com/help/4028054/windows-repair-or-remove-programs-in-windows-10).

### Uninstall non-essential software

Outdated applications can cause problems with a Windows upgrade. Removing old or non-essential applications from the computer can therefore help.

If you plan to reinstall the application later, be sure that you have the installation media and all required activation information before removing it.

To remove programs, use the same steps as are provided [above](#uninstall-non-microsoft-antivirus-software) for uninstalling non-Microsoft antivirus software, but instead of removing the antivirus application repeat the steps for all your non-essential, unused, or out-of-date software.

### Update firmware and drivers

Updating firmware (such as the BIOS) and installing hardware drivers is a somewhat advanced task.  Do not attempt to update BIOS if you aren't familiar with BIOS settings or are not sure how to restore the previous BIOS version if there are problems. Most BIOS updates are provided as a "flash" update. Your manufacturer might provide a tool to perform the update, or you might be required to enter the BIOS and update it manually. Be sure to save your working BIOS settings, since some updates can reset your configuration and make the computer fail to boot if (for example) a RAID configuration is changed.

Most BIOS and other hardware updates can be obtained from a website maintained by your computer manufacturer. For example, Microsoft Surface device drivers can be obtained at: [Download the latest firmware and drivers for Surface devices](/surface/deploy-the-latest-firmware-and-drivers-for-surface-devices).

To obtain the proper firmware drivers, search for the most updated driver version provided by your computer manufacturer. Install these updates and reboot the computer after installation. Request assistance from the manufacturer if you have any questions.

### Ensure that "Download and install updates" is selected

When you begin a Windows Update, the setup process will ask you to **Get important updates**. Answer **Yes** if the computer you are updating is connected to the Internet. See the following example:

![Get important updates.](../images/update.jpg)

### Verify disk space

You can see a list of requirements for Windows 10 at [Windows 10 Specifications & System Requirements](https://www.microsoft.com/windows/windows-10-specifications). One of the requirements is that enough hard drive space be available for the installation to take place. At least 16 GB of free space must be available on the system drive to upgrade a 32-bit OS, or 20 GB for a 64-bit OS.

To view how much hard drive space is available on your computer, open [File Explorer](https://support.microsoft.com/help/4026617/windows-windows-explorer-has-a-new-name). In Windows 7, this was called Windows Explorer.

In File Explorer, click on **Computer** or **This PC** on the left, then look under **Hard Disk Drives** or under **Devices and drives**. If there are multiple drives listed, the system drive is the drive that includes a Microsoft Windows logo above the drive icon. 

The amount of space available on the system drive will be displayed under the drive. See the following example:

![System drive.](../images/drive.png)

In the previous example, there is 703 GB of available free space on the system drive (C:).

To free up additional space on the system drive, begin by running Disk Cleanup. You can access Disk Cleanup by right-clicking the hard drive icon and then clicking Properties. See the following example:

![Disk cleanup.](../images/cleanup.png)

For instructions to run Disk Cleanup and other suggestions to free up hard drive space, see [Tips to free up drive space on your PC](https://support.microsoft.com/help/17421/windows-free-up-drive-space).

When you run Disk Cleanup and enable the option to Clean up system files, you can remove previous Windows installations which can free a large amount of space. You should only do this if you do not plan to restore the old OS version. 

### Open an elevated command prompt

> [!TIP]
> It is no longer necessary to open an elevated command prompt to run the [SetupDiag](setupdiag.md) tool. However, this is still the optimal way to run the tool.

To launch an elevated command prompt, press the Windows key on your keyboard, type **cmd**, press Ctrl+Shift+Enter, and then click **Yes** to confirm the elevation prompt. Screenshots and other steps to open an elevated command prompt are [here](https://answers.microsoft.com/en-us/windows/forum/windows_7-security/command-prompt-admin-windows-7/6a188166-5e23-461f-b468-f325688ec8c7). 

Note: When you open an elevated command prompt, you will usually start in the **C:\WINDOWS\system32** directory. To run a program that you recently downloaded, you must change to the directory where the program is located. Alternatively, you can move or copy the program to a location on the computer that is automatically searched. These directories are listed in the [PATH variable](https://answers.microsoft.com/windows/forum/windows_10-other_settings-winpc/adding-path-variable/97300613-20cb-4d85-8d0e-cc9d3549ba23).

If this is too complicated for you, then use File Explorer to create a new folder under C: with a short name such as "new" then copy or move the programs you want to run (like SetupDiag) to this folder using File Explorer. When you open an elevated command prompt, change to this directory by typing "cd c:\new" and now you can run the programs in that folder.

If you downloaded the SetupDiag.exe program to your computer, then copied it to the folder C:\new, and you opened an elevated command prompt then typed cd c:\new to change to this directory, you can just type setupdiag and press ENTER to run the program. This program will analyze the files on your computer to see why a Windows Upgrade failed and if the reason was a common one, it will report this reason. It will not fix the problem for you but knowing why the upgrade failed enables you to take steps to fix the problem.

## Related topics

[Windows 10 FAQ for IT professionals](../planning/windows-10-enterprise-faq-itpro.yml)
<br>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
<br>[Windows 10 Specifications](https://www.microsoft.com/windows/Windows-10-specifications)
<br>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<br>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)