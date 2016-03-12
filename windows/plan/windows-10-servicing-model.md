---
title: Windows 10 servicing options (Windows 10)
description: Windows 10 provides a new model for organizations to deploy and upgrade Windows by providing updates to features and capabilities through a continual process.
MSHAttr: PreferredLib /library
ms.assetid: 6EF0792C-B587-497D-8489-4A7F5848D92A
keywords: ["deploy", "upgrade", "update", "servicing"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: TrudyHa
---

# Windows 10 servicing options


**Applies to**

-   Windows 10
-   Windows 10 Mobile

**In this article**

-   [Key terminology](#key-terminology)
-   [Windows 10 branch overview](#windows-10-branch-overview)
-   [Current Branch versus Current Branch for Business](#current-branch-versus-current-branch-for-business)
-   [Long-Term Servicing Branch](#long-term-servicing-branch)
-   [Windows Insider Program](#windows-insider-program)
-   [Switching between branches](#switching-between-branches)
-   [Related topics](#related-topics)

Windows 10 provides a new model for organizations to deploy and upgrade Windows by providing updates to features and capabilities through a continual process.

Traditionally, new versions of Windows have been released every few years. The deployment of those new versions within an organization would then become a project, either by leveraging a “wipe and load” process to deploy the new operating system version to existing machines, or by migrating to the new operating system version as part of the hardware replacement cycle. Either way, organizations would invest significant time and effort to complete the required tasks.

With Windows 10, a new model is being adopted. Instead of new features being added only in new releases that happen every few years, the goal is to provide new features two to three times per year, continually providing new capabilities while maintaining a high level of hardware and application compatibility. This new model, referred to as Windows as a service, requires organizations to rethink how they deploy and upgrade Windows. It is no longer a project that happens “every few years”; it is a continual process.

To support this process, you need to use simpler deployment methods. By combining these simpler methods (for example, in-place upgrade) with new techniques to deploy in phases to existing devices, you can reduce the amount of effort required overall, by taking the effort that used to be performed as part of a traditional deployment project and spreading it across a broad period of time.

## Key terminology


With the shift to this new Windows as a service model, it is important to understand the distinction between two key terms:

-   **Upgrade**. A new Windows 10 release that contains additional features and capabilities, released two to three times per year.

-   **Update**. Packages of security fixes, reliability fixes, and other bug fixes that are released periodically, typically once a month on Update Tuesday (sometimes referred to as Patch Tuesday). With Windows 10, these are cumulative in nature.

In addition to these terms, some additional concepts need to be understood:

-   **Branches**. The concept of “branching” goes back many years, and represents how Windows has traditionally been written and serviced: Each release was from a particular branch of the Windows code, and updates would be made to that release for the lifecycle of that release. This concept still applies now with Windows 10, but is much more visible because of the increased frequency of upgrades.

-   **Rings**. The concept of “rings” defines a mechanism for Windows 10 deployment to targeted groups of PCs; each ring represents another group. These are used as part of the release mechanism for new Windows 10 upgrades, and should be used internally by organizations to better control the upgrade rollout process.

## Windows 10 branch overview


To support different needs and use cases within your organization, you can select among different branches:

![branches](images/branch.png)

-   **Windows Insider Program**. To see new features before they are released, to provide feedback on those new features, and to initially validate compatibility with existing applications and hardware, small numbers of PCs can leverage the Windows Insider Program branch. These would typically be dedicated lab machines used for IT testing, secondary PCs used by IT administrators, and other non-critical devices.

-   **Current Branch**. For early adopters, IT teams, and other broader piloting groups, the Current Branch (CB) can be used to further validate application compatibility and newly-released features.

-   **Current Branch for Business**. For the majority of people in an organization, the Current Branch for Business (CBB) allows for a staged deployment of new features over a longer period of time.

-   **Long-Term Servicing Branch**. For critical or specialized devices (for example, operation of factory floor machinery, point-of-sale systems, automated teller machines), the Long-Term Servicing Branch (LTSB) provides a version of Windows 10 Enterprise that receives no new features, while continuing to be supported with security and other updates for a long time. (Note that the Long-Term Servicing Branch is a separate Windows 10 Enterprise image, with many in-box apps, including Microsoft Edge, Cortana, and Windows Store, removed.)

Most organizations will leverage all of these choices, with the mix determined by how individual PCs are used. Some examples:

| Industry           | Windows Insider Program | Current Branch | Current Branch for Business | Long-Term Servicing Branch |
|--------------------|-------------------------|----------------|-----------------------------|----------------------------|
| Retail             | &lt;1%                  | 10%            | 60%                         | 30%                        |
| Manufacturing      | &lt;1%                  | 10%            | 55%                         | 45%                        |
| Pharmaceuticals    | &lt;1%                  | 10%            | 50%                         | 40%                        |
| Consulting         | 10%                     | 50%            | 35%                         | 5%                         |
| Software developer | 30%                     | 60%            | 5%                          | 5%                         |

 

Because every organization is different, the exact breakdown will vary even within a specific industry; these should be considered only examples, not specific recommendations. To determine the appropriate mix for a specific organization, profile how individual PCs are used within the organization, and target them with the appropriate branch.

-   Retailers often have critical devices (for example, point-of-sale systems) in stores which results in higher percentages of PCs on the Long-Term Servicing Branch. But those used by information workers in support of the retail operations would leverage Current Branch for Business to receive new features.

-   Manufacturers typically have critical devices (for example, control systems) in factories; these are also good candidates for the Long-Term Servicing Branch. But as with retailers, information workers that support those factories are better suited to the Current Branch for Business.

-   Pharmaceutical firms often have regulatory requirements for PCs used for the development of their products, which are best satisfied by using Long-Term Servicing Branch. But not all PCs are subject to these regulatory requirements; those that are not can use the Current Branch for Business.

-   Consulting firms want their employees to have the latest functionality so they can be as productive as possible. They also want to develop expertise with new capabilities as soon as possible, hence more emphasis on Current Branch. But they also have information workers that provide services to the consultants; these workers can leverage Current Branch for Business.

-   Software developers typically work on software that will release in conjunction with a new Windows upgrade. To enable that, a significant percentage of developers may use the Windows Insider Program preview branch for initial efforts, which shifts to Current Branch as development progresses.

Note that there are few, if any, scenarios where an entire organization would use the Long-Term Servicing Branch for all PCs – or even for a majority of them.

For more information about the Windows as a service model, refer to [Windows 10 servicing options for updates and upgrades](../manage/introduction-to-windows-10-servicing.md).

## Current Branch versus Current Branch for Business


When the development of a new Windows 10 feature upgrade is complete, it is initially offered to Current Branch computers; those computers configured for Current Branch for Business will receive the feature upgrade (with additional fixes) at a later date, generally at least four months later. An additional deferral of at least eight months is available to organizations that use tools to control the update process. During this time, monthly security updates will continue to be made available to machines not yet upgraded.

The process to configure a PC for Current Branch for Business is simple. The **Defer upgrades** setting needs to be configured, either manually (through the Settings app), by using Group Policy, or by using mobile device management (MDM).

![figure 1](images/fig1-deferupgrades.png)

Figure 1. Configure the **Defer upgrades** setting

Most organizations today leverage Windows Server Update Services (WSUS) or System Center Configuration Manager to update their PCs. With Windows 10, this does not need to change; all updates are controlled through approvals or automatic deployment rules configured in those products, so new upgrades will not be deployed until the organization chooses. The **Defer upgrades** setting can function as an additional validation check, so that Current Branch for Business machines that are targeted with a new upgrade prior to the end of the initial four-month deferral period will decline to install it; they can install the upgrade any time within the eight-month window after that initial four-month deferral period.

For computers configured to receive updates from Windows Update directly, the **Defer upgrades** setting directly controls when the PC will be upgraded. Computers that are not configured to defer upgrades will be upgraded at the time of the initial Current Branch release; computers that are configured to defer upgrades will be upgraded four months later.

With Windows 10 it is now possible to manage updates for PCs and tablets that have a higher degree of mobility and are not joined to a domain. For these PCs, you can leverage mobile device management (MDM) services or Windows Update for Business to provide the same type of control provided today with WSUS or Configuration Manager.

For PCs enrolled in a mobile device management (MDM) service, Windows 10 provides new update approval mechanisms that could be leveraged to delay the installation of a new feature upgrade or any other update. Windows Update for Business will eventually provide these and other capabilities to manage upgrades and updates; more details on these capabilities will be provided when they are available later in 2015.

With the release of each Current Branch feature update, new ISO images will be made available. You can use these images to upgrade existing machines or to create new custom images. These feature upgrades will also be published with WSUS to enable simple deployment to devices already running Windows 10.

Unlike previous versions of Windows, the servicing lifetime of Current Branch or Current Branch for Business is finite. You must install new feature upgrades on machines running these branches in order to continue receiving monthly security updates. This requires new ways of thinking about software deployment. It is best to align your deployment schedule with the Current Branch release schedule:

-   Begin your evaluation process with the Windows Insider Program releases.

-   Perform initial pilot deployments by using the Current Branch.

-   Expand to broad deployment after the Current Branch for Business is available.

-   Complete deployments by using that release in advance of the availability of the next Current Branch.

![figure 2](images/fig2-deploymenttimeline.png)

Figure 2. Deployment timeline

Some organizations may require more than 12 months to deploy Windows 10 to all of their existing PCs. To address this, it may be necessary to deploy multiple Windows 10 releases, switching to these new releases during the deployment project. Notice how the timelines can overlap, with the evaluation of one release happening during the pilot and deployment of the previous release:

![figure 3](images/fig3-overlaprelease.png)

Figure 3. Overlapping releases

As a result of these overlapping timelines, organizations can choose which release to deploy. Note though that by continuing for longer with one release, that gives you less time to deploy the subsequent release (to both existing Windows 10 PCs as well as newly-migrated ones), so staying with one release for the full lifetime of that release can be detrimental overall.

## Long-Term Servicing Branch


For specialized devices, Windows 10 Enterprise Long Term Servicing Branch (LTSB) ISO images will be made available. These are expected to be on a variable schedule, less often than CB and CBB releases. Once released, these will be supported with security and reliability fixes for an extended period; no new features will be added over its servicing lifetime. Note that LTSB images will not contain most in-box Universal Windows Apps (for example, Microsoft Edge, Cortana, the Windows Store, the Mail and Calendar apps) because the apps or the services that they use will be frequently updated with new functionality and therefore cannot be supported on PCs running the LTSB OS.

These LTSB images can be used to upgrade existing machines or to create new custom images.

Note that Windows 10 Enterprise LTSB installations fully support the Universal Windows Platform, with the ability to run line-of-business apps created using the Windows SDK, Visual Studio, and related tools capable of creating Universal Windows apps. For apps from other ISVs (including those published in the Windows Store), contact the ISV to confirm if they will provide long-term support for their specific apps.

As mentioned previously, there are few, if any, scenarios where an organization would use the Long-Term Servicing Branch for every PC – or even for a majority of them.

## Windows Insider Program


During the development of a new Windows 10 feature update, preview releases will be made available to Windows Insider Program participants. This enables those participants to try out new features, check application compatibility, and provide feedback during the development process.

To obtain Windows Insider Program builds, the Windows Insider Program participants must opt in through the Settings app, and specify their Microsoft account.

Occasionally (typically as features are made available to those in the Windows Insider Program “slow” ring), new ISO images will be released to enable deployment validation, testing, and image creation.

## Switching between branches


During the life of a particular PC, it may be necessary or desirable to switch between the available branches. Depending on the branch you are using, the exact mechanism for doing this can be different; some will be simple, others more involved.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">For a PC that uses…</th>
<th align="left">Changing to…</th>
<th align="left">You need to:</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Windows Insider Program</td>
<td align="left">Current Branch</td>
<td align="left">Wait for the final Current Branch release.</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Current Branch for Business</td>
<td align="left">Not directly possible, because Windows Insider Program machines are automatically upgraded to the Current Branch release at the end of the development cycle.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="even">
<td align="left">Current Branch</td>
<td align="left">Insider</td>
<td align="left">Use the Settings app to enroll the device in the Windows Insider Program.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Current Branch for Business</td>
<td align="left">Select the <strong>Defer upgrade</strong> setting, or move the PC to a target group or flight that will not receive the next upgrade until it is business ready. Note that this change will not have any immediate impact; it only prevents the installation of the next Current Branch release.</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="odd">
<td align="left">Current Branch for Business</td>
<td align="left">Insider</td>
<td align="left">Use the Settings app to enroll the device in the Windows Insider Program.</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Current Branch</td>
<td align="left">Disable the <strong>Defer upgrade</strong> setting, or move the PC to a target group or flight that will receive the latest Current Branch release.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Not directly possible (requires wipe-and-load).</td>
</tr>
<tr class="even">
<td align="left">Long-Term Servicing Branch</td>
<td align="left">Insider</td>
<td align="left">Use media to upgrade to the latest Windows Insider Program build.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Current Branch</td>
<td align="left">Use media to upgrade to a later Current Branch build. (Note that the Current Branch build must be a later build.)</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Current Branch for Business</td>
<td align="left">Use media to upgrade to a later Current Branch for Business build (Current Branch build plus fixes). Note that it must be a later build.</td>
</tr>
</tbody>
</table>

 

## Related topics


[Windows 10 deployment considerations](windows-10-deployment-considerations.md)

[Windows 10 compatibility](windows-10-compatibility.md)

[Windows 10 infrastructure requirements](windows-10-infrastructure-requirements.md)

 

 





