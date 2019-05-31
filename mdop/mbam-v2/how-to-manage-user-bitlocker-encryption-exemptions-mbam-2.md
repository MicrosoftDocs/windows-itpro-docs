---
title: How to Manage User BitLocker Encryption Exemptions
description: How to Manage User BitLocker Encryption Exemptions
author: msfttracyp
ms.assetid: 1bfd9d66-6a9a-4d0e-b54a-e5a6627f5ada
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Manage User BitLocker Encryption Exemptions


Microsoft BitLocker Administration and Monitoring (MBAM) can be used to manage BitLocker protection by exempting users if there are users who do not need or want their drives encrypted.

To exempt users from BitLocker protection, an organization will have to create an infrastructure to support exempted users, such as giving the user a contact telephone number, webpage, or mailing address to use to request an exemption. Also, an exempt user will have to be added to a security group for a Group Policy Object that was created specifically for exempted users. When members of this security group log on to a computer, the user’s Group Policy setting shows that the user is exempted from BitLocker protection. The user’s Group Policy setting overwrites the computer policy, and the computer will remain exempt from BitLocker encryption.

**Note**  
If the computer is already BitLocker-protected, the user exemption policy has no effect.

 

The following table shows how BitLocker protection is applied based on how exemptions are set.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">User Status</th>
<th align="left">Computer Not Exempt</th>
<th align="left">Computer Exempt</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>User not exempt</strong></p></td>
<td align="left"><p>BitLocker protection is enforced on computer</p></td>
<td align="left"><p>BitLocker protection is not enforced on computer</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User exempt</strong></p></td>
<td align="left"><p>BitLocker protection is not enforced on computer</p></td>
<td align="left"><p>BitLocker protection is not enforced on computer</p></td>
</tr>
</tbody>
</table>

 

**To exempt a user from BitLocker encryption**

1.  Create an Active Directory Domain Services security group that will be used to manage user exemptions from BitLocker encryption requirements.

2.  Create a Group Policy Object setting by using the Microsoft BitLocker Administration and Monitoring Group Policy template and associate it with the Active Directory group that you created in the previous step. The policy settings to exempt users can be found under **UserConfiguration\\Administrative Templates\\Windows Components\\MDOP MBAM (BitLocker Management)**.

3.  After creating a security group for BitLocker-exempted users, add to this group the names of the users who are requesting an exemption. When users log on to a computer controlled by BitLocker, the MBAM client will check the User Exemption Policy setting and will suspend protection based on whether the user is part of the BitLocker exemption security group.

    **Important**  
    Shared computer scenarios require special consideration when using user exemptions. If a non-exempt user logs on to a computer shared with an exempt user, the computer may be encrypted.

     

**To enable users to request an exemption from BitLocker encryption**

1.  If you have configured user exemption policies by using the MBAM policy template, a user can request an exemption from BitLocker protection through the MBAM client.

2.  When users log on to a computer that is required to be encrypted, they receive a notification that their computer is going to be encrypted. They can select **Request Exemption** and postpone the encryption by selecting **Later**, or select **Start** to accept the BitLocker encryption.

    **Note**  
    Selecting **Request Exemption** postpones the BitLocker protection until the maximum time that is set in the User Exemption Policy.

     

3.  If users select **Request Exemption**, they receive a notification telling them to contact your organization’s BitLocker administration group. Depending on how the Configure User Exemption Policy is configured, users are provided with one or more of the following contact methods:

    -   Phone Number

    -   Webpage URL

    -   Mailing Address

    After the exemption request is received, the MBAM Administrator can take decide if it is appropriate to add the user to the BitLocker Exemption Active Directory group.

    **Note**  
    Once a user submits an exemption request, the MBAM agent reports the user as “temporarily exempt” and then waits a configurable number of days before it checks the computer’s compliance again. If the MBAM administrator rejects the exemption request, the exemption request option is deactivated, which prevents the user from being able to request the exemption again.

     

## Related topics


[Administering MBAM 2.0 Features](administering-mbam-20-features-mbam-2.md)

 

 





