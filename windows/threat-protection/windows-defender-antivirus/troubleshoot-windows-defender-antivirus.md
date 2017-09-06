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
localizationpriority: medium
author: iaanw
---

# Review event logs and error codes to troubleshoot issues with Windows Defender AV


**Applies to**
-   Windows 10

**Audience**

- Enterprise security administrators


If you encounter a problem with Windows Defender Antivirus, you can search the tables in this topic to find a matching issue and potential solution.

The tables list:

- [Windows Defender AV client event IDs](#windows-defender-av-ids)
- [Windows Defender AV client error codes](#error-codes)
- [Internal Windows Defender AV client error codes (used by Microsoft during development and testing)](#internal-error-codes)


<a id="windows-defender-av-ids"></a>
## Windows Defender AV client event IDs

Windows Defender AV records event IDs in the Windows event log.

You can directly view the event log, or if you have a third-party security information and event management (SIEM) tool, you can also consume the events to review specific events and errors from your endpoints.

The table in this section lists the main Windows Defender AV client event IDs and, where possible, provides suggested solutions to fix or resolve the error. 

**View a Windows Defender AV client event**

1.  Open **Event Viewer**.
2.  In the console tree, expand **Applications and Services Logs**, then **Microsoft**, then **Windows**, then **Windows Defender**.
3.  Double-click on **Operational**.
4.  In the details pane, view the list of individual events to find your event.
5.  Click the event to see specific details about an event in the lower pane, under the **General** and **Details** tabs.



<table>
<tr valign="top">
<td valign="top" rowspan="3" ><b>Event ID: 1000</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_STARTED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan started.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1001</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_COMPLETED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan finished.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Scan Time: &lt;The duration of a scan.&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1002</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_CANCELLED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan was stopped before it finished.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1003</td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_PAUSED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan was paused.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1004</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_RESUMED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan was resumed.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1005</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SCAN_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>An antimalware scan failed. 
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The Windows Defender AV client encountered an error, and the current scan has stopped. The scan might fail due to a client-side issue. This event record includes the scan ID, type of scan (antivirus, antispyware, antimalware), scan parameters, the user that started the scan, the error code, and a description of the error.
</p>
<p>To troubleshoot this event:
<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1006</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_MALWARE_DETECTED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine found malware or other potentially unwanted software.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1007</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_MALWARE_ACTION_TAKEN
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has taken action to protect this machine from malware or other potentially unwanted software. For more information please see the following:</p>
<dl>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
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
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1008</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_MALWARE_ACTION_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error when taking action on malware or other potentially unwanted software. For more information please see the following:</p>
<dl>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
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
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1009</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_QUARANTINE_RESTORE
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform restored an item from quarantine.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has restored an item from quarantine. For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1010</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_QUARANTINE_RESTORE_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform could not restore an item from quarantine.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to restore an item from quarantine. For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1011</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_QUARANTINE_DELETE</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform deleted an item from quarantine.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has deleted an item from quarantine.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1012</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_QUARANTINE_DELETE_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform could not delete an item from quarantine.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to delete an item from quarantine.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1013</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_MALWARE_HISTORY_DELETE
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform deleted history of malware and other potentially unwanted software.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has removed history of malware and other potentially unwanted software.</p>
<dl>
<dt>Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.</dt>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1014</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_MALWARE_HISTORY_DELETE_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p>The antimalware platform could not delete history of malware and other potentially unwanted software.</p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to remove history of malware and other potentially unwanted software.</p>
<dl>
<dt>Time: The time when the event occurred, for example when the history is purged. Note that this parameter is not used in threat events so that there is no confusion regarding whether it is remediation time or infection time. For those, we specifically call them as Action Time or Detection Time.</dt>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values. </dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1015</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_BEHAVIOR_DETECTED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform detected suspicious behavior.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has detected a suspicious behavior.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature ID: Enumeration matching severity.</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
<dt>Fidelity Label:</dt>
<dt>Target File Name: &lt;File name&gt;
Name of the file.</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1116</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_STATE_MALWARE_DETECTED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform detected malware or other potentially unwanted software.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has detected malware or other potentially unwanted software.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Process Name: &lt;Process in the PID&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is required. Windows Defender AV can suspend and take routine action on this threat. If you want to remove the threat manually, in the Windows Defender AV interface, click <b>Clean Computer</b>.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1117</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_STATE_MALWARE_ACTION_TAKEN
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform performed an action to protect your system from malware or other potentially unwanted software.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has taken action to protect this machine from malware or other potentially unwanted software.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
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
<p>NOTE:
<p>Whenever Windows Defender AV, Microsoft Security Essentials, Malicious Software Removal Tool, or System Center Endpoint Protection detects a malware, it will restore the following system settings and services which the malware might have changed:<ul>
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
<p>Client Operating System </p>
</td>
<td>
<p>Windows Vista (Service Pack 1, or Service Pack 2), Windows 7 and later</p>
</td>
</tr>
<tr>
<td>
<p>Server Operating System</p>
</td>
<td>
<p>Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, and Windows Server 2016</p>
</td>
</tr>
</table>
</p>
</dl>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. Windows Defender AV removed or quarantined a threat. </p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1118</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_STATE_MALWARE_ACTION_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform attempted to perform an action to protect your system from malware or other potentially unwanted software, but the action failed.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered a non-critical error when taking action on malware or other potentially unwanted software.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
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
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. Windows Defender AV failed to complete a task related to the malware remediation. This is not a critical failure.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1119</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_STATE_MALWARE_ACTION_CRITICALLY_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform encountered a critical error when trying to take action on malware or other potentially unwanted software. There are more details in the event message.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered a critical error when taking action on malware or other potentially unwanted software.  
For more information please see the following:</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
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
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The Windows Defender AV client encountered this error due to critical issues. The endpoint might not be protected. Review the error description then follow the relevant <b>User action</b> steps below.</p>
<table>
<tr>
<th>Action</th>
<th>User action</th>
</tr>
<tr>
<td>
<p><b>Remove</b></p>
</td>
<td>
<p>Update the definitions then verify that the removal was successful.</p>
</td>
</tr>
<tr>
<td>
<p><b>Clean</b></p>
</td>
<td>
<p>Update the definitions then verify that the remediation was successful.</p>
</td>
</tr>
<tr>
<td>
<p><b>Quarantine</b></p>
</td>
<td>
<p>Update the definitions and verify that the user has permission to access the necessary resources.</p>
</td>
</tr>
<tr>
<td>
<p><b>Allow</b></p>
</td>
<td>
<p>Verify that the user has permission to access the necessary resources.</p>
</td>
</tr>
</table>
<p> </p>
<p>If this event persists:<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 1120</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_THREAT_HASH</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Windows Defender AV has deduced the hashes for a threat resource.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV client is up and running in a healthy state.</p>
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
<dt>Threat Resource Path: &lt;Path&gt;</dt>
<dt>Hashes: &lt;Hashes&gt;</dt>
</dl>
</p>
<div class="alert"><b>Note</b>  This event will only be logged if the following policy is set: <b>ThreatFileHashLogging 	unsigned</b>.</div>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 1150</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SERVICE_HEALTHY</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>If your antimalware platform reports status to a monitoring platform, this event indicates that the antimalware platform is running and in a healthy state.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV client is up and running in a healthy state.</p>
<dl>
<dt>Platform Version: &lt;Current platform version&gt;</dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware Engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. The Windows Defender AV Antivirus client is in a healthy state. This event is reported on an hourly basis.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2000</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_UPDATED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware definitions updated successfully.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV signature version has been updated.</p>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. The Windows Defender AV client is in a healthy state. This event is reported when signatures are successfully updated.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2001</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_UPDATE_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware definition update failed. 
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to update signatures.</p>
<dl>
<dt>New Signature Version: &lt;New version number&gt;</dt>
<dt>Previous Signature Version: &lt;Previous signature version&gt;</dt>
<dt>Update Source: &lt;Update source&gt;, for example:
<ul>
<li>Signature update folder</li>
<li>Internal definition update server</li>
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
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>This error occurs when there is a problem updating definitions.</p>
<p>To troubleshoot this event:
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Review the entries in the %Windir%\WindowsUpdate.log file for more information about this error.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2002</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ENGINE_UPDATED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine updated successfully.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV engine version has been updated.</p>
<dl>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.</dt>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. The Windows Defender AV client is in a healthy state. This event is reported when the antimalware engine is successfully updated.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2003</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ENGINE_UPDATE_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine update failed.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to update the engine.</p>
<dl>
<dt>New Engine Version:</dt>
<dt>Previous Engine Version: &lt;Previous engine version&gt;</dt>
<dt>Engine Type: &lt;Engine type&gt;, either antimalware engine or Network Inspection System engine.</dt>
<dt>User: &lt;Domain&gt;\\&lt;User&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The Windows Defender AV client update failed. This event occurs when the client fails to update itself. This event is usually due to an interruption in network connectivity during an update.</p>
<p>To troubleshoot this event:
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2004</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_REVERSION</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>There was a problem loading antimalware definitions. The antimalware engine will attempt to load the last-known good set of definitions.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to load signatures and will attempt reverting back to a known-good set of signatures.</p>
<dl>
<dt>Signatures Attempted:</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
<dt>Signature Version: &lt;Definition version&gt;</dt>
<dt>Engine Version: &lt;Antimalware engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The Windows Defender AV client attempted to download and install the latest definitions file and failed. This error can occur when the client encounters an error while trying to load the definitions, or if the file is corrupt. Windows Defender AV will attempt to revert back to a known-good set of definitions.</p>
<p>To troubleshoot this event:
<ol>
<li>Restart the computer and try again.</li>
<li>Download the latest definitions from the <a href="https://go.microsoft.com/fwlink/?LinkID=200965">Microsoft Malware Protection Center</a>.
<p>Note: The size of the definitions file downloaded from the <a href="https://go.microsoft.com/fwlink/?LinkID=200965">Microsoft Malware Protection Center</a> can exceed 60 MB and should not be used as a long-term solution for updating definitions.</p>
</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2005</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ENGINE_UPDATE_PLATFORMOUTOFDATE</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine failed to load because the antimalware platform is out of date. The antimalware platform will load the last-known good antimalware engine and attempt to update.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV could not load antimalware engine because current platform version is not supported. Windows Defender AV will revert back to the last known-good engine and a platform update will be attempted.</p>
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2006</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_PLATFORM_UPDATE_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The platform update failed.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to update the platform.</p>
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2007</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_PLATFORM_ALMOSTOUTOFDATE</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The platform will soon be out of date. Download the latest platform to maintain up-to-date protection.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV will soon require a newer platform version to support future versions of the antimalware engine. Download the latest Windows Defender AV platform to maintain the best level of protection available.</p>
<dl>
<dt>Current Platform Version: &lt;Current platform version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2010</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_FASTPATH_UPDATED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine used the Dynamic Signature Service to get additional definitions.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV used <i>Dynamic Signature Service</i> to retrieve additional signatures to help protect your machine.</p>
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
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2011</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_FASTPATH_DELETED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The Dynamic Signature Service deleted the out-of-date dynamic definitions.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV used <i>Dynamic Signature Service</i> to discard obsolete signatures.</p>
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
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>No action is necessary. The Windows Defender AV client is in a healthy state. This event is reported when the Dynamic Signature Service successfully deletes out-of-date dynamic definitions.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2012</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_FASTPATH_UPDATE_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine encountered an error when trying to use the Dynamic Signature Service.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to use <i>Dynamic Signature Service</i>.</p>
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
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>Check your Internet connectivity settings.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2013</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_SIGNATURE_FASTPATH_DELETED_ALL
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The Dynamic Signature Service deleted all dynamic definitions.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV discarded all <i>Dynamic Signature Service</i> signatures.</p>
<dl>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2020</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_CLOUD_CLEAN_RESTORE_FILE_DOWNLOADED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine downloaded a clean file.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV downloaded a clean file.</p>
<dl>
<dt>Filename: &lt;File name&gt;
Name of the file.</dt>
<dt>Current Signature Version: &lt;Current signature version&gt;</dt>
<dt>Current Engine Version: &lt;Current engine version&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 2021</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_CLOUD_CLEAN_RESTORE_FILE_DOWNLOAD_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine failed to download a clean file.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to download a clean file.</p>
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
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>Check your Internet connectivity settings.
</p>
<p>The Windows Defender AV client encountered an error when using the Dynamic Signature Service to download the latest definitions to a specific threat. This error is likely caused by a network connectivity issue. 
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2030</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_OFFLINE_SCAN_INSTALLED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine was downloaded and is configured to run offline on the next system restart.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV downloaded and configured Windows Defender Offline to run on the next reboot.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2031</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_OFFLINE_SCAN_INSTALL_FAILED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine was unable to download and configure an offline scan.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV has encountered an error trying to download and configure Windows Defender Offline.</p>
<dl>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2040</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_OS_EXPIRING
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Antimalware support for this operating system version will soon end.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>The support for your operating system will expire shortly. Running Windows Defender AV on an out of support operating system is not an adequate solution to protect against threats.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2041</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_OS_EOL
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Antimalware support for this operating system has ended. You must upgrade the operating system for continued support.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>The support for your operating system has expired. Running Windows Defender AV on an out of support operating system is not an adequate solution to protect against threats.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 2042</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_PROTECTION_EOL
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine no longer supports this operating system, and is no longer protecting your system from malware.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>The support for your operating system has expired. Windows Defender AV is no longer supported on your operating system, has stopped functioning, and is not protecting against malware threats.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 3002</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_RTP_FEATURE_FAILURE
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Real-time protection encountered an error and failed.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV real-time protection feature has encountered an error and failed.</p>
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
<dt>Reason: The reason Windows Defender AV real-time protection has restarted a feature.</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>You should restart the system then run a full scan because it's possible the system was not protected for some time.
</p>
<p>The Windows Defender AV client's real-time protection feature encountered an error because one of the services failed to start. 
</p>
<p>If it is followed by a 3007 event ID, the failure was temporary and the antimalware client recovered from the failure. 
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="4"><b>Event ID: 3007</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_RTP_FEATURE_RECOVERED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Real-time protection recovered from a failure. We recommend running a full system scan when you see this error.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV real-time protection has restarted a feature. It is recommended that you run a full system scan to detect any items that may have been missed while this agent was down.</p>
<dl>
<dt>Feature: &lt;Feature&gt;, for example:
<ul>
<li>On Access</li>
<li>IE downloads and Outlook Express attachments</li>
<li>Behavior monitoring</li>
<li>Network Inspection System</li>
</ul>
</dt>
<dt>Reason: The reason Windows Defender AV real-time protection has restarted a feature.</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The real-time protection feature has restarted. If this event happens again, contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>. </p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5000</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_RTP_ENABLED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Real-time protection is enabled.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV real-time protection scanning for malware and other potentially unwanted software was enabled.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5001</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_RTP_DISABLED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Real-time protection is disabled.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV real-time protection scanning for malware and other potentially unwanted software was disabled. </p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5004</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_RTP_FEATURE_CONFIGURED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The real-time protection configuration changed.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV real-time protection feature configuration has changed.</p>
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
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5007</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_CONFIG_CHANGED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform configuration changed.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV configuration has changed. If this is an unexpected event you should review the settings as this may be the result of malware.</p>
<dl>
<dt>Old value: &lt;Old value number&gt;
Old Windows Defender AV configuration value.</dt>
<dt>New value: &lt;New value number&gt;
New Windows Defender AV configuration value.</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="5"><b>Event ID: 5008</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ENGINE_FAILURE</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware engine encountered an error and failed.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV  engine has been terminated due to an unexpected error.</p>
<dl>
<dt>Failure Type: &lt;Failure type&gt;, for example:
Crash
or Hang</dt>
<dt>Exception Code: &lt;Error code&gt;</dt>
<dt>Resource: &lt;Resource&gt;</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>To troubleshoot this event:<ol>
<li>Try to restart the service.<ul>
<li>For antimalware, antivirus and spyware, at an elevated command prompt, type <b>net stop msmpsvc</b>, and then type <b>net start msmpsvc</b> to restart the antimalware engine.</li>
<li>For the <i>Network Inspection System</i>, at an elevated command prompt, type <b>net start nissrv</b>, and then type <b>net start nissrv</b> to restart the <i>Network Inspection System</i> engine by using the NiSSRV.exe file.
</li>
</ul>
</li>
<li>If it fails in the same way, look up the error code by accessing the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support Site</a>  and entering the error number in the <b>Search</b> box, and contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>User action:</p>
</td>
<td colspan="2">
<p>The Windows Defender AV client engine stopped due to an unexpected error.</p>
<p>To troubleshoot this event:
<ol>
<li>Run the scan again.</li>
<li>If it fails in the same way, go to the <a href="https://go.microsoft.com/fwlink/?LinkId=215163">Microsoft Support site</a>, enter the error number in the <b>Search</b> box to look for the error code.</li>
<li>Contact <a href="https://go.microsoft.com/fwlink/?LinkId=215491">Microsoft Technical Support</a>.
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5009</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ANTISPYWARE_ENABLED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Scanning for malware and other potentially unwanted software is enabled.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV scanning for malware and other potentially unwanted software has been enabled.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5010</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ANTISPYWARE_DISABLED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Scanning for malware and other potentially unwanted software is disabled.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV scanning for malware and other potentially unwanted software is disabled.</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5011</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ANTIVIRUS_ENABLED</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Scanning for viruses is enabled.</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV scanning for viruses has been enabled. </p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5012</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_ANTIVIRUS_DISABLED
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>Scanning for viruses is disabled.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>Windows Defender AV scanning for viruses is disabled. </p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5100</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_EXPIRATION_WARNING_STATE
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform will expire soon.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description:</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV  has entered a grace period and will soon expire. After expiration, this program will disable protection against viruses, spyware, and other potentially unwanted software.</p>
<dl>
<dt>Expiration Reason: The reason Windows Defender AV will expire.</dt>
<dt>Expiration Date: The date Windows Defender AV will expire.</dt>
</dl>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="3"><b>Event ID: 5101</b></td>
<td>
<p>Symbolic name:</p>
</td>
<td colspan="2">
<p><b>MALWAREPROTECTION_DISABLED_EXPIRED_STATE
</b></p>
</td>
</tr>
<tr>
<td>
<p>Message:</p>
</td>
<td colspan="2">
<p><b>The antimalware platform is expired.
</b></p>
</td>
</tr>
<tr>
<td>
<p>Description::</p>
</td>
<td colspan="2">
<p>
<p>Windows Defender AV  grace period has expired. Protection against viruses, spyware, and other potentially unwanted software is disabled.</p>
<dl>
<dt>Expiration Reason:</dt>
<dt>Expiration Date: </dt>
<dt>Error Code: &lt;Error code&gt;
Result code associated with threat status. Standard HRESULT values.</dt>
<dt>Error Description: &lt;Error description&gt;
Description of the error. </dt>
</dl>
</p>
</td>
</tr>
</table>

<a id="error-codes"></a>
## Windows Defender Antivirus client error codes
If Windows Defender AV experiences any issues it will usually give you an error code to help you troubleshoot the issue. Most often an error means there was a problem installing an update.
This section provides the following information about Windows Defender AV client errors.
-   The error code
-   The possible reason for the error
-   Advice on what to do now

Use the information in these tables to help troubleshoot Windows Defender AV error codes.  
  
### External error codes

<table>
<tr>
<th>Error code</th>
<th>Message displayed</th>
<th>Possible reason for error</th>
</tr>
<tr>
<td>
<p>0x80508007 
</p>
</td>
<td>
<p><b>ERR_MP_NO_MEMORY 
</b></p>
</td>
<td>
<p>This error indicates that you might have run out of memory. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>Check the available memory on your device.</li>
<li>Close any unused applications that are running to free up memory on your device.</li>
<li>Restart the device and run the scan again. 
</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x8050800C</p>
</td>
<td>
<p><b>ERR_MP_BAD_INPUT_DATA</b></p>
</td>
<td>
<p>This error indicates that there might be a problem with your security product.</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508020</p>
</td>
<td>
<p><b>ERR_MP_BAD_CONFIGURATION 
</b></p>
</td>
<td>
<p>This error indicates that there might be an engine configuration error; commonly, this is related to input 
data that does not allow the engine to function properly. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x805080211 
</p>
</td>
<td>
<p><b>ERR_MP_QUARANTINE_FAILED 
</b></p>
</td>
<td>
<p>This error indicates that Windows Defender AV failed to quarantine a threat. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508022 
</p>
</td>
<td>
<p><b>ERR_MP_REBOOT_REQUIRED 
</b></p>
</td>
<td>
<p>This error indicates that a reboot is required to complete threat removal. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="2">
<p>0x80508023 
</p>
</td>
<td>
<p><b>ERR_MP_THREAT_NOT_FOUND 
</b></p>
</td>
<td>
<p>This error indicates that the threat might no longer be present on the media, or malware might be stopping you from scanning your device. 
</p>
<p><b>What to do now</b></p>
<p>Run the <a href="https://www.microsoft.com/security/scanner/default.aspx">Microsoft Safety Scanner</a> then update your security software and try again. 
</p>
</td>
</tr>
<tr>
<td valign="top" rowspan="2">
<p><b>ERR_MP_FULL_SCAN_REQUIRED 
</b></p>
</td>
<td valign="top" rowspan="2">
<p>This error indicates that a full system scan might be required. 
</p>
<p><b>What to do now</b></p>
<p>Run a full system scan. 
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508024 
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508025 
</p>
</td>
<td>
<p><b>ERR_MP_MANUAL_STEPS_REQUIRED 
</b></p>
</td>
<td>
<p>This error indicates that manual steps are required to complete threat removal. 
</p>
<p><b>What to do now</b></p>
<p>Follow the manual remediation steps outlined in the <a href="https://www.microsoft.com/security/portal/threat/Threats.aspx">Microsoft Malware Protection Encyclopedia</a>. You can find a threat-specific link in the event history.  
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508026 
</p>
</td>
<td>
<p><b>ERR_MP_REMOVE_NOT_SUPPORTED 
</b></p>
</td>
<td>
<p>This error indicates that removal inside the container type might not be not supported. 
</p>
<p><b>What to do now</b></p>
<p>Windows Defender AV is not able to remediate threats detected inside the archive. Consider manually removing the detected resources. 
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508027 
</p>
</td>
<td>
<p><b>ERR_MP_REMOVE_LOW_MEDIUM_DISABLED 
</b></p>
</td>
<td>
<p>This error indicates that removal of low and medium threats might be disabled. 
</p>
<p><b>What to do now</b></p>
<p>Check the detected threats and resolve them as required. 
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508029 
</p>
</td>
<td>
<p><b>ERROR_MP_RESCAN_REQUIRED 
</b></p>
</td>
<td>
<p>This error indicates a rescan of the threat is required. 
</p>
<p><b>What to do now</b></p>
<p>Run a full system scan. 
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508030 
</p>
</td>
<td>
<p><b>ERROR_MP_CALLISTO_REQUIRED 
</b></p>
</td>
<td>
<p>This error indicates that an offline scan is required. 
</p>
<p><b>What to do now</b></p>
<p>Run [Windows Defender Offline](windows-defender-offline.md).</p>
</td>
</tr>
<tr>
<td>
<p>0x80508031 
</p>
</td>
<td>
<p><b>ERROR_MP_PLATFORM_OUTDATED  
</b></p>
</td>
<td>
<p>This error indicates that Windows Defender AV does not support the current version of the platform and requires a new version of the platform. 
</p>
<p><b>What to do now</b></p>
<p>You can only use Windows Defender AV in Windows 10. For Windows 8, Windows 7 and Windows Vista, you can use <a href="https://www.microsoft.com/server-cloud/system-center/endpoint-protection-2012.aspx">System Center Endpoint Protection</a>.  
</p>
</td>
</tr>
</table>

### Internal error codes

The following error codes are used during internal testing of Windows Defender AV.  

<table>
<tr>
<th>Error code</th>
<th>Message displayed</th>
<th>Possible reason for error</th>
</tr>
<tr>
<td>
<p>0x80501004</p>
</td>
<td>
<p><b>ERROR_MP_NO_INTERNET_CONN 
</b></p>
</td>
<td>
<p>Windows Defender AV can't access the Internet.</p>
<p><b>What to do now</b></p>
<p>Check your Internet connection, then run the scan again.</p>
</td>
</tr>
<tr>
<td>
<p>0x80501000</p>
</td>
<td>
<p><b>ERROR_MP_UI_CONSOLIDATION_BAS</b>E</p>
</td>
<td valign="top" rowspan="34">
<p>This is an internal error. The cause is not clearly defined.</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x80501001</p>
</td>
<td>
<p><b>ERROR_MP_ACTIONS_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501002</p>
</td>
<td>
<p><b>ERROR_MP_NOENGINE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501003</p>
</td>
<td>
<p><b>ERROR_MP_ACTIVE_THREATS</b></p>
</td>
</tr>
<tr>
<td>
<p>0x805011011</p>
</td>
<td>
<p><b>MP_ERROR_CODE_LUA_CANCELLED </b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501101</p>
</td>
<td>
<p><b>ERROR_LUA_CANCELLATION </b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501102</p>
</td>
<td>
<p><b>MP_ERROR_CODE_ALREADY_SHUTDOWN</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501103</p>
</td>
<td>
<p><b>MP_ERROR_CODE_RDEVICE_S_ASYNC_CALL_PENDING </b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501104</p>
</td>
<td>
<p><b>MP_ERROR_CODE_CANCELLED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501105</p>
</td>
<td>
<p><b>MP_ERROR_CODE_NO_TARGETOS</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501106</p>
</td>
<td>
<p><b>MP_ERROR_CODE_BAD_REGEXP</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501107</p>
</td>
<td>
<p><b>MP_ERROR_TEST_INDUCED_ERROR</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80501108</p>
</td>
<td>
<p><b>MP_ERROR_SIG_BACKUP_DISABLED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508001</p>
</td>
<td>
<p><b>ERR_MP_BAD_INIT_MODULES</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508002</p>
</td>
<td>
<p><b>ERR_MP_BAD_DATABASE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508004</p>
</td>
<td>
<p><b>ERR_MP_BAD_UFS </b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050800C</p>
</td>
<td>
<p><b>ERR_MP_BAD_INPUT_DATA</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050800D</p>
</td>
<td>
<p><b>ERR_MP_BAD_GLOBAL_STORAGE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050800E</p>
</td>
<td>
<p><b>ERR_MP_OBSOLETE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050800F</p>
</td>
<td>
<p><b>ERR_MP_NOT_SUPPORTED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050800F
0x80508010
</p>
</td>
<td>
<p><b>ERR_MP_NO_MORE_ITEMS </b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508011</p>
</td>
<td>
<p><b>ERR_MP_DUPLICATE_SCANID</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508012</p>
</td>
<td>
<p><b>ERR_MP_BAD_SCANID</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508013</p>
</td>
<td>
<p><b>ERR_MP_BAD_USERDB_VERSION</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508014</p>
</td>
<td>
<p><b>ERR_MP_RESTORE_FAILED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508016</p>
</td>
<td>
<p><b>ERR_MP_BAD_ACTION</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80508019</p>
</td>
<td>
<p><b>ERR_MP_NOT_FOUND</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80509001</p>
</td>
<td>
<p><b>ERR_RELO_BAD_EHANDLE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x80509003</p>
</td>
<td>
<p><b>ERR_RELO_KERNEL_NOT_LOADED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050A001</p>
</td>
<td>
<p><b>ERR_MP_BADDB_OPEN</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050A002</p>
</td>
<td>
<p><b>ERR_MP_BADDB_HEADER</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050A003</p>
</td>
<td>
<p><b>ERR_MP_BADDB_OLDENGINE</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050A004</p>
</td>
<td>
<p><b>ERR_MP_BADDB_CONTENT </b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050A005</p>
</td>
<td>
<p><b>ERR_MP_BADDB_NOTSIGNED</b></p>
</td>
</tr>
<tr>
<td>
<p>0x8050801</p>
</td>
<td>
<p><b>ERR_MP_REMOVE_FAILED</b></p>
</td>
<td>
<p>This is an internal error. It might be triggered when malware removal is not successful. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
<tr>
<td>
<p>0x80508018 
</p>
</td>
<td>
<p><b>ERR_MP_SCAN_ABORTED 
</b></p>
</td>
<td>
<p>This is an internal error. It might have triggered when a scan fails to complete. 
</p>
<p><b>What to do now</b></p>
<p>
<ol>
<li>[Update the definitions](manage-updates-baselines-windows-defender-antivirus.md).</li>
<li>Run a full scan.</li>
<li>Restart the device and try again.</li>
</ol>
</p>
</td>
</tr>
</table>

## Related topics

- [Report on Windows Defender Antivirus protection](report-monitor-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
