---
title: How to Manage Computer BitLocker Encryption Exemptions
description: How to Manage Computer BitLocker Encryption Exemptions
author: dansimp
ms.assetid: d4400a0d-b36b-4cf5-a294-1f53ec47f9ee
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage Computer BitLocker Encryption Exemptions


Microsoft BitLocker Administration and Monitoring (MBAM) can be used to exempt certain computers from BitLocker protection. For example, an organization may decide to control BitLocker exemption on a computer-by-computer basis.

To exempt a computer from BitLocker encryption, you must add the computer to a security group in Active Directory Domain Services in order to bypass any computer-based BitLocker protection rules.

**Note**  
If the computer is already BitLocker-protected, the computer exemption policy has no effect.

 

**To exempt a computer from BitLocker encryption**

1.  Add the computer account that you want to be exempted to a security group in Active Directory Domain Services. This allows you to bypass any computer-based BitLocker protection rules.

2.  Create a Group Policy Object by using the MBAM Group Policy template, then associate the Group Policy Object with the Active Directory group that you created in the previous step. For more information about creating the necessary Group Policy Objects, see [Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md).

3.  When an exempted computer starts, the MBAM client checks the Computer Exemption Policy setting and suspends protection based on whether the computer is part of the BitLocker exemption security group.

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 





