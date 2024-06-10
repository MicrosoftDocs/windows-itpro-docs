---
title: Device & performance health in Windows Security
description: Use the Device & performance health section to see the status of the machine and note any storage, update, battery, driver, or hardware configuration issues
ms.date: 07/31/2023
ms.topic: how-to
---


# Device performance and health

The **Device performance & health** section contains information about hardware, devices, and drivers related to the machine. IT administrators and IT pros should reference the appropriate documentation library for the issues they're seeing, such as the [configure the Load and unload device drivers security policy setting](/windows/device-security/security-policy-settings/load-and-unload-device-drivers) and how to [deploy drivers during Windows 10 deployment using Microsoft Configuration Manager](/windows/deployment/deploy-windows-cm/add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager).

The [Windows 10 IT pro troubleshooting article](/windows/client-management/windows-10-support-solutions), and the main [Windows 10 documentation library](/windows/windows-10/) can also be helpful for resolving issues.

This section can be hidden from users of the machine. This option can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.

## Hide the Device performance & health section

You can choose to hide the entire section by using Group Policy. The section won't appear on the home page of **Windows Security**, and its icon won't be shown on the navigation bar on the side.

This section can be hidden only by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.
1. In **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.
1. Expand the tree to **Windows components > Windows Security > Device performance and health**.
1. Open the **Hide the Device performance and health area** setting and set it to **Enabled**. Select **OK**.
1. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

> [!NOTE]
> If you hide all sections then **Windows Security** will show a restricted interface, as in the following screenshot:
>
> ![Screenshot of the Windows Security with all sections hidden by Group Policy.](images/wdsc-all-hide.png)
