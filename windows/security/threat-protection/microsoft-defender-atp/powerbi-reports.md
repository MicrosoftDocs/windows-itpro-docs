---
title: Create and build Power BI reports using Microsoft Defender ATP data
description: Get security insights by creating and building Power BI dashboards using data from Microsoft Defender ATP and other data sources.
keywords: settings, power bi, power bi service, power bi desktop, reports, dashboards, connectors , security insights, mashup
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---


# Create and build Power BI reports using Microsoft Defender ATP data

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


[!include[Prerelease information](prerelease.md)]

> [!TIP]
> Go to **Advanced features** in the **Settings** page to turn on the preview features.
> 
> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-powerbireports-abovefoldlink) 

Understand the security status of your organization, including the status of machines, alerts, and investigations using the Microsoft Defender ATP reporting feature that integrates with Power BI. 

Microsoft Defender ATP supports the use of Power BI data connectors to enable you to connect and access Microsoft Defender ATP data using Microsoft Graph.

Data connectors integrate seamlessly in Power BI, and make it easy for power users to query, shape and combine data to build reports and dashboards that meet the needs of your organization. 

You can easily get started by:
- Creating a dashboard on the Power BI service 
- Building a custom dashboard on Power BI Desktop and tweaking it to fit the visual analytics and reporting requirements of your organization 

You can access these options from Microsoft Defender Security Center. Both the Power BI service and Power BI Desktop are supported. 

## Create a Microsoft Defender ATP dashboard on Power BI service
Microsoft Defender ATP makes it easy to create a Power BI dashboard by providing an option straight from the portal. 

1. In the navigation pane, select **Settings** > **General** > **Power BI reports**.

2. Click **Create dashboard**.

   ![Image of create dashboard](images/atp-create-dashboard.png)
    
   You'll see a notification that things are being loaded. 

   ![Image of loading](images/atp-loading.png)

   >[!NOTE]
   >Loading your data in the Power BI service can take a few minutes.

3. Specify the following details:
   - **extensionDataSourceKind**: WDATPConnector
   - **extensionDataSourcePath**: WDATPConnector
   - **Authentication method**: OAuth2

     ![Image of Power BI authentication method](images/atp-powerbi-extension.png)

4. Click **Sign in**. If this is the first time you’re using Power BI with Microsoft Defender ATP, you’ll need to sign in and give consent to Microsoft Defender ATP Power BI app. By providing consent, you’re allowing Microsoft Defender ATP Power BI to sign in and read your profile, access your data, and be used for report refresh.

      ![Consent image](images/atp-powerbi-accept.png)

5. Click **Accept**. Power BI service will start downloading your Microsoft Defender ATP data from Microsoft Graph. After a successful login, you'll see a notification that data is being imported:

    ![Image of importing data](images/atp-powerbi-importing.png)
    
    >[!NOTE]
    >Depending on the number of onboarded machines, loading your data in the Power BI service can take several minutes. A larger number of machines might take longer to load. 

    When importing data is completed and the dataset is ready, you’ll the following notification:

    ![Image of dataset is ready](images/atp-data-ready.png)

6. Click **View dataset** to explore your data.


