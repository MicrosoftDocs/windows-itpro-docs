---
title: How to Hide Default BitLocker Encryption in the Windows Control Panel
description: How to Hide Default BitLocker Encryption in the Windows Control Panel
author: msfttracyp
ms.assetid: 6674aa51-2b5d-4e4a-8b43-2cc18d008285
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Hide Default BitLocker Encryption in the Windows Control Panel


Microsoft BitLocker Administration and Monitoring (MBAM) offers a customized control panel for Microsoft BitLocker Administration and Monitoring client computers, called BitLocker Encryption Options. This customized control panel can replace the default Windows BitLocker control panel, which is called BitLocker Drive Encryption. The customized control panel, which is in Control Panel under System and Security, enables users to manage their PIN and passwords and to unlock drives, and hides the interface that enables administrators to decrypt a drive or to suspend or resume BitLocker drive encryption.

**To hide default BitLocker drive encryption in Windows Control Panel**

1.  In the Group Policy Management Console (GPMC), the Advanced Group Policy Management (AGPM), or the Local Group Policy Editor on the BitLocker Group Policies computer, browse to **User configuration**.

2.  Next, click **Policies**, select **Administrative Templates**, and then click **Control Panel**.

3.  Double-click **Hide specified Control Panel items** in the **Details** pane, and then select **Enabled**.

4.  Click **Show**, click **Add**, and then type **Microsoft.BitLockerDriveEncryption**. This policy hides the default Windows BitLocker Management tool from the Windows Control Panel and, in Control Panel, lets the user open the updated MBAM BitLocker Encryption Options tool under System and Security.

## Related topics


[Deploying MBAM 2.0 Group Policy Objects](deploying-mbam-20-group-policy-objects-mbam-2.md)

 

 





