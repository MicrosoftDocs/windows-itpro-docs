---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.subservice: itpro-updates
ms.service: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md, deployment-service-expedited-updates.md, and the deployment-service-feature-updates.md articles. Headings may be driven by article context. 7512398 -->

The following permissions are needed for the queries listed in this article:

- [WindowsUpdates.ReadWrite.All](/graph/permissions-reference#windows-updates-permissions) for [Windows Update for Business deployment service](/graph/api/resources/adminwindowsupdates) operations.
- At least [Device.Read.All](/graph/permissions-reference#device-permissions) permission to display [device](/graph/api/resources/device) information.

Some roles, such as the [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator), already have these permissions.
