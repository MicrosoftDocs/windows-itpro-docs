---
title: Troubleshoot Windows Defender ATP onboarding issues
description: Troubleshoot issues that might arise during the onboarding of endpoints or to the Windows Defender ATP service.
keywords: troubleshoot onboarding, onboarding issues, event viewer, azure management portal, data collection and preview builds
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---

# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues

**Applies to:**

- Windows 10 Insider Preview
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the Windows Defender Advanced Threat Protection boarding process if you encounter issues.
This page provides detailed steps for troubleshooting endpoints that aren't reporting correctly and common error codes encountered during onboarding. <!--and steps for resolving problems with Azure Active Directory (AAD).-->

## Endpoints are not reporting to the service correctly

If you have completed the endpoint onboarding process and don't see endpoints in the [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md) after 20 minutes, it might indicate an endpoint onboarding or a connectivity problem.

Go through the following verification topics to address this issue:

- [Ensure that the endpoint is onboarded successfully](#Ensure-that-the-endpoint-is-onboarded-successfully)
- [Ensure that the Windows Defender ATP service is enabled](#Ensure-that-the-Windows-Defender-ATP-service-is-enabled)
- [Ensure that telemetry and diagnostics service is enabled](#Ensure-that-telemetry-and-diagnostics-service-is-enabled)
- [Ensure that the Windows Defender ATP endpoint has internet connection](#Ensure-that-the-Windows-Defender-ATP-endpoint-has-internet-connection)


### Ensure that the endpoint is onboarded successfully
If the endpoints aren't reporting correctly, you might need to check that the Windows Defender ATP service was successfully onboarded on the endpoint.

**Check the onboarding state in Registry**:

1. Click **Start**.

2. Type **Run**.

3. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the Status key under

   ```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection
```

5. Check that the **OnboardingState** value is set to **1**.

  ![Image of OnboardingState status in Registry Editor](images/onboardingstate.png)

  If the **OnboardingState** value is not set to **1**, follow the instructions on **Identifying and addressing onboarding issues**.

**Identifying and addressing onboarding errors**:   

1. Click **Start**.

2. Type **Event Viewer**.

3. In **Event Viewer**, browse to the **Application and Services Logs\Microsoft\Windows\SENSE** directory.

4. Click the **Operational** log.

5. In the **Action** pane, click **Filter Current log**.

6. Select **Critical**, **Warning**, and **Error**, then click **OK**.

  ![Image of Event Viewer log filter](images/filter-log.png)

7. Review the remaining events which can indicate issues and troubleshoot them based on the corresponding solutions from the following table:

Event ID | Message | Resolution steps
:---|:---|:---
5 | Windows Advanced Threat Protection service failed to connect to the server at _variable_ | Ensure that the Windows Defender ATP endpoint has internet access.
6 | Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: _variable_ | Run the onboarding script again.
7 |  Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: _variable_ | Ensure that the Windows Defender ATP endpoint has internet access, then run the onboarding script again.
15 | Windows Advanced Threat Protection cannot start command channel with URL: _variable_ | Ensure that the Windows Defender ATP endpoint has internet access.


### Ensure the Windows Defender ATP service is enabled
If the endpoints aren't reporting correctly, you might need to check that the Windows Defender ATP service is set to automatically start and is running on the endpoint. 

You can use the SC command line program for checking and managing the startup type and running state of the service.

**Check the Windows Defender ATP service startup type from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```text
    sc qc sense
    ```

If the the service is running, then the result should look like the following screenshot:

  ![Result of the sq query sense command](images/sc-query-sense-autostart.png)

If the service **START_TYPE** is not set to **AUTO_START**, then you'll need to set the service to automatically start.

**Change the Windows Defender ATP service startup type from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```text
    sc config sense start=auto
    ```

3.  A success message is displayed. Verify the change by entering the following command and press **Enter**:

    ```text
    sc qc sense
    ```

**Check the Windows Defender ATP service is running from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```text
    sc query sense
    ```

If the service is running, the result should look like the following screenshot:

![Result of the sc query sense command](images/sc-query-sense-running.png)

If the service **STATE** is not set to **RUNNING**, then you'll need to start it.

**Start the Windows Defender ATP service from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```text
    sc start sense
    ```

3.  A success message is displayed. Verify the change by entering the following command and press **Enter**:

    ```text
    sc qc sense
    ```

### Ensure the telemetry and diagnostics service is enabled
If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is set to automatically start and is running on the endpoint. The service may have been disabled by other programs or user configuration changes.


First, you should check that the service is set to start automatically when Windows starts, then you should check that the service is currently running (and start it if it isn't.)


#### Ensure the service is set to automatically start



**Use the command line to check the Windows 10 telemetry and diganostics service startup type**:

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```doscon
    sc qc diagtrack
    ```

If the service is enabled, then the result should look like the following screenshot:

![Result of the sc query command for diagtrack](images/windefatp-sc-qc-diagtrack.png)

If the **START_TYPE** is not set to **AUTO_START**, then you'll need to set the service to automatically start.



**Use the command line to set the Windows 10 telemetry and diganostics service to automatically start:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```doscon
    sc config diagtrack start=auto
    ```

3.  A success message is displayed. Verify the change by entering the following command and press **Enter**:

    ```doscon
    sc qc diagtrack
    ```

**Use the Windows Services console to check the Windows 10 telemetry and diganostics service startup type**:

1.  Open the services console:

  a. Click **Start** and type **services**.

  b. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**.

3.  Check the **Startup type** column - the service should be set as **Automatic**.

If the startup type is not set to **Automatic**, you'll need to change it so the service starts when the endpoint does.


**Use the Windows Services console to set the Windows 10 telemetry and diganostics service to automatically start:**

1.  Open the services console:

  a. Click **Start** and type **services**.

  b. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**.

3.  Right-click on the entry and click **Properties**.

4.  On the **General** tab, change the **Startup type:** to **Automatic**, as shown in the following image. Click OK.

![Select Automatic to change the startup type in the Properties dialog box for the service](images/windefatp-utc-console-autostart.png)

#### Ensure the service is running

**Use the command line to check the Windows 10 telemetry and diganostics service is running**:

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```doscon
    sc query diagtrack
    ```

If the service is running, the result should look like the following screenshot:

![Result of the sc query command for sc query diagtrack](images/windefatp-sc-query-diagtrack.png)

If the service **STATE** is not set to **RUNNING**, then you'll need to start it.


**Use the command line to start the Windows 10 telemetry and diganostics service:**

1.  Open an elevated command-line prompt on the endpoint:

  a.  Click **Start** and type **cmd**.

  b.  Right-click **Command prompt** and select **Run as administrator**.

2.  Enter the following command and press **Enter**:

    ```doscon
    sc start diagtrack
    ```

3. A success message is displayed. Verify the change by entering the following command and press **Enter**:

    ```doscon
    sc query diagtrack
    ```

**Use the Windows Services console to check the Windows 10 telemetry and diganostics service is running**:

1.  Open the services console:

  a. Click **Start** and type **services**.

  b. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**.

3.  Check the **Status** column - the service should be marked as **Running**.

If the service is not running, you'll need to start it.


**Use the Windows Services console to start the Windows 10 telemetry and diganostics service:**

1.  Open the services console:

  a. Click **Start** and type **services**.

  b. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**.

3.  Right-click on the entry and click **Start**, as shown in the following image. 

![Select Start to start the service](images/windefatp-utc-console-start.png)


### Ensure that the Windows Defender ATP endpoint has internet connection

The Window Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to be able to report telemetry and communicate with the Windows Defender ATP service.

WinHTTP is independent of the Internet browsing proxy settings and other user context applications and must be able to detect the proxy servers that are available in your particular environment.

To ensure that sensor has service connectivity, follow the steps described in the [Verify client connectivity to Windows Defender ATP service URLs](configure-proxy-internet-windows-defender-advanced-threat-protection.md#verify-client-connectivity-to-windows-defender-atp-service-urls) topic.

If the verification fails and your environment is using a proxy to connect to the internet, then follow the steps described in [Configure proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md) topic.    



## Review events and errors on endpoints with Event Viewer

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/en-US/library/aa745633(v=bts.10).aspx) on individual endpoints, or check the status of machines from the [Windows Defender ATP portal](https://securitycenter.windows.com/).

For example, if endpoints are not appearing in the **Machines view** list, you might need to look for event IDs on the endpoints.

> **Note**&nbsp;&nbsp; It can take several days for endpoints to begin reporting to the Windows Defender ATP service.

1.  Click **Start** and type **Event Viewer**.

2.  In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
    open the log.

    > **Note**&nbsp;&nbsp; SENSE is the internal name used to refer to the behavioral sensor that powers Windows Defender ATP.

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
<td>Check the connection to the URL. See [Configure proxy and Internet connectivity](#configure-proxy-and-Internet-connectivity).</td>
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
<td>[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled)<br>
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
<td>[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>29</td>
<td>Windows Advanced Threat Protection service failed to read the offboarding parameters. Failure code: ```variable```</td>
<td><span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span></td>
<td>TBD</td>
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
<td>[Check for errors with the Windows telemetry service](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).</td>
</tr>
<tr>
<td>32</td>
<td>Windows Advanced Threat Protection service failed to request to stop itself after offboarding process. Failure code: ```variable```</td>
<td><span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span></td>
<td>TBD</td>
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
<td>[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).<br>
Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.<br>
See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)</td>
</tr>
<tr>
<td>35</td>
<td>Windows Advanced Threat Protection service failed to remove itself as a dependency on the Connected User Experiences and Telemetry service. Failure code: ```variable```</td>
<td><span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span></td>
<td>TBD</td>
</tr>
</tbody>
</table>

<!--

## There are no users in the Azure Active Directory
If you don't see any users in the [Azure Management Portal](https://manage.windowsazure.com/) during the service onboarding stage, you might need to add users to the directory first.

1.  Go to the Azure Management Portal and select the directory you want to manage.

2.  Click **Users** from the top menu bar.

    ![Example Azure Management Portal organization](images/contoso-users.png)

3.  Click **Add user** from the menu bar at the bottom.

    ![Add user menu](images/add-user.png)

4.  Select the type of user and enter their details. There might be multiple steps in the **Add user** dialog box depending on the type of user. When you're done, click **Complete** ![Check icon](images/check-icon.png) or **OK**.

5.  Continue to add users. They will now appear in the **Users** section of the **Windows ATP Service** application. You must assign the user a role before they can access the [Windows Defender ATP portal](https://securitycenter.windows.com/).

## The Windows Defender ATP app doesn't appear in the Azure Management Portal
If you remove access for all users to the Windows ATP Service application (by clicking Manage access), you will not see the application in the list of applications in your directory in the [Azure Management Portal](https://manage.windowsazure.com/).

Log in to the application in the Azure Management Portal again:

1.  Sign in to the [Windows Defender ATP portal](https://securitycenter.windows.com/) with the user account you want to give access to.

2.  Confirm that you have signed in with the correct details, and click **Accept**.

3.  Go to the [Azure Management Portal](https://manage.windowsazure.com/) and navigate to your directory. You will see the **Windows ATP Service** application in the **Applications** section again.

-->

## Related topics
- [Windows Defender ATP service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-defender-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-defender-advanced-threat-protection.md)
