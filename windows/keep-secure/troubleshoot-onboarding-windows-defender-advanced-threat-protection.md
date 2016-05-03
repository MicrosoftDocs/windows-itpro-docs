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

2.  Enter the following command and press the **Enter** key.

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

    a. Click **Start** and type **services**. Press the **Enter key** to open the console.

2.  Scroll through the list of services until you find **Connected User Experiences and Telemetry**. 

3.  Check the **Startup type** column - the service should be set as **Automatic**.


If the service is not set for automatic startup, you will need to set it.

**Set the service to automatically start:**  <span style="background-color:yellow;">Naama: Should we also include instructions for doing this in the services console? I can write that up.</span>

1.  Open an elevated command-line prompt on the endpoint:

    a.  Click **Start** and type **cmd**.

    b.  Right-click **Command prompt** and select **Run as administrator**.

    ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

2.  Enter the folowing command and press the **Enter** key.

    ```
    sc config diagtrack start=auto
    ```

3.  You will receive a success message. Confirm the change by typing **```sc qc query diagtrack```** and press the **Enter** key.

4.  Now attempt to [onboard the endpoint](onboard-configure-windows-defender-advanced-threat-protection.md#onboard-endpoints-and-set-up-the-windows-defender-atp-user-access).

For more information about the telemetry service used in Windows 10, see **Manage your telemetry settings** at the [Configure telemetry and other settings in your organization](https://technet.microsoft.com/itpro/windows/manage/disconnect-your-organization-from-microsoft#bkmk-utc) topic.

## Configure proxy and Internet connectivity

The endpoints must be able to connect to the Internet and send their data outside of your organization's network. You might need to set additional proxy configurations to ensure endpoints can report correctly.

If endpoints in your network use manual or specific proxy configurations to connect to the Internet, you may need to configure the Windows telemetry service on the endpoint to recognise your customized proxy configurations.

You can use GP to make the changes for a large number of endpoints (or across your entire organization), or make manual registry changes if you just need to configure a few endpoints individually.

**Use GP to configure the proxy with the Windows telemetry service:**

1.  Open the [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx), right-click the GPO you want to configure, and click **Edit**.

2.  In the **Group Policy Management Editor**, go to **Computer configuration**.

3.  Click **Policies**, then **Administrative templates**.

4.  Click **Windows components** and then **Data Collection and Preview Builds**.

5.  Click **Configure connected user experiences and telemetry** and then
    configure the GP. The GP accepts a string in the format ```<server name or IP>:<port>```.

**Make changes to the registry to configure the proxy with the Windows telemetry service:**

1.  Open your preferred registry editing tool. You can use Windows Registry Editor by opening the **Start menu**, typing **regedit** and pressing **Enter**.

2.  Navigate to the **HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection** registry key.

3.  Right-click the key and click **New** and **String Value**. Type **TelemetryProxyServer* and press **Enter**.

4.  Double click the **TelemetryProxyServer** entry and enter the proxy server you want to allow in the format ```<server name or IP>:<port>```. <span style="background-color:yellow;">Naama: Please confirm this is all correct.</span>

In some cases, you may need to configure your firewall to ensure the Windows Defender ATP service can connect to our processing servers. The URLs for the servers depend on the datacenter location you chose during service onboarding.

If you chose the US as your datacenter, you will need to allow the following URLs: 

- https://us.vortex-win.data.microsoft.com/collect/v1
- https://sevillegwcus.microsoft.com
- https://sevillegweus.microsoft.com
- https://psapp.microsoft.com/PSApp/SubmissionFEService

If you chose the EU as your datacenter, you will need to allow the following URLs:

- https://eu.vortex-win.data.microsoft.com/collect/v1
- https://sevillegwweu.microsoft.com
- https://sevillegwneu.microsoft.com
- https://psappeu.microsoft.com/PSApp/SubmissionFEService




## Review errors on endpoints with Event Viewer

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/en-US/library/aa745633(v=bts.10).aspx) on individual endpoints, or check the status of machines from the [Windows Defender ATP portal](https://seville.windows.com/).

For example, if endpoints are not appearing in the **Machines view** list, you might need to look for event IDs on the endpoints.

> **Note**&nbsp;&nbsp; It can take several days for endpoints to begin reporting to the Windows Defender ATP service.

1.  Click **Start** and type **Event Viewer**.

2.  In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
    open the log.

    > **Note**&nbsp;&nbsp; SENSE is the internal name used to refer to the behavioral sensor that powers Windows Defender ATP.

3.  Events recorded by the service will appear in the log. See following table for a list of events recorded by the service.

Error ID|Message|Description|Action
:---|:---|:---|:---
1|Windows Advanced Threat Protection service started (Version ```variable```).|Occurs during system start up, shut down, and during onbboarding.|Normal operating notification; no action required.
2|Windows Advanced Threat Protection service shutdown.|Occurs when the endpoint is shut down or offboarded.|Normal operating notification; no action required.
3|Windows Advanced Threat Protection service failed to start. Failure code: ```variable```|Service did not start.|Review other messages to determine possible cause and troubleshooting steps.
4|Windows Advanced Threat Protection service contacted the server at ```variable```.|variable = URL of the Windows Defender ATP processing servers. <br />This URL will match that seen in the Firewall or network activity.|Normal operating notification; no action required.
5|Windows Advanced Threat Protection service failed to connect to the server at ```variable```.|variable = URL of the Windows Defender ATP processing servers. <br />The service could not contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](#configure-proxy-and-Internet-connectivity).
6|Windows Advanced Threat Protection service is not onboarded and no onboarding parameters were found.|The endpoint did not onboard correctly and will not be reporting to the portal.|Onboarding must be run before starting the service.  <br />Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md).
7|Windows Advanced Threat Protection service failed to read the onboarding parameters. Failure code: ```variable```|The endpoint did not onboard correctly and will not be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
8|Windows Advanced Threat Protection service failed to clean its configuration. Failure code: ```variable```|The endpoint did not onboard correctly and will not be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
9|Windows Advanced Threat Protection service failed to change its start type. Failure code: ```variable```|The endpoint did not onboard correctly and will not be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
10|Windows Advanced Threat Protection service failed to persist the onboarding information. Failure code: ```variable```|The endpoint did not onboard correctly and will not be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
11|Windows Advanced Threat Protection service completed.|The endpoint onboarded correctly.|Normal operating notification; no action required. <br />It may take several hours for the endpoint to appear in the portal.
12|Windows Advanced Threat Protection failed to apply the default configuration.|Service was unable to apply configuration from the processing servers.|This is a server error and should resolve after a short period.
13|Service machine ID calculated: ```variable```|Normal operating process.|Normal operating notification; no action required.
14|Service cannot calculate machine ID. Failure code: ```variable```|Internal error.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
15|Windows Advanced Threat Protection cannot start command channel with URL: ```variable```|variable = URL of the Windows Defender ATP processing servers.  <br />The service could not contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](#configure-proxy-and-Internet-connectivity).
17|Windows Advanced Threat Protection service failed to change the Connected User Experiences and Telemetry service location. Failure code: ```variable```|An error occurred with the Windows telemetry service.|[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled) <br />Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
18|OOBE (Windows Welcome) is completed.|Service will only start after any Windows updates have finished installing. <br />Normal operating notification; no action required.
19|OOBE (Windows Welcome) has not yet completed.|Service will only start after any Windows updates have finished installing. <br />Normal operating notification; no action required. <br />If this error persists after a system restart, ensure all Windows updates have full installed.
20|Cannot wait for OOBE (Windows Welcome) to complete. Failure code: ```variable```|Internal error. <br />If this error persists after a system restart, ensure all Windows updates have full installed.
25|Windows Advanced Threat Protection service failed to reset health status in the registry, causing the onboarding process to fail. Failure code: ```variable```|The endpoint did not onboard correctly and will not be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
26|Windows Advanced Threat Protection service failed to set the onboarding status in the registry. Failure code: ```variable```|The endpoint did not onboard correctly. <br />It will report to the portal, however the service may not appear as registered in SCCM or the registry.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
27|Windows Advanced Threat Protection service failed to enable SENSE aware mode in Windows Defender. Onboarding process failed. Failure code: ```variable```|Normally, Windows Defender will enter a special passive state if another real-time antimalware product is running properly on the endpoint, and the endpoint is reporting to Windows Defender ATP.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md) <br />Ensure real-time antimalware protection is running properly.
28|Windows Advanced Threat Protection Connected User Experiences and Telemetry service registration failed. Failure code: ```variable```|An error occurred with the Windows telemetry service.|[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled). <br />Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
29|Windows Advanced Threat Protection service failed to read the offboarding parameters. Failure code: ```variable```|<span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span>
30|Windows Advanced Threat Protection service failed to disable SENSE aware mode in Windows Defender. Failure code: ```variable```|Normally, Windows Defender will enter a special passive state if another real-time antimalware product is running properly on the endpoint, and the endpoint is reporting to Windows Defender ATP.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md) <br />Ensure real-time antimalware protection is running properly.
31|Windows Advanced Threat Protection Connected User Experiences and Telemetry service unregistration failed. Failure code: ```variable```|An error occurred with the Windows telemetry service.|[Check for errors with the Windows telemetry service](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled).
32|Windows Advanced Threat Protection service failed to request to stop itself after offboarding process. Failure code: ```variable```|<span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span>
33|Windows Advanced Threat Protection service failed to persist SENSE GUID. Failure code: ```variable```|A unique identifier is used to represent each endpoint that is reporting to the portal. <br />If the identifier does not persist, the same machine might appear twice in the portal. <br />Check registry permissions on the endpoint to ensure the service can update the registry.
34|Windows Advanced Threat Protection service failed to add itself as a dependency on the Connected User Experiences and Telemetry service, causing onboarding process to fail. Failure code: ```variable```|An error occurred with the Windows telemetry service.|[Ensure the telemetry service is enabled](#ensure-that-the-telemetry-and-diagnostics-service-is-enabled). <br />Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages.  <br />See [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
35|Windows Advanced Threat Protection service failed to remove itself as a dependency on the Connected User Experiences and Telemetry service. Failure code: ```variable```|<span style="background-color:yellow;">Naama: Should I remove this error? Or just leave it as internal?</span>



## Related topics
- [Windows Defender ATP service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-defender-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-defender-advanced-threat-protection.md)

