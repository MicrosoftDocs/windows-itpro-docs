---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.subservice: itpro-updates
ms.service: windows-client
ms.topic: include
ms.date: 08/18/2022
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-enable.md and the update/wufb-reports-admin-center.md articles. Headings are driven by article context.  -->
1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/) and sign in.
1. Expand **Health**, then select **Software Updates**. You may need to use the **Show all** option to display **Health** in the navigation menu.
   - If you don't see an entry for **Software updates** in the menu, try going to this URL: [https://admin.microsoft.com/Adminportal/Home#/softwareupdates](https://admin.microsoft.com/Adminportal/Home#/softwareupdates).
1. In the **Software Updates** page, select the **Windows** tab.
1. When you select the **Windows** tab for the first time, you'll be asked to **Configure Settings**. This tab is populated by data from [Windows Update for Business reports](../wufb-reports-overview.md). Verify or supply the following information about the settings for Windows Update for Business reports:

    - The Azure subscription
    - The Log Analytics workspace
1. The initial setup can take up to 24 hours. During this time, the **Windows** tab will display that it's **Waiting for Windows Update for Business reports data**.
    - Enrolling into Windows Update for Business reports doesn't influence the rate that required data is uploaded from devices. Device connectivity to the internet and how active the device is influences how long it will take before the device appears in reporting. Devices that are active and connected to the internet daily can expect to be fully uploaded within one week (usually less than 72 hours). Devices that are less active can take up to two weeks before data is fully available. 
1. After the initial setup is complete, the **Windows** tab will display your Windows Update for Business reports data in the charts.
   > [!Note]
   > The device counts in the **Windows** tab may vary from the **Microsoft 365 Apps** tab since their requirements are different.  
