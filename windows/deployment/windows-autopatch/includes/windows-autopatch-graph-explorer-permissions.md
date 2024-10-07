---
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.service: windows-client
ms.subservice: autopatch
ms.topic: include
ms.date: 09/16/2024
ms.localizationpriority: medium
---
<!--This file is shared by windows-autopatch-driver-and-firmware-programmatic-controls.md, windows-autopatch-windows-quality-update-programmatic-controls.md, and the deployment-service-feature-updates.md articles. Headings may be driven by article context. 7512398 -->

The following permissions are needed for the queries listed in this article:

- [WindowsUpdates.ReadWrite.All](/graph/permissions-reference#windows-updates-permissions) for [Windows Autopatch](/graph/api/resources/adminwindowsupdates) operations.
- At least [Device.Read.All](/graph/permissions-reference#device-permissions) permission to display [device](/graph/api/resources/device) information.

Some roles, such as the [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator), already have these permissions.
