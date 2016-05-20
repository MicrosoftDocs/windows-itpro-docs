---
title: Windows 10 security baselines (Windows 10)
description: Use this topic to learn about updates to the Windows 10 security baselines and where to download it from.
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Windows 10 security baselines

**Applies to**
-   Windows 10

Use the sections in this topic to learn and what has changed in the Windows 10 security baselines as well as a link to download them.

## Windows 10, Version 1511 security baseline

The Windows 10, Version 1507 security baseline is available on the [Microsoft Download Center](http://go.microsoft.com/fwlink/p/?LinkID=799381).

Here's a list of updates that were made to this version:

-   Added the **Turn off Microsoft consumer experiences** setting.

## Windows 10, Version 1507 security baseline

The Windows 10, Version 1507 security baseline is available on the [Microsoft Download Center](http://go.microsoft.com/fwlink/p/?LinkID=799380).

Here's a list of updates that were made to this version:

-   Removed configuration of **Allow unicast response** from the domain, private, and public Windows Firewall profiles. If you do not allow unicast responses, DHCP address acquisition will not work.
-   Removed the restrictions on the number of cached logons.
-   Removed the screen saver timeout from the user configuration because **Interactive logon: Machine inactivity limit** is configured at the device level.
-   Removed Enhanced Mitigation Experience Toolkit settings.
-   Removed the **Recovery console: Allow automatic administrative logon** setting.

## Related topics

- [Use security baselines in your organization](security-baselines.md)
