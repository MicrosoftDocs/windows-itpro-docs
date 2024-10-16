---
title: Plan for AppLocker policy management
description: This article describes the decisions you need to make to establish the processes for managing and maintaining AppLocker policies.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Plan for AppLocker policy management

This article describes the decisions you need to make to establish the processes for managing and maintaining AppLocker policies.

## Policy management

Before you begin the deployment process, consider to manage your AppLocker rules over time. Developing a process for managing AppLocker rules helps assure that AppLocker continues to effectively control how applications are allowed to run in your organization.

### Application and user support policy

Developing a process for managing AppLocker rules helps assure that AppLocker continues to effectively control how applications are allowed to run in your organization. Considerations include:

- What type of end-user support is provided for blocked applications?
- How are new rules added to the policy?
- How are existing rules updated?
- Are events forwarded for review?

#### Help desk support

If your organization has an established help desk support department in place, consider the following points when deploying AppLocker policies:

- What documentation does your support department require for new policy deployments?
- What are the critical processes in each business group affected by application control policies and how could they affect your support department's workload?
- Who are the contacts in the support department?
- How are application control issues resolved for the end user?

#### End-user support

Because AppLocker blocks unapproved apps from running, it's important that your organization carefully plans how to provide end-user support. Considerations include:

- Do you want to use an intranet site as a frontline of support for users who encounter blocked apps?
- How do you want to support exceptions to the policy?

#### Using an intranet site

AppLocker can be configured to display the default block message but with a custom URL. You can use this URL to redirect users to a support site that contains information about why the user received the error and which applications are allowed. If you don't display a custom URL for the message when an app is blocked, the default URL is used.

The following image shows an example of the error message for a blocked app. You can use the **Set a support web link** policy setting to customize the **More information** link.

![applocker blocked application error message.](images/blockedappmsg.gif)

For steps to display a custom URL for the message, see [Display a custom URL message when users try to run a blocked app](display-a-custom-url-message-when-users-try-to-run-a-blocked-application.md).

#### AppLocker event management

Each time that a process tries to run, AppLocker creates an event in the AppLocker event log. The event includes information about the file that tried to run, the user who initiated it, and the AppLocker rule GUID that blocked or allowed the file. The
AppLocker event log is located in the following path: **Applications and Services Logs\\Microsoft\\Windows\\AppLocker**. The AppLocker log includes three logs:

1. **EXE and DLL**. Contains events for all files affected by the executable and DLL rule collections (.exe, .com, .dll, and .ocx).
2. **MSI and Script**. Contains events for all files affected by the Windows Installer and script rule collections (.msi, .msp, .ps1, .bat, .cmd, .vbs, and .js).
3. **Packaged app-Deployment** or **Packaged app-Execution**, contains events for all Universal Windows apps affected by the packaged app and packed app installer rule collection (.appx).

Collecting these events in a central location can help you maintain your AppLocker policy and troubleshoot rule configuration problems.

### Policy maintenance

As apps are deployed, updated, or retired, you need to keep your policy rules up-to-date.

You can edit an AppLocker policy by adding, changing, or removing rules. However, you can't specify a version for the policy by importing more rules. To ensure version control when modifying an AppLocker policy, use Group Policy management software that allows you to create versions of Group Policy Objects (GPOs). An example of this type of software is the Advanced Group Policy Management feature from the Microsoft Desktop Optimization Pack. For more information, see [Advanced Group Policy Management Overview](/microsoft-desktop-optimization-pack/agpm/).

> [!IMPORTANT]
> You should not edit an AppLocker rule collection while it is being enforced in Group Policy. Because AppLocker controls what files are allowed to run, making changes to a live policy can create unexpected behavior.

#### New version of a supported app

When a new version of an app is deployed in the organization, you need to determine whether to continue to support the previous version of that app. To add the new version, you might only need to create a new rule for each file that is associated with the app. If you're using publisher conditions and the version isn't specified, then the existing rule or rules might be sufficient to allow the updated file to run. You must check, however, for file names that change or new files added. If so, then you must modify the existing rules or create new rules. You might need to update publisher-based rules for files whose digital signature changes.

To determine whether a file changed during an app update, review the publisher's release details provided with the update package. You can also review the publisher's web page to retrieve this information. Each file can also be inspected to determine the version.

