---
title: Configure HP ArcSight to consume Windows Defender ATP alerts
description: Configure HP ArcSight to receive and consume alerts from the Windows Defender ATP portal.
keywords: configure hp arcsight, security information and events management tools, arcsight
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Configure HP ArcSight to consume Windows Defender ATP alerts

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You'll need to install and configure some files and tools to use HP ArcSight so that it can consume Windows Defender ATP alerts.

## Before you begin
Configuring the HP ArcSight Connector tool requires several configuration files for it to consume and parse alerts from your Azure Active Directory (AAD) application.

This section guides you in getting the necessary information to set and use the required configuration files correctly.

1. Get the following information from your AAD application by selecting the **View Endpoint** on the application configuration page:
    - OAuth 2.0 Token refresh URL
    - OAuth 2.0 Client ID
    - OAuth 2.0 Client secret

2. Download the [WDATP-connector.properties](http://download.microsoft.com/download/3/9/C/39C703C2-487C-4C3E-AFD8-14C2253C2F12/WDATP-connector.properties) file and update the following values:

  - **client_ID**: OAuth 2 Client ID
  - **client_secret**: OAuth 2 Client secret
  - **auth_url**:  https://<span></span>login.microsoftonline.com/_tenantID_?resource=https%3A%2F%2FWDATPAlertExport.Seville.onmicrosoft.com

    >!NOTE
    >Replace *tenantID* with your tenant ID.

  - **token_url**: https://<span></span>login.microsoftonline.com/_tenantID_/oauth2/token

    >!NOTE
    >Replace the *tenantID* value with your tenant ID.

  - **redirect_uri**: https://<span></span>localhost:44300/wdatpconnector
  - **scope**: Leave the value blank
  - **reauthenticate**: Set to `true`

3. Download the [WDATP-connector.jsonparser.properties](http://download.microsoft.com/download/0/8/A/08A4957D-0923-4353-B25F-395EAE363E8C/WDATP-connector.jsonparser.properties) file. This file is used to parse the information from Windows Defender ATP to HP ArcSight consumable format.

## Install and configure HP ArcSight SmartConnector
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin).

1. Install the latest 32-bit Windows SmartConnector installer. You can find this in the HPE Software center. The tool is typically installed in the following default location: `C:\Program Files\ArcSightSmartConnectors\current\bin`.</br></br>You can choose where to save the tool, for example C:\\*folder_location*\current\bin where *folder_location* represents the installation location.

2. Follow the installation wizard through the following tasks:
  - Introduction
  - Choose Install Folder
  - Choose Install Set
  - Choose Shortcut Folder
  - Pre-Installation Summary
  - Installing...

  You can keep the default values for each of these tasks or modify the selection to suit your requirements.

3. Open File Explorer and put the two configuration files in the installation location, for example:

  - WDATP-connector.jsonparser.properties: C:\\*folder_location*\current\user\agent\flexagent\

  - WDATP-connector.properties: C:\\*folder_location*\current\user\agent\flexagent\

  >[!NOTE]
  >You must put the configuration files in this location, where *folder_location* represents the location where you installed the tool. 
4. After the installation of the core connector completes, the Connector Setup window opens. In the Connector Setup window, select **Add a Connector**.

5. Select Type: **ArcSight FlexConnector REST** and click **Next**.

6.	Type the following information in the parameter details form. All other values in the form are optional and can be left blank.


  Field	| Value
  :---|:---
  Configuration File | Type in the name of the client property file. It must match the client property file. </br></br> For example, if the configuration file in "flexagent" directory is named "WDATP-Connector.jsonparser.properties", the field must be names as the suffix which is "WDATP-Connector".
  Events URL | Depending on the location of your datacenter, select either the EU or the US URL: </br></br> **For EU**: `https://wdatp-alertexporter-eu.securitycenter.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME` </br></br>**For US**: `https://wdatp-alertexporter-us.securitycenter.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME`
  Authentication Type |	OAuth 2
  OAuth 2 Client Properties file	| Browse to the location of the wdatp-connector.properties file.
  Refresh Token	| Use either the Windows Defender ATP token URL or the restutil tool to obtain your refresh token. For more information, see see [Obtain a refresh token](configure-aad-windows-defender-advanced-threat-protection.md#obtain-a-refresh-token). </br> </br> **Get your refresh token using the restutil tool:** </br> a. Open a command prompt. Navigate to `C:\Program Files\ArcSightSmartConnectors\current\bin`. </br> b. Type: `arcsight restutil token -config C:\ArcSightSmartConnectors_Prod\WDATP\WDATP-connector.properties`. A Web browser window will open. </br> c. A web browser will open. Type in your credentials then click on the password field to let the page redirect. In the login prompt, enter your credentials. </br> d.	A refresh token is provided in the command prompt. </br> e. Copy and paste it into the **Refresh Token** field.

7. A browser window is opened by the connector. Login with your application credentials. After you log in, you'll be asked to give permission to your OAuth2 Client. You must give permission to your OAuth 2 Client so that the connector configuration can authenticate. </br></br>
If the `redirect_uri` is a https URL, you'll be redirected to a URL on the local host. You'll see a page that requests for you to trust the certificate supplied by the connector running on the local host. You'll need to trust this certificate if the redirec_uri is a https. </br></br> If however you specify a http URL for the redirect_uri, you do not need to provide consent in trusting the certificate.

8. Continue with the connector setup by returning to the HP ArchSight Connector Setup window.

9. Select the **ArchSight Manager (encrypted)** as the destination and click **Next**.

10. Type in the destination IP/hostname in **Manager Hostname** and your credentials in the parameters form. All other values in the form should be retained with the default values. Click **Next**.

11. Type in a name for the connector in the connector details form. All other values in the form are optional and can be left blank. Click **Next**.

11.	The ESM Manager import certificate window is shown. Select **Import the certificate to connector from destination** and click **Next**. The **Add connector Summary** window is displayed and the certificate is imported.

12. Verify that the details in the **Add connector Summary** window is correct, then click **Next**.

13. Select **Install as a service** and click **Next**.

14.	Type a name in the **Service Internal Name** field. All other values in the form can be retained with the default values or left blank . Click **Next**.

13.	Type in the service parameters and click **Next**. A window with the **Install Service Summary** is shown. Click **Next**.

14. Finish the installation by selecting **Exit** and **Next**.

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

9. Navigate to **Active channel set** > **New Condition** > **Device**
> **Device Product**.

10. Set **Device Product = Windows Defender ATP**. When you've verified that events are flowing, stop the process again and go to Windows Services and start the ArcSight FlexConnector REST.

You can now run queries in the HP ArcSight console.

Windows Defender ATP alerts will appear as discrete events, with "Microsoft” as the vendor and “Windows Defender ATP” as the device name.


## Troubleshooting HP ArcSight connection
**Problem:** Failed to refresh the token. You can find the log located in `C:Program Files\ArcSightSmartConnectors\current\logs (default path)`. The log called _agent.log_. Open the log and look for `ERROR/FATAL/WARN`.

**Symptom:** You get the following error message:

`Failed to refresh the token. Set reauthenticate to true: com.arcsight.common.al.e: Failed to refresh access token: status=HTTP/1.1 400 Bad Request FATAL EXCEPTION: Could not refresh the access token`

**Solution:**
1. Stop the process by clicking Ctrl + C on the Connector window. Click **Y** when asked "Terminate batch job Y/N?".
2. Edit the properties file: `C:\ArcSightSmartConnectors_Prod\<descriptive_name>\WDATP-connector.properties` and add the following value:
`reauthenticate=true`.

3. Restart the connector by running the following command: `arcsight.bat connectors`.

  A browser window appears. Allow it to run, it should disappear, and the connector should now be running.

  > [!NOTE]
  > Verify that the connector is running by stopping the process again. Then start the connector again, and no browser window should appear.

## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
