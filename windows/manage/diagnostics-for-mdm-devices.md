---
title: Device Policy State Log  (Windows 10)
description: Device Policy State log in Windows 10, Version 1607, collects info about policies.
keywords: ["mdm", "udiag", "device policy", "mdmdiagnostics"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Device Policy State Log  

**Applies to**

-   Windows 10
-   Windows 10 Mobile

[Diagnostics capability for devices managed by any MDM provider.](https://microsoft.sharepoint.com/teams/osg_core_ens/mgmt/OSMan Wiki/MDM Diagnostics - Generating and Processing Log files.aspx)

[Redstone spec](https://microsoft.sharepoint.com/teams/specstore/_layouts/15/WopiFrame.aspx?sourcedoc=%7b7E8742A2-03A1-451C-BA07-F2573B044CBF%7d&file=DM%20-%20MDM%20Diagnostics-RS.docx&action=default&DefaultItemOpen=1)

The Device Policy State Log, a new log in Windows 10, Version 1607, collects information on the state of policies applied to the device to help you determine which sources are applying policies or configurations to the device. This log is a tool that enables the helpdesk to be more effectively in remotely diagnosing and resolving issues with the device. 

Users can easily generate this log, both on PCs and mobile devices. (screenshot of UI)


(run script on log to create report)

There are two sections to the report, Configuration and Policy Information.  The configuration section enumerates the GUID of the sources that are applying configurations to the device.  

The policy information section displays information about the specific policies that are being enforced and on the device.  For each policy you will see the Area grouping, the Policy name, its default and current value, in addition to the configuration source.




Event Trace Log (ETL) file

To generate on desktop or phone:
1. **Settings** > **Accounts** > **Work access** > **Export your management log files**
2. File is saved:
    - on desktop: Clicking on **Export** will generate the diagnostic log file, and save it in C:\Users\Public\Documents\MDMDiagnostics
    - on phone: Copy the file from the phone
        - Either connect phone to PC and copy the file from Phone\Documents\MDMDiagnostics
        OR
        - Mail the log file from your phone by selecting the file from This Device\Documents\MDMDiagnostics

UDiag tool: Uses rule-based analysis to determine root cause based on Event Tracing for Windows (ETW) files; reduces the amount of time needed to determine what the root case of an issue is based on ETW analysis
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



 

	Device Policy State Log implementation: what does admin have to do on MDM side to enable "export your management log file"?[DK]  Nothing.  Generating the log is entirely a client side behavior.  There is a new capability in the Diagnostic Log CSP that will enable a MDM ISV to trigger generation and capture of the log over the MDM channel. 

	Can admin pull logs without user action? [DK] Yes via the diagnostic log CSP

	Is MDMDiagnostics.xml the file created by "export your management log file"?  [DK] Yes 

	"Run PowerShell script to process the file" – is that the user doing it? How can this workflow work in an enterprise where employees aren't computer-savvy? [DK] This is intended to be done by the help desk guy.  

	Where did (user|admin) get mdmReportGenerator.ps1?  [DK] Publishing on DLC later this summer

	In Viewing the report, how does the admin make sense of the source GUIDs? [DK] Correlates the value in the table with the entries at the top of the page. 

	UDiag – where does admin get this? [DK] Publishing on DLC later this summer

	Can admins create custom rule sets? [DK] Right now, no.  but open to feedback on this. 

Link to [Diagnose MDM failures in Windows 10](https://msdn.microsoft.com/en-us/library/windows/hardware/mt632120%28v=vs.85%29.aspx)