For files that are allowed or denied with file hash conditions, you must retrieve the new file hash and ensure your rules include that new hash.

For files with path conditions, you should verify that the installation path is the same. If the path changed, you need to add a rule for the new path before installing the new version of the app.

#### Recently deployed app

To support a new app, you must add one or more rules to the existing AppLocker policy.

#### App is no longer supported

If your organization no longer supports an application that has AppLocker rules associated with it, you can delete the rules to block the app.

#### App is blocked but should be allowed

A file could be blocked for three reasons:

- The most common reason is that no rule exists to allow the app to run.
- There might be an existing rule that was created for the file that is too restrictive.
- A deny rule, which can't be overridden, is explicitly blocking the file.

Before editing the rule collection, first determine what rule is preventing the file from running. You can troubleshoot the problem by using the **Test-AppLockerPolicy** Windows PowerShell cmdlet. For more info about troubleshooting an AppLocker policy, see [Testing and Updating an AppLocker Policy](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/ee791793(v=ws.10)).

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1. [Determine your application control objectives](../appcontrol-and-applocker-overview.md)
2. [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3. [Select the types of rules to create](select-types-of-rules-to-create.md)
4. [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
5. [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

The three key areas to determine for AppLocker policy management are:

1. Support policy

    Document your process for handling calls from users who tried to run a blocked app, and ensure that support personnel know recommended troubleshooting steps and escalation points for your policy.

2. Event processing

    Document where events are collected, how often they're archived, and how the events are processed for analysis.

3. Policy maintenance

    Detail your policy maintenance and lifecycle plans.

The following table contains the added sample data that was collected when determining how to maintain and manage AppLocker policies.

|Business group|Organizational unit|Implement AppLocker?|Apps|Installation path|Use default rule or define new rule condition|Allow or deny|GPO name|Support policy|
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|Bank Tellers|Teller-East and Teller-West|Yes|Teller Software|C:\Program Files\Woodgrove\Teller.exe|File is signed; create a publisher condition|Allow|Tellers-AppLockerTellerRules|Web help|
||||Windows files|C:\Windows|Create a path exception to the default rule to exclude \Windows\Temp|Allow||Help desk|
|Human Resources|HR-All|Yes|Check Payout|C:\Program Files\Woodgrove\HR\Checkcut.exe|File is signed; create a publisher condition|Allow|HR-AppLockerHRRules|Web help|
||||Time Sheet Organizer|C:\Program Files\Woodgrove\HR\Timesheet.exe|File isn't signed; create a file hash condition|Allow||Web help|
||||Internet Explorer 7|C:\Program Files\Internet Explorer</p>|File is signed; create a publisher condition|Deny||Web help|
||||Windows files|C:\Windows|Use the default rule for the Windows path|Allow||Help desk|

The following two tables illustrate examples of documenting considerations to maintain and manage AppLocker policies.

### Event processing policy

One discovery method for app usage is to set the AppLocker enforcement mode to **Audit only**. This enforcement mode writes events to the AppLocker logs, which can be managed and analyzed like other Windows logs. After apps are identified, you can begin to develop policies regarding the processing and access to AppLocker events.

The following table is an example of what to consider and record.

|Business group|AppLocker event collection location|Archival policy|Analyzed?|Security policy|
| --- | --- | --- | --- | --- |
|Bank Tellers|Forwarded to: AppLocker Event Repository on srvBT093|Standard|None|Standard|
|Human Resources|DO NOT FORWARD. srvHR004|60 months|Yes, summary reports monthly to managers|Standard|

### Policy maintenance policy

Begin documenting how you intend to update your application control policies.

The following table is an example of what to consider and record.

|Business group|Rule update policy|Application decommission policy|Application version policy|Application deployment policy|
| --- | --- | --- | --- | --- |
| Bank Tellers | Planned: Monthly through business office triage <p> Emergency: Request through help desk | Through business office triage <p> 30-day notice required|General policy: Keep past versions for 12 months <p> List policies for each application|Coordinated through business office <p> 30-day notice required |
| Human Resources | Planned: Monthly through HR triage <p> Emergency: Request through help desk|Through HR triage <p> 30-day notice required | General policy: Keep past versions for 60 months <p> List policies for each application | Coordinated through HR <p> 30-day notice required |
