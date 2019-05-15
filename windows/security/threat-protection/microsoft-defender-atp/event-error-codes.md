---
title: Review events and errors using Event Viewer
description: Get descriptions and further troubleshooting steps (if required) for all events reported by the Microsoft Defender ATP service.
keywords: troubleshoot, event viewer, log summary, failure code, failed, Microsoft Defender Advanced Threat Protection service, cannot start, broken, can't start
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
ms.topic: article
ms.date: 05/21/2018
---


# Review events and errors using Event Viewer

**Applies to:**

- Event Viewer

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/library/aa745633(v=bts.10).aspx) on individual machines.

For example, if machines are not appearing in the **Machines list**, you might need to look for event IDs on the machines. You can then use this table to determine further troubleshooting steps.

> [!NOTE]
> It can take several days for machines to begin reporting to the Microsoft Defender ATP service.

**Open Event Viewer and find the Microsoft Defender ATP service event log:**

1.  Click **Start** on the Windows menu, type **Event Viewer**, and press **Enter**.

2.  In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
    open the log.

  a.  You can also access the log by expanding **Applications and Services Logs** > **Microsoft** > **Windows** > **SENSE** and click on **Operational**.

    > [!NOTE]
	> SENSE is the internal name used to refer to the behavioral sensor that powers Microsoft Defender ATP.

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
<td>Microsoft Defender Advanced Threat Protection service started (Version ```variable```).</td>
<td>Occurs during system start up, shut down, and during onbboarding.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>2</td>
<td>Microsoft Defender Advanced Threat Protection service shutdown.</td>
<td>Occurs when the machine is shut down or offboarded.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>3</td>
<td>Microsoft Defender Advanced Threat Protection service failed to start. Failure code: ```variable```.</td>
<td>Service did not start.</td>
<td>Review other messages to determine possible cause and troubleshooting steps.</td>
</tr>
<tr>
<td>4</td>
<td>Microsoft Defender Advanced Threat Protection service contacted the server at ```variable```.</td>
<td>Variable = URL of the Microsoft Defender ATP processing servers.<br>
This URL will match that seen in the Firewall or network activity.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>5</td>
<td>Microsoft Defender Advanced Threat Protection service failed to connect to the server at ```variable```.</td>
<td>Variable = URL of the Microsoft Defender ATP processing servers.<br>
The service could not contact the external processing servers at that URL.</td>
<td>Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).</td>
</tr>
<tr>
<td>6</td>
<td>Microsoft Defender Advanced Threat Protection service is not onboarded and no onboarding parameters were found.</td>
<td>The machine did not onboard correctly and will not be reporting to the portal.</td>
<td>Onboarding must be run before starting the service.<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>7</td>
<td>Microsoft Defender Advanced Threat Protection service failed to read the onboarding parameters. Failure: ```variable```.</td>
<td>Variable = detailed error description. The machine did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>8</td>
<td>Microsoft Defender Advanced Threat Protection service failed to clean its configuration. Failure code: ```variable```.</td>
<td>**During onboarding:** The service failed to clean its configuration during the onboarding. The onboarding process continues. <br><br> **During offboarding:** The service failed to clean its configuration during the offboarding. The offboarding process finished but the service keeps running.
 </td>
