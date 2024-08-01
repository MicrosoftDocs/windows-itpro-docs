---
title: Windows Sandbox
description: Windows Sandbox overview
ms.topic: conceptual
ms.date: 03/26/2024
---

# Windows Sandbox

Windows Sandbox provides a lightweight desktop environment to safely run applications in isolation. Software installed inside the Windows Sandbox environment remains "sandboxed" and runs separately from the host machine.

A sandbox is temporary. When it's closed, all the software and files and the state are deleted. You get a brand-new instance of the sandbox every time you open the application. Note, however, that as of Windows 11, version 22H2, your data persists through a restart initiated from inside the virtualized environment—useful for installing applications that require the OS to reboot.

Software and applications installed on the host aren't directly available in the sandbox. If you need specific applications available inside the Windows Sandbox environment, they must be explicitly installed within the environment.

Windows Sandbox has the following properties:

- **Part of Windows**: Everything required for this feature is included in Windows 10 Pro and Enterprise. There's no need to download a Virtual Hard Disk (VHD).
- **Pristine**: Every time Windows Sandbox runs, it's as clean as a brand-new installation of Windows.
- **Disposable**: Nothing persists on the device. Everything is discarded when the user closes the application.
- **Secure**: Uses hardware-based virtualization for kernel isolation. It relies on the Microsoft hypervisor to run a separate kernel that isolates Windows Sandbox from the host.
- **Efficient:** Uses the integrated kernel scheduler, smart memory management, and virtual GPU.

> [!IMPORTANT]
> Windows Sandbox enables network connection by default. It can be disabled using the [Windows Sandbox configuration file](/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file#networking).

[!INCLUDE [windows-sandbox](../../../../../includes/licensing/windows-sandbox.md)]

## Prerequisites

- ARM64 (for Windows 11, version 22H2 and later) or AMD64 architecture
- Virtualization capabilities enabled in BIOS
- At least 4 GB of RAM (8 GB recommended)
- At least 1 GB of free disk space (SSD recommended)
- At least two CPU cores (four cores with hyper-threading recommended)

> [!NOTE]
> Windows Sandbox is currently not supported on Windows Home edition.
> Beginning in Windows 11, version 24H2, all inbox store apps like calculator, photos, notepad and terminal are not available inside Windows Sandbox. Ability to use these apps will be added soon.
## Installation

1. Ensure that your machine is using Windows 10 Pro or Enterprise, build version 18305 or Windows 11.

2. Enable virtualization on the machine.

   - If you're using a physical machine, make sure virtualization capabilities are enabled in the BIOS.
   - If you're using a virtual machine, you need to enable nested virtualization. If needed, also update the VM to support nested virtualization. Run the following PowerShell commands on the host:

     ```powershell
     Set-VMProcessor -VMName <VMName> -ExposeVirtualizationExtensions $true
     Update-VMVersion -VMName <VMName>
     ```

3. Use the search bar on the task bar and type **Turn Windows Features on or off** to access the Windows Optional Features tool. Select **Windows Sandbox** and then **OK**. Restart the computer if you're prompted.

   If the **Windows Sandbox** option is unavailable, your computer doesn't meet the requirements to run Windows Sandbox. If you think this analysis is incorrect, review the prerequisite list and steps 1 and 2.

   > [!NOTE]
   > To enable Sandbox using PowerShell, open PowerShell as Administrator and run the following command:
   >
   > ```powershell
   > Enable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -All -Online
   > ```

4. Locate and select **Windows Sandbox** on the Start menu to run it for the first time.

   > [!NOTE]
   > Windows Sandbox does not adhere to the mouse settings of the host system, so if the host system is set to use a left-handed mouse, you must apply these settings in Windows Sandbox manually when Windows Sandbox starts. Alternatively, you can use a sandbox configuration file to run a logon command to swap the mouse setting. For an example, see [Example 3](windows-sandbox-configure-using-wsb-file.md#example-3).

## Usage

1. Copy an executable file (and any other files needed to run the application) from the host and paste them into the **Windows Sandbox** window.
2. Run the executable file or installer inside the sandbox.
3. When you're finished experimenting, close the sandbox. A dialog box will state that all sandbox content will be discarded and permanently deleted. Select **Ok**.
4. Confirm that your host machine doesn't exhibit any of the modifications that you made in Windows Sandbox.
