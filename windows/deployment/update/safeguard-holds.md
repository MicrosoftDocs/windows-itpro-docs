---
title: Safeguard holds for Windows
description: What are safeguard holds? How to can you tell if a safeguard hold is in effect, and what to do about it.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
ms.collection:
  - highpri
  - tier2
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 12/31/2017
---

# Safeguard holds

Microsoft uses quality and compatibility data to identify issues that might cause a Windows client feature update to fail or roll back. When we find such an issue, we might apply safeguard holds to the updating service to prevent affected devices from installing the update in order to safeguard them from these experiences. We also use safeguard holds when a customer, a partner, or Microsoft internal validation finds an issue that would cause severe effect (for example, rollback of the update, data loss, loss of connectivity, or loss of key functionality) and when a workaround isn't immediately available.

Safeguard holds prevent a device with a known issue from being offered a new operating system version. We renew the offering once a fix is found and verified. We use holds to ensure customers have a successful experience as their device moves to a new version of Windows client.

The safeguard holds lifespan varies depending on the time required to investigate and fix an issue. During this time, Microsoft works diligently to procure, develop, and validate a fix and then offer it to affected devices. We monitor quality and compatibility data to confirm that a fix is complete before releasing the safeguard hold. Once we release the safeguard hold, Windows Update resumes offering new operating system versions to devices.

Safeguard holds only affect devices that use the Windows Update service for updates. We encourage IT admins who manage updates to devices through other channels (such as media installations or updates coming from Windows Server Update Services) to remain aware of known issues that might also be present in their environments.

IT admins managing updates using [Windows Autopatch](/windows/deployment/windows-autopatch/overview/windows-autopatch-overview) also benefit from safeguard holds on devices that are likely to be affected by an issue. To learn more, see [Safeguard holds against likely and known issues](/windows/deployment/update/deployment-service-overview#safeguard-holds-against-likely-and-known-issues).

## Am I affected by a safeguard hold?

IT admins can use [Windows Update for Business reports](wufb-reports-overview.md) to monitor various update health metrics for devices in their organization. The reports provide a list of [active Safeguard Holds](wufb-reports-workbook.md#bkmk_update-group-feature) to provide you with insight into the safeguard holds that are preventing devices from updating or upgrading.

Windows Update for Business reports identifies safeguard holds by their 8-digit identifiers. For safeguard holds associated with publicly discussed known issues, you can find more details about the issue on the [Windows release health](/windows/release-health/) dashboard by searching for the safeguard hold ID on the **Known issues** page for the relevant release.

On devices that use Windows Update (but not Windows Update for Business), the **Windows Update** page in the Settings app displays a message stating that an update is on its way, but not ready for the device. Instead of the option to download and install the update, users see a message.

![Feature update message reading "The Windows 10 May 2020 Update is on its way. Once it's ready for your device, you'll see the update available on this page.](images/safeguard-hold-notification.png)

This message means that the device is protected by one or more safeguard holds. When the issue is resolved and the update is safe to install, we release the safeguard hold so the update can resume safely.

## What can I do?

We recommend that you don't attempt to manually update until issues have been resolved and holds released.

> [!CAUTION]
> Opting out of a safeguard hold can put devices at risk from known performance issues. We strongly recommend that you complete robust testing to ensure the impact is acceptable before opting out.
  
With that in mind, IT admins who stay informed with [Windows Update for Business reports](wufb-reports-overview.md) and the [Windows release health](/windows/release-health/) dashboard can choose to temporarily [opt-out of the protection of all safeguard holds](safeguard-opt-out.md) and allow an update to proceed. We recommend opting out only in an IT environment and for validation purposes. If you do opt out of a hold, this condition is temporary. Once an update is complete, the protection of safeguard holds is reinstated automatically.
