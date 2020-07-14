---
title: Onboard Windows 10 machines using Configuration Manager
description: Use Configuration Manager to deploy the configuration package on machines so that they are onboarded to the service.
keywords: onboard machines using sccm, machine management, configure Windows ATP machines, configure Microsoft Defender Advanced Threat Protection machines
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
ms.date: 02/07/2020
---

# Onboard Windows 10 machines using Configuration Manager

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)
- Microsoft Endpoint Configuration Manager current branch
- System Center 2012 R2 Configuration Manager

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configureendpointssccm-abovefoldlink)

<span id="sccm1606"/>

## Onboard Windows 10 machines using Microsoft Endpoint Configuration Manager current branch

Configuration Manager current branch has integrated support to configure and manage Microsoft Defender ATP on managed devices. For more information, see [Microsoft Defender Advanced Threat Protection in Microsoft Endpoint Configuration Manager current branch](https://docs.microsoft.com/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection).

<span id="sccm1602"/>

## Onboard Windows 10 machines using earlier versions of System Center Configuration Manager

You can use existing Configuration Manager functionality to create a policy to configure your machines. This action is supported in System Center 2012 R2 Configuration Manager.

### Onboard machines using System Center Configuration Manager

1. Open the Configuration Manager configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a. In the navigation pane, select **Settings** > **Onboarding**.
    
    b. Select Windows 10 as the operating system.

    c. In the **Deployment method** field, select **System Center Configuration Manager 2012/2012 R2/1511/1602**.
    
    d. Click **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATPOnboardingScript.cmd*.

3. Deploy the package by following the steps in the [Packages and Programs in System Center 2012 R2 Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/gg699369\(v=technet.10\)) article.

    a. Choose a predefined device collection to deploy the package to.

> [!NOTE]
> Microsoft Defender ATP doesn't support onboarding during the [Out-Of-Box Experience (OOBE)](https://answers.microsoft.com/en-us/windows/wiki/windows_10/how-to-complete-the-windows-10-out-of-box/47e3f943-f000-45e3-8c5c-9d85a1a0cf87) phase. Make sure users complete OOBE after running Windows installation or upgrading.

>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that an machine is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender ATP machine](run-detection-test.md).
>
> Note that it is possible to create a detection rule on a Configuration Manager application to continuously check if a machine has been onboarded. An application is a different type of object than a package and program.
> If a machine is not yet onboarded (due to pending OOBE completion or any other reason), Configuration Manager will retry to onboard the machine until the rule detects the status change.
> 
> This behavior can be accomplished by creating a detection rule checking if the "OnboardingState" registry value (of type REG_DWORD) = 1.
> This registry value is located under "HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status".
For more information, see [Configure Detection Methods in System Center 2012 R2 Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/gg682159\(v=technet.10\)#step-4-configure-detection-methods-to-indicate-the-presence-of-the-deployment-type).

### Configure sample collection settings

For each machine, you can set a configuration value to state whether samples can be collected from the machine when a request is made through Microsoft Defender Security Center to submit a file for deep analysis.

You can set a compliance rule for configuration item in System Center Configuration Manager to change the sample share setting on a machine.
This rule should be a *remediating* compliance rule configuration item that sets the value of a registry key on targeted machines to make sure they’re complaint.

The configuration is set through the following registry key entry:

```
Path: “HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection”
Name: "AllowSampleCollection"
Value: 0 or 1
```
Where:<br>
Key type is a D-WORD. <br>
Possible values are:
- 0 - doesn't allow sample sharing  from this machine
- 1 - allows sharing of all file types from this machine

The default value in case the registry key doesn’t exist is 1.

For more information about System Center Configuration Manager Compliance see [Introduction to compliance settings in System Center 2012 R2 Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/gg682139\(v=technet.10\)).



## Offboard machines using Configuration Manager

For security reasons, the package used to Offboard machines will expire 30 days after the date it was downloaded. Expired offboarding packages sent to an machine will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

> [!NOTE]
> Onboarding and offboarding policies must not be deployed on the same machine at the same time, otherwise this will cause unpredictable collisions.

### Offboard machines using Microsoft Endpoint Configuration Manager current branch

If you use Microsoft Endpoint Configuration Manager current branch, see [Create an offboarding configuration file](https://docs.microsoft.com/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection#create-an-offboarding-configuration-file).

### Offboard machines using System Center 2012 R2 Configuration Manager

1. Get the offboarding package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a. In the navigation pane, select **Settings** >  **Offboarding**.

    b. Select Windows 10 as the operating system.

    c. In the **Deployment method** field, select **System Center Configuration Manager 2012/2012 R2/1511/1602**.
    
    d. Click **Download package**, and save the .zip file.

2. Extract the contents of the .zip file to a shared, read-only location that can be accessed by the network administrators who will deploy the package. You should have a file named *WindowsDefenderATPOffboardingScript_valid_until_YYYY-MM-DD.cmd*.

3. Deploy the package by following the steps in the [Packages and Programs in System Center 2012 R2 Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/gg699369\(v=technet.10\)) article.

    a. Choose a predefined device collection to deploy the package to.

> [!IMPORTANT]
> Offboarding causes the machine to stop sending sensor data to the portal but data from the machine, including reference to any alerts it has had will be retained for up to 6 months.


## Monitor machine configuration

If you're using Microsoft Endpoint Configuration Manager current branch, use the built-in Microsoft Defender ATP dashboard in the Configuration Manager console. For more information, see [Microsoft Defender Advanced Threat Protection - Monitor](https://docs.microsoft.com/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection#monitor).

If you're using System Center 2012 R2 Configuration Manager, monitoring consists of two parts:

1. Confirming the configuration package has been correctly deployed and is running (or has successfully run) on the machines in your network.

2. Checking that the machines are compliant with the Microsoft Defender ATP service (this ensures the machine can complete the onboarding process and can continue to report data to the service).

### Confirm the configuration package has been correctly deployed

1. In the Configuration Manager console, click **Monitoring** at the bottom of the navigation pane.

2. Click **Overview** and then **Deployments**.

3. Click on the deployment with the package name.

4. Review the status indicators under **Completion Statistics** and **Content Status**.

    If there are failed deployments (machines with **Error**, **Requirements Not Met**, or **Failed statuses**), you may need to  troubleshoot the machines. For more information see, [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md).

    ![Configuration Manager showing successful deployment with no errors](images/sccm-deployment.png)

### Check that the machines are compliant with the Microsoft Defender ATP service

You can set a compliance rule for configuration item in System Center 2012 R2 Configuration Manager to monitor your deployment.

This rule should be a *non-remediating* compliance rule configuration item that monitors the value of a registry key on targeted machines.

Monitor the following registry key entry:
```
Path: “HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status”
Name: “OnboardingState”
Value: “1”
```
For more information, see [Introduction to compliance settings in System Center 2012 R2 Configuration Manager](https://docs.microsoft.com/previous-versions/system-center/system-center-2012-R2/gg682139\(v=technet.10\)).

## Related topics
- [Onboard Windows 10 machines using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows 10 machines using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) machines](configure-endpoints-vdi.md)
- [Run a detection test on a newly onboarded Microsoft Defender ATP machine](run-detection-test.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
