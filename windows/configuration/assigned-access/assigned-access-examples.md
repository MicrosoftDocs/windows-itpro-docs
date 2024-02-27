---
title: Assigned Access examples
description: Practical examples of XML files to configure Assigned Access.
ms.date: 02/26/2024
ms.topic: reference
zone_pivot_groups: windows-versions-11-10
appliesto:
---

# Assigned Access examples

This artcile contains examples of XML files to configure a device with Assigned Access. The files can be easily modified to fit your specific needs.

To learn more:

- [Create an Assigned Access configuration XML file](assigned-access-configuration-file.md).
- [Assigned Access XML Schema Definition (XSD)](assigned-access-xsd.md).

## Kiosk experience with Microsoft Edge example

[!INCLUDE [assigned-access-example-kiosk-edge](includes/assigned-access-example-kiosk-edge.md)]

## Kiosk experience with UWP app example

[!INCLUDE [assigned-access-example-kiosk-uwp](includes/assigned-access-example-kiosk-uwp.md)]

::: zone pivot="windows-10"

## File Explorer restrictions example

[!INCLUDE [assigned-access-example-file-explorer-restrictions](includes/assigned-access-example-file-explorer-restrictions.md)]

::: zone-end

## Global Profile example

The following configuration demonstrates that only a global profile is used, with no user configured.

[!INCLUDE [assigned-access-example-global-profile](includes/assigned-access-example-global-profile.md)]

## User Group example

The following configuration demonstrates how to assign profiles to different users and groups, including a user configured to automatically sign in.

[!INCLUDE [assigned-access-example-usergroup](includes/assigned-access-example-usergroup.md)]
