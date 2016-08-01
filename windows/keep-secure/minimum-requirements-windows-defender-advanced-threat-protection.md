---
title: Minimum requirements for Windows Defender Advanced Threat Protection
description: Minimum network and data storage configuration, endpoint hardware and software requirements, and deployment channel requirements for Windows Defender ATP.
keywords: minimum requirements, Windows Defender Advanced Threat Protection minimum requirements, network and data storage, endpoint, endpoint configuration, deployment channel
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# Minimum requirements for Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Enterprise for Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

There are some minimum requirements for onboarding your network and endpoints.

## Minimum requirements

### Network and data storage and configuration requirements
When you run the onboarding wizard for the first time, you must choose where your Windows Defender Advanced Threat Protection-related information is stored: in either a European or United States datacenter.

> **Notes**&nbsp;&nbsp;
-   You cannot change your data storage location after the first-time setup.
-   Review the [Windows Defender ATP data storage and privacy](data-storage-privacy-windows-defender-advanced-threat-protection.md) for more information on where and how Microsoft stores your data.

### Endpoint hardware and software requirements
The Windows Defender ATP agent only supports Windows 10, version 1607.

Endpoints on your network must be running Windows 10, version 1607.

The hardware requirements for Windows Defender ATP on endpoints is the same as those for Windows 10, version 1607.

> [!NOTE]
> Endpoints that are running Windows Server and mobile versions of Windows are not supported.

#### Internet connectivity
Internet connectivity on endpoints is required.

SENSE can utilize up to 5MB daily of bandwidth in order to communicate with the Windows Defender ATP cloud service and report cyber data.

> [!NOTE]
> SENSE is the internal name used to refer to the behavioral sensor that powers Windows Defender ATP.

For more information on additional proxy configuration settings see, [Configure Windows Defender ATP endpoint proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md) .

Before you configure endpoints, the telemetry and diagnostics service must be enabled. The service is enabled by default in Windows 10, but if it has been disabled you can turn it on by following the instructions in the [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) section.

### Telemetry and diagnostics settings
You must ensure that the telemetry and diagnostics service is enabled on all the endpoints in your organization.
By default, this service is enabled, but it's good practice to check to ensure that you'll get telemetry from them.

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

## Windows Defender signature updates are configured
The Windows Defender ATP agent depends on Windows Defender’s ability to scan files and provide information about them. If Windows Defender is not the active antimalware in your organization, you may need to configure the signature updates. For more information see [Configure Windows Defender in Windows 10](windows-defender-in-windows-10.md).

When Windows Defender is not the active antimalware in your organization and you use the Windows Defender ATP service, Windows Defender goes on passive mode. For more information, see the **Compatibility** section in the [Windows Defender in Windows 10 topic](windows-defender-in-windows-10.md# compatibility-with-windows-defender-advanced-threat-protection).

## Windows Defender Early Launch AntiMalware (ELAM) driver is enabled
If you're running Windows Defender as the primary antimalware product on your endpoints, the Windows Defender ATP agent will successfully onboard.

If you're running a third-party antimalware client and use Mobile Device Management solutions or System Center Configuration Manager (current branch) version 1606, you'll need to ensure that the Windows Defender ELAM driver is enabled. For more information on how to validate and enable the Windows Defender ELAM driver see, [Ensure the Windows Defender ELAM driver is enabled](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-the-windows-defender-elam-driver-is-enabled).
