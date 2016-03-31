---
title: Troubleshoot Windows Defender in Windows 10 (Windows 10)
description: IT professionals can review information about event IDs in Windows Defender for Windows 10 and see any relevant action they can take.
ms.assetid: EE488CC1-E340-4D47-B50B-35BD23CB4D70
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: brianlic-msft
---

# Troubleshoot Windows Defender in Windows 10


**Applies to**

-   Windows 10

IT professionals can review information about *event IDs* in Windows Defender for Windows 10 and see any relevant action they can take.

## Windows Defender client *event IDs*


This section provides the following information about Windows Defender client events:

-   The text of the message as it appears in the event
-   The name of the source of the message
-   The symbolic name that identifies each message in the programming source code
-   Additional information about the message

Use the information in this table to help troubleshoot Windows Defender client events; these are located in the **Windows Event Viewer**, under **Windows Logs**.

**To view a Windows Defender client event**

1.  Open **Event Viewer**.
2.  In the console tree, expand **Applications and Services Logs**, then **Microsoft**, then **Windows**, then **Windows Defender**.
3.  Double-click on **Operational**.
4.  In the details pane, view the list of individual events to find your event.
5.  Click the event to see specific details about an event in the lower pane, under the **General** and **Details** tabs.

You can find a complete list of the Microsoft antimalware *event IDs*, the symbol, and the description of each ID in [Windows Server Antimalware Events TechNet](https://technet.microsoft.com/library/dn913615.aspx).

 

Event ID: 1000
Symbolic name:

**MALWAREPROTECTION\_SCAN\_STARTED**

Message:

**An antimalware scan started.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

Scan Resources: &lt;Resources (such as files/directories/BHO) that were scanned.&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Event ID: 1001
Symbolic name:

**MALWAREPROTECTION\_SCAN\_COMPLETED**

Message:

**An antimalware scan finished.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

User: &lt;Domain&gt;\\&lt;User&gt;
Scan Time: &lt;The duration of a scan.&gt;
Event ID: 1002
Symbolic name:

**MALWAREPROTECTION\_SCAN\_CANCELLED**

Message:

**An antimalware scan was stopped before it finished.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

User: &lt;Domain&gt;\\&lt;User&gt;
Scan Time: &lt;The duration of a scan.&gt;
Event ID: 1003
Symbolic name:

**MALWAREPROTECTION\_SCAN\_PAUSED**

Message:

**An antimalware scan was paused.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

User: &lt;Domain&gt;\\&lt;User&gt;
Event ID: 1004
Symbolic name:

**MALWAREPROTECTION\_SCAN\_RESUMED**

Message:

**An antimalware scan was resumed.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

User: &lt;Domain&gt;\\&lt;User&gt;
Event ID: 1005
Symbolic name:

**MALWAREPROTECTION\_SCAN\_FAILED**

Message:

**An antimalware scan failed.**

Description:

Scan ID: &lt;ID number of the relevant scan.&gt;
Scan Type: &lt;Scan type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware

Scan Parameters: &lt;Scan parameters&gt;, for example:
-   Full scan
-   Quick scan
-   Customer scan

User: &lt;Domain&gt;\\&lt;User&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
User action:

The Windows Defender client encountered an error, and the current scan has stopped. The scan might fail due to a client-side issue. This event record includes the scan ID, type of scan (antivirus, antispyware, antimalware), scan parameters, the user that started the scan, the error code, and a description of the error.

To troubleshoot this event:

1.  Run the scan again.
2.  If it fails in the same way, go to the [Microsoft Support site](http://go.microsoft.com/fwlink/?LinkId=215163), enter the error number in the **Search** box to look for the error code.
3.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 1006
Symbolic name:

**MALWAREPROTECTION\_MALWARE\_DETECTED**

Message:

**The antimalware engine found malware or other potentially unwanted software.**

Description:

For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
Status: &lt;Status&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1007
Symbolic name:

**MALWAREPROTECTION\_MALWARE\_ACTION\_TAKEN**

Message:

**The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.**

Description:

Windows Defender has taken action to protect this machine from malware or other potentially unwanted software. For more information please see the following:

User: &lt;Domain&gt;\\&lt;User&gt;
Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Action: &lt;Action&gt;, for example:
-   Clean: The resource was cleaned
-   Quarantine: The resource was quarantined
-   Remove: The resource was deleted
-   Allow: The resource was allowed to execute/exist
-   User defined: User defined action which is normally one from this list of actions that the user has specified
-   No action: No action
-   Block: The resource was blocked from executing

Status: &lt;Status&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1008
Symbolic name:

**MALWAREPROTECTION\_MALWARE\_ACTION\_FAILED**

Message:

**The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.**

Description:

Windows Defender has encountered an error when taking action on malware or other potentially unwanted software. For more information please see the following:

User: &lt;Domain&gt;\\&lt;User&gt;
Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Action: &lt;Action&gt;, for example:
-   Clean: The resource was cleaned
-   Quarantine: The resource was quarantined
-   Remove: The resource was deleted
-   Allow: The resource was allowed to execute/exist
-   User defined: User defined action which is normally one from this list of actions that the user has specified
-   No action: No action
-   Block: The resource was blocked from executing

Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Status: &lt;Status&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1009
Symbolic name:

**MALWAREPROTECTION\_QUARANTINE\_RESTORE**

Message:

**The antimalware platform restored an item from quarantine.**

Description:

Windows Defender has restored an item from quarantine. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1010
Symbolic name:

**MALWAREPROTECTION\_QUARANTINE\_RESTORE\_FAILED**

Message:

**The antimalware platform could not restore an item from quarantine.**

Description:

Windows Defender has encountered an error trying to restore an item from quarantine. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1011
Symbolic name:

**MALWAREPROTECTION\_QUARANTINE\_DELETE**

Message:

**The antimalware platform deleted an item from quarantine.**

Description:

Windows Defender has deleted an item from quarantine. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1012
Symbolic name:

**MALWAREPROTECTION\_QUARANTINE\_DELETE\_FAILED**

Message:

**The antimalware platform could not delete an item from quarantine.**

Description:

Windows Defender has encountered an error trying to delete an item from quarantine. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Event ID: 1013
Symbolic name:

**MALWAREPROTECTION\_MALWARE\_HISTORY\_DELETE**

Message:

**The antimalware platform deleted history of malware and other potentially unwanted software.**

Description:

Windows Defender has removed history of malware and other potentially unwanted software.

Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.
User: &lt;Domain&gt;\\&lt;User&gt;
Event ID: 1014
Symbolic name:

**MALWAREPROTECTION\_MALWARE\_HISTORY\_DELETE\_FAILED**

Message:

The antimalware platform could not delete history of malware and other potentially unwanted software.

Description:

Windows Defender has encountered an error trying to remove history of malware and other potentially unwanted software.

Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.
User: &lt;Domain&gt;\\&lt;User&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Event ID: 1015
Symbolic name:

**MALWAREPROTECTION\_BEHAVIOR\_DETECTED**

Message:

**The antimalware platform detected suspicious behavior.**

Description:

Windows Defender has detected a suspicious behavior. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
Status: &lt;Status&gt;
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Signature ID: Enumeration matching severity.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
Fidelity Label:
Target File Name: &lt;File name&gt; Name of the file.
Event ID: 1116
Symbolic name:

**MALWAREPROTECTION\_STATE\_MALWARE\_DETECTED**

Message:

**The antimalware platform detected malware or other potentially unwanted software.**

Description:

Windows Defender has detected malware or other potentially unwanted software. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
User action:

No action is required. Windows Defender can suspend and take routine action on this threat. If you want to remove the threat manually, in the Windows Defender interface, click **Clean Computer**.

Event ID: 1117
Symbolic name:

**MALWAREPROTECTION\_STATE\_MALWARE\_ACTION\_TAKEN**

Message:

**The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.**

Description:

Windows Defender has taken action to protect this machine from malware or other potentially unwanted software. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Action: &lt;Action&gt;, for example:
-   Clean: The resource was cleaned
-   Quarantine: The resource was quarantined
-   Remove: The resource was deleted
-   Allow: The resource was allowed to execute/exist
-   User defined: User defined action which is normally one from this list of actions that the user has specified
-   No action: No action
-   Block: The resource was blocked from executing

Action Status: &lt;Description of additional actions&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
User action:

No action is necessary. Windows Defender removed or quarantined a threat.

Event ID: 1118
Symbolic name:

**MALWAREPROTECTION\_STATE\_MALWARE\_ACTION\_FAILED**

Message:

**The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.**

Description:

Windows Defender has encountered a non-critical error when taking action on malware or other potentially unwanted software. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Action: &lt;Action&gt;, for example:
-   Clean: The resource was cleaned
-   Quarantine: The resource was quarantined
-   Remove: The resource was deleted
-   Allow: The resource was allowed to execute/exist
-   User defined: User defined action which is normally one from this list of actions that the user has specified
-   No action: No action
-   Block: The resource was blocked from executing

Action Status: &lt;Description of additional actions&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
User action:

No action is necessary. Windows Defender failed to complete a task related to the malware remediation. This is not a critical failure.

Event ID: 1119
Symbolic name:

**MALWAREPROTECTION\_STATE\_MALWARE\_ACTION\_CRITICALLY\_FAILED**

Message:

**The antimalware platform encountered a critical error when trying to take action on malware or other potentially unwanted software. There are more details in the event message.**

Description:

Windows Defender has encountered a critical error when taking action on malware or other potentially unwanted software. For more information please see the following:

Name: &lt;Threat name&gt;
ID: &lt;Threat ID&gt;
Severity: &lt;Severity&gt;, for example:
-   Low
-   Moderate
-   High
-   Severe

Category: &lt;Category description&gt;, for example, any threat or malware type.
Path: &lt;File path&gt;
Detection Origin: &lt;Detection origin&gt;, for example:
-   Unknown
-   Local computer
-   Network share
-   Internet
-   Incoming traffic
-   Outgoing traffic

Detection Type: &lt;Detection type&gt;, for example:
-   Heuristics
-   Generic
-   Concrete
-   Dynamic signature

Detection Source: &lt;Detection source&gt; for example:
-   User: user initiated
-   System: system initiated
-   Real-time: real-time component initiated
-   IOAV: IE Downloads and Outlook Express Attachments initiated
-   NIS: Network inspection system
-   IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls
-   Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence
-   Remote attestation

Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well. UAC
User: &lt;Domain&gt;\\&lt;User&gt;
Process Name: &lt;Process in the PID&gt;
Action: &lt;Action&gt;, for example:
-   Clean: The resource was cleaned
-   Quarantine: The resource was quarantined
-   Remove: The resource was deleted
-   Allow: The resource was allowed to execute/exist
-   User defined: User defined action which is normally one from this list of actions that the user has specified
-   No action: No action
-   Block: The resource was blocked from executing

Action Status: &lt;Description of additional actions&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
User action:

The Windows Defender client encountered this error due to critical issues. The endpoint might not be protected. Review the error description then follow the relevant **User action** steps below.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Action</th>
<th align="left">User action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Remove</strong></p></td>
<td align="left"><p>Update the definitions then verify that the removal was successful.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Clean</strong></p></td>
<td align="left"><p>Update the definitions then verify that the remediation was successful.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Quarantine</strong></p></td>
<td align="left"><p>Update the definitions and verify that the user has permission to access the necessary resources.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Allow</strong></p></td>
<td align="left"><p>Verify that the user has permission to access the necessary resources.</p></td>
</tr>
</tbody>
</table>

 

If this event persists:

1.  Run the scan again.
2.  If it fails in the same way, go to the [Microsoft Support site](http://go.microsoft.com/fwlink/?LinkId=215163), enter the error number in the **Search** box to look for the error code.
3.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 1120
Symbolic name:

**MALWAREPROTECTION\_THREAT\_HASH**

Message:

**Windows Defender has deduced the hashes for a threat resource.**

Description:

Windows Defender client is up and running in a healthy state.

Current Platform Version: &lt;Current platform version&gt;
Threat Resource Path: &lt;Path&gt;
Hashes: &lt;Hashes&gt;
**Note**  This event will only be logged if the following policy is set: **ThreatFileHashLogging unsigned**.

 

Event ID: 1150
Symbolic name:

**MALWAREPROTECTION\_SERVICE\_HEALTHY**

Message:

**If your antimalware platform reports status to a monitoring platform, this event indicates that the antimalware platform is running and in a healthy state.**

Description:

Windows Defender client is up and running in a healthy state.

Platform Version: &lt;Current platform version&gt;
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware Engine version&gt;
User action:

No action is necessary. The Windows Defenderclient is in a healthy state. This event is reported on an hourly basis.

Event ID: 2000
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_UPDATED**

Message:

**The antimalware definitions updated successfully.**

Description:

Windows Defender signature version has been updated.

Current Signature Version: &lt;Current signature version&gt;
Previous Signature Version: &lt;Previous signature version&gt;
Signature Type: &lt;Signature type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware
-   Network Inspection System

Update Type: &lt;Update type&gt;, either Full or Delta.
User: &lt;Domain&gt;\\&lt;User&gt;
Current Engine Version: &lt;Current engine version&gt;
Previous Engine Version: &lt;Previous engine version&gt;
User action:

No action is necessary. The Windows Defender client is in a healthy state. This event is reported when signatures are successfully updated.

Event ID: 2001
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_UPDATE\_FAILED**

Message:

**The antimalware definition update failed.**

Description:

Windows Defender has encountered an error trying to update signatures.

New Signature Version: &lt;New version number&gt;
Previous Signature Version: &lt;Previous signature version&gt;
Update Source: &lt;Update source&gt;, for example:
-   Signature update folder
-   Internal definition update server
-   Microsoft Update Server
-   File share
-   Microsoft Malware Protection Center (MMPC)

Update Stage: &lt;Update stage&gt;, for example:
-   Search
-   Download
-   Install

Source Path: File share name for Universal Naming Convention (UNC), server name for Windows Server Update Services (WSUS)/Microsoft Update/ADL.
Signature Type: &lt;Signature type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware
-   Network Inspection System

Update Type: &lt;Update type&gt;, either Full or Delta.
User: &lt;Domain&gt;\\&lt;User&gt;
Current Engine Version: &lt;Current engine version&gt;
Previous Engine Version: &lt;Previous engine version&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
User action:

This error occurs when there is a problem updating definitions.

To troubleshoot this event:

1.  Update the definitions. Either:
    1.  Click the **Update definitions** button on the **Update** tab in Windows Defender. ![update definitions in windows defender](images/defender-updatedefs2.png)

        Or,

    2.  Download the latest definitions from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965).

        Note: The size of the definitions file downloaded from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965) can exceed 60 MB and should not be used as a long-term solution for updating definitions.

2.  Review the entries in the %Windir%\\WindowsUpdate.log file for more information about this error.
3.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 2002
Symbolic name:

**MALWAREPROTECTION\_ENGINE\_UPDATED**

Message:

**The antimalware engine updated successfully.**

Description:

Windows Defender engine version has been updated.

Current Engine Version: &lt;Current engine version&gt;
Previous Engine Version: &lt;Previous engine version&gt;
Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.
User: &lt;Domain&gt;\\&lt;User&gt;
User action:

No action is necessary. The Windows Defender client is in a healthy state. This event is reported when the antimalware engine is successfully updated.

Event ID: 2003
Symbolic name:

**MALWAREPROTECTION\_ENGINE\_UPDATE\_FAILED**

Message:

**The antimalware engine update failed.**

Description:

Windows Defender has encountered an error trying to update the engine.

New Engine Version:
Previous Engine Version: &lt;Previous engine version&gt;
Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.
User: &lt;Domain&gt;\\&lt;User&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
User action:

The Windows Defender client update failed. This event occurs when the client fails to update itself. This event is usually due to an interruption in network connectivity during an update.

To troubleshoot this event:

1.  Update the definitions. Either:
    1.  Click the **Update definitions** button on the **Update** tab in Windows Defender. ![update definitions in windows defender](images/defender-updatedefs2.png)

        Or,

    2.  Download the latest definitions from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965).

        Note: The size of the definitions file downloaded from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965) can exceed 60 MB and should not be used as a long-term solution for updating definitions.

