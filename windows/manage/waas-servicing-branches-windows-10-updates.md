---
title: Assign devices to servicing branches for Windows 10 updates (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Assign devices to servicing branches for Windows 10 updates


**Applies to**

- Windows 10
- Windows 10 Mobile

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

>[!TIP]
>If you're not familiar with the Windows 10 servicing or release branches, read [Servicing branches](waas-overview.md#servicing-branches) first.

Current Branch is the default servicing branch for all Windows 10 devices except those with the long-term servicing branch edition installed. The following table shows the servicing branches available to each edition of Windows 10. 

| Windows 10 edition | Current branch (CB) | Current branch for business (CBB) | Long-term servicing branch (LTSB) | Insider Program |
| --- | --- | --- | --- | --- |
| Home | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Pro | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Enterprise LTSB | ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) |
| Pro Education | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Education | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Mobile | ![yes](images/checkmark.png) | ![no](images/crossmark.png) | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |
| Mobile Enterprise | ![yes](images/checkmark.png) | ![yes](images/checkmark.png)  | ![no](images/crossmark.png) | ![yes](images/checkmark.png) |



>[!NOTE]
>The LTSB edition of Windows 10 is only available through the [Microsoft Volume Licensing Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

## Assign devices to Current Branch for Business

**To assign a single PC locally to CBB**

1. Go to **Settings** > **Update & security** > **Windows Update** > **Advanced options**.
2. Select **Defer feature updates**.

**To assign PCs to CBB using Group Policy**

- In Windows 10, version 1511:

    Computer Configuration > Administrative Templates > Windows Components > Windows Update > **Defer Upgrades and Updates**

- In Windows 10, version 1607:

    Computer Configuration > Administrative Templates > Windows Components > Windows Update > Defer Windows Updates > **Select when Feature Updates are received** - enable policy and set branch readiness level to CBB
    
**To assign PCs to CBB using MDM**

- In Windows 10, version 1511:

    ../Vendor/MSFT/Policy/Config/Update/**RequireDeferredUpgrade**

- In Windows 10, version 1607:

    ../Vendor/MSFT/Policy/Config/Update/**BranchReadinessLevel**
    
**To assign Windows 10 Mobile Enterprise to CBB using MDM**

- In Windows 10 Mobile Enterprise, version 1511:

    ../Vendor/MSFT/Policy/Config/Update/RequireDeferredUpgrade

- In Windows 10 Mobile Enterprise, version 1607:

    ../Vendor/MSFT/Policy/Config/Update/BranchReadinessLevel

## Enroll devices in the Windows Insider Program

Enrolling devices in the Windows Insider Program is simple and requires only a Microsoft account. To enroll a device in the Windows Insider Program, complete the following steps on the device that you want to enroll: 

1. Go to **Start** > **Settings** > **Update & security** > **Windows Insider Program**.

2. Select **Get started**.  
    >[!NOTE]
    >If you didn’t use a Microsoft account to log in to the computer, you’ll be prompted to log in. If you don’t have a Microsoft account, you can create one now. 
    
3. Read the privacy statement and program terms, and then click **Next**.

6.	Click **Confirm**, and then select a time to restart the computer.

7. After you restart the device, go to **Start** > **Settings** > **Update & security** > **Windows Insider Program** to select your Insider level. The device receives the most recent Windows Insider build for the Insider level you select. The options for Insider level are:
    - **Release Preview**: Insiders on this level receive builds of Windows just before Microsoft releases them for CB. Although these builds aren’t final, they are the most complete and stable builds available to Windows Insider Program participants. This level provides the best testing platform for organizations that conduct early application compatibility testing on Windows Insider PCs.
    - **Slow**: The Slow Windows Insider level is for users who enjoy seeing new builds of Windows with minimal risk to their devices but still want to provide feedback to Microsoft about their experience with the new build.
    - **Fast**: This level is best for Insiders who would like to be the first to experience new builds of Windows, participate in identifying and reporting issues to Microsoft, and provide suggestions on new functionality. 

## Block access to Windows Insider Program

To prevent devices in your enterprise from being enrolled in the Insider Program for early releases of Windows 10:

- Group Policy: Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds\\**Toggle user control over Insider builds**
- MDM: Policy CSP - [System/AllowBuildPreview](https://msdn.microsoft.com/library/windows/hardware/dn904962%28v=vs.85%29.aspx#System_AllowBuildPreview)

## Switching branches

During the life of a device, it may be necessary or desirable to switch between the available branches. Depending on the branch you are using, the exact mechanism for doing this can be different; some will be simple, others more involved.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">From this branch</th>
<th align="left">To this branch</th>
<th align="left">You need to</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left" rowspan="3">Windows Insider Program</td>
<td align="left">Current Branch</td>
<td align="left">Wait for the final Current Branch release.</td>
</tr>
<tr class="even">
<td align="left">Current Branch for Business</td>
<td align="left">Not directly possible, because Windows Insider Program machines are automatically upgraded to the Current Branch release at the end of the development cycle.</td>
</tr>
<tr class="odd">
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="even">
<td align="left" rowspan="3">Current Branch</td>
<td align="left">Insider</td>
<td align="left">Use the Settings app to enroll the device in the Windows Insider Program.</td>
</tr>
<tr class="odd">
<td align="left">Current Branch for Business</td>
<td align="left">Select the <strong>Defer upgrade</strong> setting, or move the PC to a target group or flight that will not receive the next upgrade until it is business ready. Note that this change will not have any immediate impact; it only prevents the installation of the next Current Branch release.</td>
</tr>
<tr class="even">
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="odd">
<td align="left" rowspan="3">Current Branch for Business</td>
<td align="left">Insider</td>
<td align="left">Use the Settings app to enroll the device in the Windows Insider Program.</td>
</tr>
<tr class="even">
<td align="left">Current Branch</td>
<td align="left">Disable the <strong>Defer upgrade</strong> setting, or move the PC to a target group or flight that will receive the latest Current Branch release.</td>
</tr>
<tr class="odd">
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="even">
<td align="left" rowspan="3">Long-Term Servicing Branch</td>
<td align="left">Insider</td>
<td align="left">Use media to upgrade to the latest Windows Insider Program build.</td>
</tr>
<tr class="odd">
<td align="left">Current Branch</td>
<td align="left">Use media to upgrade to a later Current Branch build. (Note that the Current Branch build must be a later build.)</td>
</tr>
<tr class="even">
<td align="left">Current Branch for Business</td>
<td align="left">Use media to upgrade to a later Current Branch for Business build (Current Branch build plus fixes). Note that it must be a later build.</td>
</tr>
</tbody>
</table>


## Steps to manage updates for Windows 10

<table><tbody>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Learn about updates and servicing branches](waas-overview.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">Assign devices to servicing branches for Windows 10 updates (this topic)</td></tr>
<tr><td style="border: 0px;width: 24px">![to do](images/checklistbox.gif)</td><td align="left" style="border: 0px">[Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![to do](images/checklistbox.gif)</td><td align="left" style="border: 0px">[Manage updates using Windows Update for Business](waas-manage-updates-wufb.md)</br>
or [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>
or [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)</td></tr>
</tbody></table>
</br>


## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage device restarts after updates](waas-restart.md)


