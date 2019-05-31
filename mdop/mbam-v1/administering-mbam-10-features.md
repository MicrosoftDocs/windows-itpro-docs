---
title: Administering MBAM 1.0 Features
description: Administering MBAM 1.0 Features
author: msfttracyp
ms.assetid: dd9a9eff-f1ad-4af3-85d9-c19131a4ad22
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Administering MBAM 1.0 Features


After you complete all necessary Microsoft BitLocker Administration and Monitoring (MBAM) planning and deployment, you can configure and use MBAM to manage enterprise BitLocker encryption. The information in this section describes post-installation day-to-day MBAM feature operations tasks.

## Manage MBAM Administrator Roles


After MBAM Setup is complete for all server features, administrative users must be granted access to these server features. As a best practice, administrators who will manage or use MBAM server features, should be assigned to Active Directory security groups and then those groups should be added to the appropriate MBAM administrative local group.

[How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-1.md)

## Manage Hardware Compatibility


The MBAM Hardware Compatibility feature can help you to ensure that only the computer hardware that you specify as supporting BitLocker will be encrypted. When this feature is turned on, bit\_admmontla will encrypt only computers that are marked as Compatible.

**Important**  
When this feature is turned off, all computers where the MBAM policy is deployed will be encrypted.

 

MBAM can collect information on both the make and model of client computers if you deploy the “Allow Hardware Compatibility Checking” Group Policy. If you configure this policy, the MBAM agent reports the computer make and model information to the MBAM Server when the MBAM Client is deployed on a client computer.

[How to Manage Hardware Compatibility](how-to-manage-hardware-compatibility-mbam-1.md)

[How to Manage User BitLocker Encryption Exemptions](how-to-manage-user-bitlocker-encryption-exemptions-mbam-1.md)

## Manage BitLocker encryption exemptions


MBAM can grant two forms of exemption from BitLocker encryption: computer exemption and user exemption. Computer exemption is typically used when a company has computers that do not have to be encrypted, such as computers that are used in development or testing, or older computers that do not support BitLocker. In some cases, local law may also require that certain computers are not encrypted. You may also choose to exempt users who do not need or want their drives encrypted.

[How to Manage Computer BitLocker Encryption Exemptions](how-to-manage-computer-bitlocker-encryption-exemptions.md)

## Manage MBAM Client BitLocker Encryption Options by using the Control Panel


If enabled through a Group Policy Objects (GPO), a custom MBAM control panel that is named BitLocker Encryption Options will be available under **System and Security**. This customized control panel replaces the default Windows BitLocker control panel. The MBAM control panel enables you to unlock encrypted drives (fixed and removable), and also helps you manage your PIN or password.

[How to Manage MBAM Client BitLocker Encryption Options by Using the Control Panel](how-to-manage-mbam-client-bitlocker-encryption-options-by-using-the-control-panel-mbam-1.md)

## Other resources for Administering MBAM features


[Operations for MBAM 1.0](operations-for-mbam-10.md)

 

 





