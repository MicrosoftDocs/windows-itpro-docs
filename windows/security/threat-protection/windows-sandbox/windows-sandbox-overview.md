---
title: Windows Sandbox overview
description: 
ms.prod: w10
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: 
ms.topic: article
ms.localizationpriority: 
ms.date: 
ms.reviewer: 
---

# Windows Sandbox overview

Windows Sandbox provides a lightweight desktop environment to safely run applications in isolation. Software that's installed inside the Windows Sandbox environment remains in the "sandboxed" and can't affect the host machine.

A sandbox is temporary. When it's closed, all the software and files and the state are permanently deleted. You get a brand-new instance of the sandbox every time you open the application.

Software and applications installed on the host aren't directly available in the sandbox. If you need specific applications available inside the Windows Sandbox environment, they must be explicitly installed within the environment.

Windows Sandbox has the following properties:
- **Part of Windows**: Everything required for this feature is included in Windows 10 Pro and Enterprise. There's no need to download a VHD.
- **Pristine**: Every time Windows Sandbox runs, it's as clean as a brand-new installation of Windows.
- **Disposable**: Nothing persists on the device. Everything is discarded when the user closes the application.
- **Secure**: Uses hardware-based virtualization for kernel isolation. It relies on the Microsoft hypervisor to run a separate kernel that isolates Windows Sandbox from the host.
- **Efficient:** Uses the integrated kernel scheduler, smart memory management, and virtual GPU.

<!--

The following video provides an overview of Windows Sandbox.

[embed Ignite 2019 Sandbox talk video here, link is here: https://myignite.techcommunity.microsoft.com/sessions/79739?source=sessions ]

[!VIDEO https://www.microsoft.com/videoplayer/embed/***XXXXXX***]  
<!--
RedTiger ID for embedding video requested 3/10 - Open WorkItem [25505527](https://office.visualstudio.com/MAX/_workitems/edit/3993527)
-->

