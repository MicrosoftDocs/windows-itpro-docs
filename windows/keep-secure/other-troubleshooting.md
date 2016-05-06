---
title: troubleshoot
description: troubleshoot
keywords: troubleshoot
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---
# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues two

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the onboarding process if you encounter issues.

Endpoints not reporting correctly

If you have completed the endpoint onboarding process and don't see endpoints in the [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md), then this might indicate endpoint onboarding or a connectivity issue that you need to address.


If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is enabled on the endpoint. The service may have been disabled by other programs or user configuration changes.

You will need to check the startup type and verify that the service is running. 

There are two ways to check the startup type for the service: from the command line or in the services console.

**Check the startup type from the command line**:

1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.
 
2.  Enter the following command and press **Enter**.

    ```
    sc qc diagtrack
    ```

3.  If the service is enabled, it will be set to automatically start. The result should look like the following:

    ![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)
   
4. If the **START_TYPE** is not set to **AUTO_START**, then you'll need to enter the following command and press **Enter**:

    ```
    sc config diagtrack start=auto
    ```
5. A success message is displayed. Verify the change by entering the following command and press **Enter**:

    ```
    sc qc diagtrack
    ```