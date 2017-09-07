---
title: Collect diagnostic data for Update Compliance and Windows Defender AV
description: Use a tool to collect data to troubleshoot Update Compliance issues when using the Windows Defender AV Assessment add in
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, windows defender av
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 09/06/2017
---

# Collect Update Compliance diagnostic data for Windows Defender AV Assessment

**Applies to:**

- Windows 10

**Audience**

- IT administrators

This topic describes how to collect diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues you may encounter when using the Windows Defender AV Assessment section in the Update Compliance add-in.

Before attempting this process, ensure you have read the [Troublehsoot Windows Defender Antivirus reporting](troubleshoot-reporting.md) topic, met all require pre-requisites, and taken any other suggested troubleshooting steps.


1. On at least two endpoints that are not reporting or showing up in Update Compliance, obtain the .cab diagnostic file by following this process:
    1. Open an administrator-level version of the commpand prompt:
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
3. Send an email using the <a href="mailto:ucsupport@microsoft.com?subject=WDAV assessment issue&body=I+am+encountering+the+following+issue+when+using+Windows+Defender+AV+in+Update+Compliance%3a+%0d%0aI+have+provided+at+least+2+support+.cab+files+at+the+following+location%3a+%26lt%3baccessible+share%2c+including+access+details+such+as+password%26gt%3b%0d%0aMy+OMS+workspace+ID+is%3a+%0d%0aPlease+contact+me+at%3a">Update Compliance support email template</a>, and fill out the template with the following information:

    ```
    I am encountering the following issue when using Windows Defender AV in Update Compliance: 
    
    I have provided at least 2 support .cab files at the following location: <accessible share, including access details such as password>

    My OMS workspace ID is: 

    Please contact me at: 
    ```




## Related topics

- [Troublehsoot Windows Defender Antivirus reporting](troubleshoot-reporting.md)