2.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 2004
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_REVERSION**

Message:

**There was a problem loading antimalware definitions. The antimalware engine will attempt to load the last-known good set of definitions.**

Description:

Windows Defender has encountered an error trying to load signatures and will attempt reverting back to a known-good set of signatures.

Signatures Attempted:
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Signature Version: &lt;Definition version&gt;
Engine Version: &lt;Antimalware engine version&gt;
User action:

The Windows Defender client attempted to download and install the latest definitions file and failed. This error can occur when the client encounters an error while trying to load the definitions, or if the file is corrupt. Windows Defender will attempt to revert back to a known-good set of definitions.

To troubleshoot this event:

1.  Restart the computer and try again.
2.  Download the latest definitions from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965).

    Note: The size of the definitions file downloaded from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965) can exceed 60 MB and should not be used as a long-term solution for updating definitions.

3.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 2005
Symbolic name:

**MALWAREPROTECTION\_ENGINE\_UPDATE\_PLATFORMOUTOFDATE**

Message:

**The antimalware engine failed to load because the antimalware platform is out of date. The antimalware platform will load the last-known good antimalware engine and attempt to update.**

Description:

Windows Defender could not load antimalware engine because current platform version is not supported. Windows Defender will revert back to the last known-good engine and a platform update will be attempted.

