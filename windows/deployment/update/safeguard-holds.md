---
title: Safeguard holds
description: What are safeguard holds, how can you tell if one is in effect, and what to do about it
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Safeguard holds

**Applies to**

-   Windows 10
-   Windows 11

Microsoft uses quality and compatibility data to identify issues that might cause a Windows client feature update to fail or roll back. When we find such an issue, we might apply safeguard holds to the updating service to prevent affected devices from installing the update in order to safeguard them from these experiences. We also use safeguard holds when a customer, a partner, or Microsoft internal validation finds an issue that would cause severe impact (for example, rollback of the update, data loss, loss of connectivity, or loss of key functionality) and when a workaround is not immediately available.

Safeguard holds prevent a device with a known issue from being offered a new operating system version. We renew the offering once a fix is found and verified. We use holds to ensure customers have a successful experience as their device moves to a new version of Windows client.

The lifespan of safeguard holds varies depending on the time required to investigate and fix an issue. During this time, Microsoft works diligently to procure, develop, and validate a fix and then offer it to affected devices. We monitor quality and compatibility data to confirm that a fix is complete before releasing the safeguard hold. Once we release the safeguard hold, Windows Update will resume offering new operating system versions to devices.

Safeguard holds only affect devices that use the Windows Update service for updates. We encourage IT admins who manage updates to devices through other channels (such as media installations or updates coming from Windows Server Update Services) to remain aware of known issues that might also be present in their environments.

IT admins managing updates using the [Windows Update for Business deployment service](/windows/deployment/update/deployment-service-overview) also benefit from safeguard holds on devices that are likely to be affected by an issue. To learn more, see [Safeguard holds against likely and known issues](/windows/deployment/update/deployment-service-overview#safeguard-holds-against-likely-and-known-issues).

## Am I affected by a safeguard hold?

IT admins can use [Update Compliance](update-compliance-monitor.md) to monitor various update health metrics for devices in their organization. Update Compliance provides a [Safeguard Holds report](/windows/deployment/update/update-compliance-safeguard-holds), as well as [queries in the Feature Update Status report](/windows/deployment/update/update-compliance-feature-update-status), to provide you insight into the safeguard holds that are preventing devices from updating or upgrading.

The Update Compliance reports identify safeguard holds by their 8-digit identifiers. For safeguard holds associated with publicly discussed known issues, you can find additional details about the issue on the [Windows release health](/windows/release-health/) dashboard by searching for the safeguard hold ID on the **Known issues** page for the relevant release.

On devices that use Windows Update (but not Windows Update for Business), the **Windows Update** page in the Settings app displays a message stating that an update is on its way, but not ready for the device. Instead of the option to download and install the update, users will see this message:

![Feature update message reading "The Windows 10 May 2020 Update is on its way. Once it's ready for your device, you'll see the update available on this page.](images/safeguard-hold-notification.png)

This message means that the device is protected by one or more safeguard holds. When the issue is resolved and the update is safe to install, we will release the safeguard hold and the update can resume safely.

## What can I do?

We recommend that you do not attempt to manually update until issues have been resolved and holds released.

> [!CAUTION]
> Opting out of a safeguard hold can put devices at risk from known performance issues. We strongly recommend that you complete robust testing to ensure the impact is acceptable before opting out.
  
With that in mind, IT admins who stay informed with [Update Compliance](update-compliance-feature-update-status.md#safeguard-holds) and the [Windows release health](/windows/release-health/) dashboard can choose to temporarily [opt-out of the protection of all safeguard holds](safeguard-opt-out.md) and allow an update to proceed. We recommend opting out only in an IT environment and for validation purposes. If you do opt out of a hold, this condition is temporary. Once an update is complete, the protection of safeguard holds is reinstated automatically.
