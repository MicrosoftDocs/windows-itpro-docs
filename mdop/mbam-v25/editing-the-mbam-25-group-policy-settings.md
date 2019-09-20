---
title: Editing the MBAM 2.5 Group Policy Settings
description: Editing the MBAM 2.5 Group Policy Settings
author: dansimp
ms.assetid: a50b6b0c-6818-4419-8447-d0520a533dba
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Editing the MBAM 2.5 Group Policy Settings


To successfully deploy Microsoft BitLocker Administration and Monitoring (MBAM), you have to:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Copy the MBAM 2.5 Group Policy Templates.</p></td>
<td align="left"><p><a href="copying-the-mbam-25-group-policy-templates.md" data-raw-source="[Copying the MBAM 2.5 Group Policy Templates](copying-the-mbam-25-group-policy-templates.md)">Copying the MBAM 2.5 Group Policy Templates</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>Determine which Group Policy Objects (GPOs) you want to use in your MBAM implementation. Based on the needs of your organization, you might have to configure additional Group Policy settings.</p></td>
<td align="left"><p><a href="planning-for-mbam-25-group-policy-requirements.md" data-raw-source="[Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md)">Planning for MBAM 2.5 Group Policy Requirements</a> – contains descriptions of the GPOs</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Set the Group Policy settings for your organization.</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

**Important**  
Do not change the Group Policy settings in the **BitLocker Drive Encryption** node, or MBAM will not work correctly. When you configure the Group Policy settings in the **MDOP MBAM (BitLocker Management)** node, MBAM automatically configures the **BitLocker Drive Encryption** settings for you.

 

**To edit MBAM Client Group Policy settings**

1.  On a computer that has the MBAM Group Policy Templates installed, make sure that MBAM Services are enabled.

2.  Using the Group Policy Management Console (GPMC.msc) or the Microsoft Advanced Group Policy Management MDOP product on a computer with the MBAM Group Policy Templates installed, select **Computer configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)**.

3.  Edit the Group Policy settings that are required to enable MBAM Client services on client computers. For each policy in the following table, select **Policy Group**, click the **Policy** you want, and then configure the settings.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Policy Group</th>
    <th align="left">Policy</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Client Management</p></td>
    <td align="left"><p>Configure MBAM Services</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Operating System Drive</p></td>
    <td align="left"><p>Operating system drive encryption settings</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Removable Drive</p></td>
    <td align="left"><p>Control use of BitLocker on removable drives</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Fixed Drive</p></td>
    <td align="left"><p>Control use of BitLocker on fixed drives</p></td>
    </tr>
    </tbody>
    </table>

     

## Related topics


[Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md)

[Copying the MBAM 2.5 Group Policy Templates](copying-the-mbam-25-group-policy-templates.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





