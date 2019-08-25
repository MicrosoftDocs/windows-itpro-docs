---
title: Windows Defender AV event IDs and error codes
description: Look up the causes and solutions for Windows Defender Antivirus event IDs and errors
keywords: event, error code, siem, logging, troubleshooting, wef, windows event forwarding
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/11/2018
ms.reviewer: 
manager: dansimp
---

# Review event logs and error codes to troubleshoot issues with Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If you encounter a problem with Windows Defender Antivirus, you can search the tables in this topic to find a matching issue and potential solution.

The tables list:

- [Windows Defender Antivirus event IDs](#windows-defender-av-ids) (these apply to both Windows 10 and Windows Server 2016)
- [Windows Defender Antivirus client error codes](#error-codes)
- [Internal Windows Defender Antivirus client error codes (used by Microsoft during development and testing)](#internal-error-codes)

> [!TIP]
> You can also visit the Microsoft Defender ATP demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the following features are working:
> 
> - Cloud-delivered protection
> - Fast learning (including Block at first sight)
> - Potentially unwanted application blocking

<a id="windows-defender-av-ids"></a>
## Windows Defender Antivirus event IDs

Windows Defender Antivirus records event IDs in the Windows event log.

You can directly view the event log, or if you have a third-party security information and event management (SIEM) tool, you can also consume [Windows Defender Antivirus client event IDs](troubleshoot-windows-defender-antivirus.md#windows-defender-av-ids) to review specific events and errors from your endpoints.

The table in this section lists the main Windows Defender Antivirus event IDs and, where possible, provides suggested solutions to fix or resolve the error. 

**To view a Windows Defender Antivirus event**

1.  Open **Event Viewer**.
2.  In the console tree, expand **Applications and Services Logs**, then **Microsoft**, then **Windows**, then **Windows Defender Antivirus**.
3.  Double-click on **Operational**.
4.  In the details pane, view the list of individual events to find your event.
5.  Click the event to see specific details about an event in the lower pane, under the **General** and **Details** tabs.




<table> 
<tr>
<th colspan="2" >Event ID: 1000</th>
</tr>
<tr>
<td>
Symbolic name:
</td>
<td>
<b>MALWAREPROTECTION_SCAN_STARTED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan started.
</b>
</td>
</tr>
<tr>
<td >
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>Scan Resources: &lt;Resources (such as files/directories/BHO) that were scanned.&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1001</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SCAN_COMPLETED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan finished.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Scan Time: &lt;The duration of a scan.&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1002</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SCAN_CANCELLED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan was stopped before it finished.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>User: &lt;Domain&gt;&amp;lt;User&gt;</dt>
<dt>Scan Time: &lt;The duration of a scan.&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1003</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SCAN_PAUSED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan was paused.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1004</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SCAN_RESUMED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan was resumed.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1005</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SCAN_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>An antimalware scan failed. 
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
<dl>
<dt>Scan ID: &lt;ID number of the relevant scan.&gt;</dt>
<dt>Scan Type: &lt;Scan type&gt;, for example:<ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
</ul>
</dt>
<dt>Scan Parameters: &lt;Scan parameters&gt;, for example:<ul>
<li>Full scan</li>
<li>Quick scan</li>
<li>Customer scan</li>
</ul>
</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The antivirus client encountered an error, and the current scan has stopped. The scan might fail due to a client-side issue. This event record includes the scan ID, type of scan (Windows Defender Antivirus, antispyware, antimalware), scan parameters, the user that started the scan, the error code, and a description of the error.
To troubleshoot this event:
<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1006</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_MALWARE_DETECTED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine found malware or other potentially unwanted software.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>Status: &lt;Status&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1007</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_MALWARE_ACTION_TAKEN
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has taken action to protect this machine from malware or other potentially unwanted software. For more information please see the following:
<dl>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Action: &lt;Action&gt;, for example:<ul>
<li>Clean: The resource was cleaned</li>
<li>Quarantine: The resource was quarantined</li>
<li>Remove: The resource was deleted</li>
<li>Allow: The resource was allowed to execute/exist</li>
<li>User defined: User defined action which is normally one from this list of actions that the user has specified</li>
<li>No action: No action</li>
<li>Block: The resource was blocked from executing</li>
</ul>
</dt>
<dt>Status: &lt;Status&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1008</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_MALWARE_ACTION_FAILED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error when taking action on malware or other potentially unwanted software. For more information please see the following:
<dl>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Action: &lt;Action&gt;, for example:<ul>
<li>Clean: The resource was cleaned</li>
<li>Quarantine: The resource was quarantined</li>
<li>Remove: The resource was deleted</li>
<li>Allow: The resource was allowed to execute/exist</li>
<li>User defined: User defined action which is normally one from this list of actions that the user has specified</li>
<li>No action: No action</li>
<li>Block: The resource was blocked from executing</li>
</ul>
</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Status: &lt;Status&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1009</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_QUARANTINE_RESTORE
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform restored an item from quarantine.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has restored an item from quarantine. For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1010</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_QUARANTINE_RESTORE_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform could not restore an item from quarantine.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to restore an item from quarantine. For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1011</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_QUARANTINE_DELETE</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform deleted an item from quarantine.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has deleted an item from quarantine.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1012</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_QUARANTINE_DELETE_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform could not delete an item from quarantine.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to delete an item from quarantine.
For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1013</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_MALWARE_HISTORY_DELETE
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform deleted history of malware and other potentially unwanted software.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has removed history of malware and other potentially unwanted software.
<dl>
<dt>Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1014</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_MALWARE_HISTORY_DELETE_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
The antimalware platform could not delete history of malware and other potentially unwanted software.
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to remove history of malware and other potentially unwanted software.
<dl>
<dt>Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1015</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_BEHAVIOR_DETECTED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform detected suspicious behavior.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has detected a suspicious behavior.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:
<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>Status: &lt;Status&gt;</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature ID: Enumeration matching severity.</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
<dt>Fidelity Label:</dt>
<dt>Target File Name: &lt;File name&gt;
Name of the file.</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1116</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_STATE_MALWARE_DETECTED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform detected malware or other potentially unwanted software.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has detected malware or other potentially unwanted software.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:
<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is required. Windows Defender Antivirus can suspend and take routine action on this threat. If you want to remove the threat manually, in the Windows Defender Antivirus interface, click <b>Clean Computer</b>.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1117</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_STATE_MALWARE_ACTION_TAKEN
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has taken action to protect this machine from malware or other potentially unwanted software.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:
<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Action: &lt;Action&gt;, for example:<ul>
<li>Clean: The resource was cleaned</li>
<li>Quarantine: The resource was quarantined</li>
<li>Remove: The resource was deleted</li>
<li>Allow: The resource was allowed to execute/exist</li>
<li>User defined: User defined action which is normally one from this list of actions that the user has specified</li>
<li>No action: No action</li>
<li>Block: The resource was blocked from executing</li>
</ul>
</dt>
<dt>Action Status: &lt;Description of additional actions&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
NOTE:
Whenever Windows Defender Antivirus, Microsoft Security Essentials, Malicious Software Removal Tool, or System Center Endpoint Protection detects a malware, it will restore the following system settings and services which the malware might have changed:<ul>
<li>Default Internet Explorer or Microsoft Edge setting</li>
<li>User Access Control settings</li>
<li>Chrome settings</li>
<li>Boot Control Data</li>
<li>Regedit and Task Manager registry settings</li>
<li>Windows Update, Background Intelligent Transfer Service, and Remote Procedure Call service</li>
<li>Windows Operating System files</li></ul>
The above context applies to the following client and server versions:
<table>
<tr>
<th>Operating system</th>
<th>Operating system version</th>
</tr>
<tr>
<td>
Client Operating System 
</td>
<td>
Windows Vista (Service Pack 1, or Service Pack 2), Windows 7 and later
</td>
</tr>
<tr>
<td>
Server Operating System
</td>
<td>
Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, and Windows Server 2016
</td>
</tr>
</table>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. Windows Defender Antivirus removed or quarantined a threat. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1118</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_STATE_MALWARE_ACTION_FAILED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered a non-critical error when taking action on malware or other potentially unwanted software.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:
<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Action: &lt;Action&gt;, for example:<ul>
<li>Clean: The resource was cleaned</li>
<li>Quarantine: The resource was quarantined</li>
<li>Remove: The resource was deleted</li>
<li>Allow: The resource was allowed to execute/exist</li>
<li>User defined: User defined action which is normally one from this list of actions that the user has specified</li>
<li>No action: No action</li>
<li>Block: The resource was blocked from executing</li>
</ul>
</dt>
<dt>Action Status: &lt;Description of additional actions&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. Windows Defender Antivirus failed to complete a task related to the malware remediation. This is not a critical failure.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1119</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_STATE_MALWARE_ACTION_CRITICALLY_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform encountered a critical error when trying to take action on malware or other potentially unwanted software. There are more details in the event message.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered a critical error when taking action on malware or other potentially unwanted software.<br/>For more information please see the following:
<dl>
<dt>Name: &lt;Threat name&gt;</dt>
<dt>ID: &lt;Threat ID&gt;</dt>
<dt>Severity: &lt;Severity&gt;, for example:<ul>
<li>Low</li>
<li>Moderate</li>
<li>High</li>
<li>Severe</li>
</ul>
</dt>
<dt>Category: &lt;Category description&gt;, for example, any threat or malware type.</dt>
<dt>Path: &lt;File path&gt;</dt>
<dt>Detection Origin: &lt;Detection origin&gt;, for example:
<ul>
<li>Unknown</li>
<li>Local computer</li>
<li>Network share</li>
<li>Internet</li>
<li>Incoming traffic</li>
<li>Outgoing traffic</li>
</ul>
</dt>
<dt>Detection Type: &lt;Detection type&gt;, for example:<ul>
<li>Heuristics</li>
<li>Generic</li>
<li>Concrete</li>
<li>Dynamic signature</li>
</ul>
</dt>
<dt>Detection Source: &lt;Detection source&gt; for example:<ul>
<li>User: user initiated</li>
<li>System: system initiated</li>
<li>Real-time: real-time component initiated</li>
<li>IOAV: IE Downloads and Outlook Express Attachments initiated</li>
<li>NIS: Network inspection system</li>
<li>IEPROTECT: IE - IExtensionValidation; this protects against malicious webpage controls</li>
<li>Early Launch Antimalware (ELAM). This includes malware detected by the boot sequence</li>
<li>Remote attestation</li>
</ul>Antimalware Scan Interface (AMSI). Primarily used to protect scripts (PS, VBS), though it can be invoked by third parties as well.
UAC</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Action: &lt;Action&gt;, for example:<ul>
<li>Clean: The resource was cleaned</li>
<li>Quarantine: The resource was quarantined</li>
<li>Remove: The resource was deleted</li>
<li>Allow: The resource was allowed to execute/exist</li>
<li>User defined: User defined action which is normally one from this list of actions that the user has specified</li>
<li>No action: No action</li>
<li>Block: The resource was blocked from executing</li>
</ul>
</dt>
<dt>Action Status: &lt;Description of additional actions&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The Windows Defender Antivirus client encountered this error due to critical issues. The endpoint might not be protected. Review the error description then follow the relevant <b>User action</b> steps below.
<table>
<tr>
<th>Action</th>
<th>User action</th>
</tr>
<tr>
<td>
<b>Remove</b>
</td>
<td>
Update the definitions then verify that the removal was successful.
</td>
</tr>
<tr>
<td>
<b>Clean</b>
</td>
<td>
Update the definitions then verify that the remediation was successful.
</td>
</tr>
<tr>
<td>
<b>Quarantine</b>
</td>
<td>
Update the definitions and verify that the user has permission to access the necessary resources.
</td>
</tr>
<tr>
<td>
<b>Allow</b>
</td>
<td>
Verify that the user has permission to access the necessary resources.
</td>
</tr>
</table>

If this event persists:<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1120</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_THREAT_HASH</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Windows Defender Antivirus has deduced the hashes for a threat resource.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus client is up and running in a healthy state.
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
<dt>Threat Resource Path: &lt;Path&gt;</dt>
<dt>Hashes: &lt;Hashes&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td></td>
<td >
<div class="alert"><b>Note</b>  This event will only be logged if the following policy is set: <b>ThreatFileHashLogging     unsigned</b>.</div>
<div> </div>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 1150</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SERVICE_HEALTHY</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>If your antimalware platform reports status to a monitoring platform, this event indicates that the antimalware platform is running and in a healthy state.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus client is up and running in a healthy state.
<dl>
<dt>Platform Version: &lt;Current platform version&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. The Windows Defender Antivirus client is in a healthy state. This event is reported on an hourly basis.
</td>
</tr>

<tr>
<th colspan="2">Event ID: 1151</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SERVICE_HEALTH_REPORT</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Endpoint Protection client health report (time in UTC)
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Antivirus client health report.
<dl>
<dt>Platform Version: &lt;Current platform version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
<dt>Network Realtime Inspection engine version: &lt;Network Realtime Inspection engine version&gt;</dt>
<dt>Antivirus signature version: &lt;Antivirus signature version&gt;</dt>
<dt>Antispyware signature version: &lt;Antispyware signature version&gt;</dt>
<dt>Network Realtime Inspection signature version: &lt;Network Realtime Inspection signature version&gt;</dt>
<dt>RTP state: &lt;Realtime protection state&gt; (Enabled or Disabled)</dt>
<dt>OA state: &lt;On Access state&gt; (Enabled or Disabled)</dt>
<dt>IOAV state: &lt;IE Downloads and Outlook Express Attachments state&gt; (Enabled or Disabled)</dt>
<dt>BM state: &lt;Behavior Monitoring state&gt; (Enabled or Disabled)</dt>
<dt>Antivirus signature age: &lt;Antivirus signature age&gt; (in days)</dt>
<dt>Antispyware signature age: &lt;Antispyware signature age&gt; (in days)</dt>
<dt>Last quick scan age: &lt;Last quick scan age&gt; (in days)</dt>
<dt>Last full scan age: &lt;Last full scan age&gt; (in days)</dt>
<dt>Antivirus signature creation time: ?&lt;Antivirus signature creation time&gt;</dt>
<dt>Antispyware signature creation time: ?&lt;Antispyware signature creation time&gt;</dt>
<dt>Last quick scan start time: ?&lt;Last quick scan start time&gt;</dt>
<dt>Last quick scan end time: ?&lt;Last quick scan end time&gt;</dt>
<dt>Last quick scan source: &lt;Last quick scan source&gt; (0 = scan didn&#39;t run, 1 = user initiated, 2 = system initiated)</dt>
<dt>Last full scan start time: ?&lt;Last full scan start time&gt;</dt>
<dt>Last full scan end time: ?&lt;Last full scan end time&gt;</dt>
<dt>Last full scan source: &lt;Last full scan source&gt; (0 = scan didn&#39;t run, 1 = user initiated, 2 = system initiated)</dt>
<dt>Product status: For internal troubleshooting
</dl>
</td>
</tr>

<tr>
<th colspan="2">Event ID: 2000</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_UPDATED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware definitions updated successfully.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Antivirus signature version has been updated.
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Previous Signature Version: &lt;Previous signature version&gt;</dt>
<dt>Signature Type: &lt;Signature type&gt;, for example: <ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Update Type: &lt;Update type&gt;, either Full or Delta.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. The Windows Defender Antivirus client is in a healthy state. This event is reported when signatures are successfully updated.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2001</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_UPDATE_FAILED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The security intelligence update failed. 
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to update signatures.
<dl>
<dt>New security intelligence version: &lt;New version number&gt;</dt>
<dt>Previous security intelligence version: &lt;Previous version&gt;</dt>
<dt>Update Source: &lt;Update source&gt;, for example:
<ul>
<li>Security intelligence update folder</li>
<li>Internal security intelligence update server</li>
<li>Microsoft Update Server</li>
<li>File share</li>
<li>Microsoft Malware Protection Center (MMPC)</li>
</ul>
</dt>
<dt>Update Stage: &lt;Update stage&gt;, for example:
<ul>
<li>Search</li>
<li>Download</li>
<li>Install</li>
</ul>
</dt>
<dt>Source Path: File share name for Universal Naming Convention (UNC), server name for Windows Server Update Services (WSUS)/Microsoft Update/ADL.</dt>
<dt>Signature Type: &lt;Signature type&gt;, for example: <ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Update Type: &lt;Update type&gt;, either Full or Delta.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
This error occurs when there is a problem updating definitions.
To troubleshoot this event:
<ol>
<li><a href="manage-updates-baselines-windows-defender-antivirus.md" data-raw-source="[Update definitions](manage-updates-baselines-windows-defender-antivirus.md)">Update definitions</a> and force a rescan directly on the endpoint.</li>
<li>Review the entries in the %Windir%\WindowsUpdate.log file for more information about this error.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2002</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ENGINE_UPDATED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine updated successfully.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus engine version has been updated.
<dl>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. The Windows Defender Antivirus client is in a healthy state. This event is reported when the antimalware engine is successfully updated.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2003</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ENGINE_UPDATE_FAILED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine update failed.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to update the engine.
<dl>
<dt>New Engine Version:</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.</dt>
<dt>User: &lt;Domain&gt;\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The Windows Defender Antivirus client update failed. This event occurs when the client fails to update itself. This event is usually due to an interruption in network connectivity during an update.
To troubleshoot this event:
<ol>
<li><a href="manage-updates-baselines-windows-defender-antivirus.md" data-raw-source="[Update definitions](manage-updates-baselines-windows-defender-antivirus.md)">Update definitions</a> and force a rescan directly on the endpoint.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2004</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_REVERSION</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>There was a problem loading antimalware definitions. The antimalware engine will attempt to load the last-known good set of definitions.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to load signatures and will attempt reverting back to a known-good set of signatures.
<dl>
<dt>Signatures Attempted:</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The Windows Defender Antivirus client attempted to download and install the latest definitions file and failed. This error can occur when the client encounters an error while trying to load the definitions, or if the file is corrupt. Windows Defender Antivirus will attempt to revert back to a known-good set of definitions.
To troubleshoot this event:
<ol>
<li>Restart the computer and try again.</li>
<li>Download the latest definitions from the <a href="https://aka.ms/wdsi">Microsoft Security Intelligence site</a>.
Note: The size of the definitions file downloaded from the site can exceed 60 MB and should not be used as a long-term solution for updating definitions.
</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2005</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ENGINE_UPDATE_PLATFORMOUTOFDATE</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine failed to load because the antimalware platform is out of date. The antimalware platform will load the last-known good antimalware engine and attempt to update.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus could not load antimalware engine because current platform version is not supported. Windows Defender Antivirus will revert back to the last known-good engine and a platform update will be attempted.
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2006</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_PLATFORM_UPDATE_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The platform update failed.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to update the platform.
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2007</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_PLATFORM_ALMOSTOUTOFDATE</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The platform will soon be out of date. Download the latest platform to maintain up-to-date protection.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus will soon require a newer platform version to support future versions of the antimalware engine. Download the latest Windows Defender Antivirus platform to maintain the best level of protection available.
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2010</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_FASTPATH_UPDATED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine used the Dynamic Signature Service to get additional definitions.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus used <i>Dynamic Signature Service</i> to retrieve additional signatures to help protect your machine.
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Signature Type: &lt;Signature type&gt;, for example: <ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
<ul>
<li>Version</li>
<li>Timestamp</li>
<li>No limit</li>
<li>Duration</li>
</ul>
</dt>
<dt>Persistence Path: &lt;Path&gt;</dt>
<dt>Dynamic Signature Version: &lt;Version number&gt;</dt>
<dt>Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;</dt>
<dt>Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
<ul>
<li>VDM version</li>
<li>Timestamp</li>
<li>No limit</li>
</ul>
</dt>
<dt>Persistence Limit: Persistence limit of the fastpath signature.</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2011</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_FASTPATH_DELETED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The Dynamic Signature Service deleted the out-of-date dynamic definitions.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus used <i>Dynamic Signature Service</i> to discard obsolete signatures.
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Signature Type: &lt;Signature type&gt;, for example: <ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
<ul>
<li>Version</li>
<li>Timestamp</li>
<li>No limit</li>
<li>Duration</li>
</ul>
</dt>
<dt>Persistence Path: &lt;Path&gt;</dt>
<dt>Dynamic Signature Version: &lt;Version number&gt;</dt>
<dt>Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;</dt>
<dt>Removal Reason:</dt>
<dt>Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
<ul>
<li>VDM version</li>
<li>Timestamp</li>
<li>No limit</li>
</ul>
</dt>
<dt>Persistence Limit: Persistence limit of the fastpath signature.</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
No action is necessary. The Windows Defender Antivirus client is in a healthy state. This event is reported when the Dynamic Signature Service successfully deletes out-of-date dynamic definitions.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2012</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_FASTPATH_UPDATE_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine encountered an error when trying to use the Dynamic Signature Service.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to use <i>Dynamic Signature Service</i>.
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Signature Type: &lt;Signature type&gt;, for example: <ul>
<li>Antivirus</li>
<li>Antispyware</li>
<li>Antimalware</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Dynamic Signature Type: &lt;Dynamic signature type&gt;, for example:
<ul>
<li>Version</li>
<li>Timestamp</li>
<li>No limit</li>
<li>Duration</li>
</ul>
</dt>
<dt>Persistence Path: &lt;Path&gt;</dt>
<dt>Dynamic Signature Version: &lt;Version number&gt;</dt>
<dt>Dynamic Signature Compilation Timestamp: &lt;Timestamp&gt;</dt>
<dt>Persistence Limit Type: &lt;Persistence limit type&gt;, for example:
<ul>
<li>VDM version</li>
<li>Timestamp</li>
<li>No limit</li>
</ul>
</dt>
<dt>Persistence Limit: Persistence limit of the fastpath signature.</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
Check your Internet connectivity settings.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2013</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_SIGNATURE_FASTPATH_DELETED_ALL
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The Dynamic Signature Service deleted all dynamic definitions.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus discarded all <i>Dynamic Signature Service</i> signatures.
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2020</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_CLOUD_CLEAN_RESTORE_FILE_DOWNLOADED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine downloaded a clean file.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus downloaded a clean file.
<dl>
<dt>Filename: &lt;File name&gt;
Name of the file.</dt>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2021</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_CLOUD_CLEAN_RESTORE_FILE_DOWNLOAD_FAILED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine failed to download a clean file.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to download a clean file.
<dl>
<dt>Filename: &lt;File name&gt;
Name of the file.</dt>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
Check your Internet connectivity settings.
The Windows Defender Antivirus client encountered an error when using the Dynamic Signature Service to download the latest definitions to a specific threat. This error is likely caused by a network connectivity issue. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2030</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_OFFLINE_SCAN_INSTALLED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine was downloaded and is configured to run offline on the next system restart.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus downloaded and configured offline antivirus to run on the next reboot.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2031</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_OFFLINE_SCAN_INSTALL_FAILED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine was unable to download and configure an offline scan.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has encountered an error trying to download and configure offline antivirus.
<dl>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2040</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_OS_EXPIRING
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Antimalware support for this operating system version will soon end.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
The support for your operating system will expire shortly. Running Windows Defender Antivirus on an out of support operating system is not an adequate solution to protect against threats.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2041</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_OS_EOL
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Antimalware support for this operating system has ended. You must upgrade the operating system for continued support.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
The support for your operating system has expired. Running Windows Defender Antivirus on an out of support operating system is not an adequate solution to protect against threats.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 2042</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_PROTECTION_EOL
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine no longer supports this operating system, and is no longer protecting your system from malware.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
The support for your operating system has expired. Windows Defender Antivirus is no longer supported on your operating system, has stopped functioning, and is not protecting against malware threats.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 3002</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_RTP_FEATURE_FAILURE
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Real-time protection encountered an error and failed.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus Real-Time Protection feature has encountered an error and failed.
<dl>
<dt>Feature: &lt;Feature&gt;, for example:
<ul>
<li>On Access</li>
<li>Internet Explorer downloads and Microsoft Outlook Express attachments</li>
<li>Behavior monitoring</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Reason: The reason Windows Defender Antivirus real-time protection has restarted a feature.</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
You should restart the system then run a full scan because it&#39;s possible the system was not protected for some time.
The Windows Defender Antivirus client&#39;s real-time protection feature encountered an error because one of the services failed to start. 
If it is followed by a 3007 event ID, the failure was temporary and the antimalware client recovered from the failure. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 3007</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_RTP_FEATURE_RECOVERED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Real-time protection recovered from a failure. We recommend running a full system scan when you see this error.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus Real-time Protection has restarted a feature. It is recommended that you run a full system scan to detect any items that may have been missed while this agent was down.
<dl>
<dt>Feature: &lt;Feature&gt;, for example:
<ul>
<li>On Access</li>
<li>IE downloads and Outlook Express attachments</li>
<li>Behavior monitoring</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Reason: The reason Windows Defender Antivirus real-time protection has restarted a feature.</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The real-time protection feature has restarted. If this event happens again, contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5000</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_RTP_ENABLED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Real-time protection is enabled.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus real-time protection scanning for malware and other potentially unwanted software was enabled.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5001</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_RTP_DISABLED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Real-time protection is disabled.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus real-time protection scanning for malware and other potentially unwanted software was disabled. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5004</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_RTP_FEATURE_CONFIGURED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The real-time protection configuration changed.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus real-time protection feature configuration has changed.
<dl>
<dt>Feature: &lt;Feature&gt;, for example:
<ul>
<li>On Access</li>
<li>IE downloads and Outlook Express attachments</li>
<li>Behavior monitoring</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Configuration: </dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5007</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_CONFIG_CHANGED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform configuration changed.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus configuration has changed. If this is an unexpected event you should review the settings as this may be the result of malware.
<dl>
<dt>Old value: &lt;Old value number&gt;
Old antivirus configuration value.</dt>
<dt>New value: &lt;New value number&gt;
New antivirus configuration value.</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5008</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ENGINE_FAILURE</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware engine encountered an error and failed.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus engine has been terminated due to an unexpected error.
<dl>
<dt>Failure Type: &lt;Failure type&gt;, for example:
Crash
or Hang</dt>
<dt>Exception Code: &lt;Error code&gt;</dt>
<dt>Resource: &lt;Resource&gt;</dt>
</dl>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
To troubleshoot this event:<ol>
<li>Try to restart the service.<ul>
<li>For antimalware, antivirus and spyware, at an elevated command prompt, type <b>net stop msmpsvc</b>, and then type <b>net start msmpsvc</b> to restart the antimalware engine.</li>
<li>For the <i>Network Inspection System</i>, at an elevated command prompt, type <b>net start nissrv</b>, and then type <b>net start nissrv</b> to restart the <i>Network Inspection System</i> engine by using the NiSSRV.exe file.
</li>
</ul>
</li>
<li>If it fails in the same way, look up the error code by accessing the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support Site</a>  and entering the error number in the <b>Search</b> box, and contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.</li>
</ol>
</td>
</tr>
<tr>
<td>
User action:
</td>
<td >
The Windows Defender Antivirus client engine stopped due to an unexpected error.
To troubleshoot this event:
<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5009</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ANTISPYWARE_ENABLED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Scanning for malware and other potentially unwanted software is enabled.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus scanning for malware and other potentially unwanted software has been enabled.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5010</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ANTISPYWARE_DISABLED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Scanning for malware and other potentially unwanted software is disabled.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus scanning for malware and other potentially unwanted software is disabled.
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5011</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ANTIVIRUS_ENABLED</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Scanning for viruses is enabled.</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus scanning for viruses has been enabled. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5012</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_ANTIVIRUS_DISABLED
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>Scanning for viruses is disabled.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus scanning for viruses is disabled. 
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5100</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_EXPIRATION_WARNING_STATE
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform will expire soon.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus has entered a grace period and will soon expire. After expiration, this program will disable protection against viruses, spyware, and other potentially unwanted software.
<dl>
<dt>Expiration Reason: The reason Windows Defender Antivirus will expire.</dt>
<dt>Expiration Date: The date Windows Defender Antivirus will expire.</dt>
</dl>
</td>
</tr>
<tr>
<th colspan="2">Event ID: 5101</th>
</tr>
<tr><td>
Symbolic name:
</td>
<td >
<b>MALWAREPROTECTION_DISABLED_EXPIRED_STATE
</b>
</td>
</tr>
<tr>
<td>
Message:
</td>
<td >
<b>The antimalware platform is expired.
</b>
</td>
</tr>
<tr>
<td>
Description:
</td>
<td >
Windows Defender Antivirus grace period has expired. Protection against viruses, spyware, and other potentially unwanted software is disabled.
<dl>
<dt>Expiration Reason:</dt>
<dt>Expiration Date: </dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</td>
</tr>
</table>

<a id="error-codes"></a>
## Windows Defender Antivirus client error codes
If Windows Defender Antivirus experiences any issues it will usually give you an error code to help you troubleshoot the issue. Most often an error means there was a problem installing an update.
This section provides the following information about Windows Defender Antivirus client errors.
-   The error code
-   The possible reason for the error
-   Advice on what to do now

Use the information in these tables to help troubleshoot Windows Defender Antivirus error codes.


<table> 
<tr>
<th colspan="2">Error code: 0x80508007</th>
</tr>
<tr>
<td>Message</td>
<td>
<b>ERR_MP_NO_MEMORY </b>
</td>
</tr>
<tr>
<td>
Possible reason
</td>
<td>
This error indicates that you might have run out of memory. 
</td>
</tr>
<tr>
<td>Resolution</td>
<td>
<ol>
<li>Check the available memory on your device.</li>
<li>Close any unused applications that are running to free up memory on your device.</li>
<li>Restart the device and run the scan again. 
</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x8050800C</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_BAD_INPUT_DATA</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that there might be a problem with your security product.
</td>
</tr><tr><td>Resolution</td><td>
<ol>
<li>Update the definitions. Either:<ol>
<li>Click the <b>Update definitions</b> button on the <b>Update</b> tab in Windows Defender Antivirus. <img src="images/defender-updatedefs2.png" alt="Update definitions in Windows Defender Antivirus"/>Or,
</li>
<li>Download the latest definitions from the <a href="https://aka.ms/wdsi">Microsoft Security Intelligence site</a>.
Note: The size of the definitions file downloaded from the site can exceed 60 MB and should not be used as a long-term solution for updating definitions.
</li>
</ol>
</li>
<li>Run a full scan.
</li>
<li>Restart the device and try again.</li>
</ol>
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508020</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_BAD_CONFIGURATION 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that there might be an engine configuration error; commonly, this is related to input 
data that does not allow the engine to function properly. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x805080211 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_QUARANTINE_FAILED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that Windows Defender Antivirus failed to quarantine a threat. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508022 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_REBOOT_REQUIRED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that a reboot is required to complete threat removal. 
</td>
</tr>
<tr>
<th colspan="2">
0x80508023 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_THREAT_NOT_FOUND 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that the threat might no longer be present on the media, or malware might be stopping you from scanning your device. 
</tr><tr><td>Resolution
</td>
<td>
Run the <a href="https://www.microsoft.com/security/scanner/default.aspx">Microsoft Safety Scanner</a> then update your security software and try again. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508024 </th></tr>
<tr>
<td>Message</td>
<td><b>ERR_MP_FULL_SCAN_REQUIRED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that a full system scan might be required. 
</td></tr>
<tr>
<td>Resolution</td><td>
Run a full system scan. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508025 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_MANUAL_STEPS_REQUIRED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that manual steps are required to complete threat removal. 
</td></tr><tr><td>Resolution</td><td>
Follow the manual remediation steps outlined in the <a href="https://www.microsoft.com/security/portal/threat/Threats.aspx">Microsoft Malware Protection Encyclopedia</a>. You can find a threat-specific link in the event history.<br/></td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508026 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_REMOVE_NOT_SUPPORTED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that removal inside the container type might not be not supported. 
</td></tr><tr><td>Resolution</td><td>
Windows Defender Antivirus is not able to remediate threats detected inside the archive. Consider manually removing the detected resources. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508027 
</th>
</tr><tr><td>Message</td>
<td><b>ERR_MP_REMOVE_LOW_MEDIUM_DISABLED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that removal of low and medium threats might be disabled. 
</td></tr><tr><td>Resolution</td><td>
Check the detected threats and resolve them as required. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508029 
</th>
</tr><tr><td>Message</td>
<td><b>ERROR_MP_RESCAN_REQUIRED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates a rescan of the threat is required. 
</td></tr><tr><td>Resolution</td><td>
Run a full system scan. 
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508030 
</th>
</tr><tr><td>Message</td>
<td><b>ERROR_MP_CALLISTO_REQUIRED 
</b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that an offline scan is required. 
</td></tr><tr><td>Resolution</td><td>
Run offline Windows Defender Antivirus. You can read about how to do this in the <a href="http://windows.microsoft.com/windows/what-is-windows-defender-offline">offline Windows Defender Antivirus article</a>.
</td>
</tr>
<tr>
<th colspan="2">Error code: 0x80508031 
</th>
</tr><tr><td>Message</td>
<td><b>ERROR_MP_PLATFORM_OUTDATED<br/></b>
</td></tr><tr><td>Possible reason</td>
<td>
This error indicates that Windows Defender Antivirus does not support the current version of the platform and requires a new version of the platform. 
</td></tr><tr><td>Resolution</td><td>
You can only use Windows Defender Antivirus in Windows 10. For Windows 8, Windows 7 and Windows Vista, you can use <a href="https://www.microsoft.com/server-cloud/system-center/endpoint-protection-2012.aspx">System Center Endpoint Protection</a>.<br/></td>
</tr>
</table>

<a id="internal-error-codes"></a>
The following error codes are used during internal testing of Windows Defender Antivirus.

If you see these errors, you can try to [update definitions](manage-updates-baselines-windows-defender-antivirus.md) and force a rescan directly on the endpoint.


<table> 
<tr>
<th colspan="3">Internal error codes</th>
</tr>
<tr>
<th><b>Error code</b></th>
<th>Message displayed</th>
<th>Possible reason for error and resolution</th>
</tr>
<tr>
<td>
0x80501004
</td>
<td>
<b>ERROR_MP_NO_INTERNET_CONN 
</b>
</td>
<td>
Check your Internet connection, then run the scan again.
</td>
</tr>
<tr>
<td>
0x80501000
</td>
<td>
<b>ERROR_MP_UI_CONSOLIDATION_BAS</b>E
</td>
<td rowspan="34">
This is an internal error. The cause is not clearly defined.
</td>
<td rowspan="36">

</td>
</tr>
<tr>
<td>
0x80501001
</td>
<td>
<b>ERROR_MP_ACTIONS_FAILED</b>
</td>
</tr>
<tr>
<td>
0x80501002
</td>
<td>
<b>ERROR_MP_NOENGINE</b>
</td>
</tr>
<tr>
<td>
0x80501003
</td>
<td>
<b>ERROR_MP_ACTIVE_THREATS</b>
</td>
</tr>
<tr>
<td>
0x805011011
</td>
<td>
<b>MP_ERROR_CODE_LUA_CANCELLED </b>
</td>
</tr>
<tr>
<td>
0x80501101
</td>
<td>
<b>ERROR_LUA_CANCELLATION </b>
</td>
</tr>
<tr>
<td>
0x80501102
</td>
<td>
<b>MP_ERROR_CODE_ALREADY_SHUTDOWN</b>
</td>
</tr>
<tr>
<td>
0x80501103
</td>
<td>
<b>MP_ERROR_CODE_RDEVICE_S_ASYNC_CALL_PENDING </b>
</td>
</tr>
<tr>
<td>
0x80501104
</td>
<td>
<b>MP_ERROR_CODE_CANCELLED</b>
</td>
</tr>
<tr>
<td>
0x80501105
</td>
<td>
<b>MP_ERROR_CODE_NO_TARGETOS</b>
</td>
</tr>
<tr>
<td>
0x80501106
</td>
<td>
<b>MP_ERROR_CODE_BAD_REGEXP</b>
</td>
</tr>
<tr>
<td>
0x80501107
</td>
<td>
<b>MP_ERROR_TEST_INDUCED_ERROR</b>
</td>
</tr>
<tr>
<td>
0x80501108
</td>
<td>
<b>MP_ERROR_SIG_BACKUP_DISABLED</b>
</td>
</tr>
<tr>
<td>
0x80508001
</td>
<td>
<b>ERR_MP_BAD_INIT_MODULES</b>
</td>
</tr>
<tr>
<td>
0x80508002
</td>
<td>
<b>ERR_MP_BAD_DATABASE</b>
</td>
</tr>
<tr>
<td>
0x80508004
</td>
<td>
<b>ERR_MP_BAD_UFS </b>
</td>
</tr>
<tr>
<td>
0x8050800C
</td>
<td>
<b>ERR_MP_BAD_INPUT_DATA</b>
</td>
</tr>
<tr>
<td>
0x8050800D
</td>
<td>
<b>ERR_MP_BAD_GLOBAL_STORAGE</b>
</td>
</tr>
<tr>
<td>
0x8050800E
</td>
<td>
<b>ERR_MP_OBSOLETE</b>
</td>
</tr>
<tr>
<td>
0x8050800F
</td>
<td>
<b>ERR_MP_NOT_SUPPORTED</b>
</td>
</tr>
<tr>
<td>
0x8050800F
0x80508010
</td>
<td>
<b>ERR_MP_NO_MORE_ITEMS </b>
</td>
</tr>
<tr>
<td>
0x80508011
</td>
<td>
<b>ERR_MP_DUPLICATE_SCANID</b>
</td>
</tr>
<tr>
<td>
0x80508012
</td>
<td>
<b>ERR_MP_BAD_SCANID</b>
</td>
</tr>
<tr>
<td>
0x80508013
</td>
<td>
<b>ERR_MP_BAD_USERDB_VERSION</b>
</td>
</tr>
<tr>
<td>
0x80508014
</td>
<td>
<b>ERR_MP_RESTORE_FAILED</b>
</td>
</tr>
<tr>
<td>
0x80508016
</td>
<td>
<b>ERR_MP_BAD_ACTION</b>
</td>
</tr>
<tr>
<td>
0x80508019
</td>
<td>
<b>ERR_MP_NOT_FOUND</b>
</td>
</tr>
<tr>
<td>
0x80509001
</td>
<td>
<b>ERR_RELO_BAD_EHANDLE</b>
</td>
</tr>
<tr>
<td>
0x80509003
</td>
<td>
<b>ERR_RELO_KERNEL_NOT_LOADED</b>
</td>
</tr>
<tr>
<td>
0x8050A001
</td>
<td>
<b>ERR_MP_BADDB_OPEN</b>
</td>
</tr>
<tr>
<td>
0x8050A002
</td>
<td>
<b>ERR_MP_BADDB_HEADER</b>
</td>
</tr>
<tr>
<td>
0x8050A003
</td>
<td>
<b>ERR_MP_BADDB_OLDENGINE</b>
</td>
</tr>
<tr>
<td>
0x8050A004
</td>
<td>
<b>ERR_MP_BADDB_CONTENT </b>
</td>
</tr>
<tr>
<td>
0x8050A005
</td>
<td>
<b>ERR_MP_BADDB_NOTSIGNED</b>
</td>
</tr>
<tr>
<td>
0x8050801
</td>
<td>
<b>ERR_MP_REMOVE_FAILED</b>
</td>
<td>
This is an internal error. It might be triggered when malware removal is not successful. 
</td>
</tr>
<tr>
<td>
0x80508018 
</td>
<td>
<b>ERR_MP_SCAN_ABORTED 
</b>
</td>
<td>
This is an internal error. It might have triggered when a scan fails to complete. 
</td>
</tr>
</table>

## Related topics

- [Report on Windows Defender Antivirus protection](report-monitor-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
