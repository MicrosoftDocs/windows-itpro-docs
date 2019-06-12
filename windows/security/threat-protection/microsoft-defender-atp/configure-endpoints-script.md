---
title: Onboard Windows 10 machines using a local script
description: Use a local script to deploy the configuration package on machines so that they are onboarded to the service.
keywords: configure machines using a local script, machine management, configure Windows ATP machines, configure Microsoft Defender Advanced Threat Protection machines
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

# Onboard Windows 10 machines using a local script

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)




>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

You can also manually onboard individual machines to Microsoft Defender ATP. You might want to do this first when testing the service before you commit to onboarding all machines in your network.

> [!NOTE]
> The script has been optimized to be used on a limited number of machines (1-10 machines). To deploy to scale, use other deployment options. For more information on using other deployment options, see [Onboard Window 10 machines](configure-endpoints.md).

## Onboard machines 
1.  Open the GP configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a.  In the navigation pane, select **Settings** > **Onboarding**.

    b. Select Windows 10 as the operating system.

    c.  In the **Deployment method** field, select **Local Script**.

    d. Click **Download package** and save the .zip file.

  
2.  Extract the contents of the configuration package to a location on the machine you want to onboard (for example, the Desktop). You should have a file named *WindowsDefenderATPOnboardingScript.cmd*.

3.  Open an elevated command-line prompt on the machine and run the script:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOnboardingScript.cmd*

5.  Press the **Enter** key or click **OK**.

For information on how you can manually validate that the machine is compliant and correctly reports sensor data see, [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md).


>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that an machine is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender ATP endpoint](run-detection-test.md).

## Configure sample collection settings
For each machine, you can set a configuration value to state whether samples can be collected from the machine when a request is made through Microsoft Defender Security Center to submit a file for deep analysis.

You can manually configure the sample sharing setting on the machine by using *regedit* or creating and running a *.reg* file.  

The configuration is set through the following registry key entry:

```
Path: “HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection”
Name: "AllowSampleCollection"
Value: 0 or 1
```
Where:<br>
Name type is a D-WORD. <br>
Possible values are:
- 0 - doesn't allow sample sharing  from this machine
- 1 - allows sharing of all file types from this machine

The default value in case the registry key doesn’t exist is 1.


## Offboard machines using a local script
For security reasons, the package used to Offboard machines will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an machine will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same machine at the same time, otherwise this will cause unpredictable collisions.

1.	Get the offboarding package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a.  In the navigation pane, select **Settings** > **Offboarding**.

    b. Select Windows 10 as the operating system.

    c.  In the **Deployment method** field, select **Local Script**.

    d. Click **Download package** and save the .zip file.

2.	Extract the contents of the .zip file to a shared, read-only location that can be accessed by the machines. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3.  Open an elevated command-line prompt on the machine and run the script:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

4.  Type the location of the script file. If you copied the file to the desktop, type: *%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*

5.  Press the **Enter** key or click **OK**.

> [!IMPORTANT]
> Offboarding causes the machine to stop sending sensor data to the portal but data from the machine, including reference to any alerts it has had will be retained for up to 6 months.


## Monitor machine configuration
You can follow the different verification steps in the [Troubleshoot onboarding issues](troubleshoot-onboarding.md) to verify that the script completed successfully and the agent is running.

Monitoring can also be done directly on the portal, or by using the different deployment tools.

### Monitor machines using the portal
1.	Go to Microsoft Defender Security Center.

2.	Click **Machines list**.

3.	Verify that machines are appearing.


## Related topics
- [Onboard Windows 10 machines using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 machines using System Center Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender ATP machine](run-detection-test.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
