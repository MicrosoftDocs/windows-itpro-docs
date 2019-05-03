---
title: Collecting diagnostic information from Microsoft Defender ATP for Mac
description: Describes how to collect diagnostic information from Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, intune, jamf, macos, mojave, high sierra, sierra
search.product: eADQiWindows 10XVcnh
search.appverid: #met150
ms.prod: #w10
ms.mktglfcycl: #deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-maave
author: martyav
ms.localizationpriority: #medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Collecting diagnostic information

**Applies to:**

[Windows Defender Advanced Threat Protection (Windows Defender ATP) for Mac](https://go.microsoft.com/fwlink/p/?linkid=???To-Add???)
 
>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

If you can reproduce a problem, please increase the logging level, run the system for some time, and restore the logging level to the default.

1) Increase logging level:

```bash
   mavel-mojave:~ testuser$ mdatp log-level --verbose
   Creating connection to daemon
   Connection established
   Operation succeeded
```

2) Reproduce the problem

3) Run `mdatp --diagnostic` to backup Defender ATP's logs. The command will print out location with generated zip file.

   ```bash
   mavel-mojave:~ testuser$ mdatp --diagnostic
   Creating connection to daemon
   Connection established
   "/Library/Application Support/Microsoft/Defender/wdavdiag/d85e7032-adf8-434a-95aa-ad1d450b9a2f.zip"
   ```

4) Restore logging level:

   ```bash
   mavel-mojave:~ testuser$ mdatp log-level --info
   Creating connection to daemon
   Connection established
   Operation succeeded
   ```

## Installation issues

If an error occurs during installation, the installer will only report a general failure.

The detailed log will be saved to /Library/Logs/Microsoft/wdav.install.log. If you experience issues during installation, send us this file so we can help diagnose the cause.