---
title: How to Recover a Corrupted Drive
description: How to Recover a Corrupted Drive
author: dansimp
ms.assetid: fa5b846b-dda6-4ae4-bf6c-39e4f1d8aa00
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Recover a Corrupted Drive


You can use this procedure with the Administration and Monitoring Website (also referred to as the Help Desk) Website to recover a corrupted drive that is protected by BitLocker. To do this, you will complete the tasks outlined in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Details and more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create a recovery key package file by accessing the <strong>Drive Recovery</strong> area of the Administration and Monitoring Website.</p></td>
<td align="left"><p>To access the <strong>Drive Recovery</strong> area, you must be assigned the MBAM Helpdesk Users role or the MBAM Advanced Helpdesk Users role. You may have given these roles different names when you created them. For more information, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md#bkmk-helpdesk-roles).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Copy the package file to the computer that contains the corrupted drive.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Use the <code>repair-bde</code> command to complete the recovery process.</p></td>
<td align="left"><p>To avoid a potential loss of data, it is strongly recommended that you review the [Manage-bde](https://go.microsoft.com/fwlink/?LinkId=393567) command before using it.</p></td>
</tr>
</tbody>
</table>

 

**To recover a corrupted drive**

1.  Open a web browser and navigate to the **Administration and Monitoring Website**.

2.  In the left pane, select **Drive Recovery** to open the **Recover access to an encrypted drive** page.

3.  Enter the end user’s Windows log-on domain and user name, the reason for unlocking the drive, and the end user’s recovery password ID.

    **Note**  
    If you are a member of the Advanced Helpdesk Users access group, you do not have to enter the user’s domain name or user name.

     

4.  Click **Submit**. The recovery key will be displayed.

5.  Click **Save**, and then select **Recovery Key Package**. The recovery key package will be created on your computer.

6.  Copy the recovery key package to the computer that has the corrupted drive.

7.  Open an elevated command prompt. To do this, click **Start** and type `cmd` in the **Search programs and files** text box. Right-click **cmd.exe**, and select **Run as Administrator**.

8.  At the command prompt, type the following:

    `repair-bde <corrupted drive> <fixed drive> -kp <location of keypackage> -rp <recovery password>`

    **Note**  
    Replace &lt;*fixed drive*&gt; with an available hard disk drive that has free space equal to or larger than the data on the corrupted drive. Data on the corrupted drive is recovered and moved to the specified hard disk drive.

     


## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





