---
title: FAQ
description:  This article answers frequently asked questions about Windows Autopatch
ms.date: 05/30/2022
ms.prod: w11
ms.technology: windows
ms.topic: troubleshooting
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# FAQ

## General

| Question | Answer |
| ----- | ----- |
| What Windows versions are supported? | Windows Autopatch works with all [supported versions of Windows 10 and Windows 11 Enterprise edition](/windows/release-health/supported-versions-windows-client). |
| What is the difference between Windows Update for Business and Windows Autopatch? | Windows Autopatch is a service that removes the need for organizations to plan and operate the update process.<p> Windows Autopatch moves the burden from your IT to Microsoft. Windows Autopatch uses [Windows Update for Business](/windows/deployment/update/deployment-service-overview) and other service components to update devices. Both are part of Windows Enterprise E3. |
| Is Windows 365 for Enterprise supported with Windows Autopatch? | Windows Autopatch supports Windows 365 for Enterprise. Windows 365 for Business isn't supported.|
| Does Windows Autopatch support Windows Education (A3) or Windows Front Line Worker (F3) licensing? | Autopatch isn't available for 'A' or 'F' series licensing. |
| Will Windows Autopatch support local domain join Windows 10? | Windows Autopatch doesn't support local (on-premise) domain join. Windows Autopatch supports [Hybrid AD join](/azure/active-directory/devices/concept-azure-ad-join-hybrid) or pure [Azure AD join](/azure/active-directory/devices/concept-azure-ad-join-hybrid). |
| Will Windows Autopatch be available for state and local government customers? | Windows Autopatch is available for all Windows E3 customers using Azure commercial cloud. However, Autopatch isn't currently supported for government cloud (GCC) customers. |

## Requirements

