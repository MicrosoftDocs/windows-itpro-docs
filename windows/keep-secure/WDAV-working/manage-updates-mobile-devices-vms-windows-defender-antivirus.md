---
title: Define how mobile devices are updated by Windows Defender AV
description: Manage how mobile devices, such as laptops, should be updated with Windows Defender AV protection updates.
keywords: updates, protection, schedule updates, battery, mobile device, laptop, notebook, opt-in, microsoft update, wsus, override
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Manage updates for mobile devices and virtual machines (VMs)

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)



Mobile devices and VMs may require additional configuration to ensure performance is not impacted by updates.

There are a number of settings that are particularly useful for these devices:

- Opt-in to Microsoft Update on mobile computers without a WSUS connection
- Allow definition updates when running on battery power

Also see the [Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure (VDI) environment](deployment-vdi-windows-defender-antivirus.md).


### Opt-in to Microsoft Update on mobile computers without a WSUS connection

You can use Microsoft Update to keep definitions on mobile devices running Windows Defender AV up to date when they are not connected to the corporate network or don't otherwise have a WSUS connection. 

This means that protection updates can be delivered to devices (via Microsoft Update) even if WSUS overrides Microsoft Update.

You can opt-in to Microsoft Update on the mobile device in one of the following ways:

1.  Use a VBScript to create a script, then run it on each computer in your network.
2.  Manually opt-in every computer on your network through the **Settings** menu.

**Use a VBScript to opt-in to Microsoft Update**

1.  Use the instructions in the MSDN article [Opt-In to Microsoft Update](https://msdn.microsoft.com/library/windows/desktop/aa826676.aspx) to create the VBScript.
2.  Run the VBScript you created on each computer in your network.


**Manually opt-in to Microsoft Update**

1.  Open **Windows Update** in **Update & security** settings on the computer you want to opt-in.
2.  Click **Advanced** options.
3.  Select the checkbox for **Give me updates for other Microsoft products when I update Windows**.







## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)
