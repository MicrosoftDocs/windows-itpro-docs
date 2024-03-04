---
title: Assigned Access examples
description: Practical examples of XML files to configure Assigned Access.
ms.date: 03/04/2024
ms.topic: reference
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Assigned Access examples

This artcile contains examples of XML files to configure a device with Assigned Access. The files can be easily modified to fit your specific needs.

To learn more:

- [Create an Assigned Access configuration XML file](configuration-file.md).
- [Assigned Access XML Schema Definition (XSD)](xsd.md).

## Kiosk experience with Microsoft Edge

[!INCLUDE [example-kiosk-edge](includes/example-kiosk-edge.md)]

## Kiosk experience with UWP app

[!INCLUDE [example-kiosk-uwp](includes/example-kiosk-uwp.md)]

::: zone pivot="windows-10"

## File Explorer restrictions

[!INCLUDE [example-file-explorer-restrictions](includes/example-file-explorer-restrictions.md)]

::: zone-end

## Global Profile

The following configuration demonstrates that only a global profile is used, with no user configured.

[!INCLUDE [example-global-profile](includes/example-global-profile.md)]

## User Group

The following configuration demonstrates how to assign profiles to different users and groups, including a user configured to automatically sign in.

[!INCLUDE [example-usergroup](includes/example-usergroup.md)]

## Restricted user experience

[!INCLUDE [example-restricted-experience](includes/example-restricted-experience.md)]
