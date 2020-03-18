---
title: Collect and use fallback diagnostic information from HoloLens devices
description: 
author: Teresa-Motiv
ms.author: v-tea
ms.date: 03/23/2020
ms.prod: hololens
ms.mktglfcycl: manage
ms.sitesec: library
ms.topic: article
ms.custom: 
- CI 115131
- CSSTroubleshooting
audience: ITPro
ms.localizationpriority: medium
keywords: 
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Collect and use fallback diagnostic information from HoloLens devices

Fallback diagnostic logs collect diagnostic data and store it on the HoloLens device. You can access that information from a desktop computer by using the Media Transfer Protocol (MTP). This diagnostic feature has been developed in collaboration with the Mobile Device Management (MDM) team.

While device telemetry usually provides an initial understanding of a customer report, some issues require a broader and deeper understanding of the device state. When you investigate such issues, diagnostic logs that reside on the device are more useful than the basic device telemetry.

> [!IMPORTANT]  
> Device diagnostic logs contain PII information, such as information about what processes or applications that the user launched during typical operations. When multiple users share a HoloLens device, for example, when users sign in to the same device by using different Microsoft Azure Active Directory (AAD) accounts, the diagnostic logs may contain PII information that pertains to multiple users. For more information, see [Microsoft Privacy statement](https://privacy.microsoft.com/privacystatement).

### Fallback diagnostics

The fallback diagnostics process provides a way for the user to gather diagnostic information when no other methods are available. Such scenarios include the following:

- The network or network-based resources (such as Feedback Hub, MDM, and so forth) are not available.
- The device is "stuck" or locked in a state where normal troubleshooting capabilities (such as the Settings app) are not available. Such scenarios include the Out-of-Box-Experience (OOBE), kiosk mode, or a locked or "hung" user interface.

On the device, press the Power and Volume Down buttons at the same time and then release them. Wait for few seconds for the data collection to complete.

#### Prerequisites

- The device is connected to a computer by using a USB cable.
- The device is powered on.
- The Power and Volume buttons on the device are functioning correctly.


> [!IMPORTANT]  
> - Fallback Diagnostics on HoloLens 2 is only enabled when user is either going through OOBE and selecting Send Full Diagnostics Data or System\AllowTelemetry policy value is set to Full.
> - Available with on HoloLens (1st gen) builds on or after 17763.316. This is the same default build used by the Windows Device Recovery Tool.  

#### Data storage and use

Because the user starts the data collection, the user implicitly consents to the storage of the diagnostic information. Only the user, or anyone that the user shares the data with, can access the data.


#### Where is the data kept?

Assuming HoloLens is connected to your PC and you want to access the file using Windows Explorer, certain zip files (containing diagnostic logs) will exist at This PC\<HoloLens device name>\Internal Storage\Documents.

This file is retained locally on device unless Customer explicitly deletes it from the folder where file is accessible.

#### Who can access the data?

Only Customer who has access to the device unless the customer shares the information with someone else.

## Frequently asked questions about fallback diagnostics on HoloLens

### Does the device have to be enrolled with a MDM server?

No.

### How can I use Fallback Diagnostics on HoloLens?

If a user presses and releases Power + Volume down buttons on HoloLens, data will be collected (it takes few seconds) and zip file(s) will be created (See below).  

Assuming HoloLens is connected to your PC and you want to access the files using Windows Explorer, the zip file(s) will exist at `This PC\<HoloLens device name>\Internal Storage\Documents`.

### How would I know that log collection has completed?

Starting with HoloLens 2 there will be a file created named HololensDiagnostics.temp when log collection begins and it will be removed when it completes. There is no UX, so this is the minimum signal provided to indicate something is in progress.

### What diagnostics files are collected as part of Fallback Diagnostics?

The fallback diagnostics process collects one or more .zip files, depending on the version of HoloLens. The following table lists each of the possible .zip files, and the applicable versions of HoloLens.

|File |Contents |HoloLens (1st gen) |HoloLens 2 10.0.18362+ |HoloLens 2 10.0.19041+ |
| --- | --- | --- | --- | --- |
|HololensDiagnostics.zip |Files&nbsp;for tracing sessions that ran on the device.<br /><br />Diagnostic information that's specific to Hololens. |✔️ |✔️ |✔️ |
|DeviceEnrollmentDiagnostics.zip |Information that's related to MDM, device enrollment, CSPs, and policies. | |✔️ |✔️ |
|AutoPilotDiagnostics.zip |Information that's related to autopilot and licensing.| | |✔️ |
|TPMDiagnostics.zip |Information that's related to the trusted platform module (TPM) on the device | | |✔️ |

> [!NOTE]  
> Starting May 2, 2019, the fallback diagnostics process collects EventLog* .etl files only when the signed-in user is the Device owner. This is because these files may contain PII data. Such data is accessible to only device owners. This behavior matches the behavior of Windows desktop computers, where administrators have access to event log file but other users do not.

#### Sample diagnostic content for HoloLens (1st gen)

HololensDiagnostics.zip

- AuthLogon.etl
- EventLog-HupRe.etl.001
- FirstExperience.etl.001
- HetLog.etl
- HoloInput.etl.001
- HoloShell.etl.001
- WiFi.etl.001

#### Sample diagnostic content for HoloLens 2 10.0.18362+

HololensDiagnostics.zip

- EventLog-Application.etl.001*
- EventLog-System.etl.001*
- AuthLogon.etl
- EventLog-HupRe.etl.001
- FirstExperience.etl.001
- HetLog.etl
- HoloInput.etl.001
- HoloShell.etl.001
- WiFi.etl.001
- CSPsAndPolicies.etl.001
- RadioMgr.etl
- WiFiDriverIHVSession.etl

DeviceEnrollmentDiagnostics.zip

- MDMDiagHtmlReport.html
- MdmDiagLogMetadata.json
- MDMDiagReport.xml
- MdmDiagReport_RegistryDump.reg
- MdmLogCollectorFootPrint.txt

#### Sample diagnostic content for HoloLens 2 10.0.19041+

HololensDiagnostics.zip

- EventLog-Application.etl.001*
- EventLog-System.etl.001*
- AuthLogon.etl
- EventLog-HupRe.etl.001
- FirstExperience.etl.001
- HetLog.etl
- HoloInput.etl.001
- HoloShell.etl.001
- WiFi.etl.001
- CSPsAndPolicies.etl.001
- RadioMgr.etl
- WiFiDriverIHVSession.etl
- DisplayDiagnosticData.json
- HUP Dumps

DeviceEnrollmentDiagnostics.zip

- MDMDiagHtmlReport.html
- MdmDiagLogMetadata.json
- MDMDiagReport.xml
- MdmDiagReport_RegistryDump.reg
- MdmLogCollectorFootPrint.txt

AutoPilotDiagnostics.zip

- DeviceHash_HoloLens-U5603.csv
- LicensingDiag.cab
- LicensingDiag_Output.txt
- TpmHliInfo_Output.txt
- DiagnosticLogCSP_Collector_DeviceEnrollment_\*.etl
- DiagnosticLogCSP_Collector_Autopilot_*.etl

TPMDiagnostics.zip

- CertReq_enrollaik_Output.txt
- CertUtil_tpminfo_Output.txt
- TPM\*.etl

## How do fallback diagnostic logs compare to other sources of diagnostic information?

There are four ways in which users or administrators can collect diagnostic information from HoloLens:

- Feedback hub app. (user-driven)
- Diagnostic Logs CSP (IT Admin/enterprise-driven)
- Troubleshoot in Settings app. (user-driven)
- Fallback Diagnostics. (user-driven)

|Method |Prerequisites |Data locations |Data access and use |Data retention |
| --- | --- | --- | --- | --- |
|[Feedback Hub](#feedback-hub) |<ul><li>Network and internet connection</li><li>Feedback Hub app</li><li>Permission to upload files to the Microsoft cloud</li><ul> |<ul><li>Microsoft cloud</li><li>HoloLens device (optional)</li></ul> |<ul><li>User requests assistance, agrees to the terms of use, and uploads the data</li><li>Microsoft employees view the data, as consistent with the terms of use</li></ul> |<ul><li>Data in the cloud is retained for the period defined by  Next Generation Privacy (NGP), after which it is deleted automatically</li><li>Data on the device can be deleted at any time by a user who has **Device owner** or **Admin** permissions. |

### Feedback Hub

A HoloLens user can use the Microsoft Feedback Hub desktop app to send diagnostic information to Microsoft support. For details and complete instructions, see [Give us feedback](hololens-feedback.md).  

> [!NOTE]  
> **Commercial or enterprise customers:** If you use the Feedback Hub app to report a problem that relates to MDM, provisioning, or any other device management aspect, change the app category to **Enterprise Management** > **Device category**.

#### Prerequisites

- The device is connected to a network.
- The Feedback Hub app is available on the user's desktop computer, and the user can upload files to the Microsoft cloud.

#### Data storage and use

By agreeing to the terms-of-use of Feedback Hub, the user explicitly consents to the storage and usage of the data (as defined by that agreement).

The Feedback Hub provides two places for the user to store diagnostic information:

- **The Microsoft cloud**. Data that the user uploads by using the Feedback Hub app is stored for a number of days that is consistent with Next Generation Privacy (NGP) requirements. Microsoft employees can use an NGP-compliant viewer to access this information during this period.
   > [!NOTE]  
   > These requirements apply to data in all Feedback Hub categories.

- **The HoloLens device**. While filing a report in Feedback Hub, the user can select **Save a local copy of diagnostics and attachments created when giving feedback**. If the user selects this option, the Feedback Hub stores a copy of the diagnostic information on the HoloLens device. This information remains accessible to the user (or anyone that uses that account to sign in to HoloLens). To delete this information, a user must have **Device owner** or **Admin** permissions on the device. A user who has the appropriate permissions can sign in to Feedback Hub, select **Settings** > **View diagnostics logs**, and delete the information.

### DiagnosticLog CSP

In a Mobile Device Management (MDM) environment, the IT administrator can use the the [DiagnosticLog configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/diagnosticlog-csp) to configure diagnostic settings on enrolled HoloLens devices. The IT administrator can configure these settings to collect logs from enrolled devices.

#### Prerequisites

- The device is connected to a network.
- The device is enrolled in an MDM environment that supports the DiagnosticLog CSP.

#### Data storage and use

Because the device is part of the managed environment, the user implicitly consents to administrative access to diagnostic information.

The IT administrator uses the DiagnosticLog CSP to configure the data storage, retention, and access policies, including the policies that govern the following:

- The cloud infrastructure that stores the diagnostic information.
- The retention period for the diagnostic information.
- Permissions that control access to the diagnostic information.

### Troubleshoot by using the Settings app

A HoloLens user can use the Settings app on the device to troubleshoot problems and collect diagnostic information. To do this, follow these steps:

1. Open the Settings app and select **Update & Security** > **Troubleshoot** page.
1. Select the appropriate area, and then select **Start**.
1. Reproduce the issue.
1. After you reproduce the issue, return to Settings and select **Stop**.

#### Prerequisites

- The Settings app is installed on the device and is available to the user.

#### Data storage and use

Because the user starts the data collection, the user implicitly consents to the storage of the diagnostic information. Only the user, or anyone that the user shares the data with, can access the data.

The diagnostic information is stored on the device. If the device is connected to the user's computer, the information also resides on the computer, in the following file:

> This PC\\\<*HoloLens device name*>\\Internal Storage\\Documents\\Trace\<*ddmmyyhhmmss*>.etl

> [!NOTE]  
> In this file path and name, \<*HoloLens device name*> represents the name of the HoloLens device. \<*ddmmyyhhmmss*> represents the date and time that the file was created.

The diagnostic information remains in these locations until the user deletes it.


