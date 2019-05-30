---
title: Windows Autopilot Reset
description: Gives an overview of Remote Autopilot Reset and how to use it.
keywords: Autopilot Reset, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot Reset

**Applies to: Windows 10** 

Windows Autopilot Reset removes personal files, apps, and settings and reapplies a device’s original settings, maintaining its identity connection to Azure AD and its management connection to Intune so that the device is once again ready for use. Windows Autopilot Reset takes the device back to a business-ready state, allowing the next user to sign in and get productive quickly and simply. 

The Windows Autopilot Reset process automatically retains information from the existing device:
 
-   Set the region, language, and keyboard to the originally-configured values.
-   Wi-Fi connection details.
-   Provisioning packages previously applied to the device, as well as a provisioning package present on a USB drive when the reset process is initiated. 
-   Azure Active Directory device membership and MDM enrollment information.

Windows Autopilot Reset will block the user from accessing the desktop until this information is restored, including re-applying any provisioning packages.  For devices enrolled in an MDM service, Windows Autopilot Reset will also block until an MDM sync is completed.  

>[!IMPORTANT] 
>To reestablish Wi-Fi connectivity after reset, make sure the **Connect automatically** box is checked for the device's wireless network connection. 

>[!NOTE]
>The Autopilot Reset does not support Hybrid Azure AD joined devices.

## Scenarios

Windows Autopilot Reset supports two scenarios:

-   [Local reset](windows-autopilot-reset-local.md), initiated by IT personnel or other administrators from the organization.
-   [Remote reset](windows-autopilot-reset-remote.md), initiated remotely by IT personnel via an MDM service such as Microsoft Intune.

Additional requirements and configuration details apply with each scenario; see the detailed links above for more information.

## Troubleshooting

Windows Autopilot Reset requires that the [Windows Recovery Environment (WinRE)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference) is correctly configured and enabled on the device. If it is not configured and enabled, an error such as `Error code: ERROR_NOT_SUPPORTED (0x80070032)` will be reported.

To make sure WinRE is enabled, use the [REAgentC.exe tool](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reagentc-command-line-options) to run the following command:

```
reagentc /enable
```

If Windows Autopilot Reset fails after enabling WinRE, or if you are unable to enable WinRE, please contact [Microsoft Support](https://support.microsoft.com) for assistance.
