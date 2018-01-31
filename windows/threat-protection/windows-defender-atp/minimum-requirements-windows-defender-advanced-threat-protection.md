---
title: Minimum requirements for Windows Defender ATP
description: Minimum network and data storage configuration, endpoint hardware and software requirements, and deployment channel requirements for Windows Defender ATP.
keywords: minimum requirements, Windows Defender Advanced Threat Protection minimum requirements, network and data storage, endpoint, endpoint configuration, deployment channel
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Minimum requirements for Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



There are some minimum requirements for onboarding your network and endpoints.

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-minreqs-abovefoldlink)

## Minimum requirements
You must be on Windows 10, version 1607 at a minimum.
For more information, see [Windows 10 Enterprise edition](https://www.microsoft.com/en-us/WindowsForBusiness/buy).

### Licensing requirements
Windows Defender Advanced Threat Protection requires one of the following Microsoft Volume Licensing offers:

-	Windows 10 Enterprise E5
-	Windows 10 Education E5
- Microsoft 365 E5 (M365 E5) which includes Windows 10 Enterprise E5

For more information, see [Windows 10 Licensing](https://www.microsoft.com/en-us/Licensing/product-licensing/windows10.aspx#tab=2).

### Network and data storage and configuration requirements
When you run the onboarding wizard for the first time, you must choose where your Windows Defender Advanced Threat Protection-related information is stored: either in a European or United States datacenter.

> [!NOTE]
> -   You cannot change your data storage location after the first-time setup.
> -   Review the [Windows Defender ATP data storage and privacy](data-storage-privacy-windows-defender-advanced-threat-protection.md) for more information on where and how Microsoft stores your data.

### Endpoint hardware and software requirements

The Windows Defender ATP agent only supports the following editions of Windows 10:

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education

Endpoints on your network must be running one of these editions.

The hardware requirements for Windows Defender ATP on endpoints is the same as those for the supported editions.

> [!NOTE]
> Endpoints that are running mobile versions of Windows are not supported.

#### Internet connectivity
Internet connectivity on endpoints is required either directly or through proxy.

The Windows Defender ATP sensor can utilize up to 5MB daily of bandwidth  to communicate with the Windows Defender ATP cloud service and report cyber data.

For more information on additional proxy configuration settings see, [Configure Windows Defender ATP endpoint proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md) .

Before you configure endpoints, the telemetry and diagnostics service must be enabled. The service is enabled by default in Windows 10.

### Telemetry and diagnostics settings
You must ensure that the telemetry and diagnostics service is enabled on all the endpoints in your organization.
By default, this service is enabled, but it's good practice to check to ensure that you'll get sensor data from them.

**Use the command line to check the Windows 10 telemetry and diagnostics service startup type**:

1.  Open an elevated command-line prompt on the endpoint:

  a.  Go to **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command, and press **Enter**:

    ```text
    sc qc diagtrack
    ```

If the service is enabled, then the result should look like the following screenshot:

![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)

If the **START_TYPE** is not set to **AUTO_START**, then you'll need to set the service to automatically start.



**Use the command line to set the Windows 10 telemetry and diagnostics service to automatically start:**

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

## Windows Defender Antivirus signature updates are configured
The Windows Defender ATP agent depends on the ability of Windows Defender Antivirus to scan files and provide information about them. 

You must configure the signature updates on the Windows Defender ATP endpoints whether Windows Defender Antivirus is the active antimalware or not. For more information, see [Manage Windows Defender Antivirus updates and apply baselines](../windows-defender-antivirus/manage-updates-baselines-windows-defender-antivirus.md).

When Windows Defender Antivirus is not the active antimalware in your organization and you use the Windows Defender ATP service, Windows Defender Antivirus goes on passive mode. If your organization has disabled Windows Defender Antivirus through group policy or other methods, machines that are onboarded to Windows Defender ATP must be excluded from this group policy.

For more information, see [Windows Defender Antivirus compatibility](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).

## Windows Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled
If you're running Windows Defender Antivirus as the primary antimalware product on your endpoints, the Windows Defender ATP agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or System Center Configuration Manager (current branch) version 1606, you'll need to ensure that the Windows Defender Antivirus ELAM driver is enabled. For more information, see [Ensure that Windows Defender Antivirus is not disabled by policy](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-windows-defender-antivirus-is-not-disabled-by-a-policy).

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=technet-wd-atp-minreq-belowfoldlink1)
