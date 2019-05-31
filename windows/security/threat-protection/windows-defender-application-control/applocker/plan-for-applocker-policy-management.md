---
title: Plan for AppLocker policy management (Windows 10)
description: This topic for describes the decisions you need to make to establish the processes for managing and maintaining AppLocker policies.
ms.assetid: dccc196f-6ae0-4ae4-853a-a3312b18751b
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Plan for AppLocker policy management

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for describes the decisions you need to make to establish the processes for managing and maintaining AppLocker policies.

## Policy management

Before you begin the deployment process, consider how the AppLocker rules will be managed. Developing a process for managing AppLocker rules helps assure that AppLocker continues to effectively control how applications are allowed to run in your organization.

### Application and user support policy

Developing a process for managing AppLocker rules helps assure that AppLocker continues to effectively control how applications are allowed to run in your organization. Considerations include:

-   What type of end-user support is provided for blocked applications?
-   How are new rules added to the policy?
-   How are existing rules updated?
-   Are events forwarded for review?

**Help desk support**

If your organization has an established help desk support department in place, consider the following when deploying AppLocker policies:

-   What documentation does your support department require for new policy deployments?
-   What are the critical processes in each business group both in work flow and timing that will be affected by application control policies and how could they affect your support department's workload?
-   Who are the contacts in the support department?
-   How will the support department resolve application control issues between the end user and those who maintain the AppLocker rules?

**End-user support**

Because AppLocker is preventing unapproved apps from running, it is important that your organization carefully plan how to provide end-user support. Considerations include:

-   Do you want to use an intranet site as a first line of support for users who have tried to run a blocked app?
-   How do you want to support exceptions to the policy? Will you allow users to run a script to temporarily allow access to a blocked app?

**Using an intranet site**

AppLocker can be configured to display the default message but with a custom URL. You can use this URL to redirect users to a support site that contains information about why the user received the error and which applications are allowed. If you do not display a custom URL for the message when an app is blocked, the default URL is used.

The following image shows an example of the error message for a blocked app. You can use the **Set a support web link** policy setting to customize the **More information** link.

![applocker blocked application error message](images/blockedappmsg.gif)

For steps to display a custom URL for the message, see [Display a custom URL message when users try to run a blocked app](display-a-custom-url-message-when-users-try-to-run-a-blocked-application.md).

**AppLocker event management**

Each time that a process requests permission to run, AppLocker creates an event in the AppLocker event log. The event details which file tried to run, the attributes of that file, the user that initiated the request, and the rule GUID that was used to make the AppLocker execution decision. The 
AppLocker event log is located in the following path: **Applications and Services Logs\\Microsoft\\Windows\\AppLocker**. The AppLocker log includes three logs:

1.  **EXE and DLL**. Contains events for all files affected by the executable and DLL rule collections (.exe, .com, .dll, and .ocx).
2.  **MSI and Script**. Contains events for all files affected by the Windows Installer and script rule collections (.msi, .msp, .ps1, .bat, .cmd, .vbs, and .js).
3.  **Packaged app-Deployment** or **Packaged app-Execution**, contains events for all Universal Windows apps affected by the packaged app and packed app installer rule collection (.appx).

