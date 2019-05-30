---
title: Device & performance health in the Windows Security app
description: Use the Device & performance health section to see the status of the machine and note any storage, update, battery, driver, or hardware configuration issues
keywords: wdsc, windows update, storage, driver, device, installation, battery, health, status
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 04/30/2018
---


# Device performance and health

**Applies to**

- Windows 10, version 1703 and later


The **Device performance & health** section contains information about hardware, devices, and drivers related to the machine. IT administrators and IT pros should reference the appropriate documentation library for the issues they are seeing, such as the [configure the Load and unload device drivers security policy setting](https://docs.microsoft.com/windows/device-security/security-policy-settings/load-and-unload-device-drivers) and how to [deploy drivers during Windows 10 deployment using System Center Configuration Manager](https://docs.microsoft.com/windows/deployment/deploy-windows-sccm/add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager).

The [Windows 10 IT pro troubleshooting topic](https://docs.microsoft.com/windows/client-management/windows-10-support-solutions), and the main [Windows 10 documentation library](https://docs.microsoft.com/windows/windows-10/) can also be helpful for resolving issues.


In Windows 10, version 1709 and later, the section can be hidden from users of the machine. This can be useful if you don't want employees in your organization to see or have access to user-configured options for the features shown in the section.


## Hide the Device performance & health section

You can choose to hide the entire section by using Group Policy. The section will not appear on the home page of the Windows Security app, and its icon will not be shown on the navigiation bar on the side of the app.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Device performance and health**.

6.  Open the **Hide the Device performance and health area** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

>[!NOTE]
>If you hide all sections then the app will show a restricted interface, as in the following screenshot:
>  
>![Windows Security app with all sections hidden by Group Policy](images/wdsc-all-hide.png)
