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
  - **auth_url**:  ```https://login.microsoftonline.com/<tenantID>?resource=https%3A%2F%2FWDATPAlertExport.Seville.onmicrosoft.com ```

    >!NOTE
    >Replace *tenantID* with your tenant ID.

  - **token_url**: `https://login.microsoftonline.com/<tenantID>/oauth2/token`

    >!NOTE
    >Replace the *tenantID* value with your tenant ID.

  - **redirect_uri**: ```https://localhost:44300/wdatpconnector```
  - **scope**: Leave the value blank

3. Download the [WDATP-connector.jsonparser.properties](http://download.microsoft.com/download/0/8/A/08A4957D-0923-4353-B25F-395EAE363E8C/WDATP-connector.jsonparser.properties) file. This file is used to parse the information from Windows Defender ATP to HP ArcSight consumable format.

## Install and configure HP ArcSight SmartConnector
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin).

1. Install the latest 32-bit Windows SmartConnector installer. You can find this in the HPE Software center. The tool is typically installed in `C:\ArcSightSmartConnectors\<descriptive_name>\`.

  >!NOTE
  >Replace *descriptive_name* with your preferred location name.

2. Follow the installation wizard through the following tasks:
  - Introduction
  - Choose Install Folder
  - Choose Install Set
  - Choose Shortcut Folder
  - Pre-Installation Summary
  - Installing...

  You can keep the default values for each of these tasks.

3. Open File Explorer and put the two configuration files in the installation location, for example:

  - WDATP-connector.jsonparser.properties: `C:\ArcSightSmartConnectors\<descriptive_name>\current\user\agent\flexagent\`
  - WDATP-connector.properties: `C:\ArcSightSmartConnectors\<descriptive_name>\`

4. After the installation of the core connector completes, the Connector Setup window opens. In the Connector Setup window, select **Add a Connector**.

5. Select the **ArcSight FlexConnector REST** connector type and click **Next**.

6.	Type the following information in the parameter details form. All other values in the form are optional and can be left blank.


  Field	| Value
  :---|:---
  Configuration File | Type in the name of the client property file. It must match the client property file.
  Events URL |	https://DataAccess-PRD.trafficmanager.net:444/api/alerts
  Authentication Type |	OAuth 2
  OAuth 2 Client Properties file	| Select wdatp-connector.properties.
  Refresh Token	| Use either the Windows Defender ATP token URL or the restutil tool to obtain your refresh token. For more information, see JOEY ADD LINK HERE. </br> **Get your refresh token using the restutil tool:** </br> a. Open a command prompt. Navigate to `C:\ArcSightSmartConnectors\<descriptive_name>\current\bin`. </br> b. Type: `arcsight restutil token -config C:\ArcSightSmartConnectors_Prod\WDATP\WDATP-connector.properties`.A Web browser window will open. </br> c. A web browser will open. Type in your credentials then click on the password field to let the page redirect. In the login prompt, enter your credentials. </br> d.	A refresh token is provided in the command prompt.      
7. You can leave the destination parameter fields with the default values.
[JOEY: CHECK THE HP GUIDE AND YOUTUBE VIDEO ON HOW THE SCREENS FOR THE PRECEEDING STEPS]
Type in a name for the connector. You can leave the other fields blank.

7. Destination: ArcSight Manager (encrypted)
8.	Connector details
9.			Name: WDATP
10.	Import the ESM certificate
11.	Install as a service
12.			Internal Name: WDATP
13.	Finish with the installer.
14. Run the connector by running the following command from the installation directory, for example: ` C:\ArcSightSmartConnectors\<descriptive_name>\current\bin, run: arcsight.bat connectors`

15. Verify events are flowing by setting the initial filter to Device Product = Windows Defender ATP.  If so stop the process again and go to Windows Services and start the ArcSight FlexConnector REST.


## Run HP ArcSight queries [AVIV, SHOULD WE CALL IT QUERY?]
You can now run queries in the HP ArcSight console.

In the HP ArcSight console, create a Windows Defender ATP channel with intervals and properties suitable to your enterprise needs.

Windows Defender ATP alerts will appear as discrete events, with "Microsoft” as the vendor and “Windows Defender ATP” as the device name.


## Troubleshooting HP ArcSight connection
**Problem:** Failed to refresh the token.

**Symptom:** You get the following error message:

`Failed to refresh the token. Set reauthenticate to true: com.arcsight.common.al.e: Failed to refresh access token: status=HTTP/1.1 400 Bad Request FATAL EXCEPTION: Could not refresh the access token`

**Solution:**
1. Stop the process.
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
