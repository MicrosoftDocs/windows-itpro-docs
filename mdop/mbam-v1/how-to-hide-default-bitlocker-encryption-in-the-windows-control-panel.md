---
title: How to Hide Default BitLocker Encryption in The Windows Control Panel
description: How to Hide Default BitLocker Encryption in The Windows Control Panel
author: msfttracyp
ms.assetid: c8503743-220c-497c-9785-e2feeca484d6
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Hide Default BitLocker Encryption in The Windows Control Panel


Microsoft BitLocker Administration and Monitoring (MBAM) offers a customized control panel for MBAM client computers that is named called BitLocker Encryption Options. This customized control panel can replace the default Windows BitLocker control panel that is named BitLocker Drive Encryption. The BitLocker Encryption Options control panel, located under System and Security in the Windows control panel, enables users to manage their PIN and passwords, unlock drives, and hides the interface that allows administrators to decrypt a drive or to suspend or resume BitLocker encryption.

**To hide default BitLocker Encryption in the Windows Control Panel**

1.  Browse to **User configuration** by using the Group Policy Management Console (GPMC), the Advanced Group Policy Management (AGPM), or the Local Group Policy Editor on the BitLocker Group Policies computer.

2.  Click **Policies**, select **Administrative Templates**, and then click **Control Panel**.

3.  In the **Details** pane, double-click **Hide specified Control Panel items**, and then select **Enabled**.

4.  Click **Show**, **click Add…**, and then type Microsoft.BitLockerDriveEncryption. This policy hides the default Windows BitLocker Management tool from the Windows Control Panel and allows the user to open the updated MBAM BitLocker Encryption Options tool from the Windows Control Panel.

## Related topics


[Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md)

 

 





