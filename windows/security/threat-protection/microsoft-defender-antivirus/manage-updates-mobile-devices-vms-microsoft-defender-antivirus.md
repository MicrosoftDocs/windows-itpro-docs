---
title: Define how mobile devices are updated by Microsoft Defender Antivirus
description: Manage how mobile devices, such as laptops, should be updated with Microsoft Defender Antivirus protection updates.
keywords: updates, protection, schedule updates, battery, mobile device, laptop, notebook, opt-in, microsoft update, wsus, override
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Manage updates for mobile devices and virtual machines (VMs)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Mobile devices and VMs may require more configuration to ensure performance is not impacted by updates.

There are two settings that are useful for these devices:

- Opt in to Microsoft Update on mobile computers without a WSUS connection
- Prevent Security intelligence updates when running on battery power

The following articles may also be useful in these situations:
- [Configuring scheduled and catch-up scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md)
- [Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)
- [Deployment guide for Microsoft Defender Antivirus in a virtual desktop infrastructure (VDI) environment](deployment-vdi-microsoft-defender-antivirus.md)

## Opt in to Microsoft Update on mobile computers without a WSUS connection

You can use Microsoft Update to keep Security intelligence on mobile devices running Microsoft Defender Antivirus up to date when they are not connected to the corporate network or don't otherwise have a WSUS connection. 

This means that protection updates can be delivered to devices (via Microsoft Update) even if you have set WSUS to override Microsoft Update.

You can opt in to Microsoft Update on the mobile device in one of the following ways:

- Change the setting with Group Policy.
- Use a VBScript to create a script, then run it on each computer in your network.
- Manually opt in every computer on your network through the **Settings** menu.

### Use Group Policy to opt in to Microsoft Update

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Select **Policies** then **Administrative templates**.

4. Expand the tree to **Windows components** > **Microsoft Defender Antivirus** > **Signature Updates**.

5. Set **Allow security intelligence updates from Microsoft Update** to **Enabled**, and then select  **OK**.


### Use a VBScript to opt in to Microsoft Update

1. Use the instructions in the MSDN article [Opt-In to Microsoft Update](/windows/win32/wua_sdk/opt-in-to-microsoft-update) to create the VBScript.

2. Run the VBScript you created on each computer in your network.

### Manually opt in to Microsoft Update

1. Open **Windows Update** in **Update & security** settings on the computer you want to opt in.

2. Select **Advanced** options.

3. Select the checkbox for **Give me updates for other Microsoft products when I update Windows**.

## Prevent Security intelligence updates when running on battery power

You can configure Microsoft Defender Antivirus to only download protection updates when the PC is connected to a wired power source. 

### Use Group Policy to prevent security intelligence updates on battery power

1.  On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), choose the Group Policy Object you want to configure, and open it for editing.

2.  In the **Group Policy Management Editor** go to **Computer configuration**.

3.  Select **Policies** then **Administrative templates**.

4.  Expand the tree to **Windows components** > **Microsoft Defender Antivirus** > **Signature Updates**, and then set **Allow security intelligence updates when running on battery power** to **Disabled**. Then select **OK**. 

This action prevents protection updates from downloading when the PC is on battery power.

## Related articles

- [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md)
- [Update and manage Microsoft Defender Antivirus in Windows 10](deploy-manage-report-microsoft-defender-antivirus.md)