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

You'll need to configure HP ArcSight so that it can consume Windows Defender ATP alerts.

## Before you begin

- Get the following information from your Azure Active Directory (AAD) application by selecting **View Endpoint** on the application configuration page:
    - OAuth 2 Token refresh URL
    - OAuth 2 Client ID
    - OAuth 2 Client secret
- Download the [WDATP-connector.properties](http://download.microsoft.com/download/3/9/C/39C703C2-487C-4C3E-AFD8-14C2253C2F12/WDATP-connector.properties) file and update the following values:

  - **client_ID**: OAuth 2 Client ID
  - **client_secret**: OAuth 2 Client secret
  - **auth_url**:  ```https://login.microsoftonline.com/<tenantID>?resource=https%3A%2F%2FWDATPAlertExport.Seville.onmicrosoft.com ```

    >[!NOTE]
    >Replace *tenantID* with your tenant ID.

  - **token_url**: `https://login.microsoftonline.com/<tenantID>/oauth2/token`

    >[!NOTE]
    >Replace the *tenantID* value with your tenant ID.

  - **redirect_uri**: ```https://localhost:44300/wdatpconnector```
  - **scope**: Leave the value blank

- Download the [WDATP-connector.jsonparser.properties](http://download.microsoft.com/download/0/8/A/08A4957D-0923-4353-B25F-395EAE363E8C/WDATP-connector.jsonparser.properties) file. This file is used to parse the information from Windows Defender ATP to HP ArcSight consumable format.
- Install the HP ArcSight REST FlexConnector package. You can find this in the HPE Software center. Install the package on a server that has access to the Internet.

## Configure HP ArcSight
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin). For more information, see the ArcSight FlexConnector Developer's guide.

1. Save the [WDATP-connector.jsonparser.properties file](http://download.microsoft.com/download/0/8/A/08A4957D-0923-4353-B25F-395EAE363E8C/WDATP-connector.jsonparser.properties) file into the connector installation folder. 

2. Save the [WDATP-connector.properties](http://download.microsoft.com/download/3/9/C/39C703C2-487C-4C3E-AFD8-14C2253C2F12/WDATP-connector.properties) file into the `<root>\current\user\agent\flexagent` folder of the connector installation folder.

3. Open an elevated command-line:

    a. Go to **Start** and type **cmd**.

    b. Right-click **Command prompt** and select **Run as administrator**.

4. Enter the following command and press **Enter**: ```runagentsetup.bat```. The Connector Setup pop-up window appears.

5. In the form fill in the following required fields with these values:
    >[!NOTE]
    >All other values in the form are optional and can be left blank.

    <table>
    <tbody style="vertical-align:top;">
    <tr>
    <th>Field</th>
    <th>Value</th>
    </tr>
    <tr>
    <td>Configuration File</td>
    <td>Type in the name of the client property file. It must match the client property file.</td>
    </tr>
    <td>Events URL</td>
    <td>Depending on the location of your datacenter, select either the EU or the US URL: </br></br> **For EU**:  https://<i></i>wdatp-alertexporter-eu.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME
 </br>**For US:** https://<i></i>wdatp-alertexporter-us.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME</td>
    <tr>
    <td>Authentication Type</td>
    <td>OAuth 2</td>
    </tr>
    <td>OAuth 2 Client Properties file</td>
    <td>Select *wdatp-connector.properties*.</td>
    <tr>
    <td>Refresh Token</td>
    <td>You can use the Windows Defender ATP events URL or the restutil tool to get obtain a refresh token. <br> For more information on getting your refresh token using the events URL, see [Obtain a refresh token](configure-aad-windows-defender-advanced-threat-protection.md#obtain-a-refresh-token). </br> </br>**To get your refresh token using the restutil tool:** </br> a. Open a command prompt. Navigate to `C:\ArcSightSmartConnectors\<descriptive_name>\current\bin`. </br></br> b. Type: `arcsight restutil token -config C:\ArcSightSmartConnectors_Prod\WDATP\WDATP-connector.properties`. A Web browser window will open. </br> </br>c. Type in your credentials then click on the password field to let the page redirect. In the login prompt, enter your credentials. </br> </br>d.	A refresh token is shown in the command prompt. </br></br> e. Paste the value in the form.
    </td>
    </tr>
    </tr>
    </table>
6. Select **Next**, then **Save**.

7. Run the connector. You can choose to run in Service mode or Application mode.

8. In the HP ArcSight console, create a **Windows Defender ATP** channel with intervals and properties suitable to your enterprise needs. Windows Defender ATP alerts will appear as discrete events, with “Microsoft” as the vendor and “Windows Defender ATP” as the device name.  

## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
