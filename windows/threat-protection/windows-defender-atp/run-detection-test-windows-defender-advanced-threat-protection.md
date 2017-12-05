---
title: Run a detection test on a newly onboarded Windows Defender ATP endpoint
description: Run the detection script on a newly onboarded endpoint to verify that it is properly onboarded to the Windows Defender ATP service.
keywords: detection test, detection, powershell, script, verify, onboarding, windows defender advanced threat protection onboarding, clients, servers, endpoint, test
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 11/06/2017
---

#  Run a detection test on a newly onboarded Windows Defender ATP endpoint 

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)


Run the following PowerShell script on a newly onboarded endpoint to verify that it is properly reporting to the Windows Defender ATP service.

1. Open an elevated command-line prompt on the endpoint and run the script:

    a.  Go to **Start** and type **cmd**.

    b.  Right-click **Command Prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

2. At the prompt, copy and run the following command:

    ```
    powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden (New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\test-WDATP-test\invoice.exe');Start-Process 'C:\test-WDATP-test\invoice.exe'
    ```

The Command Prompt window will close automatically. If successful, the detection test will be marked as completed and a new alert will appear in the portal for the onboarded endpoint in approximately 10 minutes.

## Related topics
- [Configure client endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Configure server endpoints](configure-server-endpoints-windows-defender-advanced-threat-protection.md)