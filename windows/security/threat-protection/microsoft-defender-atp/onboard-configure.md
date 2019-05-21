---
title: Onboard machines to the Microsoft Defender ATP service
description: Onboard Windows 10 machines, servers, non-Windows machines and learn how to run a detection test.
keywords: onboarding, windows defender advanced threat protection onboarding, windows atp onboarding, sccm, group policy, mdm, local script, detection test
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
ms.topic: conceptual
---

# Onboard machines to the Microsoft Defender ATP service

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You need to turn on the sensor to give visibility within Microsoft Defender ATP.

For more information, see [Onboard your Windows 10 machines to Microsoft Defender ATP](https://www.youtube.com/watch?v=JT7VGYfeRlA&feature=youtu.be).

[!include[Prerelease information](prerelease.md)]

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

## Licensing requirements
Microsoft Defender Advanced Threat Protection requires one of the following Microsoft Volume Licensing offers:

  -	Windows 10 Enterprise E5
  -	Windows 10 Education E5
  - Microsoft 365 Enterprise E5 which includes Windows 10 Enterprise E5

For more information, see [Windows 10 Licensing](https://www.microsoft.com/en-us/Licensing/product-licensing/windows10.aspx#tab=2).

## Hardware and software requirements
### Supported Windows versions
- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows 10, version 1607 or later
  - Windows 10 Enterprise
  - Windows 10 Education
  - Windows 10 Pro
  - Windows 10 Pro Education
- Windows server
  - Windows Server 2012 R2
  - Windows Server 2016
  - Windows Server 2016, version 1803
  - Windows Server 2019

Machines on your network must be running one of these editions.

The hardware requirements for Microsoft Defender ATP on machines is the same as those for the supported editions.

> [!NOTE]
> Machines that are running mobile versions of Windows are not supported.


### Other supported operating systems
-  macOSX
-  Linux

>[!NOTE]
>You'll need to know the exact Linux distros and macOS versions that are compatible with Microsoft Defender ATP for the integration to work. 


### Network and data storage and configuration requirements
When you run the onboarding wizard for the first time, you must choose where your Microsoft Defender Advanced Threat Protection-related information is stored: in the European Union, the United Kingdom, or the United States datacenter.

> [!NOTE]
> -   You cannot change your data storage location after the first-time setup.
> -   Review the [Microsoft Defender ATP data storage and privacy](data-storage-privacy.md) for more information on where and how Microsoft stores your data.

<span id="telemetry-and-diagnostics-settings" />
### Diagnostic data settings
You must ensure that the diagnostic data service is enabled on all the machines in your organization.
By default, this service is enabled, but it's good practice to check to ensure that you'll get sensor data from them.

**Use the command line to check the Windows 10 diagnostic data service startup type**:

1.  Open an elevated command-line prompt on the machine:

  a.  Go to **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command, and press **Enter**:

    ```text
    sc qc diagtrack
    ```

If the service is enabled, then the result should look like the following screenshot:

![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)

If the **START_TYPE** is not set to **AUTO_START**, then you'll need to set the service to automatically start.



**Use the command line to set the Windows 10 diagnostic data service to automatically start:**

1.  Open an elevated command-line prompt on the endpoint:

	  a. Go to **Start** and type **cmd**.

    b. Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command, and press **Enter**:

    ```text
    sc config diagtrack start=auto
    ```

3.  A success message is displayed. Verify the change by entering the following command, and press **Enter**:

    ```text
    sc qc diagtrack
    ```



#### Internet connectivity
Internet connectivity on machines is required either directly or through proxy.

The Microsoft Defender ATP sensor can utilize a daily average bandwidth of 5MB to communicate with the Microsoft Defender ATP cloud service and report cyber data. One-off activities such as file uploads and investigation package collection are not included in this daily average bandwidth.

For more information on additional proxy configuration settings see, [Configure machine proxy and Internet connectivity settings](configure-proxy-internet.md) .

Before you onboard machines, the diagnostic data service must be enabled. The service is enabled by default in Windows 10.


## Windows Defender Antivirus configuration requirement
The Microsoft Defender ATP agent depends on the ability of Windows Defender Antivirus to scan files and provide information about them. 

You must configure Security intelligence updates on the Microsoft Defender ATP machines whether Windows Defender Antivirus is the active antimalware or not. For more information, see [Manage Windows Defender Antivirus updates and apply baselines](../windows-defender-antivirus/manage-updates-baselines-windows-defender-antivirus.md).

When Windows Defender Antivirus is not the active antimalware in your organization and you use the Microsoft Defender ATP service, Windows Defender Antivirus goes on passive mode. If your organization has disabled Windows Defender Antivirus through group policy or other methods, machines that are onboarded to Microsoft Defender ATP must be excluded from this group policy.

If you are onboarding servers and Windows Defender Antivirus is not the active antimalware on your servers, you shouldn't uninstall Windows Defender Antivirus. You'll need to configure it to run on passive mode. For more information, see [Onboard servers](configure-server-endpoints.md).


For more information, see [Windows Defender Antivirus compatibility](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).

## Windows Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled
If you're running Windows Defender Antivirus as the primary antimalware product on your machines, the Microsoft Defender ATP agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or System Center Configuration Manager (current branch) version 1606, you'll need to ensure that the Windows Defender Antivirus ELAM driver is enabled. For more information, see [Ensure that Windows Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).


## In this section
Topic | Description
:---|:---
[Onboard previous versions of Windows](onboard-downlevel.md)| Onboard Windows 7 and Windows 8.1 machines to Microsoft Defender ATP. 
[Onboard Windows 10 machines](configure-endpoints.md) | You'll need to onboard machines for it to report to the Microsoft Defender ATP service. Learn about the tools and methods you can use to configure machines in your enterprise.
[Onboard servers](configure-server-endpoints.md) |  Onboard Windows Server 2012 R2 and Windows Server 2016 to Microsoft Defender ATP 
[Onboard non-Windows machines](configure-endpoints-non-windows.md) | Microsoft Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network. This experience leverages on a third-party security products' sensor data. 
[Run a detection test on a newly onboarded machine](run-detection-test.md) | Run a script on a newly onboarded machine to verify that it is properly reporting to the Microsoft Defender ATP service.
[Configure proxy and Internet settings](configure-proxy-internet.md)| Enable communication with the Microsoft Defender ATP cloud service by configuring the proxy and Internet connectivity settings.
[Troubleshoot onboarding issues](troubleshoot-onboarding.md) | Learn about resolving issues that might arise during onboarding.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-belowfoldlink)
