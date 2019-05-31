---
title: Hiding the Default BitLocker Drive Encryption Item in Control Panel
description: Hiding the Default BitLocker Drive Encryption Item in Control Panel
author: dansimp
ms.assetid: 6e2a9a02-a809-43a1-80a3-1b03c7192c89
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Hiding the Default BitLocker Drive Encryption Item in Control Panel


This topic describes how to hide the **BitLocker Drive Encryption** Control Panel item, which appears by default on Control Panel as part of the Windows operating system.

**Note**  
Microsoft BitLocker Administration and Monitoring (MBAM) creates an additional, custom Control Panel item, called **BitLocker Encryption Options**, which enables end users to manage their PIN and password, turn on BitLocker for a drive, and check encryption.

 

See [Understanding the BitLocker Encryption Options and BitLocker Drive Encryption Items in Control Panel](understanding-the-bitlocker-encryption-options-and-bitlocker-drive-encryption-items-in-control-panel.md) to read about:

-   Differences between the MBAM and the default Control Panel items

-   **Manage BitLocker** shortcut menu that appears when you right-click a drive in Windows Explorer

**Important**  
Do not change the Group Policy settings in the **BitLocker Drive Encryption** node. If you do, MBAM will not work correctly. When you configure the Group Policy settings in the **MDOP MBAM (BitLocker Management)** node, MBAM automatically configures the **BitLocker Drive Encryption** settings for you.

 

**To hide the default BitLocker Drive Encryption item in Control Panel**

1.  In the Group Policy Management Console (GPMC) or in Advanced Group Policy Management, browse to **User configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Control Panel**.

2.  In the **Details** pane, double-click **Hide specified Control Panel items**, and then click **Enabled**.

3.  Click **Show**, click **Add**, and then type **Microsoft.BitLockerDriveEncryption**.



## Related topics


[Understanding the BitLocker Encryption Options and BitLocker Drive Encryption Items in Control Panel](understanding-the-bitlocker-encryption-options-and-bitlocker-drive-encryption-items-in-control-panel.md)

[Deploying MBAM 2.5 Group Policy Objects](deploying-mbam-25-group-policy-objects.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