Current Platform Version: &lt;Current platform version&gt;
Event ID: 2006
Symbolic name:

**MALWAREPROTECTION\_PLATFORM\_UPDATE\_FAILED**

Message:

**The platform update failed.**

Description:

Windows Defender has encountered an error trying to update the platform.

Current Platform Version: &lt;Current platform version&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Event ID: 2007
Symbolic name:

**MALWAREPROTECTION\_PLATFORM\_ALMOSTOUTOFDATE**

Message:

**The platform will soon be out of date. Download the latest platform to maintain up-to-date protection.**

Description:

Windows Defender will soon require a newer platform version to support future versions of the antimalware engine. Download the latest Windows Defender platform to maintain the best level of protection available.

Current Platform Version: &lt;Current platform version&gt;
Event ID: 2010
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_FASTPATH\_UPDATED**

Message:

**The antimalware engine used the Dynamic Signature Service to get additional definitions.**

Description:

Windows Defender used *Dynamic Signature Service* to retrieve additional signatures to help protect your machine.

Current Signature Version: &lt;Current signature version&gt;
Signature Type: &lt;Signature type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware
-   Network Inspection System

Current Engine Version: &lt;Current engine version&gt;
Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
-   Version
-   Timestamp
-   No limit
-   Duration

Persistence Path: &lt;Path&gt;
Dynamic Signature Version: &lt;Version number&gt;
Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;
Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
-   VDM version
-   Timestamp
-   No limit

