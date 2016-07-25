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

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

There are some minimum requirements for onboarding your network and endpoints.

## Minimum requirements

### Network and data storage and configuration requirements
<!---Your organization must use Azure Active Directory (AAD) to manage users. AAD is used during service onboarding to manage user-based access to the [Windows Defender ATP portal](https://securitycenter.windows.com/).--->

<!--If you’d like help with using AAD to set up user access, contact the [Windows Defender ATP Yammer group](https://www.yammer.com/wsscengineering/\#/threads/inGroup?type=in\_group&feedId=7108776&view=all) or email [winatp@microsoft.com](mailto:winatp@microsoft.com).-->

When you run the onboarding wizard for the first time, you must choose where your Windows Defender Advanced Threat Protection-related information is stored: in either a European or United States datacenter.

> **Notes**&nbsp;&nbsp;
-   You cannot change your data storage location after the first-time setup.
-   Review the [Windows Defender ATP data storage and privacy](data-storage-privacy-windows-defender-advanced-threat-protection.md) for more information on where and how Microsoft stores your data.

### Endpoint hardware and software requirements
The Windows Defender ATP agent only supports Windows 10, version 1607.

Endpoints on your network must be running Windows 10, version 1607.

The hardware requirements for Windows Defender ATP on endpoints is the same as those for Windows 10, version 1607.


> **Note**&nbsp;&nbsp;Endpoints that are running Windows Server and mobile versions of Windows are not supported.

Internet connectivity on endpoints is also required. For more information on additional proxy configuration settings see, [Configure Windows Defender ATP endpoint proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md) .

Before you configure endpoints, the telemetry and diagnostics service must be enabled. The service is enabled by default in Windows 10, but if it has been disabled you can turn it on by following the instructions in the [Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) section.

### Telemetry and diagnostics settings
You must ensure that the telemetry and diagnostics service is enabled on all the endpoints in your organization. 
By default, this service is enabled, but it's good practice to check to ensure that you'll get telemetry from them.

**Use the command line to check the Windows 10 telemetry and diagnostics service startup type**:

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start**, type **cmd**, and press **Enter**.

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

  a.  Click **Start**, type **cmd**, and press **Enter**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command, and press **Enter**:

    ```text
    sc config diagtrack start=auto
    ```

3.  A success message is displayed. Verify the change by entering the following command, and press **Enter**:

    ```text
    sc qc diagtrack
    ```

