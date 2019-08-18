---
title: Administering MBAM 2.0 Features
description: Administering MBAM 2.0 Features
author: msfttracyp
ms.assetid: 065e0704-069e-4372-9b86-0b57dd7638dd
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering MBAM 2.0 Features


After completing all necessary planning and then deploying Microsoft BitLocker Administration and Monitoring (MBAM), you can configure and use it to manage BitLocker encryption across the enterprise The information in this section describes post-installation day-to-day Microsoft BitLocker Administration and Monitoring feature operations tasks.

## Manage MBAM Administrator Roles


After MBAM Setup is complete for all server features, administrative users have to be granted access to them. As a best practice, administrators who will manage or use MBAM server features should be assigned to Active Directory Domain Services security groups, and then those groups should be added to the appropriate MBAM administrative local group.

[How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-2.md)

## Manage BitLocker Encryption Exemptions


MBAM lets you grant encryption exemptions to specific users who do not need or want their drives encrypted. Computer exemption is typically used when a company has computers that do not have to be encrypted, such as computers that are used in development or testing, or older computers that do not support BitLocker. In some cases, local law may also require that certain computers are not encrypted.

[How to Manage User BitLocker Encryption Exemptions](how-to-manage-user-bitlocker-encryption-exemptions-mbam-2.md)

## Manage MBAM Client BitLocker Encryption Options by Using the Control Panel


MBAM provides a custom control panel, called BitLocker Encryption Options, that will appear under **System and Security**. The MBAM control panel can be used to unlock encrypted fixed and removable drives, and also manage your PIN or password.

**Note**  
This customized control panel does not replace the default Windows BitLocker control panel.

 

[How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel](how-to-manage-mbam-client-bitlocker-encryption-options-by-using-the-control-panel-mbam-2.md)

## Other Resources for Administering MBAM Features


[Operations for MBAM 2.0](operations-for-mbam-20-mbam-2.md)

 

 





