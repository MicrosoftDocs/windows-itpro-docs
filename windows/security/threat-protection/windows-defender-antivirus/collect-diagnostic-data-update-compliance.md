---
title: Collect diagnostic data for Update Compliance and Windows Defender Windows Defender Antivirus
description: Use a tool to collect data to troubleshoot Update Compliance issues when using the Windows Defender Antivirus Assessment add in
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, windows defender av
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Collect Update Compliance diagnostic data for Windows Defender AV Assessment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

This topic describes how to collect diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues you may encounter when using the Windows Defender AV Assessment section in the Update Compliance add-in.

Before attempting this process, ensure you have read [Troubleshoot Windows Defender Antivirus reporting](troubleshoot-reporting.md), met all require pre-requisites, and taken any other suggested troubleshooting steps.

1. On at least two endpoints that are not reporting or showing up in Update Compliance, obtain the .cab diagnostic file by following this process:

    1. Open an administrator-level version of the command prompt:
        
        1. Open the **Start** menu.
        
        2. Type **cmd**. Right-click on **Command Prompt** and click **Run as administrator**.
        
        3. Enter administrator credentials or approve the prompt.
        
    2. Navigate to the Windows Defender directory. By default, this is C:\Program Files\Windows Defender, as in the following example:
        
        ```Dos
        cd c:\program files\windows\defender
        ```
    
    3. Enter the following command and press **Enter**
        
        ```Dos
        mpcmdrun -getfiles
        ```
    
    4. A .cab file will be generated that contains various diagnostic logs. The location of the file will be specified in the output in the command prompt, but by default it will be in C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab.

2. Copy these .cab files to a location that can be accessed by Microsoft support. An example could be a password-protected OneDrive folder that you can share with us.

3. Send an email using the <a href="mailto:ucsupport@microsoft.com?subject=WDAV assessment issue&body=I%20am%20encountering%20the%20following%20issue%20when%20using%20Windows%20Defender%20AV%20in%20Update%20Compliance%3a%20%0d%0aI%20have%20provided%20at%20least%202%20support%20.cab%20files%20at%20the%20following%20location%3a%20%3Caccessible%20share%2c%20including%20access%20details%20such%20as%20password%3E%0d%0aMy%20OMS%20workspace%20ID%20is%3a%20%0d%0aPlease%20contact%20me%20at%3a">Update Compliance support email template</a>, and fill out the template with the following information:
  
    ```
    I am encountering the following issue when using Windows Defender Antivirus in Update Compliance:
    
    I have provided at least 2 support .cab files at the following location: <accessible share, including access details such as password>

    My OMS workspace ID is:

    Please contact me at:
    ```

## Related topics

- [Troubleshoot Windows Defender Windows Defender Antivirus reporting](troubleshoot-reporting.md)

