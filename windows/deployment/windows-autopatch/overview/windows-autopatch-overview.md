---
title: What is Windows Autopatch?
description: Details what the service is and shortcuts to articles.
ms.date: 07/11/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.collection:
  - highpri
  - tier2
ms.reviewer: hathind
---

# What is Windows Autopatch?

Windows Autopatch is a cloud service that automates Windows, Microsoft 365 Apps for enterprise, Microsoft Edge, and Microsoft Teams updates to improve security and productivity across your organization.

## Unique to Windows Autopatch

Rather than maintaining complex digital infrastructure, businesses want to focus on what makes them unique and successful. Windows Autopatch offers a solution to some of the challenges facing businesses and their people today:

- **Close the security gap**: By keeping software current, there are fewer vulnerabilities and threats to your devices.
- **Close the productivity gap**: By adopting features as they're made available, users get the latest tools to enhance creation and collaboration.
- **Optimize your IT admin resources**: By automating routine endpoint updates, IT pros have more time to create value.
- **On-premises infrastructure**: Transitioning to the world of software as a service (SaaS) allows you to minimize your investment in on-premises hardware since updates are delivered from the cloud.  
- **Onboard new services**: Windows Autopatch is scoped to make it easy to enroll and minimizes the time investment from your IT Admins to get started.  
- **Minimize end user disruption**: By releasing in sequential deployment rings, and responding to reliability and compatibility signals, user disruptions due to updates are minimized.

Windows Autopatch helps you minimize the involvement of your scarce IT resources in the planning and deployment of updates for Windows, Microsoft 365 Apps, Microsoft Edge or Teams. By crafting careful rollout sequences and communicating with you throughout the release, your IT Admins can focus on other activities and tasks.

## Update management

The goal of Windows Autopatch is to deliver software updates to registered devices; the service frees up IT and minimizes disruptions to your end users. Once a device is registered with the service, Windows Autopatch takes on several areas of management:

| Management area | Service level objective |
| ----- | ----- |
| [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) | Windows Autopatch aims to keep at least 95% of eligible devices on the latest Windows quality update 21 days after release. |
| [Windows feature updates](../operate/windows-autopatch-windows-feature-update-overview.md) | Windows Autopatch aims to keep at least 99% of eligible devices on a supported version of Windows so that they can continue receiving Windows feature updates. |
| [Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md) | Windows Autopatch aims to keep at least 90% of eligible devices on a supported version of the Monthly Enterprise Channel (MEC). |
| [Microsoft Edge](../operate/windows-autopatch-edge.md) | Windows Autopatch configures eligible devices to benefit from Microsoft Edge's progressive rollouts on the Stable channel. |
| [Microsoft Teams](../operate/windows-autopatch-teams.md) | Windows Autopatch allows eligible devices to benefit from the standard automatic update channel. |

For each management area, there's a set of eligibility requirements that determine if the device will receive that specific update. An example of an eligibility criteria is that the device must have access to the required network endpoints for the Windows update. It's your responsibility to ensure that devices are meeting eligibility requirements for each management area.

To determine if we're meeting our service level objectives, all eligible devices are labeled as either "Healthy" or "Unhealthy". Healthy devices are meeting the eligibility requirements for that management area and unhealthy devices aren't. If Windows Autopatch falls below any service level objective for a management area, an incident is raised. Then, we bring the service back into compliance.

While an update is in progress, it's monitored by Windows Autopatch. Depending on the criticality of the update, the service may decide to expedite the update. If we detect an issue during release, we may pause or roll back the update. Since each management area has a different monitoring and update control capabilities, you review the documentation for each area to familiarize yourself with the service.

## Messages

To stay informed of upcoming changes, including new and changed features, planned maintenance, or other important announcements, navigate to [Microsoft 365 admin center > Message center](https://admin.microsoft.com/adminportal/home#/MessageCenter).

## Accessibility

Microsoft remains committed to the security of your data and the [accessibility](https://www.microsoft.com/trust-center/compliance/accessibility) of our services. For more information, see the [Microsoft Trust Center](https://www.microsoft.com/trust-center) and the [Office Accessibility Center](https://support.office.com/article/ecab0fcf-d143-4fe8-a2ff-6cd596bddc6d).

## Need more details?

| Area | Description |
| ----- | ----- |
| Prepare | The following articles describe the mandatory steps to prepare and enroll your tenant into Windows Autopatch:<ul><li>[Prerequisites](../prepare/windows-autopatch-prerequisites.md)</li><li>[Configure your network](../prepare/windows-autopatch-configure-network.md)</li><li>[Enroll your tenant](../prepare/windows-autopatch-enroll-tenant.md)</li><li>[Fix issues found by the Readiness assessment tool](../prepare/windows-autopatch-fix-issues.md)</li></ul> |
| Deploy | Once you've enrolled your tenant, this section instructs you to:<ul><li>[Add and verify admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li><li>[Register your devices](../deploy/windows-autopatch-register-devices.md)</li></ul> |
| Operate | This section includes the following information about your day-to-day life with the service:<ul><li>[Update management](../operate/windows-autopatch-update-management.md)</li><li>[Maintain your Windows Autopatch environment](../operate/windows-autopatch-maintain-environment.md)</li><li>[Submit a support request](../operate/windows-autopatch-support-request.md)</li><li>[Deregister a device](../operate/windows-autopatch-deregister-devices.md)</li></ul>
| References | This section includes the following articles:<ul><li>[Windows update policies](../references/windows-autopatch-windows-update-unsupported-policies.md)</li><li>[Microsoft 365 Apps for enterprise update policies](../references/windows-autopatch-microsoft-365-policies.md)</li><li>[Privacy](../overview/windows-autopatch-privacy.md)</li><li>[Windows Autopatch Preview Addendum](../references/windows-autopatch-preview-addendum.md)</li></ul> |

### Have feedback or would like to start a discussion?

You can [provide feedback](https://go.microsoft.com/fwlink/?linkid=2195593) or start a discussion in our [Windows Autopatch Tech Community](https://aka.ms/Community/WindowsAutopatch).
