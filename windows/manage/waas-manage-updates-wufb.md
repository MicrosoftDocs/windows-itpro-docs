---
title: Manage updates using Windows Update for Business (Windows 10)
description: Windows Update for Business lets you manage when devices received updates from Windows Update.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Manage updates using Windows Update for Business


**Applies to**

- Windows 10
- Windows 10 Mobile

Windows Update for Business enables information technology administrators to keep the Windows 10 devices in their organization always up to date with the latest security defenses and Windows features by directly connecting these systems to Windows Update service.  You can use Group Policy or MDM solutions such as Intune to configure the Windows Update for Business settings. Using Group Policy or MDM solutions such as Intune, you can control how and when Windows 10 devices are updated. In addition, by using Intune, organizations can manage devices that are not joined to a domain at all or are joined to Microsoft Azure Active Directory (Azure AD) alongside your on-premises domain-joined machines.  

Specifically, Windows Update for Business allows for: 

- The creation of deployment and validation groups, where administrators can specify which devices go first in an update wave, and which ones will come later (to ensure any quality bars are met).
- Selectively including or excluding drivers as part of Microsoft-provided updates
- Integration with existing management tools such as Windows Server Update Services (WSUS), System Center Configuration Manager, and Microsoft Intune.
- Peer-to-peer delivery for Microsoft updates, which optimizes bandwidth efficiency and reduces the need for an on-site server caching solution.

Windows Update for Business is a free service that is available for Windows Pro, Enterprise, Pro Education, and Education.

## Update types

Windows Update for Business provides three types of updates to Windows 10 devices:

- **Feature Updates**: previously referred to as *upgrades*, Feature Updates contain not only security and quality revisions, but also significant feature additions and changes; they are released at a slower cadence, every 4 to 8 months.
- **Quality Updates**: these are traditional operating system updates, typically released the second Tuesday of each month (though they can be released at any time).  These include security, critical, and driver updates. Windows Update for Business also treats non-Windows updates (such as those for Microsoft Office or Visual Studio) as Quality Updates. These non-Windows Updates are known as *Microsoft Updates* and devices can be optionally configured to receive such updates along with their Windows Updates.
- **Non-deferrable updates**: Currently, antimalware and antispyware Definition Updates from Windows Update cannot be deferred.
 
Both Feature and Quality Updates can be deferred from deploying to client devices by a Windows Update for Business administrator within a bounded rage of time from when those updates are first made available on the Windows Update Service. This deferral capability allows administrators to validate deployments as they are pushed to all client devices configured for Windows Update for Business.

<table>
<tr>
<th>Category</th>
<th>Maximum deferral</th>
<th>Deferral increments</th>
<th>Example</th>
<th>Classification GUID</th>
</tr>
<tr>
<td>Feature Updates</td>
<td>180 days</td>
<td>Days</td>
<td>From Windows 10, version 1511 to version 1607</td>
<td>3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</td>
</tr>
<tr>
<td rowspan="4">Quality Updates</td>
<td rowspan="4">30 days</td>
<td rowspan="4">Days</td>
<td>Security updates</td>
<td>0FA1201D-4330-4FA8-8AE9-B877473B6441</td>
</tr>
<tr>
<td>Drivers (optional)</td>
<td>EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</td>
</tr>
<tr>
<td>Non-security updates</td>
<td>CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</td>
</tr><tr><td>Microsoft updates (Office, Visual Studio, etc.)</td><td>varies</td></tr>
<tr>
<td>Non-deferrable</td>
<td>No deferral</td>
<td>No deferral</td>
<td>Definition updates</td>
<td>E0789628-CE08-4437-BE74-2495B842F43B</td>
</tr>
</table> 

>[!NOTE]
>For information about classification GUIDs, see [WSUS Classification GUIDs](https://msdn.microsoft.com/en-us/library/ff357803.aspx).

## Comparing Windows Update for Business in Windows 10, version 1511 and version 1607

Windows Update for Business was first made available in Windows 10, version 1511. In Windows 10, version 1607 (also known as the Anniversary Update), there are several new or changed capabilities provided as well as updated behavior.   

>[!NOTE]
>For more information on Current Branch and Current Branch for Business, see [Windows 10 servicing options](introduction-to-windows-10-servicing.md).

<table>
    <thead>
        <tr><th>Capability</th><th>Windows 10, version 1511</th><th>Windows 10, version 1607</th>           
        </tr>
    </thead>
    <tbody>
        <tr><td><p>Select Servicing Options: CB or CBB</p></td><td><p>Not available.  To defer updates, all systems must be on the Current Branch for Business (CBB)</p></td><td><p>Ability to set systems on the Current Branch (CB) or Current Branch for Business (CBB).</p></td></tr>
<tr><td><p>Quality Updates</p></td><td><p>Able to defer receiving Quality Updates:</p><ul><li>Up to 4 weeks</li><li>In weekly increments</li></ul></td><td><p>Able to defer receiving Quality Updates:</p><ul><li>Up to 30 days</li><li>In daily increments</li></ul></td></tr>
<tr><td><p>Feature Updates</p></td><td><p>Able to defer receiving Feature Updates:</p><ul><li>Up to 8 months</li><li>In monthly increments</li></ul></td><td><p>Able to defer receiving Feature Updates:</p><ul><li>Up to 180 days</li><li>In daily increments</li></ul></td></tr>
<tr><td><p>Pause updates</p></td><td><ul><li>Feature Updates and Quality Updates paused together</li><li>Maximum of 35 days</li></ul></td><td><p>Features and Quality Updates can be paused separately.</p><ul><li>Feature Updates: maximum 60 days</li><li>Quality Updates: maximum 35 days</li></ul></td></tr>
<tr><td><p>Drivers</p></td><td><p>No driver-specific controls</p></td><td><p>Drivers can be selectively excluded from Windows Update for Business.</p></td></tr>
</tbody></table>


## Steps to manage updates for Windows 10

<table><tbody>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Learn about updates and servicing branches](waas-overview.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">Manage updates using Windows Update for Business (this topic)</br>
or [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>
or [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)</td></tr>
</tbody></table>
</br>


## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Manage updates for Windows 10 Mobile Enterprise](waas-mobile-updates.md) 
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)


