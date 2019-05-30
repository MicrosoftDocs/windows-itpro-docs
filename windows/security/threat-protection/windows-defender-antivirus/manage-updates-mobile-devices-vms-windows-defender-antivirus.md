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
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
---

# Manage updates for mobile devices and virtual machines (VMs)

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Mobile devices and VMs may require additional configuration to ensure performance is not impacted by updates.

There are two settings that are particularly useful for these devices:

- Opt-in to Microsoft Update on mobile computers without a WSUS connection
- Prevent Security intelligence updates when running on battery power

The following topics may also be useful in these situations:
- [Configuring scheduled and catch-up scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
- [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
- [Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure (VDI) environment](deployment-vdi-windows-defender-antivirus.md)

## Opt-in to Microsoft Update on mobile computers without a WSUS connection

You can use Microsoft Update to keep Security intelligence on mobile devices running Windows Defender Antivirus up to date when they are not connected to the corporate network or don't otherwise have a WSUS connection. 

This means that protection updates can be delivered to devices (via Microsoft Update) even if you have set WSUS to override Microsoft Update.

You can opt-in to Microsoft Update on the mobile device in one of the following ways:

1. Change the setting with Group Policy
2. Use a VBScript to create a script, then run it on each computer in your network.
3. Manually opt-in every computer on your network through the **Settings** menu.

**Use Group Policy to opt-in to Microsoft Update:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates**.

6.  Double-click the **Allow definition updates from Microsoft Update** setting and set the option to **Enabled**. Click **OK**.


**Use a VBScript to opt-in to Microsoft Update**

1.  Use the instructions in the MSDN article [Opt-In to Microsoft Update](https://msdn.microsoft.com/library/windows/desktop/aa826676.aspx) to create the VBScript.
2.  Run the VBScript you created on each computer in your network.


**Manually opt-in to Microsoft Update**

1.  Open **Windows Update** in **Update & security** settings on the computer you want to opt-in.
2.  Click **Advanced** options.
3.  Select the checkbox for **Give me updates for other Microsoft products when I update Windows**.

## Prevent Security intelligence updates when running on battery power

You can configure Windows Defender Antivirus to only download protection updates when the PC is connected to a wired power source. 

**Use Group Policy to prevent definition updates on battery power:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Signature Updates** and configure the following setting:

    1. Double-click the **Allow definition updates when running on battery power** setting and set the option to **Disabled**. 
    2. Click **OK**. This will prevent protection updates from downloading when the PC is on battery power.





## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender Antivirus in Windows 10](deploy-manage-report-windows-defender-antivirus.md)
