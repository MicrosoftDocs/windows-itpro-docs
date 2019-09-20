---
title: How to Manage User BitLocker Encryption Exemptions
description: How to Manage User BitLocker Encryption Exemptions
author: dansimp
ms.assetid: f582ab82-5bb5-4cd3-ad7c-483240533cf9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Manage User BitLocker Encryption Exemptions


Microsoft BitLocker Administration and Monitoring (MBAM) enables you to exempt users from BitLocker Drive Encryption requirements.

To exempt users from BitLocker protection, you have to:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create an infrastructure to support exempted users.</p></td>
<td align="left"><p>Examples of this infrastructure include providing users with a contact telephone number, webpage, or mailing address that they can use to request an exemption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Add the exempted user to a security group for a Group Policy Object that is configured specifically for exempted users.</p></td>
<td align="left"><p>When members of this security group sign in to a computer, the user’s Group Policy setting exempts the user from BitLocker protection. The user’s Group Policy setting overwrites the computer policy, and the computer will remain exempt from BitLocker encryption.</p>
<div class="alert">
<strong>Note</strong><br/><p>MBAM does not enact the encryption policy if the computer is already BitLocker-protected and the user is exempted. However, if another user who is not exempt from the encryption policy signs in to the computer, encryption will take place.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



The following steps describe what occurs when end users request an exemption from the BitLocker Drive Encryption exemption process through the MBAM Client or through whatever process your organization uses. You must configure MBAM Group Policy settings to allow end users to request an exemption from BitLocker Drive Encryption.

1.  When end users sign in to a computer that is required to be encrypted, they receive a notification that their computer is going to be encrypted. They can select **Request Exemption** and postpone the encryption by selecting **Postpone**, or they can select **Start Encryption** to accept the BitLocker encryption.

    **Note**  
    Selecting **Request Exemption** postpones the BitLocker protection until the maximum time that is set in the User Exemption Policy.



2.  If end users select **Request Exemption**, they receive a notification telling them to contact the organization’s BitLocker administration group. Depending on how the **Configure User Exemption Policy** is configured, users are provided with one or more of the following contact methods:

    -   Phone number

    -   Webpage URL

    -   Mailing address

3.  After the exemption request is received, the MBAM administrator decides whether to add the user to the BitLocker Exemption Active Directory Domain Services (AD DS) group.

4.  After an end user submits an exemption request, the MBAM Client reports the user as “Temporarily exempt.” The Client then waits a specified number of days, which IT administrators configure, before it checks the computer’s compliance again. If the MBAM administrator rejects the exemption request, the exemption request option is deactivated, which prevents the user from requesting the exemption again.

Microsoft BitLocker Administration and Monitoring (MBAM) enables you to exempt users from BitLocker Drive Encryption requirements.

To exempt users from BitLocker protection, you have to:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create an infrastructure to support exempted users.</p></td>
<td align="left"><p>Examples of this infrastructure include providing users with a contact telephone number, webpage, or mailing address that they can use to request an exemption.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Add the exempted user to a security group for a Group Policy Object that is configured specifically for exempted users.</p></td>
<td align="left"><p>When members of this security group sign in to a computer, the user’s Group Policy setting exempts the user from BitLocker protection. The user’s Group Policy setting overwrites the computer policy, and the computer will remain exempt from BitLocker encryption.</p>
<div class="alert">
<strong>Note</strong><br/><p>If the computer is already BitLocker-protected, the User Exemption Policy has no effect. In addition, if another user signs in to a computer that is not exempt from the encryption policy, encryption will take place.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



The following steps describe what occurs when end users request an exemption from the BitLocker Drive Encryption exemption process through the MBAM Client or through whatever process your organization uses. You must configure MBAM Group Policy settings to allow end users to request an exemption from BitLocker Drive Encryption.

1.  When end users sign in to a computer that is required to be encrypted, they receive a notification that their computer is going to be encrypted. They can select **Request Exemption** and postpone the encryption by selecting **Postpone**, or they can select **Start Encryption** to accept the BitLocker encryption.

    **Note**  
    Selecting **Request Exemption** postpones the BitLocker protection until the maximum time that is set in the User Exemption Policy.



2.  If end users select **Request Exemption**, they receive a notification telling them to contact the organization’s BitLocker administration group. Depending on how the **Configure User Exemption Policy** is configured, users are provided with one or more of the following contact methods:

    -   Phone number

    -   Webpage URL

    -   Mailing address

3.  After the exemption request is received, the MBAM administrator decides whether to add the user to the BitLocker Exemption Active Directory Domain Services (AD DS) group.

4.  After an end user submits an exemption request, the MBAM Client reports the user as “Temporarily exempt.” The Client then waits a specified number of days, which IT administrators configure, before it checks the computer’s compliance again. If the MBAM administrator rejects the exemption request, the exemption request option is deactivated, which prevents the user from requesting the exemption again.

**To exempt a user from BitLocker Drive Encryption**

1.  Create an AD DS security group that will be used to manage user exemptions from BitLocker encryption requirements.

2.  Create a Group Policy Object by using the Microsoft BitLocker Administration and Monitoring Group Policy Templates.

3.  Associate the Group Policy Object with the AD DS group that you created in the previous step. The policy settings to exempt users are located at: **UserConfiguration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)**.

4.  To the security group you created for BitLocker exempted users, add the names of the users who are requesting an exemption.

    When a user signs in to a computer controlled by BitLocker, the MBAM Client checks the User Exemption Policy setting. If the computer is already encrypted, BitLocker protection is not suspended. If the computer is not encrypted, MBAM does not prompt the user to encrypt.

    **Important**  
    Shared computer scenarios require special consideration when you are using BitLocker user exemptions. If a non-exempt user signs in to a computer that is shared with an exempt user, the computer may be encrypted.




## Related topics


[Administering MBAM 2.5 Features](administering-mbam-25-features.md)

[Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md)




## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