Persistence Limit: Persistence limit of the fastpath signature.
Event ID: 2011
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_FASTPATH\_DELETED**

Message:

**The Dynamic Signature Service deleted the out-of-date dynamic definitions.**

Description:

Windows Defender used *Dynamic Signature Service* to discard obsolete signatures.

Current Signature Version: &lt;Current signature version&gt;
Signature Type: &lt;Signature type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware
-   Network Inspection System

Current Engine Version: &lt;Current engine version&gt;
Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
-   Version
-   Timestamp
-   No limit
-   Duration

Persistence Path: &lt;Path&gt;
Dynamic Signature Version: &lt;Version number&gt;
Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;
Removal Reason:
Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
-   VDM version
-   Timestamp
-   No limit

Persistence Limit: Persistence limit of the fastpath signature.
User action:

No action is necessary. The Windows Defender client is in a healthy state. This event is reported when the Dynamic Signature Service successfully deletes out-of-date dynamic definitions.

Event ID: 2012
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_FASTPATH\_UPDATE\_FAILED**

Message:

**The antimalware engine encountered an error when trying to use the Dynamic Signature Service.**

Description:

Windows Defender has encountered an error trying to use *Dynamic Signature Service*.

Current Signature Version: &lt;Current signature version&gt;
Signature Type: &lt;Signature type&gt;, for example:
-   Antivirus
-   Antispyware
-   Antimalware
-   Network Inspection System

