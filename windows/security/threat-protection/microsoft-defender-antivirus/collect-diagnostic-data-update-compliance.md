---
title: Collect diagnostic data for Update Compliance and Windows Defender Microsoft Defender Antivirus
description: Use a tool to collect data to troubleshoot Update Compliance issues when using the Microsoft Defender Antivirus Assessment add in
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, Microsoft Defender AV
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Collect Update Compliance diagnostic data for Microsoft Defender AV Assessment

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

This article describes how to collect diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues you may encounter when using the Microsoft Defender AV Assessment section in the Update Compliance add-in.

Before attempting this process, ensure you have read [Troubleshoot Microsoft Defender Antivirus reporting](troubleshoot-reporting.md), met all require prerequisites, and taken any other suggested troubleshooting steps.

On at least two devices that are not reporting or showing up in Update Compliance, obtain the .cab diagnostic file by taking the following steps:

1. Open an administrator-level version of the command prompt as follows:
        
    a. Open the **Start** menu.

    b. Type **cmd**. Right-click on **Command Prompt** and click **Run as administrator**.

    c. Enter administrator credentials or approve the prompt.
        
2. Navigate to the Windows Defender directory. By default, this is `C:\Program Files\Windows Defender`.

3. Type the following command, and then press **Enter**
        
    ```Dos
    mpcmdrun -getfiles
    ```
    
4. A .cab file will be generated that contains various diagnostic logs. The location of the file will be specified in the output in the command prompt. By default, the location is `C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab`.

5. Copy these .cab files to a location that can be accessed by Microsoft support. An example could be a password-protected OneDrive folder that you can share with us.

6. Send an email using the <a href="mailto:ucsupport@microsoft.com?subject=WDAV assessment issue&body=I%20am%20encountering%20the%20following%20issue%20when%20using%20Windows%20Defender%20AV%20in%20Update%20Compliance%3a%20%0d%0aI%20have%20provided%20at%20least%202%20support%20.cab%20files%20at%20the%20following%20location%3a%20%3Caccessible%20share%2c%20including%20access%20details%20such%20as%20password%3E%0d%0aMy%20OMS%20workspace%20ID%20is%3a%20%0d%0aPlease%20contact%20me%20at%3a">Update Compliance support email template</a>, and fill out the template with the following information:
  
    ```
    I am encountering the following issue when using Microsoft Defender Antivirus in Update Compliance:
    
    I have provided at least 2 support .cab files at the following location: <accessible share, including access details such as password>

    My OMS workspace ID is:

    Please contact me at:
    ```

## See also

- [Troubleshoot Windows Defender Microsoft Defender Antivirus reporting](troubleshoot-reporting.md)