---
title: Collect diagnostic data of Microsoft Defender Antivirus
description: Use a tool to collect data to troubleshoot Microsoft Defender Antivirus
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, Microsoft Defender av
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 06/29/2020
ms.reviewer: 
manager: dansimp
---

# Collect Microsoft Defender AV diagnostic data

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

This article describes how to collect diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues you may encounter when using the Microsoft Defender AV.

> [!NOTE]
> As part of the investigation or response process, you can collect an investigation package from a device. Here's how: [Collect investigation package from devices](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts#collect-investigation-package-from-devices).

On at least two devices that are experiencing the same issue, obtain the .cab diagnostic file by taking the following steps:

1. Open an administrator-level version of the command prompt as follows:

    a. Open the **Start** menu.

    b. Type **cmd**. Right-click on **Command Prompt** and click **Run as administrator**.

    c. Enter administrator credentials or approve the prompt.

2. Navigate to the Microsoft Defender directory. By default, this is `C:\Program Files\Windows Defender`.

> [!NOTE]
> If you're running an [updated Microsoft Defender Platform version](https://support.microsoft.com/help/4052623/update-for-microsoft-defender-antimalware-platform), please run `MpCmdRun` from the following location: `C:\ProgramData\Microsoft\Windows Defender\Platform\<version>`.

3. Type the following command, and then press **Enter**  

    ```Dos
    mpcmdrun.exe -GetFiles
    ```
  
4. A .cab file will be generated that contains various diagnostic logs. The location of the file will be specified in the output in the command prompt. By default, the location is `C:\ProgramData\Microsoft\Microsoft Defender\Support\MpSupportFiles.cab`.

> [!NOTE]
> To redirect the cab file to a a different path or UNC share, use the following command: `mpcmdrun.exe -GetFiles -SupportLogLocation <path>`  <br/>For more information see [Redirect diagnostic data to a UNC share](#redirect-diagnostic-data-to-a-unc-share).

5. Copy these .cab files to a location that can be accessed by Microsoft support. An example could be a password-protected OneDrive folder that you can share with us.

> [!NOTE]
>If you have a problem with Update compliance, send an email using the <a href="mailto:ucsupport@microsoft.com?subject=WDAV assessment issue&body=I%20am%20encountering%20the%20following%20issue%20when%20using%20Windows%20Defender%20AV%20in%20Update%20Compliance%3a%20%0d%0aI%20have%20provided%20at%20least%202%20support%20.cab%20files%20at%20the%20following%20location%3a%20%3Caccessible%20share%2c%20including%20access%20details%20such%20as%20password%3E%0d%0aMy%20OMS%20workspace%20ID%20is%3a%20%0d%0aPlease%20contact%20me%20at%3a">Update Compliance support email template</a>, and fill out the template with the following information:
>```
> I am encountering the following issue when using Microsoft Defender Antivirus in Update Compliance:
> I have provided at least 2 support .cab files at the following location:  
> <accessible share, including access details such as password>
>
>    My OMS workspace ID is:
>
>    Please contact me at:

## Redirect diagnostic data to a UNC share
To collect diagnostic data on a central repository, you can specify the SupportLogLocation parameter.

```Dos
mpcmdrun.exe -GetFiles -SupportLogLocation <path>
```

Copies the diagnostic data to the specified path. If the path is not specified, the diagnostic data will be copied to the location specified in the Support Log Location Configuration.

When the SupportLogLocation parameter is used, a folder structure as below will be created in the destination path:

```Dos
<path>\<MMDD>\MpSupport-<hostname>-<HHMM>.cab
```

| field  | Description   |
|:----|:----|
| path | The path as specified on the commandline or retrieved from configuration
| MMDD | Month Day when the diagnostic data was collected (eg 0530)
| hostname | the hostname of the device on which the diagnostic data was collected.
| HHMM | Hours Minutes when the diagnostic data was collected (eg 1422)

> [!NOTE]
> When using a File share please make sure that account used to collect the diagnostic package has write access to the share.  

## See also

- [Troubleshoot Microsoft Defender Antivirus reporting](troubleshoot-reporting.md)

