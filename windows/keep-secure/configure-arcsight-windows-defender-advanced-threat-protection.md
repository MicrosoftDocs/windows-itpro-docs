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

1. Get the following information from your Azure Active Directory (AAD) application by selecting the **View Endpoint** on the application configuration page:
    - OAuth 2 Token refresh URL
    - OAuth 2 Client ID
    - OAuth 2 Client secret
2. Download the [wdatp-connector.properties](WDATP-connector.properties) file and update the values according to the following:

  - **client_ID**: OAuth 2 Client ID
  - **client_secret**: OAuth 2 Client secret
  - **auth_url**: Append the following to the value you obtained from the AAD app: ```?resource=https%3A%2F%2FWDATPAlertExport.Seville.onmicrosoft.com ```
  - **redirect_uri**: ```https://localhost:44300/wdatpconnector```
3. Download the [wdatp-connector.json.properties](wdatp-connector.json.properties) file. This file is used to parse the information from Windows Defender ATP to HP ArcSight consumable format.

## Install and configure HP ArcSight SmartConnector
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin).

1. Install the latest 32-bit Windows SmartConnector installer. how to get? JOEY: Hi Aviv, is it this one: https://marketplace.saas.hpe.com/arcsight/content/connector ?

2. Follow the on-screen instructions. The tool is typically installed in `C:\ArcSightSmartConnectors\<descriptive_name>\`.
>[!NOTE]
>Don't install icons.

3. Open File Explorer to the installation location and put the two configuration files the following location:

  - WDATP-connector.jsonparser.properties: `C:\ArcSightSmartConnectors\<descriptive_name>\current\user\agent\flexagent\`
  - WDATP-connector.properties: `C:\ArcSightSmartConnectors\<descriptive_name>\`

4. Select the ArcSight FlexConnector REST connector.
5. Generate a refresh token to use in the installer:

  a. Open a command prompt.  Browse to `C:\ArcSightSmartConnectors\<descriptive_name>\current\bin`

  b. Type: `arcsight restutil token -config C:\ArcSightSmartConnectors_Prod\WDATP\WDATP-connector.properties`
  A Web browser window will open.

  c.  Type in `<alias>@microsoft.com` then click on the password field to let the page redirect.

  d.	In the login prompt enter your `DOMAIN\alias` and your password. You will be redirected a couple of times. After providing permission to the App (JOEY: QUESTION: PERMISSION TO WHAT? ACCESS THE AAD APP?) A token is shown.

  f.	Save the token in a secure location.

  ----
  6.	In the form fill in the following required parameters with these values:
All other values in the form are optional and can be left blank.
Field	Value
Configuration File	Type in the name of the client property file. It must match the client property file.
Events URL	https://DataAccess-PRD.trafficmanager.net:444/api/alerts
Authentication Type	OAuth 2
OAuth 2 Client Properties file	Select wdatp-connector.properties.
Refresh Token	Paste the refresh token you generated in the previous steps.

7.	Destination: ArcSight Manager (encrypted)
8.	Connector details
9.			Name: WDATP
10.	Import the ESM certificate
11.	Install as a service
12.			Internal Name: WDATP
13.	Finish with the installer.  
Note:
The connector is not yet running, run manually for the first time to see any errors.
 From the cmd shell open, still in C:\ArcSightSmartConnectors\<descriptive_name>\current\bin, run: arcsight.bat connectors
If you see this error: Failed to refresh the token. Set reauthenticate to true: com.arcsight.common.al.e: Failed to refresh access token: status=HTTP/1.1 400 Bad Request FATAL EXCEPTION: Could not refresh the access token :
a) Kill the process (ctrl-c)
b) Edit C:\ArcSightSmartConnectors_Prod\<descriptive_name>\WDATP-connector.properties and add this:
reauthenticate=true
c) re-run the command line connector start: arcsight.bat connectors
d) A browser window should appear, allow it to run, it should disappear, and the connector should be now running.  
Note: To be sure kill the process again (ctrl-c), start again, and no browser window should appear
e) To verify events are flowing (a good filter initially is Device Product = Windows Defender ATP).  If so kill the process again and go to Windows Services and start the ArcSight FlexConnector REST for WDATP

## HP ArcSight
JOEY: what is this section going to talk about? Settings? 


## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
