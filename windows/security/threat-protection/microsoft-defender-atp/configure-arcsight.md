---
title: Configure HP ArcSight to pull Microsoft Defender ATP alerts
description: Configure HP ArcSight to receive and pull alerts from Microsoft Defender Security Center
keywords: configure hp arcsight, security information and events management tools, arcsight
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
ms.date: 12/20/2018
---

# Configure HP ArcSight to pull Microsoft Defender ATP alerts

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configurearcsight-abovefoldlink) 

You'll need to install and configure some files and tools to use HP ArcSight so that it can pull Microsoft Defender ATP alerts.

## Before you begin
Configuring the HP ArcSight Connector tool requires several configuration files for it to pull and parse alerts from your Azure Active Directory (AAD) application.

This section guides you in getting the necessary information to set and use the required configuration files correctly.

- Make sure you have enabled the SIEM integration feature from the **Settings** menu. For more information, see [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md).

- Have the file you saved from enabling the SIEM integration feature ready. You'll need to get the following values:
  - OAuth 2.0 Token refresh URL
  - OAuth 2.0 Client ID
  - OAuth 2.0 Client secret

- Have the following configuration files ready:
  - WDATP-connector.properties
  - WDATP-connector.jsonparser.properties

    You would have saved a .zip file which contains these two files when you chose HP ArcSight as the SIEM type you use in your organization.

- Make sure you generate the following tokens and have them ready:
  - Access token
  - Refresh token

  You can generate these tokens from the **SIEM integration** setup section of the portal.

## Install and configure HP ArcSight FlexConnector
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin).

1. Install the latest 32-bit Windows FlexConnector installer. You can find this in the HPE Software center. The tool is typically installed in the following default location: `C:\Program Files\ArcSightFlexConnectors\current\bin`.</br></br>You can choose where to save the tool, for example C:\\*folder_location*\current\bin where *folder_location* represents the installation location.

2. Follow the installation wizard through the following tasks:
   - Introduction
   - Choose Install Folder
   - Choose Install Set
   - Choose Shortcut Folder
   - Pre-Installation Summary
   - Installing...

   You can keep the default values for each of these tasks or modify the selection to suit your requirements.

3. Open File Explorer and locate the two configuration files you saved when you enabled the SIEM integration feature. Put the two files in the FlexConnector installation location, for example:

   - WDATP-connector.jsonparser.properties: C:\\*folder_location*\current\user\agent\flexagent\

   - WDATP-connector.properties: C:\\*folder_location*\current\user\agent\flexagent\

   NOTE:
   You must put the configuration files in this location, where *folder_location* represents the location where you installed the tool.

4. After the installation of the core connector completes, the Connector Setup window opens. In the Connector Setup window, select **Add a Connector**.

5. Select Type: **ArcSight FlexConnector REST** and click **Next**.

6. Type the following information in the parameter details form. All other values in the form are optional and can be left blank.

   <table>
    <tbody style="vertical-align:top;">
    <tr>
    <th>Field</th>
    <th>Value</th>
    </tr>
    <tr>
    <td>Configuration File</td>
    <td>Type in the name of the client property file. The name must match the file provided in the .zip that you downloaded.
    For example, if the configuration file in &quot;flexagent&quot; directory is named &quot;WDATP-Connector.jsonparser.properties&quot;, you must type &quot;WDATP-Connector&quot; as the name of the client property file.</td>
    </tr>
    <td>Events URL</td>
    <td>Depending on the location of your datacenter, select either the EU or the US URL: </br></br> <strong>For EU</strong>:  https://<i></i>wdatp-alertexporter-eu.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME <br>
   </br><strong>For US:</strong> https://<i></i>wdatp-alertexporter-us.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME <br> <br> <strong>For UK</strong>:  https://<i></i>wdatp-alertexporter-uk.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME</td>
    <tr>
    <td>Authentication Type</td>
    <td>OAuth 2</td>
    </tr>
    <td>OAuth 2 Client Properties file</td>
    <td>Browse to the location of the <em>wdatp-connector.properties</em> file. The name must match the file provided in the .zip that you downloaded.</td>
    <tr>
    <td>Refresh Token</td>
    <td>You can obtain a refresh token in two ways: by generating a refresh token from the <strong>SIEM settings</strong> page or using the restutil tool. <br><br> For more information on generating a refresh token from the <strong>Preferences setup</strong> , see <a href="enable-siem-integration.md" data-raw-source="[Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)">Enable SIEM integration in Microsoft Defender ATP</a>. </br> </br><strong>Get your refresh token using the restutil tool:</strong> </br> a. Open a command prompt. Navigate to C:\<em>folder_location</em>\current\bin where <em>folder_location</em> represents the location where you installed the tool. </br></br> b. Type: <code>arcsight restutil token -config</code> from the bin directory.For example: <strong>arcsight restutil boxtoken -proxy proxy.location.hp.com:8080</strong> A Web browser window will open. </br> </br>c. Type in your credentials then click on the password field to let the page redirect. In the login prompt, enter your credentials. </br> </br>d. A refresh token is shown in the command prompt. </br></br> e. Copy and paste it into the <strong>Refresh Token</strong> field.
    </td>
    </tr>
    </tr>
    </table><br/>7. A browser window is opened by the connector. Login with your application credentials. After you log in, you&#39;ll be asked to give permission to your OAuth2 Client. You must give permission to your OAuth 2 Client so that the connector configuration can authenticate. </br></br>
   If the <code>redirect_uri</code> is a https URL, you&#39;ll be redirected to a URL on the local host. You&#39;ll see a page that requests for you to trust the certificate supplied by the connector running on the local host. You&#39;ll need to trust this certificate if the redirect_uri is a https. </br></br> If however you specify a http URL for the redirect_uri, you do not need to provide consent in trusting the certificate.

