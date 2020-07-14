---
title: Minimum requirements for Microsoft Defender ATP
description: Understand the licensing requirements and requirements for onboarding devices to the service
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

There are some minimum requirements for onboarding devices to the service. Learn about the licensing, hardware and software requirements, and other configuration settings to onboard devices to the service.

> Want to experience Microsoft Defender ATP? [Sign up for a free trial](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-minreqs-abovefoldlink).


> [!TIP]
> - Learn about the latest enhancements in Microsoft Defender ATP:[Microsoft Defender Advanced Threat Protection Tech Community](https://techcommunity.microsoft.com/t5/Windows-Defender-Advanced-Threat/ct-p/WindowsDefenderAdvanced).
> - Microsoft Defender ATP demonstrated industry-leading optics and detection capabilities in the recent MITRE evaluation. Read: [Insights from the MITRE ATT&CK-based evaluation](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/03/insights-from-the-mitre-attack-based-evaluation-of-windows-defender-atp/).

## Licensing requirements
Microsoft Defender Advanced Threat Protection requires one of the following Microsoft Volume Licensing offers:

- Windows 10 Enterprise E5
- Windows 10 Education A5
- Microsoft 365 E5 (M365 E5) which includes Windows 10 Enterprise E5
- Microsoft 365 E5 Security
- Microsoft 365 A5 (M365 A5)

> [!NOTE]
> Eligible Licensed Users may use Microsoft Defender Advanced Threat Protection on up to five concurrent devices.


Microsoft Defender Advanced Threat Protection is also available for purchase from a Cloud Solution Provider (CSP).

Microsoft Defender Advanced Threat Protection, on Windows Server, requires one of the following licensing options:

- [Azure Security Center Standard plan](https://docs.microsoft.com/azure/security-center/security-center-pricing) (per node)
- Microsoft Defender ATP for Servers (one per covered Server)

> [!NOTE]
> Customers with a combined minimum of 50 licenses for one or more of the following may acquire Server SLs for Microsoft Defender Advanced Threat Protection for Servers (one per covered Server OSE): Microsoft Defender Advanced Threat Protection, Windows E5/A5, Microsoft 365 E5/A5 and Microsoft 365 E5 Security User SLs. This license applies to Microsoft Defender ATP for Linux.

For detailed licensing information, see the [Product terms page](https://www.microsoft.com/licensing/product-licensing/products) and work with your account team to learn the detailed terms and conditions for the product.

For more information on the array of features in Windows 10 editions, see [Compare Windows 10 editions](https://www.microsoft.com/windowsforbusiness/compare).

For a detailed comparison table of Windows 10 commercial edition comparison, see the [comparison PDF](https://go.microsoft.com/fwlink/p/?linkid=2069559).

## Browser requirements
Access to Microsoft Defender ATP is done through a browser, supporting the following browsers:
- Microsoft Edge
- Internet Explorer version 11
- Google Chrome

> [!NOTE]
> While other browsers might work, the mentioned browsers are the ones supported.


## Hardware and software requirements

### Supported Windows versions
- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows 10, version 1607 or later
  - Windows 10 Enterprise
  - [Windows 10 Enterprise LTSC](https://docs.microsoft.com/windows/whats-new/ltsc/)
  - Windows 10 Education
  - Windows 10 Pro
  - Windows 10 Pro Education
- Windows server
  - Windows Server 2008 R2 SP1
  - Windows Server 2012 R2
  - Windows Server 2016
  - Windows Server, version 1803 or later
  - Windows Server 2019

Devices on your network must be running one of these editions.

The hardware requirements for Microsoft Defender ATP on devices are the same for the supported editions.

> [!NOTE]
> Machines running mobile versions of Windows are not supported.
>
> Virtual Machines running Windows 10 Enterprise 2016 LTSC (which is based on Windows 10, version 1607) may encounter performance issues if run on non-Microsoft virtualization platforms.
>
> For virtual environments, we recommend using Windows 10 Enterprise LTSC 2019 (which is based on Windows 10, version 1809) or later.


### Other supported operating systems
- macOSX
- Linux (currently, Microsoft Defender ATP is only available in the Public Preview Edition for Linux)

> [!NOTE]
> You'll need to know the exact Linux distros, Android, and macOS versions that are compatible with Microsoft Defender ATP for the integration to work.
>
> Also note that Microsoft Defender ATP is currently only available in the Public Preview Edition for Linux.


### Network and data storage and configuration requirements
When you run the onboarding wizard for the first time, you must choose where your Microsoft Defender Advanced Threat Protection-related information is stored: in the European Union, the United Kingdom, or the United States datacenter.

> [!NOTE]
> - You cannot change your data storage location after the first-time setup.
> - Review the [Microsoft Defender ATP data storage and privacy](data-storage-privacy.md) for more information on where and how Microsoft stores your data.


### Diagnostic data settings

> [!NOTE]
> Microsoft Defender ATP doesn't require any specific diagnostic level as long as it's enabled.

Make sure that the diagnostic data service is enabled on all the devices in your organization.
By default, this service is enabled. It's good practice to check to ensure that you'll get sensor data from them.

**Use the command line to check the Windows 10 diagnostic data service startup type**:

1. Open an elevated command-line prompt on the device:

   a.  Go to **Start** and type **cmd**.

   b.  Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```text
   sc qc diagtrack
   ```

    If the service is enabled, then the result should look like the following screenshot:

    ![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)


You'll need to set the service to automatically start if the **START_TYPE** is not set to **AUTO_START**.


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
Internet connectivity on devices is required either directly or through proxy.

The Microsoft Defender ATP sensor can utilize a daily average bandwidth of 5 MB to communicate with the Microsoft Defender ATP cloud service and report cyber data. One-off activities such as file uploads and investigation package collection are not included in this daily average bandwidth.

For more information on additional proxy configuration settings, see [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md).

Before you onboard devices, the diagnostic data service must be enabled. The service is enabled by default in Windows 10.


## Microsoft Defender Antivirus configuration requirement
The Microsoft Defender ATP agent depends on the ability of Microsoft Defender Antivirus to scan files and provide information about them.

Configure Security intelligence updates on the Microsoft Defender ATP devices whether Microsoft Defender Antivirus is the active antimalware or not. For more information, see [Manage Microsoft Defender Antivirus updates and apply baselines](../microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus.md).

When Microsoft Defender Antivirus is not the active antimalware in your organization and you use the Microsoft Defender ATP service, Microsoft Defender Antivirus goes on passive mode. 

If your organization has turned off Microsoft Defender Antivirus through group policy or other methods, devices that are onboarded must be excluded from this group policy.

If you are onboarding servers and Microsoft Defender Antivirus is not the active antimalware on your servers, you shouldn't uninstall Microsoft Defender Antivirus. You'll need to configure it to run on passive mode. For more information, see [Onboard servers](configure-server-endpoints.md).

> [!NOTE]
> Your regular group policy doesn't apply to Tamper Protection, and changes to Microsoft Defender Antivirus settings will be ignored when Tamper Protection is on.


For more information, see [Microsoft Defender Antivirus compatibility](../microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility.md).

## Microsoft Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled
If you're running Microsoft Defender Antivirus as the primary antimalware product on your devices, the Microsoft Defender ATP agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or Microsoft Endpoint Configuration Manager (current branch), you'll need to ensure that the Microsoft Defender Antivirus ELAM driver is enabled. For more information, see [Ensure that Microsoft Defender Antivirus is not disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy).


## Related topics
- [Validate licensing and complete setup](licensing.md)
- [Onboard devices](onboard-configure.md)
