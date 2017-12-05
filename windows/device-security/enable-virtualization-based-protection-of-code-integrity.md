---
title: Enable virtualization-based protection of code integrity 
description: This article explains the steps to opt in to using HVCI on Windows devices. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.author: justinha
author: brianlic-msft
ms.date: 11/07/2017
---

# Enable virtualization-based protection of code integrity 

**Applies to**  

- Windows 10
- Windows Server 2016 

Virtualization-based protection of code integrity (herein referred to as HVCI) is a powerful system mitigation, which leverages hardware virtualization and the Windows Hyper-V hypervisor to protect Windows kernel-mode processes against the injection and execution of malicious or unverified code. 
Code integrity validation is performed in a secure environment that is resistant to attack from malicious software, and page permissions for kernel mode are set and maintained by the Hyper-V hypervisor.  

Some applications, including device drivers, may be incompatible with HVCI. 
This can cause devices or software to malfunction and in rare cases may result in a Blue Screen. Such issues may occur after HVCI has been turned on or during the enablement process itself. 
If this happens, see [Troubleshooting](#troubleshooting) for remediation steps. 

## How to Turn on virtualization-based protection of code integrity on the Windows 10 Fall Creators Update (version 1709) 

These steps apply to Windows 10 S, Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education. 

The following instructions are intended for Windows 10 client systems running the Fall Creators Update (version 1709) that have hypervisor support and that are not already using a [Windows Defender Application Control (WDAC)](https://blogs.technet.microsoft.com/mmpc/2017/10/23/introducing-windows-defender-application-control/) policy. 
If your device already has a WDAC policy (SIPolicy.p7b), please contact your IT administrator to request HVCI. 

> [!NOTE]
> You must be an administrator to perform this procedure. 

1. Download the [Enable HVCI cabinet file](http://download.microsoft.com/download/7/A/F/7AFBCDD1-578B-49B0-9B27-988EAEA89A8B/EnableHVCI.cab).

2. Open the cabinet file.

3. Right-click the SIPolicy.p7b file and extract it. Then move it to the following location: 

   C:\Windows\System32\CodeIntegrity

   > [!NOTE]
   > Do not perform this step if a SIPolicy.p7b file is already in this location.

4. Turn on the hypervisor:

   a. Click Start, type **Turn Windows Features on or off** and press ENTER. 

   b. Select **Hyper-V** > **Hyper-V Platform** > **Hyper-V Hypervisor** and click **OK**.  

      ![Turn Windows features on or off](images\turn-windows-features-on-or-off.png)

   c. After the installation completes, restart your computer. 

5. To confirm HVCI was successfully enabled, open **System Information** and check **Virtualization-based security Services Running**, which should now display **Hypervisor enforced Code Integrity**.      


## Troubleshooting

A. If a device driver fails to load or crashes at runtime, you may be able to update the driver using **Device Manager**.

B. If you experience software or device malfunction after using the above procedure to turn on HVCI, but you are able to log in to Windows, you can turn off HVCI by renaming or deleting the SIPolicy.p7b file from the file location in step 3 above and then restart your device.

C. If you experience a critical error during boot or your system is unstable after using the above procedure to turn on HVCI, you can recover using the Windows Recovery Environment (Windows RE). To boot to Windows RE, see [Windows RE Technical Reference](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference). After logging in to Windows RE, you can turn off HVCI by renaming or deleting the SIPolicy.p7b file from the file location in step 3 above and then restart your device.

## How to Turn off HVCI on the Windows 10 Fall Creators Update

1.	Rename or delete the SIPolicy.p7b file located at C:\Windows\System32\CodeIntegrity.
2.	Restart the device.
3.	To confirm HVCI has been successfully disabled, open System Information and check **Virtualization-based security Services Running**, which should now have no value displayed.
