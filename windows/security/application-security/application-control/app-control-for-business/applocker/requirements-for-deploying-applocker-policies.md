---
title: Requirements for deploying AppLocker policies
description: This deployment article for the IT professional lists the requirements that you need to consider before you deploy AppLocker policies.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Requirements for deploying AppLocker policies

This deployment article for the IT professional lists the requirements that you need to consider before you deploy AppLocker policies.

The following requirements must be met or addressed before you deploy your AppLocker policies:

- [Deployment plan](#deployment-plan)
- [Supported operating systems](#supported-operating-systems)
- [Policy distribution mechanism](#policy-distribution-mechanism)
- [Event collection and analysis system](#event-collection-and-analysis-system)

## Deployment plan

A successful AppLocker policy deployment begins with a policy design that allows the applications needed by your organization and prevents unauthorized apps, including malware, from running. To develop this plan, see [AppLocker Design Guide](applocker-policies-design-guide.md). The following table is an example of the data you need to collect and the decisions you need to make to successfully deploy AppLocker policies.

|Business group|Organizational unit|Implement AppLocker?|Apps|Installation path|Use default rule or define new rule condition|Allow or deny|GPO name|Support policy|
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|Bank Tellers|Teller-East and Teller-West|Yes|Teller software|C:\Program Files\Woodgrove\Teller.exe|File is signed; create a publisher condition|Allow|Tellers|Web help|
||||Windows files|C:\Windows|Create a path exception to the default rule to exclude \Windows\Temp|Allow||Help Desk|
||||Time Sheet Organizer|C:\Program Files\Woodgrove\HR\Timesheet.exe|File isn't signed; create a file hash condition|Allow||Web help|
|Human Resources|HR-All|Yes|Check Payout|C:\Program Files\Woodgrove\HR\Checkcut.exe|File is signed; create a publisher condition|Allow|HR|Web help|
||||Internet Explorer 7|C:\Program Files\Internet Explorer</p>|File is signed; create a publisher condition|Deny||Help Desk|
||||Windows files|C:\Windows|Use the default rule for the Windows path|Allow||Help Desk|

### Event processing policy

|Business group|AppLocker event collection location|Archival policy|Analyzed?|Security policy|
| --- | --- | --- | --- | --- |
|Bank Tellers|Forwarded to: srvBT093|Standard|None|Standard|
|Human Resources|Do not forward|60 months|Yes; summary reports monthly to managers|Standard|

### Policy maintenance policy

|Business group|Rule update policy|App decommission policy|App version policy|App deployment policy|
| --- | --- | --- | --- | --- |
| Bank Tellers | Planned: Monthly through business office triage <p> Emergency: Request through Help Desk | Through business office triage; 30-day notice required | General policy: Keep past versions for 12 months <p> List policies for each application | Coordinated through business office; 30-day notice required |
| Human Resources | Planned: Through HR triage <p> Emergency: Request through Help Desk | Through HR triage; 30-day notice required |General policy: Keep past versions for 60 months <p> List policies for each application | Coordinated through HR; 30-day notice required |

## Supported operating systems

AppLocker is supported only on certain operating systems. Some features aren't available on all operating systems. For more information, see [Requirements to use AppLocker](requirements-to-use-applocker.md).

## Policy distribution mechanism

You need a way to distribute the AppLocker policies throughout the targeted business groups. AppLocker uses Group Policy management architecture to effectively distribute application control policies. AppLocker policies can also be configured on individual computers by using the Local Security Policy snap-in. AppLocker rules can also be distributed through a mobile device management solution, like Microsoft Intune.

## Event collection and analysis system

Event processing is important to understand application usage. You must have a process in place to collect and analyze AppLocker events so that application usage is appropriately restricted and understood. For procedures to monitor AppLocker events, see:

- [Configure an AppLocker policy for audit only](configure-an-applocker-policy-for-audit-only.md)
- [Configure an AppLocker policy for enforce rules](configure-an-applocker-policy-for-enforce-rules.md)
- [Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)

## See also

- [AppLocker deployment guide](applocker-policies-deployment-guide.md)
