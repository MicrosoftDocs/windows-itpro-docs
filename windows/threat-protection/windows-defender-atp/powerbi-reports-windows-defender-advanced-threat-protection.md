---
title: Create and build Power BI reports using Windows Defender ATP data
description: Get security insights by creating and building Power BI dashboards using data from Windows Defender ATP and other data sources.
keywords: preferences setup, power bi, power bi service, power bi desktop, reports, dashboards, connectors , security insights, mashup
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
ms.date: 10/17/2017
---
# Create and build Power BI reports using Windows Defender ATP data

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-powerbireports-abovefoldlink) 

Understand the security status of your organization, including the status of machines, alerts, and investigations using the Windows Defender ATP reporting feature that integrates with Power BI. 

Windows Defender ATP supports the use of Power BI data connectors to enable you to connect and access Windows Defender ATP data using Microsoft Graph.

Data connectors integrate seamlessly in Power BI, and make it easy for power users to query, shape and combine data to build reports and dashboards that meet the needs of your organization. 

You can easily get started by:
- Creating a dashboard on the Power BI service 
- Building a custom dashboard on Power BI Desktop and tweaking it to fit the visual analytics and reporting requirements of your organization 

You can access these options from the Windows Defender ATP portal. Both the Power BI service and Power BI Desktop are supported. 

## Create a Windows Defender ATP dashboard on Power BI service
Windows Defender ATP makes it easy to create a Power BI dashboard by providing an option straight from the portal. 

1. In the navigation pane, select **Preferences setup** > **Power BI reports**.

2.	Click **Create dashboard**. This opens up a new tab in your browser and loads the Power BI service with data from your organization.

    ![Preferences setup with create dashboard button](images/atp-create-dashboard.png)

    >[!NOTE]
    >Loading your data in the Power BI service can take a few minutes.

3. If this is the first time you’re using Power BI with Windows Defender ATP, you’ll need to sign in and give consent to Windows Defender ATP Power BI app. By providing consent, you’re allowing Windows Defender ATP Power BI to sign in and read your profile, and access your data.

      ![Consent image](images/atp-powerbi-consent.png)

4.	Click **Accept**. Power BI service will start downloading your Windows Defender ATP data from Microsoft Graph. 

When the dashboard is ready, you’ll get a notification within the Power BI website. Use the link in the portal to the Power BI console after creating the dashboard.

For more information, see [Create a Power BI dashboard from a report](https://powerbi.microsoft.com/en-us/documentation/powerbi-service-create-a-dashboard/).

## Build a custom Windows Defender ATP dashboard in Power BI Desktop
You can create a custom dashboard in Power BI Desktop to create visualizations that cater to the specific views that your organization requires.  

### Before you begin
1.	Make sure you use Power BI Desktop June 2017 and above. [Download the latest version](https://powerbi.microsoft.com/en-us/desktop/).

2.	In the Windows Defender ATP portal navigation pane, select **Preferences setup** > **Power BI reports**.

3.	Click **Download connector** to download the WDATPPowerBI.zip file and extract it.

    ![Preferences setup with download connector button](images/atp-download-connector.png)

4.	Create a new directory `Microsoft Power BI Desktop\Custom Connectors` under the user's Documents folder.

5.	Copy WDATPDataConnector.mez from the zip to the directory you just created.

6.	Open Power BI Desktop.

7.	Click **File** > **Options and settings** > **Custom data connectors**.

8.	Select **New table and matrix visuals** and **Custom data connectors** and click **OK**.
    
    >[!NOTE]
    >If you are using Power BI Desktop July 2017 version (or later), you won't need to select **New table and matrix visuals**. You'll only need to select **Custom data connectors**.

    ![Power BI options page](images/atp-powerbi-options.png)
    
9. Restart Power BI Desktop.

## Customize the Windows Defender ATP Power BI dashboard
After completing the steps in the Before you begin section, you can proceed with building your custom dashboard.

1.	Open WDATPPowerBI.pbit from the zip with Power BI Desktop.

2.	If this is the first time you’re using Power BI with Windows Defender ATP, you’ll need to sign in and give consent to Windows Defender ATP Power BI app. By providing consent, you’re allowing Windows Defender ATP Power BI to sign in and read your profile, and access your data.

    ![Consent image](images/atp-powerbi-consent.png)

3.	Click **Accept**. Power BI Desktop will start downloading your Windows Defender ATP data from Microsoft Graph. When all data has been downloaded, you can proceed to customize your reports.

## Mashup Windows Defender ATP data with other data sources
You can use Power BI Desktop to analyse data from Windows Defender ATP and mash that data up with other data sources to gain better security perspective in your organization.

1.	In Power BI Desktop, in the Home ribbon, click **Get data** and search for **Windows Defender Advanced Threat Protection**.

    ![Get data in Power BI](images/atp-powerbi-get-data.png)

2. Click **Connect**.

3.	On the Preview Connector windows, click **Continue**. 

    ![Power BI preview connector](images/atp-powerbi-preview.png) 

4.	If this is the first time you’re using Power BI with Windows Defender ATP, you’ll need to sign in and give consent to Windows Defender ATP Power BI app. By providing consent, you’re allowing Windows Defender ATP Power BI to sign in and read your profile, and access your data.

    ![Consent image](images/atp-powerbi-consent.png)

5.	Click **Accept**. Power BI Desktop will start downloading your Windows Defender ATP data from Microsoft Graph. When all data has been downloaded, you can proceed to customize your reports.

6.	In the Navigator dialog box, select the Windows Defender ATP feeds you'd like to download and use in your reports and click Load. Data will start to be downloaded from the Microsoft Graph.

     ![Power BI navigator page](images/atp-powerbi-navigator.png)

7.	Load other data sources by clicking **Get data item** in the Home ribbon, and select another data source.

8.	Add visuals and select fields from the available data sources. 

## Related topics
- [Update general settings in Windows Defender ATP](general-settings-windows-defender-advanced-threat-protection.md)
- [Turn on advanced features in Windows Defender ATP](advanced-features-windows-defender-advanced-threat-protection.md)
- [Turn on the preview experience in Windows Defender ATP](preview-settings-windows-defender-advanced-threat-protection.md)
- [Configure email notifications in Windows Defender ATP](configure-email-notifications-windows-defender-advanced-threat-protection.md)
- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- [Enable the custom threat intelligence API in Windows Defender ATP](enable-custom-ti-windows-defender-advanced-threat-protection.md)




