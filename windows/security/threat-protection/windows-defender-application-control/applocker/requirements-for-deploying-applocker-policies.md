---
title: Requirements for deploying AppLocker policies (Windows 10)
description: This deployment topic for the IT professional lists the requirements that you need to consider before you deploy AppLocker policies.
ms.assetid: 3e55bda2-3cd7-42c7-bad3-c7dfbe193d48
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Requirements for deploying AppLocker policies

**Applies to**
 -   Windows 10 
 -   Windows Server

This deployment topic for the IT professional lists the requirements that you need to consider before you deploy AppLocker policies.

The following requirements must be met or addressed before you deploy your AppLocker policies:
-   [Deployment plan](#bkmk-reqdepplan)
-   [Supported operating systems](#bkmk-reqsupportedos)
-   [Policy distribution mechanism](#bkmk-reqpolicydistmech)
-   [Event collection and analysis system](#bkmk-reqeventcollectionsystem)

### <a href="" id="bkmk-reqdepplan"></a>Deployment plan

An AppLocker policy deployment plan is the result of investigating which applications are required and necessary in your organization, which apps are optional, and which apps are forbidden. To develop this plan, see [AppLocker Design Guide](applocker-policies-design-guide.md). The following table is an example of the data you need to collect and the decisions you need to make to successfully deploy AppLocker policies on the supported operating systems (as listed in [Requirements to use AppLocker](requirements-to-use-applocker.md)).

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Organizational unit</th>
<th align="left">Implement AppLocker?</th>
<th align="left">Apps</th>
<th align="left">Installation path</th>
<th align="left">Use default rule or define new rule condition</th>
<th align="left">Allow or deny</th>
<th align="left">GPO name</th>
<th align="left">Support policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Teller-East and Teller-West</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Teller software</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\Teller.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>Tellers</p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p>
<p></p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Create a path exception to the default rule to exclude \Windows\Temp</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Help Desk</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Time Sheet Organizer</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Timesheet.exe</p></td>
<td align="left"><p>File is not signed; create a file hash condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>HR-All</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Check Payout</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Checkcut.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>HR</p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Internet Explorer 7</p></td>
<td align="left"><p>C:\Program Files\Internet Explorer\</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Deny</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Help Desk</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Use the default rule for the Windows path</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Help Desk</p></td>
</tr>
</tbody>
</table>
 
**Event processing policy**

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">AppLocker event collection location</th>
<th align="left">Archival policy</th>
<th align="left">Analyzed?</th>
<th align="left">Security policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Forwarded to: srvBT093</p></td>
<td align="left"><p>Standard</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Standard</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>Do not forward</p>
<p></p></td>
<td align="left"><p>60 months</p></td>
<td align="left"><p>Yes; summary reports monthly to managers</p></td>
<td align="left"><p>Standard</p></td>
</tr>
</tbody>
</table>
 
**Policy maintenance policy**

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Rule update policy</th>
<th align="left">App decommission policy</th>
<th align="left">App version policy</th>
<th align="left">App deployment policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Planned: Monthly through business office triage</p>
<p>Emergency: Request through Help Desk</p></td>
<td align="left"><p>Through business office triage; 30-day notice required</p></td>
<td align="left"><p>General policy: Keep past versions for 12 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through business office; 30-day notice required</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>Planned: Through HR triage</p>
<p>Emergency: Request through Help Desk</p></td>
<td align="left"><p>Through HR triage; 30-day notice required</p>
<p></p></td>
<td align="left"><p>General policy: Keep past versions for 60 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through HR; 30-day notice required</p></td>
</tr>
</tbody>
</table>
 
### <a href="" id="bkmk-reqsupportedos"></a>Supported operating systems

AppLocker is supported only on certain operating systems. Some features are not available on all operating systems. For more information, see [Requirements to use AppLocker](requirements-to-use-applocker.md).

### <a href="" id="bkmk-reqpolicydistmech"></a>Policy distribution mechanism

You need a way to distribute the AppLocker policies throughout the targeted business groups. AppLocker uses Group Policy management architecture to effectively distribute application control policies. AppLocker policies can also be configured on individual computers by using the Local Security Policy snap-in.

### <a href="" id="bkmk-reqeventcollectionsystem"></a>Event collection and analysis system

Event processing is important to understand application usage. You must have a process in place to collect and analyze AppLocker events so that application usage is appropriately restricted and understood. For procedures to monitor AppLocker events, see:
-   [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)
-   [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md)
-   [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)

## See also

- [AppLocker deployment guide](applocker-policies-deployment-guide.md)
