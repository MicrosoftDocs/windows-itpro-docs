---
title: Review events and errors on endpoints with Event Viewer
description: Get descriptions and further troubleshooting steps (if required) for all events reported by the Windows Defender ATP service.
keywords: troubleshoot, event viewer, lof summary, failure code, failed, Windows Advanced Threat Protection service, cannot start, broken, can't start
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: iaanw
---


# Review events and errors on endpoints with Event Viewer

**Applies to:**

- Windows 10 Insider Preview Build 14332 or later
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/en-US/library/aa745633(v=bts.10).aspx) on individual endpoints.

For example, if endpoints are not appearing in the **Machines view** list, you might need to look for event IDs on the endpoints. You can then use this table to determine further troubleshooting steps.

> **Note**&nbsp;&nbsp;It can take several days for endpoints to begin reporting to the Windows Defender ATP service.

**Open Event Viewer and find the Windows Defender ATP service event log:**

1.  Click **Start**, type **Event Viewer**, and press **Enter**.

2.  In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
    open the log.

  a.  You can also access the log by expanding **Applications and Services Logs** > **Microsoft** > **Windows** > **SENSE** and click on **Operational**.

    > **Note**&nbsp;&nbsp;SENSE is the internal name used to refer to the behavioral sensor that powers Windows Defender ATP.

3.  Events recorded by the service will appear in the log. See the following table for a list of events recorded by the service.

<table>
<tbody style="vertical-align:top;">
<tr>
<th>Event ID</th>
<th>Message</th>
<th>Description</th>
<th>Action</th>
</tr>
<tr>
<td>1</td>
<td>Windows Advanced Threat Protection service started (Version ```variable```).</td>
<td>Occurs during system start up, shut down, and during onbboarding.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>2</td>
<td>Windows Advanced Threat Protection service shutdown.</td>
<td>Occurs when the endpoint is shut down or offboarded.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>3</td>
<td>Windows Advanced Threat Protection service failed to start. Failure code: ```variable```</td>
<td>Service did not start.</td>
<td>Review other messages to determine possible cause and troubleshooting steps.</td>
</tr>
<tr>
<td>4</td>
<td>Windows Advanced Threat Protection service contacted the server at ```variable```.</td>
<td>variable = URL of the Windows Defender ATP processing servers.<br>
This URL will match that seen in the Firewall or network activity.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>5</td>
<td>Windows Advanced Threat Protection service failed to connect to the server at ```variable```.</td>
<td>variable = URL of the Windows Defender ATP processing servers.<br>
The service could not contact the external processing servers at that URL.</td>
<td>Check the connection to the URL. See [Configure proxy and Internet connectivity](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#configure-proxy-and-Internet-connectivity).</td>
</tr>
<tr>
<td>6</td>
<td>Windows Advanced Threat Protection service is not onboarded and no onboarding parameters were found.</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Onboarding must be run before starting the service.<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md).</td>
</tr>
<tr>
<td>7</td>
<td>Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>8</td>
<td>Windows Advanced Threat Protection service failed to clean its configuration. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>9</td>
<td>Windows Advanced Threat Protection service failed to change its start type. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>10</td>
<td>Windows Advanced Threat Protection service failed to persist the onboarding information. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>11</td>
<td>Windows Advanced Threat Protection service completed.</td>
<td>The endpoint onboarded correctly.</td>
<td>Normal operating notification; no action required.<br>
It may take several hours for the endpoint to appear in the portal.</td>
</tr>
<tr>
<td>12</td>
<td>Windows Advanced Threat Protection failed to apply the default configuration.</td>
<td>Service was unable to apply configuration from the processing servers.</td>
<td>This is a server error and should resolve after a short period.</td>
</tr>
<tr>
<td>13</td>
<td>Service machine ID calculated: ```variable```</td>
<td>Normal operating process.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>14</td>
<td>Service cannot calculate machine ID. Failure code: ```variable```</td>
<td>Internal error.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>15</td>
<td>Windows Advanced Threat Protection cannot start command channel with URL: ```variable```</td>
<td>variable = URL of the Windows Defender ATP processing servers.<br>
The service could not contact the external processing servers at that URL.</td>
<td>Check the connection to the URL. See [Configure proxy and Internet connectivity](#configure-proxy-and-Internet-connectivity).</td>
</tr>
<tr>
<td>17</td>
<td>Windows Advanced Threat Protection service failed to change the Connected User Experiences and Telemetry service location. Failure code: ```variable```</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the telemetry service is enabled](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-the-telemetry-and-diagnostics-service-is-enabled)<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>18</td>
<td>OOBE (Windows Welcome) is completed.</td>
<td>Service will only start after any Windows updates have finished installing.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>19</td>
<td>OOBE (Windows Welcome) has not yet completed.</td>
<td>Service will only start after any Windows updates have finished installing.</td>
<td>Normal operating notification; no action required.<br>
If this error persists after a system restart, ensure all Windows updates have full installed.</td>
</tr>
<tr>
<td>20</td>
<td>Cannot wait for OOBE (Windows Welcome) to complete. Failure code: ```variable```</td>
<td>Internal error.</td>
<td>If this error persists after a system restart, ensure all Windows updates have full installed.</td>
</tr>
<tr>
<td>25</td>
<td>Windows Advanced Threat Protection service failed to reset health status in the registry, causing the onboarding process to fail. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>26</td>
<td>Windows Advanced Threat Protection service failed to set the onboarding status in the registry. Failure code: ```variable```</td>
<td>The endpoint did not onboard correctly.<br>
It will report to the portal, however the service may not appear as registered in SCCM or the registry.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>27</td>
<td>Windows Advanced Threat Protection service failed to enable SENSE aware mode in Windows Defender. Onboarding process failed. Failure code: ```variable```</td>
<td>Normally, Windows Defender will enter a special passive state if another real-time antimalware product is running properly on the endpoint, and the endpoint is reporting to Windows Defender ATP.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)<br>
Ensure real-time antimalware protection is running properly.</td>
</tr>
<tr>
<td>28</td>
<td>Windows Advanced Threat Protection Connected User Experiences and Telemetry service registration failed. Failure code: ```variable```</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the telemetry service is enabled](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>30</td>
<td>Windows Advanced Threat Protection service failed to disable SENSE aware mode in Windows Defender. Failure code: ```variable```</td>
<td>Normally, Windows Defender will enter a special passive state if another real-time antimalware product is running properly on the endpoint, and the endpoint is reporting to Windows Defender ATP.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)<br>
Ensure real-time antimalware protection is running properly.</td>
</tr>
<tr>
<td>31</td>
<td>Windows Advanced Threat Protection Connected User Experiences and Telemetry service unregistration failed. Failure code: ```variable```</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Check for errors with the Windows telemetry service](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).</td>
</tr>
<tr>
<td>33</td>
<td>Windows Advanced Threat Protection service failed to persist SENSE GUID. Failure code: ```variable```</td>
<td>A unique identifier is used to represent each endpoint that is reporting to the portal.<br>
If the identifier does not persist, the same machine might appear twice in the portal.</td>
<td>Check registry permissions on the endpoint to ensure the service can update the registry.</td>
</tr>
<tr>
<td>34</td>
<td>Windows Advanced Threat Protection service failed to add itself as a dependency on the Connected User Experiences and Telemetry service, causing onboarding process to fail. Failure code: ```variable```</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the telemetry service is enabled](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
</tr>
</tbody>
</table>



## Related topics
- [Troubleshoot Windows Defender ATP](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)
- [Windows Defender ATP service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-defender-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-defender-advanced-threat-protection.md)
