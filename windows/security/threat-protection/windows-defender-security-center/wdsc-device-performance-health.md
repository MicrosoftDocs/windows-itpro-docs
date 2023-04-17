---
title: Device & performance health in the Windows Security app
description: Use the Device & performance health section to see the status of the machine and note any storage, update, battery, driver, or hardware configuration issues
ms.date: 12/31/2018
ms.prod: windows-client
author: vinaypamnani-msft
ms.author: vinpa
ms.technology: itpro-security
ms.topic: article
---


# Device performance and health

**Applies to**

- Windows 10
- Windows 11


The **Device performance & health** section contains information about hardware, devices, and drivers related to the machine. IT administrators and IT pros should reference the appropriate documentation library for the issues they're seeing, such as the [configure the Load and unload device drivers security policy setting](/windows/device-security/security-policy-settings/load-and-unload-device-drivers) and how to [deploy drivers during Windows 10 deployment using Microsoft Configuration Manager](/windows/deployment/deploy-windows-cm/add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager).

The [Windows 10 IT pro troubleshooting topic](/windows/client-management/windows-10-support-solutions), and the main [Windows 10 documentation library](/windows/windows-10/) can also be helpful for resolving issues.


In Windows 10, version 1709 and later, the section can be hidden from users of the machine. This option can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.


## Hide the Device performance & health section

You can choose to hide the entire section by using Group Policy. The section won't appear on the home page of the Windows Security app, and its icon won't be shown on the navigation bar on the side of the app.

This section can be hidden only by using Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In **Group Policy Management Editor**, go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Device performance and health**.

6.  Open the **Hide the Device performance and health area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy). 

>[!NOTE]
>If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>  
>![Windows Security app with all sections hidden by Group Policy.](images/wdsc-all-hide.png)