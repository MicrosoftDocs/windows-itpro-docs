---
title: Save your BitLocker key (Surface Hub)
description: Every Microsoft Surface Hub is automatically set up with BitLocker drive encryption software. Microsoft strongly recommends that you make sure you back up your BitLocker recovery keys.
ms.assetid: E11E4AB6-B13E-4ACA-BCE1-4EDC9987E4F2
ms.reviewer: 
manager: dansimp
keywords: Surface Hub, BitLocker, Bitlocker recovery keys
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: medium
---

# Save your BitLocker key (Surface Hub)


Every Microsoft Surface Hub is automatically set up with BitLocker drive encryption software. Microsoft strongly recommends that you make sure you back up your BitLocker recovery keys.

There are several ways to manage your BitLocker key on the Surface Hub.

1.  If you’ve joined the Surface Hub to a domain, the device will back up the key on the domain and store it under the computer object.

    If you can’t find the BitLocker key after joining the device to a domain, it’s likely that your Active Directory schema doesn’t support BitLocker key backup. If you don’t want to change the schema, you can save the BitLocker key by going to Settings and following the procedure for using a local admin account, which is detailed later in this list.

2.  If you’ve joined the Surface Hub to Azure Active Directory (Azure AD), the BitLocker key will be stored under the account that was used to join the device.

3.  If you’re using an admin account to manage the device, you can save the BitLocker key by going to the **Settings** app and navigating to **Update & security** &gt; **Recovery**. Insert a USB drive and select the option to save the BitLocker key. The key will be saved to a text file on the USB drive.


## Related topics

[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





