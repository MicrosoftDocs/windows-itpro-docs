---
title: Windows Sandbox
description: Windows Sandbox overview
ms.prod: windows-client
author: vinaypamnani-msft
ms.author: vinpa
manager: aaroncz
ms.collection: 
  - highpri
ms.topic: article
ms.localizationpriority: 
ms.date: 
ms.reviewer: 
ms.technology: itpro-security
---

# Windows Sandbox 

Windows Sandbox provides a lightweight desktop environment to safely run applications in isolation. Software installed inside the Windows Sandbox environment remains "sandboxed" and runs separately from the host machine.

A sandbox is temporary. When it's closed, all the software and files and the state are deleted. You get a brand-new instance of the sandbox every time you open the application. Note, however, that as of [Windows 11 Build 22509](https://blogs.windows.com/windows-insider/2021/12/01/announcing-windows-11-insider-preview-build-22509/), your data will persist through a restart initiated from inside the virtualized environment—useful for installing applications that require the OS to reboot.

Software and applications installed on the host aren't directly available in the sandbox. If you need specific applications available inside the Windows Sandbox environment, they must be explicitly installed within the environment.

Windows Sandbox has the following properties:
- **Part of Windows**: Everything required for this feature is included in Windows 10 Pro and Enterprise. There's no need to download a VHD.
- **Pristine**: Every time Windows Sandbox runs, it's as clean as a brand-new installation of Windows.
- **Disposable**: Nothing persists on the device. Everything is discarded when the user closes the application.
- **Secure**: Uses hardware-based virtualization for kernel isolation. It relies on the Microsoft hypervisor to run a separate kernel that isolates Windows Sandbox from the host.
- **Efficient:** Uses the integrated kernel scheduler, smart memory management, and virtual GPU.

> [!IMPORTANT]
> Windows Sandbox enables network connection by default. It can be disabled using the [Windows Sandbox configuration file](/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file#networking).

## Prerequisites
 
- Windows 10 Pro, Enterprise or Education build 18305 or Windows 11 (*Windows Sandbox is currently not supported on Windows Home edition*)
- AMD64 or (as of [Windows 11 Build 22483](https://blogs.windows.com/windows-insider/2021/10/20/announcing-windows-11-insider-preview-build-22483/)) ARM64 architecture
- Virtualization capabilities enabled in BIOS
- At least 4 GB of RAM (8 GB recommended)
- At least 1 GB of free disk space (SSD recommended)
- At least two CPU cores (four cores with hyperthreading recommended)

## Installation

1. Ensure that your machine is using Windows 10 Pro or Enterprise, build version 18305 or Windows 11.

2. Enable virtualization on the machine.

   - If you're using a physical machine, make sure virtualization capabilities are enabled in the BIOS.
   - If you're using a virtual machine, run the following PowerShell command to enable nested virtualization:

     ```powershell
     Set-VMProcessor -VMName \<VMName> -ExposeVirtualizationExtensions $true
     ```

3. Use the search bar on the task bar and type **Turn Windows Features on or off** to access the Windows Optional Features tool. Select **Windows Sandbox** and then **OK**. Restart the computer if you're prompted.

   If the **Windows Sandbox** option is unavailable, your computer doesn't meet the requirements to run Windows Sandbox. If you think this analysis is incorrect, review the prerequisite list and steps 1 and 2.

   > [!NOTE]
   > To enable Sandbox using PowerShell, open PowerShell as Administrator and run **Enable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -All -Online**.

4. Locate and select **Windows Sandbox** on the Start menu to run it for the first time.

   > [!NOTE]
   > Windows Sandbox does not adhere to the mouse settings of the host system, so if the host system is set to use a right-handed mouse, you should apply these settings in Windows Sandbox manually.  

## Usage 
1. Copy an executable file (and any other files needed to run the application) from the host and paste them into the **Windows Sandbox** window.

2. Run the executable file or installer inside the sandbox.

3. When you're finished experimenting, close the sandbox. A dialog box will state that all sandbox content will be discarded and permanently deleted. Select **Ok**.

4. Confirm that your host machine doesn't exhibit any of the modifications that you made in Windows Sandbox.
