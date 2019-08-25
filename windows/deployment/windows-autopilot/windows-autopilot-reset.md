---
title: Windows Autopilot Reset
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
audience: itproauthor: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot Reset

- Applies to: Windows 10, version 1709 and later (local reset)
- Applies to: Windows 10, version 1809 and later (remote reset)

Windows Autopilot Reset removes personal files, apps, and settings and reapplies a device’s original settings, maintaining its identity connection to Azure AD and its management connection to Intune so that the device is once again ready for use. Windows Autopilot Reset takes the device back to a business-ready state, allowing the next user to sign in and get productive quickly and simply. 

The Windows Autopilot Reset process automatically retains information from the existing device:
 
-   Set the region, language, and keyboard to the originally-configured values.
-   Wi-Fi connection details.
-   Provisioning packages previously applied to the device, as well as a provisioning package present on a USB drive when the reset process is initiated. 
-   Azure Active Directory device membership and MDM enrollment information.

Windows Autopilot Reset will block the user from accessing the desktop until this information is restored, including re-applying any provisioning packages.  For devices enrolled in an MDM service, Windows Autopilot Reset will also block until an MDM sync is completed.  

>[!NOTE]
>The Autopilot Reset does not support Hybrid Azure AD joined devices.

## Scenarios

Windows Autopilot Reset supports two scenarios:

-   [Local reset](#reset-devices-with-local-windows-autopilot-reset) initiated by IT personnel or other administrators from the organization.
-   [Remote reset](#reset-devices-with-remote-windows-autopilot-reset) initiated remotely by IT personnel via an MDM service such as Microsoft Intune.

Additional requirements and configuration details apply with each scenario; see the detailed links above for more information.

## Reset devices with local Windows Autopilot Reset 

**Applies to: Windows 10, version 1709 and above**

The Intune Service Administrator role is required to perform this task.  For more information, see [Add users and grant administrative permission to Intune](https://docs.microsoft.com/intune/users-add).

IT admins can perform a local Windows Autopilot Reset to quickly remove personal files, apps, and settings, and reset Windows 10 devices from the lock screen any time and apply original settings and management enrollment (Azure Active Directory and device management) so the devices are ready to use. With a local Autopilot Reset, devices are returned to a fully configured or known IT-approved state.

To enable local Autopilot Reset in Windows 10:

1. [Enable the policy for the feature](#enable-local-windows-autopilot-reset)
2. [Trigger a reset for each device](#trigger-local-windows-autopilot-reset)

### Enable local Windows Autopilot Reset

To enable a local Windows Autopilot Reset, the **DisableAutomaticReDeploymentCredentials** policy must be configured. This policy is documented in the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders), **CredentialProviders/DisableAutomaticReDeploymentCredentials**. By default, local Windows Autopilot is disabled. This ensures that a local Autopilot Reset is not triggered by accident.

You can set the policy using one of these methods:

- MDM provider

    - When using Intune, you can create a new device configuration profile, specifying "Windows 10 or later" for the platform, "Device restrictions" for the profile type, and "General" for the settings category.  The **Automatic Redeployment** setting should be set to **Allow**.  Deploy this setting to all devices where a local reset should be permitted.
    - If you're using an MDM provider other than Intune, check your MDM provider documentation on how to set this policy. 

- Windows Configuration Designer

    You can [use Windows Configuration Designer](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-create-package) to set the **Runtime settings > Policies > CredentialProviders > DisableAutomaticReDeploymentCredentials** setting to 0 and then create a provisioning package.

- Set up School PCs app

    The latest release of the Set up School PCs app supports enabling local Windows Autopilot Reset.

### Trigger local Windows Autopilot Reset

Performing a local Windows Autopilot Reset is a two-step process: trigger it and then authenticate. Once you've done these two steps, you can let the process execute and once it is done, the device is again ready for use. 

**To trigger a local Autopilot Reset**

1. From the Windows device lock screen, enter the keystroke: **CTRL + ![Windows key](images/windows_glyph.png) + R**. 

    ![Enter CTRL+Windows key+R on the Windows lockscreen](images/autopilot-reset-lockscreen.png)

    This will open up a custom login screen for the local Autopilot Reset. The screen serves two purposes:
    1. Confirm/verify that the end user has the right to trigger Local Autopilot Reset
    2. Notify the user in case a provisioning package, created using Windows Configuration Designer, will be used as part of the process.

    ![Custom login screen for local Autopilot Reset](images/autopilot-reset-customlogin.png)

2. Sign in with the admin account credentials. If you created a provisioning package, plug in the USB drive and trigger the local Autopilot Reset.

    Once the local Autopilot Reset is triggered, the reset process starts. Once provisioning is complete, the device is again ready for use.

## Reset devices with remote Windows Autopilot Reset

**Applies to: Windows 10, version 1809 or later**

When performing a remote Windows Autopilot Reset, an MDM service such an Microsoft Intune can be used to initiate the reset process, avoiding the need for IT staff or other administrators to visit each machine to initiate the process.

To enable a device for a remote Windows Autopilot Reset, the device must be MDM managed and joined to Azure AD. This feature is not supported on devices that were enrolled using [Autopilot self deploying mode](self-deploying.md).

### Triggering a remote Windows Autopilot Reset

To trigger a remote Windows Autopilot Reset via Intune, follow these steps:
 
-   Navigate to **Devices** tab in the Intune console. 
-   In the **All devices** view, select the targeted reset devices and then click **More** to view device actions. 
-   Select **Autopilot Reset** to kick-off the reset task. 

>[!NOTE]
>The Autopilot Reset option will not be enabled in Microsoft Intune for devices not running Windows 10 build 17672 or higher.

>[!IMPORTANT]
>The feature for Autopilot Reset will stay grayed out, **unless** you reset the device using Autopilot (either using Fresh Reset or manually sysprep the device).

Once the reset is complete, the device is again ready for use.
 


## Troubleshooting

Windows Autopilot Reset requires that the [Windows Recovery Environment (WinRE)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference) is correctly configured and enabled on the device. If it is not configured and enabled, an error such as `Error code: ERROR_NOT_SUPPORTED (0x80070032)` will be reported.

To make sure WinRE is enabled, use the [REAgentC.exe tool](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reagentc-command-line-options) to run the following command:

```
reagentc /enable
```

If Windows Autopilot Reset fails after enabling WinRE, or if you are unable to enable WinRE, please contact [Microsoft Support](https://support.microsoft.com) for assistance.