| Question | Answer |
| ----- | ----- |
| What are the prerequisites for Windows Autopatch? | <ul><li>[Supported Windows 10/11 Enterprise edition versions](/windows/release-health/supported-versions-windows-client)</li><li>[Azure Active Directory (Azure AD) Premium](/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses)</li><li>[Hybrid Azure AD-Joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid) or [Azure AD-joined only](/azure/active-directory/devices/concept-azure-ad-join-hybrid)</li><li>[Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune)</li><li>[Co-management](/prepare/windows-autopatch-prerequisites.md#co-management-requirements)</li><li>[Configuration Manager version 2010 or later](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2010)</li><li>[Switch workloads for device configuration, Windows Update and Microsoft 365 Apps from Configuration Manager to Intune](/mem/configmgr/comanage/how-to-switch-workloads) (minimum Pilot Intune)</li></ul> |
| What are the licensing requirements for Windows Autopatch? |<ul><li>Windows Autopatch is included with Window 10/11 Enterprise E3 or higher. For more information, see [More about licenses](../prepare/windows-autopatch-prerequisites.md#more-about-licenses).</li><li>[Azure AD Premium](/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses) (for Co-management)</li><li>[Microsoft Intune](/mem/intune/fundamentals/licenses) (includes Configuration Manager 2010 or greater via co-management)</li></ul> |
| Are there hardware requirements for Windows Autopatch? | No, Windows Autopatch doesn't require any specific hardware. However, general hardware requirements for updates are still applicable. For example, to deliver Windows 11 to your Autopatch devices they must meet [specific hardware requirements](/windows/windows-11-specifications?r=1). Windows devices must be supported by your hardware OEM. |

## Device registration

| Question | Answer |
| ----- | ----- |
| Can Autopatch customers individually approve or deny devices? | No you can't individually approve or deny devices. Once a device is registered with Windows Autopatch, updates are rolled out to the devices according to its ring assignment. Individual device level control isn't supported. |

## Update management

| Question | Answer |
| ----- | ----- |
| What systems does Windows Autopatch update? |<ul><li>Windows 10/11 quality updates: Windows Autopatch manages all aspects of update rings.</li><li>Microsoft 365 Apps for enterprise updates: All devices registered for Windows Autopatch will receive updates from the Monthly Enterprise Channel.</li><li>Microsoft Edge: Windows Autopatch configures eligible devices to benefit from Microsoft Edge's progressive rollouts on the Stable channel and will provide support for issues with Microsoft Edge updates.</li><li>Microsoft Teams: Windows Autopatch allows eligible devices to benefit from the standard automatic update channels and will provide support for issues with Teams updates.</li> |
| What does Windows Autopatch do to ensure updates are done successfully? | For Windows quality updates, updates are applied to device in the Test ring first. The devices are evaluated, and then rolled out to the First, Fast then Broad rings. There's an evaluation period at each progression.<p><p>This process is dependent on customer testing and verification of all updates during these rollout stages. The outcome is to ensure that registered devices are always up to date and disruption to business operations is minimized to free up your IT department from that ongoing task. |
| What happens if there's an issue with an update? | Autopatch relies on the following capabilities to help resolve update issues. <ol><li>Pausing and resuming: If Windows Autopatch detects an issue with a Windows quality release, we may decide that it's necessary to pause that release. Once the issue is resolved, the release will be resumed. For more information, see [Pausing and resuming a Windows quality release](../operate/windows-autopatch-wqu-overview.md#pausing-and-resuming-a-release).</li><li>Rollback: If Windows Autopatch detects issues between versions of Microsoft 365 Apps for enterprise, we might force all devices to roll back to the previous version. For more information, see [Update controls for Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md#update-controls).</li></ol>|
| Will Windows quality updates be released more quickly after vulnerabilities are identified, or what is the regular cadence of updates?  | For zero-day threats, Autopatch will have an [expedited release cadence](../operate/windows-autopatch-wqu-overview.md#expedited-releases). For normal updates Autopatch uses a [regular release cadence](../operate/windows-autopatch-wqu-overview.md#windows-quality-update-releases) starting with devices in the Test ring and completing with general rollout to the Broad ring. |
| Can customers configure when to move to the next ring or is it controlled by Windows Autopatch? | The decision of when to move to the next ring is handled by Windows Autopatch; it isn't customer configurable. |
| Can you customize the scheduling of an update rollout to only install on certain days and times? | No, you can't customize update scheduling. However, you can specify [active hours](../operate/windows-autopatch-wqu-end-user-exp.md#servicing-window) to prevent users from updating during business hours. |
| Does Autopatch support include and exclude groups, or dynamic groups to define ring membership? | Windows autopatch doesn't support managing update ring membership using your Azure AD groups. For more information, see [Move devices between rings](../operate/windows-autopatch-update-management.md#moving-devices-between-rings). |
| Does Autopatch have two release cadences per update or are there two release cadences per-ring? | The release cadences are defined based on the update type. For example, a [regular cadence](../operate/windows-autopatch-wqu-overview.md#windows-quality-update-releases) (for a Windows quality update would be a gradual rollout from the Test ring to the Broad ring over 14 days whereas an [expedited release](../operate/windows-autopatch-wqu-overview.md#expedited-releases) would roll out more rapidly. |

## Support

| Question | Answer |
| ----- | ----- |
| What support is available for customers who need help with onboarding to Windows Autopatch? | The FastTrack Center is the primary mode of support for customers who need assistance from Microsoft to meet the pre-requisites (such as Intune and Azure or Hybrid AD) for onboarding to Windows Autopatch. For more information, see [Microsoft FastTrack for Windows Autopatch](../operate/windows-autopatch-support-request.md#microsoft-fasttrack).<p><p>When you've onboarded with Windows Autopatch, you can [submit a support request](../operate/windows-autopatch-support-request.md) with the Windows Autopatch Service Engineering Team. |

## Other

| Question | Answer |
| ----- | ----- |
| Are there Autopatch specific APIs or PowerShell scripts available? | Programmatic access to Autopatch isn't currently available. |