<td>**Onboarding:** No action required. <br><br> **Offboarding:** Reboot the system.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>9</td>
<td>Microsoft Defender Advanced Threat Protection service failed to change its start type. Failure code: ```variable```.</td>
<td>**During onboarding:** The machine did not onboard correctly and will not be reporting to the portal. <br><br>**During offboarding:** Failed to change the service start type. The offboarding process continues. </td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>10</td>
<td>Microsoft Defender Advanced Threat Protection service failed to persist the onboarding information. Failure code: ```variable```.</td>
<td>The machine did not onboard correctly and will not be reporting to the portal.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>11</td>
<td>Onboarding or re-onboarding of Microsoft Defender Advanced Threat Protection service completed.</td>
<td>The machine onboarded correctly.</td>
<td>Normal operating notification; no action required.<br>
It may take several hours for the machine to appear in the portal.</td>
</tr>
<tr>
<td>12</td>
<td>Microsoft Defender Advanced Threat Protection failed to apply the default configuration.</td>
<td>Service was unable to apply the default configuration.</td>
<td>This error should resolve after a short period of time.</td>
</tr>
<tr>
<td>13</td>
<td>Microsoft Defender Advanced Threat Protection machine ID calculated: ```variable```.</td>
<td>Normal operating process.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>15</td>
<td>Microsoft Defender Advanced Threat Protection cannot start command channel with URL: ```variable```.</td>
<td>Variable = URL of the Microsoft Defender ATP processing servers.<br>
The service could not contact the external processing servers at that URL.</td>
<td>Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).</td>
</tr>
<tr>
<td>17</td>
<td>Microsoft Defender Advanced Threat Protection service failed to change the Connected User Experiences and Telemetry service location. Failure code: ```variable```.</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostics-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
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
<td>Cannot wait for OOBE (Windows Welcome) to complete. Failure code: ```variable```.</td>
<td>Internal error.</td>
<td>If this error persists after a system restart, ensure all Windows updates have full installed.</td>
</tr>
<tr>
<td>25</td>
<td>Microsoft Defender Advanced Threat Protection service failed to reset health status in the registry. Failure code: ```variable```.</td>
<td>The machine did not onboard correctly.
It will report to the portal, however the service may not appear as registered in SCCM or the registry.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>26</td>
<td>Microsoft Defender Advanced Threat Protection service failed to set the onboarding status in the registry. Failure code: ```variable```.</td>
<td>The machine did not onboard correctly.<br>
It will report to the portal, however the service may not appear as registered in SCCM or the registry.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>27</td>
<td>Microsoft Defender Advanced Threat Protection service failed to enable SENSE aware mode in Windows Defender Antivirus. Onboarding process failed. Failure code: ```variable```.</td>
<td>Normally, Windows Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the machine, and the machine is reporting to Microsoft Defender ATP.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).<br>
Ensure real-time antimalware protection is running properly.</td>
</tr>
<tr>
<td>28</td>
<td>Microsoft Defender Advanced Threat Protection Connected User Experiences and Telemetry service registration failed. Failure code: ```variable```.</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostic-data-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>29</td>
<td>Failed to read the offboarding parameters. Error type: %1, Error code: %2, Description: %3 </td>
<td>This event occurs when the system can't read the offboarding parameters.</td>
<td>Ensure the machine has Internet access, then run the entire offboarding process again.</td>
</tr>
<tr>
<td>30</td>
<td>Microsoft Defender Advanced Threat Protection service failed to disable SENSE aware mode in Windows Defender Antivirus. Failure code: ```variable```.</td>
<td>Normally, Windows Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the machine, and the machine is reporting to Microsoft Defender ATP.</td>
<td>Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md)<br>
Ensure real-time antimalware protection is running properly.</td>
</tr>
<tr>
<td>31</td>
<td>Microsoft Defender Advanced Threat Protection Connected User Experiences and Telemetry service unregistration failed. Failure code: ```variable```.</td>
<td>An error occurred with the Windows telemetry service during onboarding. The offboarding process continues.</td>
<td>[Check for errors with the Windows telemetry service](troubleshoot-onboarding.md#ensure-the-diagnostic-data-service-is-enabled).</td>
</tr>
<tr>
<td>32</td>
<td>Microsoft Defender Advanced Threat Protection service failed to request to stop itself after offboarding process. Failure code: %1</td>
<td>An error occurred during offboarding.</td>
<td>Reboot the machine.</td>
</tr>
<tr>
<td>33</td>
<td>Microsoft Defender Advanced Threat Protection service failed to persist SENSE GUID. Failure code: ```variable```.</td>
<td>A unique identifier is used to represent each machine that is reporting to the portal.<br>
If the identifier does not persist, the same machine might appear twice in the portal.</td>
<td>Check registry permissions on the machine to ensure the service can update the registry.</td>
</tr>
<tr>
<td>34</td>
<td>Microsoft Defender Advanced Threat Protection service failed to add itself as a dependency on the Connected User Experiences and Telemetry service, causing onboarding process to fail. Failure code: ```variable```.</td>
<td>An error occurred with the Windows telemetry service.</td>
<td>[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostic-data-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Onboard Windows 10 machines](configure-endpoints.md).</td>
</tr>
<tr>
<td>35</td>
<td>Microsoft Defender Advanced Threat Protection service failed to remove itself as a dependency on the Connected User Experiences and Telemetry service. Failure code: ```variable```.</td>
<td>An error occurred with the Windows telemetry service during offboarding. The offboarding process continues.
</td>
<td>Check for errors with the Windows diagnostic data service.</td>
</tr>
<tr>
<td>36</td>
<td>Microsoft Defender Advanced Threat Protection Connected User Experiences and Telemetry service registration succeeded. Completion code: ```variable```.</td>
<td>Registering Microsoft Defender Advanced Threat Protection with the Connected User Experiences and Telemetry service completed successfully.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>37</td>
<td>Microsoft Defender Advanced Threat Protection A module is about to exceed its quota. Module: %1, Quota: {%2} {%3}, Percentage of quota utilization: %4.</td>
<td>The machine has almost used its allocated quota of the current 24-hour window. It’s about to be throttled.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>38</td>
<td>Network connection is identified as low. Microsoft Defender Advanced Threat Protection will contact the server every %1 minutes. Metered connection: %2, internet available: %3, free network available: %4.</td>
<td>The machine is using a metered/paid network and will be contacting the server less frequently.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>39</td>
<td>Network connection is identified as normal. Microsoft Defender Advanced Threat Protection will contact the server every %1 minutes. Metered connection: %2, internet available: %3, free network available: %4.</td>
<td>The machine is not using a metered/paid connection and will contact the server as usual.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>40</td>
<td>Battery state is identified as low. Microsoft Defender Advanced Threat Protection will contact the server every %1 minutes. Battery state: %2.</td>
<td>The machine has low battery level and will contact the server less frequently.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>41</td>
<td>Battery state is identified as normal. Microsoft Defender Advanced Threat Protection will contact the server every %1 minutes. Battery state: %2.</td>
<td>The machine doesn’t have low battery level and will contact the server as usual.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>42</td>
<td>Microsoft Defender Advanced Threat Protection WDATP component failed to perform action. Component: %1, Action: %2, Exception Type: %3, Exception message: %4</td>
<td>Internal error. The service failed to start.</td>
<td>If this error persists, contact Support.</td>
</tr>
<tr>
<td>43</td>
<td>Microsoft Defender Advanced Threat Protection WDATP component failed to perform action. Component: %1, Action: %2, Exception Type: %3, Exception Error: %4, Exception message: %5</td>
<td>Internal error. The service failed to start.</td>
<td>If this error persists, contact Support.</td>
</tr>
<tr>
<td>44</td>
<td>Offboarding of Microsoft Defender Advanced Threat Protection service completed.</td>
<td>The service was offboarded.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>45</td>
<td>Failed to register and to start the event trace session [%1]. Error code: %2</td>
<td>An error occurred on service startup while creating ETW session. This caused service start-up failure.</td>
<td>If this error persists, contact Support.</td>
</tr>
<tr>
<td>46</td>
<td>Failed to register and start the event trace session [%1] due to lack of resources. Error code: %2. This is most likely because there are too many active event trace sessions. The service will retry in 1 minute.</td>
<td>An error occurred on service startup while creating ETW session due to lack of resources. The service started and is running, but will not report any sensor event until the ETW session is started.</td>
<td>Normal operating notification; no action required. The service will try to start the session every minute.</td>
</tr>
<tr>
<td>47</td>
<td>Successfully registered and started the event trace session - recovered after previous failed attempts.</td>
<td>This event follows the previous event after successfully starting of the ETW session.</td>
<td>Normal operating notification; no action required.</td>
</tr>
<tr>
<td>48</td>
<td>Failed to add a provider [%1] to event trace session [%2]. Error code: %3. This means that events from this provider will not be reported.</td>
<td>Failed to add a provider to ETW session. As a result, the provider events aren’t reported.</td>
<td>Check the error code. If the error persists contact Support.</td>
</tr>
</tr>
</tbody>
</table>

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-eventerrorcodes-belowfoldlink)

## Related topics
- [Onboard Windows 10 machines](configure-endpoints.md)
- [Configure machine proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshoot Microsoft Defender ATP](troubleshoot-onboarding.md)