Collecting these events in a central location can help you maintain your AppLocker policy and troubleshoot rule configuration problems. Event collection technologies such as those available in Windows allow administrators to subscribe to specific event channels and have the events from source computers aggregated into a forwarded event log on a Windows Server operating system collector. For more info about setting up an event subscription, see [Configure Computers to Collect and Forward Events](https://go.microsoft.com/fwlink/p/?LinkId=145012).

### Policy maintenance

As new apps are deployed or existing apps are updated by the software publisher, you will need to make revisions to your rule collections to ensure that the policy is current.

You can edit an AppLocker policy by adding, changing, or removing rules. However, you cannot specify a version for the policy by importing additional rules. To ensure version control when modifying an AppLocker policy, use Group Policy management software that allows you to create versions of Group Policy Objects (GPOs). An example of this type of software is the Advanced Group Policy Management feature from the Microsoft Desktop Optimization Pack. For more info about Advanced Group Policy Management, see [Advanced Group Policy Management Overview](https://go.microsoft.com/fwlink/p/?LinkId=145013) (https://go.microsoft.com/fwlink/p/?LinkId=145013).

>**Caution:**  You should not edit an AppLocker rule collection while it is being enforced in Group Policy. Because AppLocker controls what files are allowed to run, making changes to a live policy can create unexpected behavior.
 
**New version of a supported app**

When a new version of an app is deployed in the organization, you need to determine whether to continue to support the previous version of that app. To add the new version, you might only need to create a new rule for each file that is associated with the app. If you are using publisher conditions and the version is not specified, then the existing rule or rules might be sufficient to allow the updated file to run. You must ensure, however, that the updated app has not altered the file names or added files to support new functionality. If so, then you must modify the existing rules or create new rules. To continue to reuse a publisher-based rule without a specific file version, you must also ensure that the file's digital signature is still identical to the previous version—the publisher, product name, and file name (if configured in your rule) must all match for the rule to be correctly applied.

To determine whether a file has been modified during an app update, review the publisher's release details provided with the update package. You can also review the publisher's web page to retrieve this information. Each file can also be inspected to determine the version.

For files that are allowed or denied with file hash conditions, you must retrieve the new file hash. To add support for a new version and maintain support for the older version, you can either create a new file hash rule for the new version or edit the existing rule and add the new file hash to the list of conditions.

For files with path conditions, you should verify that the installation path has not changed from what is stated in the rule. If the path has changed, you need to update the rule before installing the new version of the app

**Recently deployed app**

To support a new app, you must add one or more rules to the existing AppLocker policy.

**App is no longer supported**

If your organization has determined that it will no longer support an application that has AppLocker rules associated with it, the easiest way to prevent users from running the app is to delete these rules.

**App is blocked but should be allowed**

A file could be blocked for three reasons:

-   The most common reason is that no rule exists to allow the app to run.
-   There may be an existing rule that was created for the file that is too restrictive.
-   A deny rule, which cannot be overridden, is explicitly blocking the file.

Before editing the rule collection, first determine what rule is preventing the file from running. You can troubleshoot the problem by using the **Test-AppLockerPolicy** Windows PowerShell cmdlet. For more info about troubleshooting an AppLocker policy, see [Testing and Updating an AppLocker Policy](https://go.microsoft.com/fwlink/p/?LinkId=160269) (https://go.microsoft.com/fwlink/p/?LinkId=160269).

## Record your findings

To complete this AppLocker planning document, you should first complete the following steps:

1.  [Determine your application control objectives](determine-your-application-control-objectives.md)
2.  [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
3.  [Select the types of rules to create](select-types-of-rules-to-create.md)
4.  [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
5.  [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

The three key areas to determine for AppLocker policy management are:

1.  Support policy

    Document the process that you will use for handling calls from users who have attempted to run a blocked app, and ensure that support personnel know recommended troubleshooting steps and escalation points for your policy.

2.  Event processing

    Document whether events will be collected in a central location, how that store will be archived, and whether the events will be processed for analysis.

3.  Policy maintenance

    Detail how rules will be added to the policy, in which Group Policy Object (GPO) the rules should be defined, and how to modify rules when apps are retired, updated, or added.

The following table contains the added sample data that was collected when determining how to maintain and manage AppLocker policies.

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
<td align="left"><p>Teller Software</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\Teller.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>Tellers-AppLockerTellerRules</p></td>
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
<td align="left"><p>Help desk</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>HR-All</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Check Payout</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Checkcut.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>HR-AppLockerHRRules</p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="even">
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
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Internet Explorer 7</p></td>
<td align="left"><p>C:\Program Files\Internet Explorer\</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Deny</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Web help</p>
<p></p></td>
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
<td align="left"><p>Help desk</p></td>
</tr>
</tbody>
</table>
 
The following two tables illustrate examples of documenting considerations to maintain and manage AppLocker policies.

**Event processing policy**

One discovery method for app usage is to set the AppLocker enforcement mode to **Audit only**. This will write events to the AppLocker logs, which can be managed and analyzed like other Windows logs. After apps have been identified, you can begin to develop policies regarding the processing and access to AppLocker events.

The following table is an example of what to consider and record.

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
<td align="left"><p>Forwarded to: AppLocker Event Repository on srvBT093</p></td>
<td align="left"><p>Standard</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Standard</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>DO NOT FORWARD. srvHR004</p></td>
<td align="left"><p>60 months</p></td>
<td align="left"><p>Yes, summary reports monthly to managers</p></td>
<td align="left"><p>Standard</p></td>
</tr>
</tbody>
</table>
 
**Policy maintenance policy**
When applications are identified and policies are created for application control, then you can begin documenting how you intend to update those policies.
The following table is an example of what to consider and record.
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
<th align="left">Application decommission policy</th>
<th align="left">Application version policy</th>
<th align="left">Application deployment policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Planned: Monthly through business office triage</p>
<p>Emergency: Request through help desk</p></td>
<td align="left"><p>Through business office triage</p>
<p>30-day notice required</p></td>
<td align="left"><p>General policy: Keep past versions for 12 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through business office</p>
<p>30-day notice required</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>Planned: Monthly through HR triage</p>
<p>Emergency: Request through help desk</p></td>
<td align="left"><p>Through HR triage</p>
<p>30-day notice required</p></td>
<td align="left"><p>General policy: Keep past versions for 60 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through HR</p>
<p>30-day notice required</p></td>
</tr>
</tbody>
</table>