7. Continue with the connector setup by returning to the HP ArcSight Connector Setup window.

8. Select the **ArcSight Manager (encrypted)** as the destination and click **Next**.

9. Type in the destination IP/hostname in **Manager Hostname** and your credentials in the parameters form. All other values in the form should be retained with the default values. Click **Next**.

10. Type in a name for the connector in the connector details form. All other values in the form are optional and can be left blank. Click **Next**.

11. The ESM Manager import certificate window is shown. Select **Import the certificate to connector from destination** and click **Next**. The **Add connector Summary** window is displayed and the certificate is imported.

12. Verify that the details in the **Add connector Summary** window is correct, then click **Next**.

13. Select **Install as a service** and click **Next**.

14. Type a name in the **Service Internal Name** field. All other values in the form can be retained with the default values or left blank . Click **Next**.

15. Type in the service parameters and click **Next**. A window with the **Install Service Summary** is shown. Click **Next**.

16. Finish the installation by selecting **Exit** and **Next**.

## Install and configure the HP ArcSight console
1. Follow the installation wizard through the following tasks:
   - Introduction
   - License Agreement
   - Special Notice
   - Choose ArcSight installation directory
   - Choose Shortcut Folder
   - Pre-Installation Summary

2. Click **Install**. After the installation completes, the ArcSight Console Configuration Wizard opens.

3. Type localhost in **Manager Host Name** and 8443 in **Manager Port** then click **Next**.

4. Select **Use direct connection**, then click **Next**.

5. Select **Password Based Authentication**, then click **Next**.

6. Select **This is a single user installation. (Recommended)**, then click **Next**.

7. Click **Done** to quit the installer.

8. Login to the HP ArcSight console.

9. Navigate to **Active channel set** > **New Condition** > **Device** > **Device Product**.

10. Set **Device Product = Microsoft Defender ATP**. When you've verified that events are flowing to the tool, stop the process again and go to Windows Services and start the ArcSight FlexConnector REST.

You can now run queries in the HP ArcSight console.

Microsoft Defender ATP alerts will appear as discrete events, with "Microsoft” as the vendor and “Windows Defender ATP” as the device name.


## Troubleshooting HP ArcSight connection
**Problem:** Failed to refresh the token. You can find the log located in C:\\*folder_location*\current\logs where *folder_location* represents the location where you installed the tool. Open _agent.log_ and look for `ERROR/FATAL/WARN`.

**Symptom:** You get the following error message:

`Failed to refresh the token. Set reauthenticate to true: com.arcsight.common.al.e: Failed to refresh access token: status=HTTP/1.1 400 Bad Request FATAL EXCEPTION: Could not refresh the access token`

**Solution:**
1. Stop the process by clicking Ctrl + C on the Connector window. Click **Y** when asked "Terminate batch job Y/N?".
2. Navigate to the folder where you stored the WDATP-connector.properties file and edit it to add the following value:
   `reauthenticate=true`.

3. Restart the connector by running the following command: `arcsight.bat connectors`.

   A browser window appears. Allow it to run, it should disappear, and the connector should now be running.

> [!NOTE]
> Verify that the connector is running by stopping the process again. Then start the connector again, and no browser window should appear.

## Related topics
- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- [Configure Splunk to pull Microsoft Defender ATP alerts](configure-splunk.md)
- [Pull Microsoft Defender ATP alerts using REST API](pull-alerts-using-rest-api.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
