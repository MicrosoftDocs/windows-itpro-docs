---
title: Uninstalling Microsoft Defender ATP for Mac
description: Describes how to uninstall Microsoft Defender ATP for Mac.
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

# Uninstalling

**Applies to:**

[Windows Defender Advanced Threat Protection (Windows Defender ATP) for Mac](https://go.microsoft.com/fwlink/p/?linkid=???To-Add???)
 
>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

There are several ways to uninstall Microsoft Defender ATP for Mac. Please note that while centrally managed uninstall is available for JAMF, it is not yet available for Intune. See [Windows Defender Advanced Threat Protection (Windows Defender ATP) for Mac](https://go.microsoft.com/fwlink/p/?linkid=???To-Add???) for updates on development.

## Within the GUI

- Open **Finder > Applications**. Right click on **Microsoft Defender ATP > Move to Trash**.

## From the command line:

- ```sudo rm -rf '/Applications/Microsoft Defender ATP'```

## With a script

Create a script in **Settings > Computer Management > Scripts**.

![Microsoft Defender uninstall screenshot](images/MDATP_26_Uninstall.png)

For example, this script removes Microsoft Defender ATP from the /Applications directory:

```bash
echo "Is WDAV installed?"
ls -ld '/Applications/Microsoft Defender ATP.app' 2>/dev/null

echo "Uninstalling WDAV..."
rm -rf '/Applications/Microsoft Defender ATP.app'

echo "Is WDAV still installed?"
ls -ld '/Applications/Microsoft Defender ATP.app' 2>/dev/null

echo "Done!"
```

## With a JAMF policy

If you are running JAMF, your policy should contain a single script:

![Microsoft Defender uninstall script screenshot](images/MDATP_27_UninstallScript.png)

Configure the appropriate scope in the **Scope** tab to specify the machines that will receive this policy.