Current Engine Version: &lt;Current engine version&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
-   Version
-   Timestamp
-   No limit
-   Duration

Persistence Path: &lt;Path&gt;
Dynamic Signature Version: &lt;Version number&gt;
Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;
Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
-   VDM version
-   Timestamp
-   No limit

Persistence Limit: Persistence limit of the fastpath signature.
User action:

Check your Internet connectivity settings.

Event ID: 2013
Symbolic name:

**MALWAREPROTECTION\_SIGNATURE\_FASTPATH\_DELETED\_ALL**

Message:

**The Dynamic Signature Service deleted all dynamic definitions.**

Description:

Windows Defender discarded all *Dynamic Signature Service* signatures.

Current Signature Version: &lt;Current signature version&gt;
Event ID: 2020
Symbolic name:

**MALWAREPROTECTION\_CLOUD\_CLEAN\_RESTORE\_FILE\_DOWNLOADED**

Message:

**The antimalware engine downloaded a clean file.**

Description:

Windows Defender downloaded a clean file.

Filename: &lt;File name&gt; Name of the file.
Current Signature Version: &lt;Current signature version&gt;
Current Engine Version: &lt;Current engine version&gt;
Event ID: 2021
Symbolic name:

**MALWAREPROTECTION\_CLOUD\_CLEAN\_RESTORE\_FILE\_DOWNLOAD\_FAILED**

Message:

**The antimalware engine failed to download a clean file.**

Description:

Windows Defender has encountered an error trying to download a clean file.

Filename: &lt;File name&gt; Name of the file.
Current Signature Version: &lt;Current signature version&gt;
Current Engine Version: &lt;Current engine version&gt;
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
User action:

Check your Internet connectivity settings.

The Windows Defender client encountered an error when using the Dynamic Signature Service to download the latest definitions to a specific threat. This error is likely caused by a network connectivity issue.

Event ID: 2030
Symbolic name:

**MALWAREPROTECTION\_OFFLINE\_SCAN\_INSTALLED**

Message:

**The antimalware engine was downloaded and is configured to run offline on the next system restart.**

Description:

Windows Defender downloaded and configured Windows Defender Offline to run on the next reboot.

Event ID: 2031
Symbolic name:

**MALWAREPROTECTION\_OFFLINE\_SCAN\_INSTALL\_FAILED**

Message:

**The antimalware engine was unable to download and configure an offline scan.**

Description:

Windows Defender has encountered an error trying to download and configure Windows Defender Offline.

Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Event ID: 2040
Symbolic name:

**MALWAREPROTECTION\_OS\_EXPIRING**

Message:

**Antimalware support for this operating system version will soon end.**

Description:

The support for your operating system will expire shortly. Running Windows Defender on an out of support operating system is not an adequate solution to protect against threats.

Event ID: 2041
Symbolic name:

**MALWAREPROTECTION\_OS\_EOL**

Message:

**Antimalware support for this operating system has ended. You must upgrade the operating system for continued support.**

Description:

