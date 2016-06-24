---
title: Diagnostics for devices managed by MDM  (Windows 10)
description: Device Policy State log in Windows 10, Version 1607, collects info about policies.
keywords: ["mdm", "udiag", "device policy", "mdmdiagnostics"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Diagnostics for devices managed by MDM 

**Applies to**

-   Windows 10
-   Windows 10 Mobile

(which SKUs?)

Two new diagnostic tools for Windows 10, version 1607, help IT administrators diagnose and resolve issues with remote devices enrolled in mobile device management (MDM): the [Device Policy State Log](#device-policy-state-log) and [UDiag](#udiag).



	Device Policy State Log implementation: what does admin have to do on MDM side to enable "export your management log file"?[DK]  Nothing.  Generating the log is entirely a client side behavior.  There is a new capability in the Diagnostic Log CSP that will enable a MDM ISV to trigger generation and capture of the log over the MDM channel. 

	Can admin pull logs without user action? [DK] Yes via the diagnostic log CSP

	Is MDMDiagnostics.xml the file created by "export your management log file"?  [DK] Yes 

	"Run PowerShell script to process the file" – is that the user doing it? How can this workflow work in an enterprise where employees aren't computer-savvy? [DK] This is intended to be done by the help desk guy.  

	Where did (user|admin) get mdmReportGenerator.ps1?  [DK] Publishing on DLC later this summer

	In Viewing the report, how does the admin make sense of the source GUIDs? [DK] Correlates the value in the table with the entries at the top of the page. 

	UDiag – where does admin get this? [DK] Publishing on DLC later this summer

	Can admins create custom rule sets? [DK] Right now, no.  but open to feedback on this. 


## Device Policy State Log

The Device Policy State Log collects information on the state of policies applied to the device to help you determine which sources are applying policies or configurations to the device. Help desk personnel can use this log to diagnose and resolve issues with a remote device. 

There are two sections to the report, Configuration and Policy Information.  The configuration section lists the GUID of the sources that are applying configurations to the device. The GUIDS for some common providers are included in the [Diagnose MDM failures in Windows 10](https://msdn.microsoft.com/en-us/library/windows/hardware/mt632120.aspx) topic. 

The policy information section displays information about the specific policies that are being enforced and on the device.  For each policy, you will see the Area grouping, the Policy name, its default and current value, and the configuration source.

(screenshot report)

Users can easily generate this log, both on PCs and mobile devices. Go to **Settings > Accounts > Work access > Export your management log files**.

- On desktop devices, the file is saved to C:/Users/Public/Documents/MDMDiagnostics/MSMDiagReport.xml
- On phones, the files is saved to *phone*/Documents/MDMDiagnostics/MDMDiagnostics.xml

(screenshot of UI)

(run mdmReportGenerator.ps1 script on log to create report)
(download mdmReportGenerator.ps1)




## UDiag

The UDiag tool applies rules to Event Tracing for Windows (ETW) files to help determine the root cause of an issue. 

(download UDiag)

To generate Event Trace Log (ETL) on desktop or phone:
1. **Settings** > **Accounts** > **Work access** > **Export your management log files**
2. File is saved:
    - on desktop: Clicking on **Export** will generate the diagnostic log file, and save it in C:\Users\Public\Documents\MDMDiagnostics
    - on phone: Copy the file from the phone
        - Either connect phone to PC and copy the file from Phone\Documents\MDMDiagnostics
        OR
        - Mail the log file from your phone by selecting the file from This Device\Documents\MDMDiagnostics

To analyze ETL using UDiag
1. Open UDiag, and select Device Management.
2. Select your source for the log files ("cab of logs" or "directory of logs")
Investigating log content, identifying patterns, and adding a root cause analysis to the database (Advanced users/providers) 


1. While at the 'Root Causes List' panel, click the 'Diagnose' button at the bottom. 


2. You will then be brought to the Diagnosis panel where you can investigate and tag root causes from the content

[1] Evidence Groups


◦When a set of logs are loaded into UDiag, the contents are processed (e.g. ETW) and organized into evidence groups. 


•[2] Decision Tree View


◦This view shows the loaded decision tree for the current topic/topic area.

◦When a decision node is selected, a user can modify the regular expression and add/edit/delete an RCA for that node. Any RCA matches found in the current log set will have an 'RCA' label that is either Red or Yellow.

•[3] Evidence View


◦Selecting an evidence group from [1], loads its content into this evidence view. Use this view to investigate issues and determine root causes. Drag and drop lines from the Evidence View [3] into the Decision Tree View [2], to build your RCA pattern.



 

	

Link to [Diagnose MDM failures in Windows 10](https://msdn.microsoft.com/en-us/library/windows/hardware/mt632120%28v=vs.85%29.aspx)

[Diagnostics capability for devices managed by any MDM provider.](https://microsoft.sharepoint.com/teams/osg_core_ens/mgmt/OSMan Wiki/MDM Diagnostics - Generating and Processing Log files.aspx)

[Redstone spec](https://microsoft.sharepoint.com/teams/specstore/_layouts/15/WopiFrame.aspx?sourcedoc=%7b7E8742A2-03A1-451C-BA07-F2573B044CBF%7d&file=DM%20-%20MDM%20Diagnostics-RS.docx&action=default&DefaultItemOpen=1)

## Related topics

[DiagnosticLog CSP](https://msdn.microsoft.com/en-us/library/windows/hardware/mt219118.aspx)

[Diagnose MDM failures in Windows 10](https://msdn.microsoft.com/en-us/library/windows/hardware/mt632120.aspx)