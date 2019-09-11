---
title: How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel
description: How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel
author: dansimp
ms.assetid: e2ff153e-5770-4a12-b79d-cda998b8a8ab
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel


A Microsoft BitLocker Administration and Monitoring (MBAM) control panel application, called BitLocker Encryption Options, will be available under **System and Security** when the Microsoft BitLocker Administration and Monitoring Client is installed. This custom MBAM control panel is an additional control panel. It does not replace the default Windows BitLocker control panel. The MBAM control panel can be used to unlock encrypted fixed and removable drives, and also manage your PIN or password. For more information about enabling the MBAM control panel, see [How to Hide Default BitLocker Encryption in the Windows Control Panel](how-to-hide-default-bitlocker-encryption-in-the-windows-control-panel-mbam-2.md).

**To use the MBAM Client Control Panel**

1.  To open BitLocker Encryption Options, click **Start** and then select **Control Panel**. When **Control Panel** opens, select **System and Security**.

2.  Double-click **BitLocker Encryption Options** to open the customized MBAM control panel. You will see a list of all the hard disk drives on the computer and their encryption status, in addition to an option to manage your PIN or passwords.

    The list of hard disk drives on the computer can be used to verify encryption status, unlock a drive, or request an exemption for BitLocker protection if the User and Computer Exemption policies have been deployed.

    The BitLocker Encryption Options control panel also allows for non-administrator users to manage their PIN or passwords. By selecting **Manage PIN**, users are prompted to enter both a current PIN and a new PIN (in addition to confirming the new PIN). Selecting **Update PIN** will reset the PIN to the new one that the users selected.

    To manage your password, select **Unlock drive** and enter your current password. As soon as the drive is unlocked, select **Reset Password** to change your current password.

## Related topics


[Administering MBAM 2.0 Features](administering-mbam-20-features-mbam-2.md)

 

 





