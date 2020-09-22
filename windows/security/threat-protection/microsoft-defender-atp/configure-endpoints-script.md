---
title: Onboard Windows 10 devices using a local script
description: Use a local script to deploy the configuration package on devices so that they are onboarded to the service.
keywords: configure devices using a local script, device management, configure Windows ATP devices, configure Microsoft Defender Advanced Threat Protection devices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Onboard Windows 10 devices using a local script

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)




>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

You can also manually onboard individual devices to Microsoft Defender ATP. You might want to do this first when testing the service before you commit to onboarding all devices in your network.

> [!IMPORTANT]
> This script has been optimized for use on up to 10 devices.
>
> To deploy at scale, use [other deployment options](configure-endpoints.md). For example, you can deploy an onboarding script to more than 10 devices in production with the script available in [Onboard Windows 10 devices using Group Policy](configure-endpoints-gp.md).

## Onboard devices 
1.  Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    1. In the navigation pane, select **Settings** > **Onboarding**.

    1. Select Windows 10 as the operating system.

    1. In the **Deployment method** field, select **Local Script**.

    1. Click **Download package** and save the .zip file.

  
2.  Extract the contents of the configuration package to a location on the device you want to onboard (for example, the Desktop). You should have a file named *WindowsDefenderATPOnboardingScript.cmd*.

3.  Open an elevated command-line prompt on the device and run the script:

    1.  Go to **Start** and type **cmd**.

    1.  Right-click **Command prompt** and select **Run as administrator**.

        ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOnboardingScript.cmd*

5.  Press the **Enter** key or click **OK**.

For information on how you can manually validate that the device is compliant and correctly reports sensor data see, [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md).


>[!TIP]
> After onboarding the device, you can choose to run a detection test to verify that an device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender ATP endpoint](run-detection-test.md).

## Configure sample collection settings
For each device, you can set a configuration value to state whether samples can be collected from the device when a request is made through Microsoft Defender Security Center to submit a file for deep analysis.

You can manually configure the sample sharing setting on the device by using *regedit* or creating and running a *.reg* file.  

The configuration is set through the following registry key entry:

```console
Path: “HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection”
Name: "AllowSampleCollection"
Value: 0 or 1
```
Where:<br>
Name type is a D-WORD. <br>
Possible values are:
- 0 - doesn't allow sample sharing  from this device
- 1 - allows sharing of all file types from this device

The default value in case the registry key doesn’t exist is 1.


## Offboard devices using a local script
For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same device at the same time, otherwise this will cause unpredictable collisions.

1. Get the offboarding package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    1. In the navigation pane, select **Settings** > **Offboarding**.

    1. Select Windows 10 as the operating system.

    1. In the **Deployment method** field, select **Local Script**.

    1. Click **Download package** and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the devices. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3.  Open an elevated command-line prompt on the device and run the script:

    1.  Go to **Start** and type **cmd**.

    1.  Right-click **Command prompt** and select **Run as administrator**.

        ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

5.  Press the **Enter** key or click **OK**.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.


## Monitor device configuration
You can follow the different verification steps in the [Troubleshoot onboarding issues](troubleshoot-onboarding.md) to verify that the script completed successfully and the agent is running.

Monitoring can also be done directly on the portal, or by using the different deployment tools.

### Monitor devices using the portal
1. Go to Microsoft Defender Security Center.

2. Click **Devices list**.

3. Verify that devices are appearing.


## Related topics
- [Onboard Windows 10 devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender ATP device](run-detection-test.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
