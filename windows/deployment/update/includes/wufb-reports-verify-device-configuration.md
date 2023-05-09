---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 08/10/2022
ms.localizationpriority: medium
---
<!--This file is used by update/wufb-reports-configuration-script.md articles. It was dropped from updates/wufb-reports-help.md. Headings are driven by article context.  -->

In some cases, you may need to manually verify the device configuration has the `AllowUpdateComplianceProcessing` policy enabled. To verify the setting, use the following steps:

1. Download and enable the **Diagnostic Data Viewer**. For more information, see [Diagnostic Data Viewer overview](/windows/privacy/diagnostic-data-viewer-overview#install-and-use-the-diagnostic-data-viewer).
   1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.
   1. Under **View diagnostic data**, select **On** for the following option:

       - Windows 11: **Turn on the Diagnostic Data Viewer (uses up to 1 GB of hard drive space)**
       - Windows 10: **Turn on this setting to see your data in the Diagnostic Data Viewer. (Setting uses up to 1GB of hard drive space.)**

1. Select **Open Diagnostic Data Viewer**.
   - If the application isn't installed, select **Get** when you're asked to download the [Diagnostic Data Viewer  from the Microsoft Store](https://www.microsoft.com/store/p/diagnostic-data-viewer/9n8wtrrsq8f7?rtc=1) page.
   - If the application is already installed, it will open. You can either close the application before running a scan for software updates, or use the refresh button to fetch the new data after the scan is completed.

1. Check for software updates on the client device.
    - Windows 11:
       1. Go to **Start**, select **Settings** > **Windows Update**.
       1. Select **Check for updates** then wait for the update check to complete.  
    - Windows 10:  
       1. Go to **Start**, select **Settings** > **Update & Security** > **Windows Update**.
       1. Select **Check for updates** then wait for the update check to complete.

1. Run the **Diagnostic Data Viewer**.
   1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.
   1. Under **View diagnostic data**, select **Open Diagnostic Data Viewer**.
1. When the Diagnostic Data Viewer opens, type `SoftwareUpdateClientTelemetry` in the search field. Verify the following items:
   - The **EnrolledTenantID** field under **m365a** should equal the `CommercialID` of your Log Analytics workspace for Update Compliance. `CommercialID` is no longer required for [Windows Update for Business reports](../wufb-reports-overview.md), but the value may still be listed in this field.
   - The **MSP** field value under **protocol** should be either `16` or `18`.
   - If you need to send this data to Microsoft Support, select **Export data**.  

   :::image type="content" alt-text="Screenshot of the Diagnostic Data Viewer displaying the data from SoftwareUpdateClientTelemetry. The export data option and the fields for MSP and EnrolledTenantID are outlined in red." source="../media/wufb-reports-diagnostic-data-viewer.png" lightbox="../media/wufb-reports-diagnostic-data-viewer.png"::: 

