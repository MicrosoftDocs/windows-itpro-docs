---
title: Run a detection test on a newly onboarded Microsoft Defender ATP device
description: Run the detection script on a newly onboarded device to verify that it is properly onboarded to the Microsoft Defender ATP service.
keywords: detection test, detection, powershell, script, verify, onboarding, microsoft defender advanced threat protection onboarding, clients, servers, test
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

# Run a detection test on a newly onboarded Microsoft Defender ATP device 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- Supported Windows 10 versions
- Windows Server 2012 R2
- Windows Server 2016
- Windows Server, version 1803
- Windows Server, 2019
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Run the following PowerShell script on a newly onboarded device to verify that it is properly reporting to the Microsoft Defender ATP service.

1. Create a folder:  'C:\test-MDATP-test'.
2. Open an elevated command-line prompt on the device and run the script:

   1. Go to **Start** and type **cmd**.

   1. Right-click **Command Prompt** and select **Run as administrator**.

      ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

3. At the prompt, copy and run the following command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference= 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

The Command Prompt window will close automatically. If successful, the detection test will be marked as completed and a new alert will appear in the portal for the onboarded device in approximately 10 minutes.

## Related topics
- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-onboarding)
