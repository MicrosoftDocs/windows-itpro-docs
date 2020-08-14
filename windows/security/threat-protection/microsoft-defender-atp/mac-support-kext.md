---
title: Troubleshoot kernel extension issues in Microsoft Defender ATP for Mac
description: Troubleshoot kernel extension-related issues in Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, kernel, extension
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Troubleshoot kernel extension issues in Microsoft Defender ATP for Mac

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

This article provides information on how to troubleshoot issues with the kernel extension that is installed as part of Microsoft Defender ATP for Mac.

Starting with macOS High Sierra (10.13), macOS requires all kernel extensions to be explicitly approved before they are allowed to run on the device.

If you did not approve the kernel extension during the deployment/installation of Microsoft Defender ATP for Mac, the application displays a banner prompting you to enable it:

   ![RTP disabled screenshot](../microsoft-defender-antivirus/images/MDATP-32-Main-App-Fix.png)

You can also run ```mdatp --health```. It reports if real-time protection is enabled but not available. This indicates that the kernel extension is not approved to run on your device.

```bash
mdatp --health
```
```Output
...
realTimeProtectionAvailable             : false
realTimeProtectionEnabled               : true
...
```

The following sections provide guidance on how to address this issue, depending on the method that you used to deploy Microsoft Defender ATP for Mac.

## Managed deployment

See the instructions corresponding to the management tool that you used to deploy the product:

- [JAMF-based deployment](mac-install-with-jamf.md#configuration-profile)
- [Microsoft Intune-based deployment](mac-install-with-intune.md#create-system-configuration-profiles)

## Manual deployment

If less than 30 minutes have passed since the product was installed, navigate to **System Preferences** > **Security & Privacy**, where you have to **Allow** system software from developers "Microsoft Corporation".

If you don't see this prompt, it means that 30 or more minutes have passed, and the kernel extension still not been approved to run on your device:

![Security and privacy window after prompt expired screenshot](../microsoft-defender-antivirus/images/MDATP-33-SecurityPrivacySettings-NoPrompt.png)

In this case, you need to perform the following steps to trigger the approval flow again.

1. In Terminal, attempt to install the driver. The following operation will fail, because the kernel extension was not approved to run on the device. However, it will trigger the approval flow again.

    ```bash
    sudo kextutil /Library/Extensions/wdavkext.kext
    ```
    
    ```Output
    Kext rejected due to system policy: <OSKext 0x7fc34d528390 [0x7fffa74aa8e0]> { URL = "file:///Library/StagedExtensions/Library/Extensions/wdavkext.kext/", ID = "com.microsoft.wdavkext" }
    Kext rejected due to system policy: <OSKext 0x7fc34d528390 [0x7fffa74aa8e0]> { URL = "file:///Library/StagedExtensions/Library/Extensions/wdavkext.kext/", ID = "com.microsoft.wdavkext" }
    Diagnostics for /Library/Extensions/wdavkext.kext:
    ```

2. Open **System Preferences** > **Security & Privacy** from the menu. (Close it first, if it's opened.)

3. **Allow** system software from developers "Microsoft Corporation"

4. In Terminal, install the driver again. This time the operation will succeed:

    ```bash
    sudo kextutil /Library/Extensions/wdavkext.kext
    ```

    The banner should disappear from the Defender application, and ```mdatp --health``` should now report that real-time protection is both enabled and available:

    ```bash
    mdatp --health
    ```

    ```Output
    ...
    realTimeProtectionAvailable             : true
    realTimeProtectionEnabled               : true
    ...
    ```