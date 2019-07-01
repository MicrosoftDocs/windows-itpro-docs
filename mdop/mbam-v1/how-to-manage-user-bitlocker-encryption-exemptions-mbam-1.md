---
title: How to Manage User BitLocker Encryption Exemptions
description: How to Manage User BitLocker Encryption Exemptions
author: msfttracyp
ms.assetid: 48d69721-504f-4524-8a04-b9ce213ac9b4
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


Microsoft BitLocker Administration and Monitoring (MBAM) can be used to manage BitLocker protection by exempting users who do not need or want their drives encrypted.

To exempt users from BitLocker protection, an organization must first create an infrastructure to support such exemptions. The supporting infrastructure might include a contact telephone number, webpage, or mailing address to request exemption. Also, any exempt user will have to be added to a security group for Group Policy created specifically for exempted users. When members of this security group log on to a computer, the user Group Policy shows that the user is exempted from BitLocker protection. The user policy overwrites the computer policy, and the computer will remain exempt from BitLocker encryption.

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
<td align="left"><p>BitLocker protection is enforced on the computer.</p></td>
<td align="left"><p>BitLocker protection is not enforced on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User exempt</strong></p></td>
<td align="left"><p>BitLocker protection is not enforced on the computer.</p></td>
<td align="left"><p>BitLocker protection is not enforced on the computer.</p></td>
</tr>
</tbody>
</table>

 

**To exempt a user from BitLocker Encryption**

1.  Create an Active Directory Domain Services security group that will be used to manage user exemptions from BitLocker encryption.

2.  Create a Group Policy Object setting by using the MBAM Group Policy template. Associate the Group Policy Object with the Active Directory group that you created in the previous step. For more information about the necessary policy settings to enable users to request exemption from BitLocker encryption, see the Configure User Exemption Policy section in [Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md).

3.  After creating a security group for BitLocker-exempted users, add to this group the names of the users who are requesting exemption. When a user logs on to a computer controlled by BitLocker, the MBAM client will check the User Exemption Policy setting and will suspend protection based on whether the user is part of the BitLocker exemption security group.

    **Note**  
    Shared computer scenarios require special consideration regarding user exemption. If a non-exempt user logs on to a computer shared with an exempt user, the computer may be encrypted.

     

**To enable users to request exemption from BitLocker Encryption**

1.  After you have configured user-exemption policies by usingwith the MBAM Policy template, a user can request exemption from BitLocker protection through the MBAM client.

2.  When a user logs on to a computer that is marked as **Compatible** in the MBAM Hardware Compatibility list, the system presents the user with a notification that the computer is going to be encrypted. The user can select **Request Exemption** and postpone the encryption by selecting **Later**, or select **Start** to accept the BitLocker encryption.

    **Note**  
    Selecting **Request Exemption** will postpone the BitLocker protection until the maximum time set in the User Exemption Policy.

     

3.  When a user selects **Request Exemption**, the user is notified to contact the organization's BitLocker administration group. Depending on how the Configure User Exemption Policy is configured, users are provided with one or more of the following contact methods:

    -   Phone Number

    -   Webpage URL

    -   Mailing Address

    After submittal of the request, the MBAM Administrator can decide if it is appropriate to add the user to the BitLocker Exemption Active Directory group.

    **Note**  
    Once the postpone time limit from the User Exemption Policy has expired, users will not see the option to request exemption to the encryption policy. At this point, users must contact the MBAM administrator directly in order to receive exemption from BitLocker Protection.

     

## Related topics


[Administering MBAM 1.0 Features](administering-mbam-10-features.md)

 

 





