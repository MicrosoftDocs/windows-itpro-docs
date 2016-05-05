---
title: Troubleshoot Windows Defender ATP onboarding issues
description: Troubleshoot issues that might arise during the onboarding of endpoints or to the Windows Defender ATP service.
keywords: troubleshoot onboarding, onboarding issues, event viewer, azure management portal, data collection and preview builds
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: iaanw
---

# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the onboarding process if you encounter issues.

## Add users to an Azure Active Directory
If you don't see any users in the [Azure Management Portal](https://manage.windowsazure.com/) during the service onboarding stage, you might need to add users to the directory first.

1.  Go to the Azure Management Portal and select the directory you want to manage.

2.  Click **Users** from the top menu bar.

    ![Example Azure Management Portal organization](images/contoso-users.png)

3.  Click **Add user** from the menu bar at the bottom.

    ![Add user menu](images/add-user.png)

4.  Select the type of user and enter their details. There might be multiple steps in the **Add user** dialog box depending on the type of user. When you're done, click **Complete** ![Check icon](images/check-icon.png) or **OK**.

5.  Continue to add users. They will now appear in the **Users** section of the **Windows ATP Service** application. You must assign the user a role before they can access the [Windows Defender ATP portal](https://seville.windows.com/).

## Manage access for all users in Azure Active Directory
If you remove access for all users to the Windows ATP Service application (by clicking Manage access), you will not see the application in the list of applications in your directory in the [Azure Management Portal](https://manage.windowsazure.com/).

Log in to the application in the Azure Management Portal again:

1.  Sign in to the [Windows Defender ATP portal](https://seville.windows.com/) with the user account you want to give access to.

2.  Confirm that you have signed in with the correct details, and click **Accept**.

3.  Go to the [Azure Management Portal](https://manage.windowsazure.com/) and navigate to your directory. You will see the **Windows ATP Service** application in the **Applications** section again.

## Ensure that the telemetry and diagnostics service is enabled

If the endpoints aren't reporting correctly, you might need to check that the Windows 10 telemetry and diagnostics service is enabled on the endpoint. The service may have been disabled by other programs or user configuration changes.

There are two ways to check the startup type for the service: from the command line or in the services console.

**Check the startup type from the command line:**

1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

2.  Enter the following command and press **Enter**.

    ```
    sc qc query diagtrack
    ```

3.  If the service is enabled, it will be set to automatically start. The result should look like the following:

    ![Result of the sc query command for diagtrack](images/windefatp-sc-query.png)

    ```
    SERVICE_NAME: diagtrack
        TYPE               : 10  WIN32_OWN_PROCESS
        START_TYPE         : 2   AUTO_START
        ERROR_CONTROL      : 1   NORMAL
        BINARY_PATH_NAME   : C:\WINDOWS\System32\svchost.exe -k utcsvc
        LOAD_ORDER_GROUP   :
        TAG                : 0
        DISPLAY_NAME       : Connected User Experiences and Telemetry
        DEPENDENCIES       : RpcSs
        SERVICE_START_NAME : LocalSystem
    ```

**Check the startup type in the services console:**

1.  Open the services console:

    a. Click **Start** and type **services**. Press **Enter** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**. 

3.  Check the **Startup type** column - the service should be set as **Automatic**.


If the service is not set for automatic startup, you will need to set it.

**Set the service to automatically start:**  <span style="background-color:yellow;">Naama: Should we also include instructions for doing this in the services console? I can write that up.</span>

1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

2.  Enter the following command and press the **Enter**.

    ```
    sc config diagtrack start=auto
    ```

3.  You will receive a success message. Confirm the change by typing **```sc qc query diagtrack```** and press **Enter**.

4.  Now attempt to [onboard the endpoint](onboard-configure-windows-defender-advanced-threat-protection.md#onboard-endpoints-and-set-up-the-windows-defender-atp-user-access).

For more information about the telemetry service used in Windows 10, see **Manage your telemetry settings** at the [Configure telemetry and other settings in your organization](https://technet.microsoft.com/itpro/windows/manage/disconnect-your-organization-from-microsoft#bkmk-utc) topic.

## Configure proxy and Internet connectivity

The embedded Windows Defender ATP sensor runs in system context using the LocalSystem account. The sensor uses Microsoft Windows HTTP Services (WinHTTP) to enable communication with the Windows Defender ATP cloud service. This is considered as the appropriate method of communication this type of usage scenario.

The WinHTTP configuration setting is independent of the Windows Internet (WinINet) internet browsing proxy settings and can only discover a proxy server by using the following discovery methods:

- Configure Web Proxy Auto Detect (WPAD) settings in the environment and configure Windows to automatically detect the proxy server through Policy or the local Windows settings

- Configure the proxy server manually using Netsh

### Configure Web Proxy Auto Detect (WPAD) settings in the environment and configure Windows to automatically detect the proxy server through Policy or the local Windows settings

Enable the **Automatically detect settings** option in Windows Proxy settings so the WinHTTP can use the WPAD feature to locate a proxy server.

1. Click **Start** and select **Settings**.

2. Click **Network & Internet**.

3. Select **Proxy**.

4. Verify that the **Automatically detect settings** option is set to On.
![Image showing the proxy settings configuration page](images/proxy-settings.png)

5. If the **Use setup script** or **Manual proxy setup** options are enabled then you will need to [configure proxy settings manually by using Netsh](#configure-proxy-server-manually-using-netsh) method for WinHTTP to discover the appropriate proxy settings and connect.

### Configure proxy server manually using Netsh 

Use Netsh to configure the proxy settings if **Use setup script** or **Manual proxy setup** settings are configured in the Windows Proxy setting of the endpoint to enable connectivity. 

You can configure the endpoint by using any of these methods:

- Importing the configured proxy settings to WinHTTP
- Configuring the proxy settings manually to WinHTTP

After configuring the endpoints, you'll need to verify that the correct proxy settings were applied.

**Import the configured proxy settings to WinHTTP**

1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

 ```
 netsh winhttp import proxy source=ie
 ```
 
 An output showing the applied WinHTTP proxy settings is displayed.
 
 
 **Configure the proxy settings manually to WinHTTP**
 
 1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.
    
 2. Enter the following command and press **Enter**:
 
 ```
 proxy [proxy-server=] ProxyServerName:PortNumber
 ```
    Replace *ProxyServerName* with the fully qualified domain name of the proxy server. 
    
    Replace *PortNumber* with the port number that you want to configure the proxy server with.
    
 An output showing the applied WinHTTP proxy settings is displayed.
 

**Verify that the correct proxy settings were applied**
 
1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.
    
2. Enter the following command and press **Enter**:

```
netsh winhttp show proxy
```

For more information on how to use Netsh see, [https://technet.microsoft.com/en-us/library/cc731131(v=ws.10).aspx](https://technet.microsoft.com/en-us/library/cc731131(v=ws.10).aspx)     

## Enable access to Windows Defender ATP service URLs in the proxy server

If a proxy or firewall is blocking all traffic by default and allowing only specific domains through, make sure that the following URLs are white-listed to permit communication with WD ATP service in port 80 and 443:

- us.vortex-win.data.microsoft.com  
- eu.vortex-win.data.microsoft.com
- sevillegwcus.microsoft.com
- sevillegweus.microsoft.com
- sevillegwweu.microsoft.com
- sevillegwneu.microsoft.com
- www.microsoft.com
- crl.microsoft.com
- *.blob.core.windows.net

If a proxy or firewall is blocking anonymous traffic, as Windows Defender ATP  sensor is connecting from system context, make sure anonymous traffic is permitted to the above listed URLs.

## Verify client connectivity to Windows Defender ATP service URLs

Verify the proxy configuration was completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the WD ATP service URLs.

1. Download the connectivity verification tools to the PC where WD ATP sensor is running on:

    - [Download PsTools Suite](https://technet.microsoft.com/en-us/sysinternals/bb896649)
    - [Download PortQry Command Line Port Scanner Version 2.0 utility](https://www.microsoft.com/en-us/download/details.aspx?id=17148)
    
2. Extract the contents of PsTools and PortQry to a directory on the computer hard drive.

3.  Open an elevated command-line:
     
    a. Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.
    
4. Enter the following command and press **Enter**:
```
HardDrivePath\PsExec.exe -s cmd.exe
```

    Replace *HardDrivePath* with the path where the PsTools Suite was extracted to:
![Image showing the command line](images/psexec-cmd.png)

5. Enter the following command and press **Enter**:
```
HardDrivePath\portqry.exe -n us.vortex-win.data.microsoft.com -e 443 -p tcp
```
    Replace *HardDrivePath* with the path where the PortQry utility was extracted to:
    ![Image showing the command line](images/portqry.png)
    
6.	Verify that the output shows that the name is **resolved** and connection status is **listening**.

7. Repeat the same steps for the remaining URLs with the following arguments:

    - portqry.exe -n eu.vortex-win.data.microsoft.com -e 443 -p tcp
    - portqry.exe -n sevillegwcus.microsoft.com -e 443 -p tcp
    - portqry.exe -n sevillegweus.microsoft.com -e 443 -p tcp
    - portqry.exe -n sevillegwweu.microsoft.com -e 443 -p tcp
    - portqry.exe -n sevillegwneu.microsoft.com -e 443 -p tcp
    - portqry.exe -n www.microsoft.com -e 80 -p tcp
    - portqry.exe -n crl.microsoft.com -e 80 -p tcp

8. Verify that each URL shows that the name is **resolved** and connection status is **listening**.

If the any of the verifications indicate a fail, then verify that you have performed the proxy configuration steps to enable server discovery and access to the service URLs. 




## Review events and errors on endpoints with Event Viewer

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/en-US/library/aa745633(v=bts.10).aspx) on individual endpoints, or check the status of machines from the [Windows Defender ATP portal](https://seville.windows.com/).

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



## Related topics
- [Windows Defender ATP service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-defender-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-defender-advanced-threat-protection.md)

