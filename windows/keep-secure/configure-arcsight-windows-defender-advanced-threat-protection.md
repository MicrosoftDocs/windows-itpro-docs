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
---

# Configure HP ArcSight to consume Windows Defender ATP alerts

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You'll need to configure HP ArcSight so that it can consume Windows Defender ATP alerts.

## Before you begin

- Get the following information from your Azure Active Directory (AAD) application:
    - OAuth 2 Token refresh URL
    - OAuth 2 Client ID
    - OAuth 2 Client secret
- Create your OAUth 2 Client properties file or get it from your Windows Defender ATP contact. For more information, see  I NEED URL FOR THE HYPERLINK HERE TO WHERE YOU GOT THE ARCSIGHT DEVELOPER'S GUIDE PDF.
- Get the *wdatp-connector.properties* file from your Windows Defender ATP contact. This file is used to parse the information from Windows Defender ATP to HP ArcSight consumable format.
- Install the HP ArcSight REST FlexConnector package on a server that has access to the Internet. (RONEN - MAY I HAVE THE LINK FROM WHERE CUSTOMERS CAN DOWNLOAD THE PACKAGE)
- Contact the Windows Defender ATP team to provide you your refresh token or follow the steps in the section "Run restutil to Obtain a Refresh Token for Connector Appliance/ArcSight Management Center" in _______ NEED LINK TO THE PDF AGAIN HERE.

## Configure HP ArcSight
The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin)

1. Copy the *wdatp-connector.jsonparser.properties* file into the `<root>\current\user\agent\flexagent` folder of the connector installation folder.

2. Save the *wdatp-connector.properties* file into a folder of your choosing.

3. Open an elevated command-line:

    a. Go to **Start** and type **cmd**.

    b. Right-click **Command prompt** and select **Run as administrator**.

4. Enter the following command and press **Enter**: ```runagentsetup.bat```. The Connector Setup pop-up window appears.

5. In the form fill in the following required fields with these values:

Field | Value
:---|:---
Configuration File | Type in the name of the client property file. It must match the client property file.
Events URL | `https://DataAccess-PRD.trafficmanager.net:444/api/alerts`
Authentication Type | OAuth 2
OAuth 2 Client Properties File | Select *wdatp-connector.properties*.
Refresh Token | Paste the refresh token that your Windows Defender ATP contact provided, or you the one you get after running the `restutil` tool.

All other values in the form are optional and can be left blank.

6. Select **Next**, then **Save**.

7. Run the connector. You can choose to run in service mode or application mode. RONEN - Should this be Service mode or Application mode (capitalized S and capitalized A?)

8. In the HP ArcSight console, create a **Windows Defender ATP** channel with an intervals and properties suitable to your enterprise needs.  

## Related topics
- [Configure security information and events management (SIEM) tools to consume alerts](configure-siem-windows-defender-advanced-threat-protection.md)
- [Configure Azure Active Directory application for SIEM integration](configure-aad-windows-defender-advanced-threat-protection.md)
- [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
