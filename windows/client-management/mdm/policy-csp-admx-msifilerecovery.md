---
title: Policy CSP - ADMX_MsiFileRecovery
description: Policy CSP - ADMX_MsiFileRecovery
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/20/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_MsiFileRecovery

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_MsiFileRecovery policies  

<dl>
  <dd>
    <a href="#admx-msifilerecovery-wdiscenarioexecutionpolicy">ADMX_MsiFileRecovery/WdiScenarioExecutionPolicy</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-msifilerecovery-wdiscenarioexecutionpolicy"></a>**ADMX_MsiFileRecovery/WdiScenarioExecutionPolicy**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the recovery behavior for corrupted MSI files to one of three states:  

- Prompt for Resolution: Detection, troubleshooting, and recovery of corrupted MSI applications will be turned on. Windows will prompt the user with a dialog-box when application reinstallation is required. 
This is the default recovery behavior on Windows client.  

- Silent: Detection, troubleshooting, and notification of MSI application to reinstall will occur with no UI. Windows will log an event when corruption is determined and will suggest the application that should be re-installed. This behavior is recommended for headless operation and is the default recovery behavior on Windows server.  

- Troubleshooting Only: Detection and verification of file corruption will be performed without UI.  
Recovery is not attempted.  

- If you enable this policy setting, the recovery behavior for corrupted files is set to either the Prompt For Resolution (default on Windows client), Silent (default on Windows server), or Troubleshooting Only.  

- If you disable this policy setting, the troubleshooting and recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.  

If you do not configure this policy setting, the recovery behavior for corrupted files will be set to the default recovery behavior. No system or service restarts are required for changes to this policy setting to take immediate effect after a Group Policy refresh.  

> [!NOTE]
> This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, system file recovery will not be attempted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure MSI Corrupted File Recovery behavior*
-   GP name: *WdiScenarioExecutionPolicy*
-   GP path: *System\Troubleshooting and Diagnostics\MSI Corrupted File Recovery*
-   GP ADMX file name: *MsiFileRecovery.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->