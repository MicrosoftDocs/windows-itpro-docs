---
title: How to Edit MBAM 2.0 GPO Settings
description: How to Edit MBAM 2.0 GPO Settings
author: msfttracyp
ms.assetid: f5ffa93d-b4d2-4317-8a1c-7d2be0264fe3
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Edit MBAM 2.0 GPO Settings


To successfully deploy Microsoft BitLocker Administration and Monitoring (MBAM), you first have to determine the Group Policies that you will use in your implementation of Microsoft BitLocker Administration and Monitoring. See [Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md) for more information on the different policies that are available. After you have determined the policies that you are going to use, you then must modify one or more Group Policy Objects (GPO) that include the policy settings for MBAM.

You can use the following steps to configure the basic, recommended GPO settings to enable MBAM to manage BitLocker encryption for your organization’s client computers.

**To Edit MBAM Client GPO Settings**

1.  On a computer that has MBAM Group Policy template installed, make sure that MBAM services are enabled.

2.  Using the Group Policy Management Console (GPMC.msc) or the Advanced Group Policy Management (AGPM) MDOP product on a computer with the MBAM Group Policy template installed, select **Computer configuration**, choose **Policies**, click **Administrative Templates**, select **Windows Components**, and then click **MDOP MBAM (BitLocker Management)**.

3.  Edit the Group Policy Object settings that are required to enable MBAM Client services on client computers. For each policy in the table that follows, select **Policy Group**, click the **Policy**, and then configure the **Setting**:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Policy Group</th>
    <th align="left">Policy</th>
    <th align="left">Setting</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Client Management</p></td>
    <td align="left"><p>Configure MBAM Services</p></td>
    <td align="left"><p>Enabled. Set <strong>MBAM Recovery and Hardware service endpoint</strong> and <strong>Select BitLocker recovery information to store</strong>. Set <strong>MBAM compliance service endpoint</strong> and Enter status report frequency in (minutes).</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Operating System Drive</p></td>
    <td align="left"><p>Operating system drive encryption settings</p></td>
    <td align="left"><p>Enabled. Set <strong>Select protector for operating system drive</strong>. Required to save operating system drive data to the MBAMKey Recovery server.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Removable Drive</p></td>
    <td align="left"><p>Control Use of BitLocker on removable drives</p></td>
    <td align="left"><p>Enabled. Required if MBAM will save removable drive data to the MBAM Key Recovery server.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Fixed Drive</p></td>
    <td align="left"><p>Control Use of BitLocker on fixed drives</p></td>
    <td align="left"><p>Enabled. Required if MBAM will save fixed drive data to the MBAM Key Recovery server.</p>
    <p>Set <strong>Choose how BitLocker-protected drives can be recovered</strong> and <strong>Allow data recovery agent</strong>.</p></td>
    </tr>
    </tbody>
    </table>

     

    **Important**  
    Depending on the policies that your organization decides to deploy, you may have to configure additional policies. See [Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md) for Group Policy configuration details for all of the available MBAM GPO policy options.

     

## Related topics


[Deploying MBAM 2.0 Group Policy Objects](deploying-mbam-20-group-policy-objects-mbam-2.md)

 

 