For more information, see [Create a Power BI dashboard from a report](https://powerbi.microsoft.com/en-us/documentation/powerbi-service-create-a-dashboard/).

## Create a Power BI dashboard from the Power BI portal

1. Login to [Power BI](https://powerbi.microsoft.com/).

2. Click **Get Data**.

3. Select **Microsoft AppSource** > **My Organization** > **Get**.

    ![Image of Microsoft AppSource to get data](images/atp-get-data.png)

4. In the AppSource window, select **Apps** and search for Microsoft Defender Advanced Threat Protection.

    ![Image of AppSource to get Microsoft Defender ATP](images/atp-appsource.png)

5. Click **Get it now**.

6. Specify the following details:
   - **extensionDataSourceKind**: WDATPConnector
   - **extensionDataSourcePath**: WDATPConnector
   - **Authentication method**: OAuth2

     ![Image of Power BI authentication method](images/atp-powerbi-extension.png)

7. Click **Sign in**. If this is the first time you’re using Power BI with Microsoft Defender ATP, you’ll need to sign in and give consent to Microsoft Defender ATP Power BI app. By providing consent, you’re allowing Microsoft Defender ATP Power BI to sign in and read your profile, access your data, and be used for report refresh.

      ![Consent image](images/atp-powerbi-accept.png)

8. Click **Accept**. Power BI service will start downloading your Microsoft Defender ATP data from Microsoft Graph. After a successful login, you'll see a notification that data is being imported:

   ![Image of importing data](images/atp-powerbi-importing.png)
    
   >[!NOTE]
   >Depending on the number of onboarded machines, loading your data in the Power BI service can take several minutes. A larger number of machines might take longer to load. 

   When importing data is completed and the dataset is ready, you’ll the following notification:

   ![Image of dataset is ready](images/atp-data-ready.png)

9. Click **View dataset** to explore your data.


## Build a custom Microsoft Defender ATP dashboard in Power BI Desktop
You can create a custom dashboard in Power BI Desktop to create visualizations that cater to the specific views that your organization requires.  

### Before you begin
1. Make sure you use Power BI Desktop June 2017 and above. [Download the latest version](https://powerbi.microsoft.com/en-us/desktop/).

2. In the Microsoft Defender Security Center navigation pane, select **Settings** > **Power BI reports**.

    ![Image of settings Power BI reports](images/atp-settings-powerbi.png)    

3. Click **Download connector** to download the WDATPPowerBI.zip file and extract it.

    ![Settings with download connector button](images/atp-download-connector.png)

4. Create a new directory `Microsoft Power BI Desktop\Custom Connectors` under the user's Documents folder.

5. Copy WDATPDataConnector.mez from the zip to the directory you just created.

6. Open Power BI Desktop.

7. Click **File** > **Options and settings** > **Custom data connectors**.

8. Select **New table and matrix visuals** and **Custom data connectors** and click **OK**.
    
    >[!NOTE]
    >If you are using Power BI Desktop July 2017 version (or later), you won't need to select **New table and matrix visuals**. You'll only need to select **Custom data connectors**.

    ![Power BI options page](images/atp-powerbi-options.png)
    
9. Restart Power BI Desktop.

## Customize the Microsoft Defender ATP Power BI dashboard
After completing the steps in the Before you begin section, you can proceed with building your custom dashboard.

1. Open WDATPPowerBI.pbit from the zip with Power BI Desktop.

2. If this is the first time you’re using Power BI with Microsoft Defender ATP, you’ll need to sign in and give consent to Microsoft Defender ATP Power BI app. By providing consent, you’re allowing Microsoft Defender ATP Power BI to sign in and read your profile, and access your data.

    ![Consent image](images/atp-powerbi-consent.png)

3. Click **Accept**. Power BI Desktop will start downloading your Microsoft Defender ATP data from Microsoft Graph. When all data has been downloaded, you can proceed to customize your reports.



## Mashup Microsoft Defender ATP data with other data sources
You can use Power BI Desktop to analyse data from Microsoft Defender ATP and mash that data up with other data sources to gain better security perspective in your organization.

1. In Power BI Desktop, in the Home ribbon, click **Get data** and search for **Microsoft Defender Advanced Threat Protection**.

2. Click **Connect**.

3. On the Preview Connector windows, click **Continue**. 

4. If this is the first time you’re using Power BI with Microsoft Defender ATP, you’ll need to sign in and give consent to Microsoft Defender ATP Power BI app. By providing consent, you’re allowing Microsoft Defender ATP Power BI to sign in and read your profile, and access your data.

    ![Consent image](images/atp-powerbi-consent.png)

5. Click **Accept**. Power BI Desktop will start downloading your Microsoft Defender ATP data from Microsoft Graph. When all data has been downloaded, you can proceed to customize your reports.

6. In the Navigator dialog box, select the Microsoft Defender ATP feeds you'd like to download and use in your reports and click Load. Data will start to be downloaded from the Microsoft Graph.

7. Load other data sources by clicking **Get data item** in the Home ribbon, and select another data source.

8. Add visuals and select fields from the available data sources. 

## Using the Power BI reports
There are a couple of tabs on the report that's generated:

- Machine and alerts 
- Investigation results and action center
- Secure Score

In general, if you know of a specific threat name, CVE, or KB, you can identify machines with unpatched vulnerabilities that might be leveraged by threats. This report also helps you determine whether machine-level mitigations are configured correctly on the machines and prioritize those that might need attention.


## Related topic
- [Create custom Power BI reports](api-power-bi.md)