The support for your operating system has expired. Running Windows Defender on an out of support operating system is not an adequate solution to protect against threats.

Event ID: 2042
Symbolic name:

**MALWAREPROTECTION\_PROTECTION\_EOL**

Message:

**The antimalware engine no longer supports this operating system, and is no longer protecting your system from malware.**

Description:

The support for your operating system has expired. Windows Defender is no longer supported on your operating system, has stopped functioning, and is not protecting against malware threats.

Event ID: 3002
Symbolic name:

**MALWAREPROTECTION\_RTP\_FEATURE\_FAILURE**

Message:

**Real-time protection encountered an error and failed.**

Description:

Windows Defender Real-Time Protection feature has encountered an error and failed.

Feature: &lt;Feature&gt;, for example:
-   On Access
-   Internet Explorer downloads and Microsoft Outlook Express attachments
-   Behavior monitoring
-   Network Inspection System

Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
Reason: The reason Windows Defender real-time protection has restarted a feature.
User action:

You should restart the system then run a full scan because it’s possible the system was not protected for some time.

The Windows Defender client’s real-time protection feature encountered an error because one of the services failed to start.

If it is followed by a 3007 event ID, the failure was temporary and the antimalware client recovered from the failure.

Event ID: 3007
Symbolic name:

**MALWAREPROTECTION\_RTP\_FEATURE\_RECOVERED**

Message:

**Real-time protection recovered from a failure. We recommend running a full system scan when you see this error.**

Description:

Windows Defender Real-time Protection has restarted a feature. It is recommended that you run a full system scan to detect any items that may have been missed while this agent was down.

Feature: &lt;Feature&gt;, for example:
-   On Access
-   IE downloads and Outlook Express attachments
-   Behavior monitoring
-   Network Inspection System

Reason: The reason Windows Defender real-time protection has restarted a feature.
User action:

The real-time protection feature has restarted. If this event happens again, contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 5000
Symbolic name:

**MALWAREPROTECTION\_RTP\_ENABLED**

Message:

**Real-time protection is enabled.**

Description:

Windows Defender Real-time Protection scanning for malware and other potentially unwanted software was enabled.

Event ID: 5001
Symbolic name:

**MALWAREPROTECTION\_RTP\_DISABLED**

Message:

**Real-time protection is disabled.**

Description:

Windows Defender Real-time Protection scanning for malware and other potentially unwanted software was disabled.

Event ID: 5004
Symbolic name:

**MALWAREPROTECTION\_RTP\_FEATURE\_CONFIGURED**

Message:

**The real-time protection configuration changed.**

Description:

Windows Defender Real-time Protection feature configuration has changed.

Feature: &lt;Feature&gt;, for example:
-   On Access
-   IE downloads and Outlook Express attachments
-   Behavior monitoring
-   Network Inspection System

Configuration:
Event ID: 5007
Symbolic name:

**MALWAREPROTECTION\_CONFIG\_CHANGED**

Message:

**The antimalware platform configuration changed.**

Description:

Windows Defender Configuration has changed. If this is an unexpected event you should review the settings as this may be the result of malware.

Old value: &lt;Old value number&gt; Old Windows Defender configuration value.
New value: &lt;New value number&gt; New Windows Defender configuration value.
Event ID: 5008
Symbolic name:

**MALWAREPROTECTION\_ENGINE\_FAILURE**

Message:

**The antimalware engine encountered an error and failed.**

Description:

Windows Defender engine has been terminated due to an unexpected error.

Failure Type: &lt;Failure type&gt;, for example: Crash or Hang
Exception Code: &lt;Error code&gt;
Resource: &lt;Resource&gt;
User action:

To troubleshoot this event:

1.  Try to restart the service.
    -   For antimalware, antivirus and spyware, at an elevated command prompt, type **net stop msmpsvc**, and then type **net start msmpsvc** to restart the antimalware engine.
    -   For the *Network Inspection System*, at an elevated command prompt, type **net start nissrv**, and then type **net start nissrv** to restart the *Network Inspection System* engine by using the NiSSRV.exe file.

