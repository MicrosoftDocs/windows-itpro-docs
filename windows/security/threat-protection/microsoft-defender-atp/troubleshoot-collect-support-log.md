---
title: Collect support logs in Microsoft Defender ATP using live response
description: Learn how to collect logs using live response to troubleshoot Microsoft Defender ATP issues
keywords: support, log, collect, troubleshoot, live response, liveanalyzer, analyzer, live, response
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
ms.topic: troubleshooting
---

# Collect support logs in Microsoft Defender ATP using live response 


**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

When contacting support, you may be asked to provide the output package of the Microsoft Defender ATP Client Analyzer tool.

This topic provides instructions on how to run the tool via Live Response.

1. Download the [LiveAnalyzer.ps1 script](https://aka.ms/MDATPLiveAnalyzer ).
 
2.	Initiate a [Live Response session](live-response.md#initiate-a-live-response-session-on-a-device) on the machine you need to investigate.

3.	Select **Upload file to library**.

    ![Image of upload file](images/upload-file.png)

4. Select **Choose file**.

    ![Image of choose file button](images/choose-file.png)

5. Select the downloaded file named MDATPLiveAnalyzer.ps1 and then click on **Confirm**


   ![Image of choose file button](images/analyzer-file.png)


6. While still in the LiveResponse session, use the commands below run the analyzer and collect the result file:

    ```
    Run MDATPLiveAnalyzer.ps1
    GetFile "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\MDATPClientAnalyzerResult.zip" -auto
    ```

    ![Image of commands](images/analyzer-commands.png)


>[!NOTE]
>- The latest preview version of MDATPClientAnalyzer can be downloaded [here](https://aka.ms/Betamdatpanalyzer). <br>
>- The LiveAnalyzer script downloads the troubleshooting package on the destination machine from: https://mdatpclientanalyzer.blob.core.windows.net. <br>
> If you cannot allow the machine to reach the above URL, then upload MDATPClientAnalyzerPreview.zip file to the library before running the LiveAnalyzer script:
>```PutFile MDATPClientAnalyzerPreview.zip -overwrite
>Run MDATPLiveAnalyzer.ps1
>GetFile "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Downloads\MDATPClientAnalyzerResult.zip" -auto
>```
> - For more information on gathering data locally on a machine in case the machine isn't communicating with Microsoft Defender ATP cloud services, or does not appear in MDATP portal as expected, see [Verify client connectivity to Microsoft Defender ATP service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-atp-service-urls).
