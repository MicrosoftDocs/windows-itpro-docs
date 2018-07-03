---
title: Reset devices with Local Autopilot Reset
description: Gives an overview of Local Autopilot Reset and how to use it.
keywords: Autopilot Reset, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: high
author: coreyp-at-msft
ms.author: coreyp
ms.date: 06/01/2018
---

# Reset devices with Local Autopilot Reset 

**Applies to: Windows 10, version 1709"

IT admins can use Local Autopilot Reset to quickly remove personal files, apps, and settings, and reset Windows 10 devices from the lock screen any time and apply original settings and management enrollment (Azure Active Directory and device management) so the devices are ready to use. With Local Autopilot Reset, devices are returned to a fully configured or known IT-approved state.

To enable Local Autopilot Reset in Windows 10:

1. [Enable the policy for the feature](#enable-autopilot-reset)
2. [Trigger a reset for each device](#trigger-autopilot-reset)

## Enable Local Autopilot Reset

To use Local Autopilot Reset, [Windows Recovery Environment (WinRE) must be enabled on the device](#winre).

**DisableAutomaticReDeploymentCredentials** is a policy that enables or disables the visibility of the credentials for Local Autopilot Reset. It is a policy node in the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders), **CredentialProviders/DisableAutomaticReDeploymentCredentials**. By default, this policy is set to 1 (Disable). This ensures that Local Autopilot Reset isn't triggered by accident.

You can set the policy using one of these methods:

- MDM provider

    - Local Autopilot Reset in Intune -. New tenants automatically have the Local Autopilot Reset setting enabled by default on the **All devices** group as part of initial tenant configuration. You can manage this setting to target different groups in the admin console.
    - If you're using an MDM provider other than Intune, check your MDM provider documentation on how to set this policy. If your MDM provider doesn't explicitly support this policy, you can manually set this policy if your MDM provider allows specific OMA-URIs to be manually set.

        For example, in Intune, create a new configuration policy and add an OMA-URI. 
        - OMA-URI:  ./Vendor/MSFT/Policy/Config/CredentialProviders/DisableAutomaticReDeploymentCredentials
        - Data type:  Integer
        - Value:  0

- Windows Configuration Designer
    
    You can [use Windows Configuration Designer](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-create-package) to set the **Runtime settings > Policies > CredentialProviders > DisableAutomaticReDeploymentCredentials** setting and create a provisioning package.

- Set up School PCs app

    Local Autopilot Reset in the Set up School PCs app is available in the latest release of the app. Make sure you are running Windows 10, version 1709 on the student PCs if you want to use Local Autopilot Reset through the Set up School PCs app. You can check the version several ways:
    - Reach out to your device manufacturer.
    - If you manage your PCs using Intune, you can check the OS version by checking the **OS version** info for the device. If  you are using another MDM provider, check the documentation for the MDM provider to confirm the OS version.
    - Log into the PCs, go to the **Settings > System > About** page, look in the **Windows specifications** section and confirm **Version** is set to 1709.

    
## Trigger Local Autopilot Reset
Autopilot Reset is a two-step process: trigger it and then authenticate. Once you've done these two steps, you can let the process execute and once it's done, the device is again ready for use. 

**To trigger Local Autopilot Reset**

1. From the Windows device lock screen, enter the keystroke: **CTRL + ![Windows key](images/windows_glyph.png) + R**. 

    ![Enter CTRL+Windows key+R on the Windows lockscreen](images/autopilot-reset-lockscreen.png)

    This will open up a custom login screen for Local Autopilot Reset. The screen serves two purposes:
    1. Confirm/verify that the end user has the right to trigger Local Autopilot Reset
    2. Notify the user in case a provisioning package, created using Windows Configuration Designer, will be used as part of the process.

    ![Custom login screen for Local Autopilot Reset](images/autopilot-reset-customlogin.png)

2. Sign in with the admin account credentials. If you created a provisioning package, plug in the USB drive and trigger Local Autopilot Reset.

>[!IMPORTANT] 
>To reestablish Wi-Fi connectivity after reset, make sure the **Connect automatically** box is checked for the device's wireless network connection. 

    Once Local Autopilot Reset is triggered, the reset process starts. 
    
    After reset, the device:
    - Sets the region, language, and keyboard.
    - Connects to Wi-Fi.
    - If you provided a provisioning package when Local Autopilot Reset is triggered, the system will apply this new provisioning package. Otherwise, the system will re-apply the original provisioning package on the device. 
    - Is returned to a known good managed state, connected to Azure AD and MDM.

     ![Notification that provisioning is complete](images/autopilot-reset-provisioningcomplete.png)

    Once provisioning is complete, the device is again ready for use.

<span id="winre"/>
## Troubleshoot Local Autopilot Reset

Local Autopilot Reset will fail when the [Windows Recovery Environment (WinRE)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-recovery-environment--windows-re--technical-reference) is not enabled on the device. You will see `Error code: ERROR_NOT_SUPPORTED (0x80070032)`.

To make sure WinRE is enabled, use the [REAgentC.exe tool](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reagentc-command-line-options) to run the following command:

```
reagentc /enable
```

If Windows Automatic Reployment fails after enabling WinRE, or if you are unable to enable WinRE, please contact [Microsoft Support](https://support.microsoft.com) for assistance.






