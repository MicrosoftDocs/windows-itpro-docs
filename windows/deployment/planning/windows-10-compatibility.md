---
title: Windows 10 compatibility (Windows 10)
description: Windows 10 will be compatible with most existing PC hardware; most devices running Windows 7, Windows 8, or Windows 8.1 will meet the requirements for Windows 10.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
ms.date: 10/28/2022
---

# Windows 10 compatibility

**Applies to**

-   Windows 10

Windows 10 will be compatible with most existing PC hardware; most devices running Windows 7, Windows 8, or Windows 8.1 will meet the requirements for Windows 10.

For full system requirements, see [Windows 10 specifications](https://go.microsoft.com/fwlink/p/?LinkId=625077). Some driver updates may be required for Windows 10.

Existing desktop (Win32) application compatibility is also expected to be strong, with most existing applications working without any changes. Those applications that interface with Windows at a low level, those applications that use undocumented APIs, or those that do not follow recommended coding practices could experience issues.

Existing Windows Store (WinRT) apps created for Windows 8 and Windows 8.1 should also continue to work, because compatibility can be validated against all the apps that have been submitted to the Windows Store.

For web apps and sites, modern HTML5-based sites should also have a high degree of compatibility and excellent performance through the new Microsoft Edge browser, while older web apps and sites can continue to use Internet Explorer 11 and the Enterprise Mode features that were first introduced in Windows 7 and Windows 8.1 and are still present in Windows 10. For more information about Internet Explorer and Enterprise Mode, see the [Internet Explorer 11 Deployment Guide for IT Pros.](/internet-explorer/ie11-deploy-guide/)

## Recommended application testing process

Historically, organizations have performed extensive, and often exhaustive, testing of the applications they use before deployment of a new Windows version, service pack, or any other significant update. With Windows 10, organizations are encouraged to use more optimized testing processes, which reflect the higher levels of compatibility that are expected. At a high level:

-   Identify mission-critical applications and websites, those applications and websites that are essential to the organization's operations. Focus testing efforts on this subset of applications, early in the Windows development cycle (for example, with Windows Insider Program builds) to identify potential issues. Report any issues you encounter with the Windows Feedback tool, so that these issues can be addressed prior to the next Windows release.

-   For less critical applications, apply an "internal flighting" or pilot-based approach, by deploying new Windows upgrades to groups of machines, growing gradually in size and potential impact, to verify compatibility with hardware and software. Reactively address issues before you expand the pilot to more machines.

## Related articles


[Windows 10 servicing options](../update/waas-servicing-strategy-windows-10-updates.md)

[Windows 10 deployment considerations](windows-10-deployment-considerations.md)

[Windows 10 infrastructure requirements](windows-10-infrastructure-requirements.md)