2.  If it fails in the same way, look up the error code by accessing the [Microsoft Support Site](http://go.microsoft.com/fwlink/?LinkId=215163) and entering the error number in the **Search** box, and contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

User action:

The Windows Defender client engine stopped due to an unexpected error.

To troubleshoot this event:

1.  Run the scan again.
2.  If it fails in the same way, go to the [Microsoft Support site](http://go.microsoft.com/fwlink/?LinkId=215163), enter the error number in the **Search** box to look for the error code.
3.  Contact [Microsoft Technical Support](http://go.microsoft.com/fwlink/?LinkId=215491).

Event ID: 5009
Symbolic name:

**MALWAREPROTECTION\_ANTISPYWARE\_ENABLED**

Message:

**Scanning for malware and other potentially unwanted software is enabled.**

Description:

Windows Defender scanning for malware and other potentially unwanted software has been enabled.

Event ID: 5010
Symbolic name:

**MALWAREPROTECTION\_ANTISPYWARE\_DISABLED**

Message:

**Scanning for malware and other potentially unwanted software is disabled.**

Description:

Windows Defender scanning for malware and other potentially unwanted software is disabled.

Event ID: 5011
Symbolic name:

**MALWAREPROTECTION\_ANTIVIRUS\_ENABLED**

Message:

**Scanning for viruses is enabled.**

Description:

Windows Defender scanning for viruses has been enabled.

Event ID: 5012
Symbolic name:

**MALWAREPROTECTION\_ANTIVIRUS\_DISABLED**

Message:

**Scanning for viruses is disabled.**

Description:

Windows Defender scanning for viruses is disabled.

Event ID: 5100
Symbolic name:

**MALWAREPROTECTION\_EXPIRATION\_WARNING\_STATE**

Message:

**The antimalware platform will expire soon.**

Description:

Windows Defender has entered a grace period and will soon expire. After expiration, this program will disable protection against viruses, spyware, and other potentially unwanted software.

Expiration Reason: The reason Windows Defender will expire.
Expiration Date: The date Windows Defender will expire.
Event ID: 5101
Symbolic name:

**MALWAREPROTECTION\_DISABLED\_EXPIRED\_STATE**

Message:

**The antimalware platform is expired.**

Description::

Windows Defender grace period has expired. Protection against viruses, spyware, and other potentially unwanted software is disabled.

Expiration Reason:
Expiration Date:
Error Code: &lt;Error code&gt; Result code associated with threat status. Standard HRESULT values.
Error Description: &lt;Error description&gt; Description of the error.
 

## Windows Defender client error codes


If Windows Defender experiences any issues it will usually give you an error code to help you troubleshoot the issue. Most often an error means there was a problem installing an update.

This section provides the following information about Windows Defender client errors.

-   The error code
-   The possible reason for the error
-   Advice on what to do now

Use the information in these tables to help troubleshoot Windows Defender error codes.

External error codes
Error code
Message displayed
Possible reason for error
What to do now
0x80508007

**ERR\_MP\_NO\_MEMORY**

This error indicates that you might have run out of memory.

1.  Check the available memory on your device.
2.  Close any unused applications that are running to free up memory on your device.
3.  Restart the device and run the scan again.

0x8050800C

**ERR\_MP\_BAD\_INPUT\_DATA**

This error indicates that there might be a problem with your security product.

1.  Update the definitions. Either:
    1.  Click the **Update definitions** button on the **Update** tab in Windows Defender. ![update definitions in windows defender](images/defender-updatedefs2.png)

        Or,

    2.  Download the latest definitions from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965).

        Note: The size of the definitions file downloaded from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965) can exceed 60 MB and should not be used as a long-term solution for updating definitions.

2.  Run a full scan.
3.  Restart the device and try again.

0x80508020

**ERR\_MP\_BAD\_CONFIGURATION**

This error indicates that there might be an engine configuration error; commonly, this is related to input data that does not allow the engine to function properly.

0x805080211

**ERR\_MP\_QUARANTINE\_FAILED**

This error indicates that Windows Defender failed to quarantine a threat.

0x80508022

**ERR\_MP\_REBOOT\_REQUIRED**

This error indicates that a reboot is required to complete threat removal.

0x80508023

**ERR\_MP\_THREAT\_NOT\_FOUND**

This error indicates that the threat might no longer be present on the media, or malware might be stopping you from scanning your device.

Run the [Microsoft Safety Scanner](https://www.microsoft.com/security/scanner/default.aspx) then update your security software and try again.

**ERR\_MP\_FULL\_SCAN\_REQUIRED**

This error indicates that a full system scan might be required.

Run a full system scan.

0x80508024

0x80508025

**ERR\_MP\_MANUAL\_STEPS\_REQUIRED**

This error indicates that manual steps are required to complete threat removal.

Follow the manual remediation steps outlined in the [Microsoft Malware Protection Encyclopedia](https://www.microsoft.com/security/portal/threat/Threats.aspx). You can find a threat-specific link in the event history.

0x80508026

**ERR\_MP\_REMOVE\_NOT\_SUPPORTED**

This error indicates that removal inside the container type might not be not supported.

Windows Defender is not able to remediate threats detected inside the archive. Consider manually removing the detected resources.

0x80508027

**ERR\_MP\_REMOVE\_LOW\_MEDIUM\_DISABLED**

This error indicates that removal of low and medium threats might be disabled.

Check the detected threats and resolve them as required.

0x80508029

**ERROR\_MP\_RESCAN\_REQUIRED**

This error indicates a rescan of the threat is required.

Run a full system scan.

0x80508030

**ERROR\_MP\_CALLISTO\_REQUIRED**

This error indicates that an offline scan is required.

Run Windows Defender Offline. You can read about how to do this in the [Windows Defender Offline article](http://windows.microsoft.com/windows/what-is-windows-defender-offline).

0x80508031

**ERROR\_MP\_PLATFORM\_OUTDATED**

This error indicates that Windows Defender does not support the current version of the platform and requires a new version of the platform.

You can only use Windows Defender in Windows 10. For Windows 8, Windows 7 and Windows Vista, you can use [System Center Endpoint Protection](https://www.microsoft.com/server-cloud/system-center/endpoint-protection-2012.aspx).

 

Internal error codes
Error code
Message displayed
Possible reason for error
What to do now
0x80501004

**ERROR\_MP\_NO\_INTERNET\_CONN**

Check your Internet connection, then run the scan again.

Check your Internet connection, then run the scan again.

0x80501000

**ERROR\_MP\_UI\_CONSOLIDATION\_BAS**E

This is an internal error. The cause is not clearly defined.

1.  Update the definitions. Either:
    1.  Click the **Update definitions** button on the **Update** tab in Windows Defender. ![update definitions in windows defender](images/defender-updatedefs2.png)

        Or,

    2.  Download the latest definitions from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965).

        Note: The size of the definitions file downloaded from the [Microsoft Malware Protection Center](http://go.microsoft.com/fwlink/?LinkID=200965) can exceed 60 MB and should not be used as a long-term solution for updating definitions.

2.  Run a full scan.
3.  Restart the device and try again.

0x80501001

**ERROR\_MP\_ACTIONS\_FAILED**

0x80501002

**ERROR\_MP\_NOENGINE**

0x80501003

**ERROR\_MP\_ACTIVE\_THREATS**

0x805011011

**MP\_ERROR\_CODE\_LUA\_CANCELLED**

0x80501101

**ERROR\_LUA\_CANCELLATION**

0x80501102

**MP\_ERROR\_CODE\_ALREADY\_SHUTDOWN**

0x80501103

**MP\_ERROR\_CODE\_RDEVICE\_S\_ASYNC\_CALL\_PENDING**

0x80501104

**MP\_ERROR\_CODE\_CANCELLED**

0x80501105

**MP\_ERROR\_CODE\_NO\_TARGETOS**

0x80501106

**MP\_ERROR\_CODE\_BAD\_REGEXP**

0x80501107

**MP\_ERROR\_TEST\_INDUCED\_ERROR**

0x80501108

**MP\_ERROR\_SIG\_BACKUP\_DISABLED**

0x80508001

**ERR\_MP\_BAD\_INIT\_MODULES**

0x80508002

**ERR\_MP\_BAD\_DATABASE**

0x80508004

**ERR\_MP\_BAD\_UFS**

0x8050800C

**ERR\_MP\_BAD\_INPUT\_DATA**

0x8050800D

**ERR\_MP\_BAD\_GLOBAL\_STORAGE**

0x8050800E

**ERR\_MP\_OBSOLETE**

0x8050800F

**ERR\_MP\_NOT\_SUPPORTED**

0x8050800F 0x80508010

**ERR\_MP\_NO\_MORE\_ITEMS**

0x80508011

**ERR\_MP\_DUPLICATE\_SCANID**

0x80508012

**ERR\_MP\_BAD\_SCANID**

0x80508013

**ERR\_MP\_BAD\_USERDB\_VERSION**

0x80508014

**ERR\_MP\_RESTORE\_FAILED**

0x80508016

**ERR\_MP\_BAD\_ACTION**

0x80508019

**ERR\_MP\_NOT\_FOUND**

0x80509001

**ERR\_RELO\_BAD\_EHANDLE**

0x80509003

**ERR\_RELO\_KERNEL\_NOT\_LOADED**

0x8050A001

**ERR\_MP\_BADDB\_OPEN**

0x8050A002

**ERR\_MP\_BADDB\_HEADER**

0x8050A003

**ERR\_MP\_BADDB\_OLDENGINE**

0x8050A004

**ERR\_MP\_BADDB\_CONTENT**

0x8050A005

**ERR\_MP\_BADDB\_NOTSIGNED**

0x8050801

**ERR\_MP\_REMOVE\_FAILED**

This is an internal error. It might be triggered when malware removal is not successful.

0x80508018

**ERR\_MP\_SCAN\_ABORTED**

This is an internal error. It might have triggered when a scan fails to complete.

 

## Related topics


[Configure Windows Defender in Windows 10](configure-windows-defender-in-windows-10.md)

[Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)

 

 





