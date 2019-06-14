---
title: Minimum requirements for Microsoft Defender ATP
description: Understand the licensing requirements and requirements for onboarding machines to the sercvie
keywords: minimum requirements, licensing, comparison table
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

# Minimum requirements for Microsoft Defender ATP

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

There are some minimum requirements for onboarding machines to the service. Learn about the licensing, hardware and software requirements, and other configuration settings to onboard devices to the service.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-minreqs-abovefoldlink)


>[!TIP]
>- Learn about the latest enhancements in Microsoft Defender ATP: [What's new in Microsoft Defender ATP](https://cloudblogs.microsoft.com/microsoftsecure/2018/11/15/whats-new-in-windows-defender-atp/).
>- Microsoft Defender ATP demonstrated industry-leading optics and detection capabilities in the recent MITRE evaluation. Read: [Insights from the MITRE ATT&CK-based evaluation](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/03/insights-from-the-mitre-attack-based-evaluation-of-windows-defender-atp/).

## Licensing requirements
Microsoft Defender Advanced Threat Protection requires one of the following Microsoft Volume Licensing offers:

- Windows 10 Enterprise E5
- Windows 10 Education E5
- Microsoft 365 E5 (M365 E5) which includes Windows 10 Enterprise E5

For more information on the array of features in Windows 10 editions, see [Compare Windows 10 editions](https://www.microsoft.com/en-us/windowsforbusiness/compare).

For a detailed comparison table of Windows 10 commercial edition comparison, see the [comparison PDF](https://go.microsoft.com/fwlink/p/?linkid=2069559).

For more information about licensing requirements for Microsoft Defender ATP platform on Windows Server, see [Protecting Windows Servers with Microsoft Defender ATP](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Protecting-Windows-Server-with-Windows-Defender-ATP/ba-p/267114).


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
  - Windows Server 2008 R2 SP1
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
-  Android

>[!NOTE]
>You'll need to know the exact Linux distros, Android, and macOS versions that are compatible with Microsoft Defender ATP for the integration to work. 


### Network and data storage and configuration requirements
When you run the onboarding wizard for the first time, you must choose where your Microsoft Defender Advanced Threat Protection-related information is stored: in the European Union, the United Kingdom, or the United States datacenter.

> [!NOTE]
> -   You cannot change your data storage location after the first-time setup.
> -   Review the [Microsoft Defender ATP data storage and privacy](data-storage-privacy.md) for more information on where and how Microsoft stores your data.


### Diagnostic data settings
You must ensure that the diagnostic data service is enabled on all the machines in your organization.
By default, this service is enabled, but it&#39;s good practice to check to ensure that you&#39;ll get sensor data from them.

**Use the command line to check the Windows 10 diagnostic data service startup type**:

1. Open an elevated command-line prompt on the machine:

   a.  Go to **Start** and type **cmd**.

   b.  Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

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





## Related topic
- [Validate licensing and complete setup](licensing.md)
- [Onboard machines](onboard-configure.md)
