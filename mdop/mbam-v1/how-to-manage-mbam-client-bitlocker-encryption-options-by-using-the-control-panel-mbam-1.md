---
title: How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel
description: How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel
author: msfttracyp
ms.assetid: c08077e1-5529-468f-9370-c3b33fc258f3
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


A Microsoft BitLocker Administration and Monitoring (MBAM) control panel application, called BitLocker Encryption Options, will be available under **System and Security** when the MBAM Client is installed. This customized MBAM control panel replaces the default Windows BitLocker control panel. The MBAM control panel enables you to unlock encrypted drives (fixed and removable), and also helps you manage your PIN or password. For more information about enabling the MBAM control panel, see [How to Hide Default BitLocker Encryption in The Windows Control Panel](how-to-hide-default-bitlocker-encryption-in-the-windows-control-panel.md).

**Note**  
For the BitLocker client, the Admin and Operational log files are located in Event Viewer, under **Application and Services Logs** / **Microsoft** / **Windows** / **BitLockerManagement**.

 

**To use the MBAM Client Control Panel**

1.  To open BitLocker Encryption Options, click **Start**, and then select **Control Panel**. When **Control Panel** opens, select **System and Security**.

2.  Double-click **BitLocker Encryption Options** to open the customized MBAM control panel. You will see a list of all the hard disk drives on the computer and their encryption status. You will also see an option to manage your PIN or passwords.

3.  Use the list of hard disk drives on the computer to verify the encryption status, unlock a drive, or request an exemption for BitLocker protection if the User and Computer Exemption policies have been deployed.

4.  Non-administrators can use the BitLocker Encryption Options control panel to manage PINs or passwords. A user can select **Manage PIN,** and then enter both a current PIN and a new PIN. Users can also confirm their new PIN. The **Update PIN** function will reset the PIN to the new one that the user selects.

5.  To manage your password, select **Unlock drive** and enter your current password. As soon as the drive is unlocked, select **Reset Password** to change your current password.

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 





