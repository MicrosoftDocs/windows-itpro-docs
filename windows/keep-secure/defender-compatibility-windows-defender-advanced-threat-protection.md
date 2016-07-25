---
title: Windows Defender compatibility
description: Learn about how Windows Defender works with Windows Defender ATP.
keywords: windows defender compatibility, defender, windows defender atp
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Windows Defender compatibility

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

If an onboarded endpoint is protected by a third-party antimalware client, Windows Defender on that endpoint will enter into passive mode. 

Windows Defender will continue to receive updates, and the *mspeng.exe* process will be listed as a running a service, but it will not perform scans and will not replace the running third-party antimalware client.

The Windows Defender interface will be disabled, and users on the endpoint will not be able to use Windows Defender to perform on-demand scans or configure most options.

For more information, see the **Compatibility** section in the [Windows Defender in Windows 10 topic](windows-defender-in-windows-10.md# compatibility-with-windows-defender-advanced-threat-protection).


