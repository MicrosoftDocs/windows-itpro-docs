---
title: Microsoft Defender ATP for Mac - system extensions (Preview)
description: This article contains instructions for trying out the system extensions functionality of Microsoft Defender ATP for Mac. This functionality is currently in public preview.
keywords: microsoft, defender, atp, mac, kernel, system, extensions, catalina
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
ROBOTS: noindex,nofollow
---


# Microsoft Defender for Endpoint for Mac - system extensions public preview)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

In alignment with macOS evolution, we are preparing a Defender for Endpoint for Mac update that leverages system extensions instead of kernel extensions. This update will only apply to macOS Catalina (10.15.4) and later versions of macOS.

This functionality is currently in public preview. This article describes how to enable this functionality on your device. You can try out this feature locally on your own device or configure it remotely through a management tool.

These steps assume you already have Defender for Endpoint running on your device. For more information, see [this page](microsoft-defender-atp-mac.md).

## Known issues

- We’ve received reports of the network extension interfering with the Apple SSO Kerberos extension.
- The current version of the product still installs a kernel extension. The kernel extension is only used as a fallback mechanism and will be removed before this feature reaches public preview.
- We're still working on a product version that deploys and functions properly on macOS 11 Big Sur.

## Deployment prerequisites

- Minimum macOS operating system version: **10.15.4**
- Minimum product version: **101.03.73**
- Your device must be in the **Insider Fast update channel**. You can check the update channel by using the following command:

  ```bash
  mdatp --health releaseRing
  ```

  If your device isn't already in the Insider Fast update channel, execute the following command from the Terminal. The channel update takes effect the next time the product starts (when the next product update is installed, or when the device is rebooted).

  ```bash
  defaults write com.microsoft.autoupdate2 ChannelName -string InsiderFast
  ```

  Alternatively, if you're in a managed environment (JAMF or Intune), you can configure the update channel remotely. For more information, see [Deploy updates for Microsoft Defender ATP for Mac: Set the channel name](mac-updates.md#set-the-channel-name).

## Deployment steps

Follow the deployment steps that correspond to your environment and your preferred method of trying out this feature.

### Manual deployment

#### Approve the system extensions and enable the network extension

1. After all deployment prerequisites are met, restart your device to launch the system extension approval and activation process.

You'll see a series of system prompts to approve the Defender for Endpoint system extensions. You must approve **all** prompts from the series, because macOS requires an explicit approval for each extension that Defender for Endpoint for Mac installs on the device.
For each approval, select **Open Security Preferences** and then select **Allow** to allow the system extension to run.

   > [!IMPORTANT]
   > You must close and reopen the **System Preferences** > **Security & Privacy** window between subsequent approvals. Otherwise, macOS will not display the next approval.

   > [!IMPORTANT]
   > There is a one-minute timeout before the product falls back to the kernel extension. This ensures that the device is protected.
   >
   > If more than one minute elapses, restart the daemon by rebooting the device or by using `sudo killall -9 wdavdaemon` to trigger the approval flow again.

   ![System extension approval pop-up](images/mac-system-extension-approval.png)

   ![System extension approval window](images/mac-system-extension-pref.png)

1. After the system extensions are approved, macOS prompts for an approval to allow network traffic to be filtered. Click **Allow**.

   ![Network extension approval pop-up](images/mac-system-extension-filter.png)

#### Grant Full Disk Access to the Endpoint Security system extension

Open the **System Preferences** > **Security & Privacy** > **Privacy** tab and grant **Full Disk Access** to the **Microsoft Defender Endpoint Security Extension**.

![Full disk access for Endpoint Security system extension](images/mac-system-extension-fda.png)

#### Reboot your device

In order for the changes to take effect, you must reboot your device.

#### Verify that the system extensions are running

From the Terminal, run the following command:

```bash
mdatp health --field real_time_protection_subsystem
```

Terminal output `endpoint_security_extension` indicates the product is using the system extensions functionality.

### Managed deployment

Refer to [New configuration profiles for macOS Catalina and newer versions of macOS: JAMF](mac-sysext-policies.md#jamf) for the new configuration profiles you must deploy for this new feature.

In addition to those profiles, make sure to configure the target devices to be in the Insider Fast update channel, as described in [Deployment prerequisites](#deployment-prerequisites).

On a device where all prerequisites are met and the new configuration profiles have been deployed, run the following command:

```bash
$ mdatp health --field real_time_protection_subsystem
```

If this command prints `endpoint_security_extension`, the product is using the system extensions functionality.

## Validate basic scenarios

1. Test European Institute for Computer Antivirus Research (EICAR) detection. From a Terminal window, run the following command:

   ```bash
   curl -o eicar.txt https://secure.eicar.org/eicar.com.txt
   ```

   Verify that the EICAR file is quarantined. You can verify the file's status on the Protection History page in the user interface, or from a command line by using the following command:

    ```bash
    mdatp threat list
    ```

2. Test the Endpoint Detection and Response (EDR) DIY scenario. From a terminal window, run the following command:

   ```bash
   curl -o "MDATP MacOS DIY.zip" https://aka.ms/mdatpmacosdiy
   ```

   Validate that two alerts popped up in the portal on the machine page for EICAR and EDR DIY scenarios.

## Frequently asked questions

- Q: Why am I still seeing `kernel_extension` when I run `mdatp health --field real_time_protection_subsystem`?

    A: Refer back to the [Deployment prerequisites](#deployment-prerequisites) section and double-check that all prerequisites are met. If all prerequisites are met, restart your device and check again.

- Q: When will macOS 11 Big Sur be supported?

    A: We are actively working on adding support for macOS 11. We will post more information to the [What's new](mac-whatsnew.md) page.
