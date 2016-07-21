---
title: Windows 10 servicing options (Windows 10)
description: Windows 10 provides a new model for organizations to deploy and upgrade Windows by providing updates to features and capabilities through a continual process.
ms.assetid: 6EF0792C-B587-497D-8489-4A7F5848D92A
keywords: deploy, upgrade, update, servicing
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: servicing
ms.sitesec: library
author: greg-lindsay
---

# Windows 10 servicing overview

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic provides an overview of the new servicing model for Windows 10. For more detailed information about this model, refer to [Windows 10 servicing options](../manage/introduction-to-windows-10-servicing.md).

## The Windows servicing model

Traditionally, new versions of Windows have been released every few years. The deployment of those new versions within an organization would then become a project, either by leveraging a "wipe and load" process to deploy the new operating system version to existing computers, or by migrating to the new operating system version as part of the hardware replacement cycle. Either way, a significant amount of time and effort was required to complete these tasks.

With Windows 10, a new model is being adopted. This new model, referred to as "Windows as a service," requires organizations to rethink how they deploy and upgrade Windows. It is no longer a project that happens every few years, it is a continual process. 

## Windows as a service

Instead of new features being added only in new releases that happen every few years, the goal of Windows as a service is to continually provide new capabilities. New features are provided or updated two to three times per year, while maintaining a high level of hardware and application compatibility. 

This new model uses simpler deployment methods, reducing the overall amount of effort required for Windows servicing. By combining these simpler methods (such as in-place upgrade) with new techniques to deploy upgrades in phases to existing devices, the effort that used to be performed as part of a traditional deployment project is spread across a broad period of time.

## Windows 10 servicing branches

The concept of branching goes back many years, and represents how Windows has traditionally been written and serviced. Each release of Windows was from a particular branch of the Windows code, and updates would be made to that release for the lifecycle of that release. This concept still applies now with Windows 10, but is much more visible because it is incorporated directly into the servicing model.

Microsoft has implemented the following new servicing options in Windows 10:

**Windows Insider Program**: To see new features before they are released, to provide feedback on those new features, and to initially validate compatibility with existing applications and hardware, a small number of PCs can leverage the Windows Insider Program branch. These are typically dedicated lab machines used for IT testing, secondary PCs used by IT administrators, and other non-critical devices.<BR>
**Current Branch (CB)**: For early adopters, IT teams, and other broader piloting groups, the Current Branch (CB) can be used to further validate application compatibility and newly-released features.<BR>
**Current Branch for Business (CBB)**. For the majority of people in an organization, the Current Branch for Business (CBB) allows for a staged deployment of new features over a longer period of time.<BR>
**Long-Term Servicing Branch (LTSB)**: For critical or specialized devices (for example, operation of factory floor machinery, point-of-sale systems, automated teller machines), the Long-Term Servicing Branch (LTSB) provides a version of Windows 10 Enterprise that receives no new features, while continuing to be supported with security and other updates for a long time. (Note that the Long-Term Servicing Branch is a separate Windows 10 Enterprise image, with many in-box apps, including Microsoft Edge, Cortana, and Windows Store, removed.)<BR>
![branches](images/branch.png)

These servicing options provide pragmatic solutions to keep more devices more current in enterprise environments than was previously possible. Most organizations will leverage all of these choices, with the mix determined by how individual PCs are used. Some examples are shown in the table below:

| Industry           | Windows Insider Program | Current Branch | Current Branch for Business | Long-Term Servicing Branch |
|--------------------|-------------------------|----------------|-----------------------------|----------------------------|
| Retail             | &lt;1%                  | 10%            | 60%                         | 30%                        |
| Manufacturing      | &lt;1%                  | 10%            | 55%                         | 45%                        |
| Pharmaceuticals    | &lt;1%                  | 10%            | 50%                         | 40%                        |
| Consulting         | 10%                     | 50%            | 35%                         | 5%                         |
| Software developer | 30%                     | 60%            | 5%                          | 5%                         |
<BR>
Because every organization is different, the exact breakdown will vary even within a specific industry. The examples shown above should not be taken as specific recommendations. To determine the appropriate mix for a specific organization, profile how individual PCs are used within the organization, and target them with the appropriate branch.

-   Retailers often have critical devices (for example, point-of-sale systems) in stores which results in higher percentages of PCs on the Long-Term Servicing Branch. But those used by information workers in support of the retail operations would leverage Current Branch for Business to receive new features.

-   Manufacturers typically have critical devices (for example, control systems) in factories; these are also good candidates for the Long-Term Servicing Branch. But as with retailers, information workers that support those factories are better suited to the Current Branch for Business.

-   Pharmaceutical firms often have regulatory requirements for PCs used for the development of their products, which are best satisfied by using Long-Term Servicing Branch. But not all PCs are subject to these regulatory requirements; those that are not can use the Current Branch for Business.

-   Consulting firms want their employees to have the latest functionality so they can be as productive as possible. They also want to develop expertise with new capabilities as soon as possible, hence more emphasis on Current Branch. But they also have information workers that provide services to the consultants; these workers can leverage Current Branch for Business.

-   Software developers typically work on software that will release in conjunction with a new Windows upgrade. To enable that, a significant percentage of developers may use the Windows Insider Program preview branch for initial efforts, which shifts to Current Branch as development progresses.

Note that there are few, if any, scenarios where an entire organization would use the Long-Term Servicing Branch for all PCs – or even for a majority of them.

With these new servicing options, Microsoft streamlined the Windows product engineering and release cycle so that Microsoft can deliver new features, experiences, and functionality more quickly than ever. Microsoft also created new ways to deliver and install feature upgrades and servicing updates that simplify deployments and on-going management, broaden the base of employees who can be kept current with the latest Windows capabilities and experiences, and lower total cost of ownership.

Windows 10 enables organizations to fulfill the desire to provide users with the latest features while balancing the need for manageability and cost control. To keep pace with technology, there are good business reasons to keep a significant portion of your enterprise's devices *current* with the latest release of Windows. 

## Related topics

[Windows 10 deployment considerations](windows-10-deployment-considerations.md)<BR>
[Windows 10 compatibility](windows-10-compatibility.md)<BR>
[Windows 10 infrastructure requirements](windows-10-infrastructure-requirements.md)