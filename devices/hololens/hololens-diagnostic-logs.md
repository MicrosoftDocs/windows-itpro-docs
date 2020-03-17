---
title: Collect diagnostic information from HoloLens devices
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

# Collect diagnostic information from HoloLens devices

Fallback diagnostic logs collect diagnostic data and store it on the HoloLens device. You can access that information from a desktop computer by using the Media Transfer Protocol (MTP). This diagnostic feature has been developed in collaboration with the Mobile Device Management (MDM) team.

While device telemetry usually provides an initial understanding of a customer report, some issues require a broader and deeper understanding of the device state. When you investigate such issues, diagnostic logs that reside on the device are more useful than the basic device telemetry. 

> [!IMPORTANT]  
> Device diagnostic logs contain PII information, such as information about what processes or applications that the user launched during typical operations. When multiple users share a HoloLens device, for example, when users sign in to the same device by using different Microsoft Azure Active Directory (AAD) accounts, the diagnostic logs may contain PII information that pertains to multiple users. For more information, see [Microsoft Privacy statement](https://privacy.microsoft.com/privacystatement).

***Q***: Clarify "customer" vs "user"

## How to retrieve diagnostic log information

There are four ways that diagnostic information can be collected from HoloLens:

- [Feedback hub](hololens-feedback.md).
- Diagnostic Logs CSP.
- Troubleshoot in Settings app.
- Fallback Diagnostics.

### Feedback hub

[Feedback hub](hololens-feedback.md)  

#### What is needed to use this entry point?

- Device is connected to network.
- Feedback hub app is accessible to customer.
- Diagnostic logs can be collected and uploaded to Microsoft cloud.

> [!NOTE]  
> **Commercial customers:** For issues related to MDM, provisioning, or any other device management aspect, etc., please file a bug under **Enterprise Management** > **Device category**

#### When and how to trigger?

**When**

- Customer wants to share diagnostic logs for reporting an issue.

**How**

- Launch feedback hub application and submit a report using the app.

#### User consent

Explicit because user has agreed to terms of use of Feedback hub and is launching feedback hub to collect / share diagnostic information.

#### Where is the data kept?

Diagnostic information is uploaded to Microsoft cloud where it is retained for certain amount of days adhering with Next Generation Privacy (NGP).  

It is also kept on HoloLens, if the person filing the bug via feedback hub has checked following check-box, i.e. "save a local copy of diagnostics and attachments created when giving feedback".

To delete locally retained diagnostic information, go to Feedback Hub, settings and click on the link "View diagnostics logs", so folder opens. User must be "device owner" or "admin" on the system.

#### Who can access the data?

Microsoft employees access diagnostic information using a NGP complaint viewer.

This is applicable to all Feedback Hub categories.

### Diagnostic Logs CSP

#### What is needed to use this entry point?

- Device is connected to network.
- Device is enrolled into MDM environment that supports Diagnostic Logs CSP.

#### When and how to trigger?

**When**

- IT admin wants to remotely collect logs for investigating an issue.

**How**

- IT admin invokes Diagnostic Logs CSP remotely from MDM administrative portal.

#### User consent

Implicit because IT admin has access to device to collect / share diagnostic information.

#### Where is the data kept?

Data is uploaded to cloud infrastructure specified by IT admin of the environment in which HoloLens is being used. It is retained based on the policies specified by IT Admin.

#### Who can access the data?

IT admin and users in tenant roles that are granted access to logs.

### Troubleshoot in Settings app

#### What is needed to use this entry point?

Settings app is accessible to the customer.

#### When and how to trigger?

**When**

- Customer can reproduce an issue and detailed diagnostic logs are required for investigation

**How**

1. Go to Settings App and navigate to **Update & Security** > **Troubleshoot** page.
1. Select appropriate area, click on Start button so it can begin collecting logs.
1. Reproduce the issue, when done, come back to Settings app and click on Stop button.

#### User consent

Implicit because user is triggering diagnostic log collection.

#### Where is the data kept?

Assuming HoloLens is connected to your PC and you want to access the file using Windows Explorer, a file named Trace\<ddmmyyhhmmss>.etl will exist at `This PC\<HoloLens device name>\Internal Storage\Documents`.

This file is retained locally on device unless Customer explicitly deletes it from the folder where file is accessible.

#### Who can access the data?

Only Customer who has access to the device unless the customer shares the information with someone else.

### Fallback Diagnostics

#### What is needed to use this entry point?

> [!IMPORTANT]  
> - Fallback Diagnostics on HoloLens 2 is only enabled when user is either going through OOBE and selecting Send Full Diagnostics Data or System\AllowTelemetry policy value is set to Full.
> - Available with on HoloLens (1st gen) builds on or after 17763.316. This is the same default build used by the Windows Device Recovery Tool.  

- HoloLens is connected to a PC via USB cable and powered on.
- Power and Volume buttons are functionally working together on HoloLens.

#### When and how to trigger?

**When**

There are certain legitimate scenarios where user does not have access to either feedback hub, network, MDM server, UTC or stuck at UX, e.g. kiosk mode, OOBE, lock screen, autopilot, black screen, etc. This mechanism acts a "fallback" when there is no other solution to get diagnostic logs.

**How**

- Press and release POWER + VOLUME DOWN button on HoloLens and wait for few seconds for data collection to complete.

#### User consent
Implicit because user is triggering specific button combination to collect diagnostic information.

#### Where is the data kept?

Assuming HoloLens is connected to your PC and you want to access the file using Windows Explorer, certain zip files (containing diagnostic logs) will exist at This PC\<HoloLens device name>\Internal Storage\Documents.

This file is retained locally on device unless Customer explicitly deletes it from the folder where file is accessible.

#### Who can access the data?

Only Customer who has access to the device unless the customer shares the information with someone else.

## Frequently asked questions about fallback diagnostics on HoloLens

### Does it require device to be enrolled with a MDM server?

No.

### How can I use Fallback Diagnostics on HoloLens?

If a user presses and releases Power + Volume down buttons on HoloLens, data will be collected (it takes few seconds) and zip file(s) will be created (See below).  

Assuming HoloLens is connected to your PC and you want to access the files using Windows Explorer, the zip file(s) will exist at `This PC\<HoloLens device name>\Internal Storage\Documents`.

### How would I know that log collection has completed?

Starting with HoloLens 2 there will be a file created named HololensDiagnostics.temp when log collection begins and it will be removed when it completes. There is no UX, so this is the minimum signal provided to indicate something is in progress.

### What diagnostics files are collected as part of Fallback Diagnostics?

The fallback diagnostics process collects one or more .zip files, depending on the version of HoloLens. The following table lists each of the possible .zip files, and the applicable versions of HoloLens.

|File |Description |HoloLens (1st gen) |HoloLens 2 10.0.18362+ |HoloLens 2 10.0.19041+ |
| --- | --- | --- | --- | --- |
|HololensDiagnostics.zip |Contains&nbsp;ETL&nbsp;files&nbsp;for tracing sessions running on Hololens and diagnostic information specific to Hololens. |Yes |Yes | |
|DeviceEnrollmentDiagnostics.zip |Contains MDM, device enrollment, CSPs / policies related information. |No |Yes |Yes |
|AutoPilotDiagnostics.zip |Contains autopilot related and licensing related information.|No |No |Yes |
|TPMDiagnostics.zip | |No |No |Yes |

> [!NOTE]  
> Starting 5/2/2019 EventLog* ETL files are only collected when signed in user is "device owner". Since these ETLs may contain PII data, they are only accessible to device owners. This matches the behavior on desktop where administrators have access to event logs whiles other users do not.

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
