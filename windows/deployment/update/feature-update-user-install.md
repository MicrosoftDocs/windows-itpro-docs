---
title: Best practices - deploy feature updates for user-initiated installations 
description: Learn how to manually deploy feature updates
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.date: 07/10/2018
ms.collection: M365-modern-desktop
ms.topic: article
---

# Deploy feature updates for user-initiated installations (during a fixed service window)

**Applies to**: Windows 10

Use the following steps to deploy a feature update for a user-initiated installation.

## Get ready to deploy feature updates

### Step 1: Enable Peer Cache
Use **Peer Cache** to help manage deployment of content to clients in remote locations. Peer Cache is a built-in Configuration Manager solution that enables clients to share content with other clients directly from their local cache.

[Enable Configuration Manager client in full OS to share content](https://docs.microsoft.com/sccm/core/clients/deploy/about-client-settings#enable-configuration-manager-client-in-full-os-to-share-content) if you have clients in remote locations that would benefit from downloading feature update content from a peer instead of downloading it from a distribution point (or Microsoft Update). 

### Step 2: Override the default Windows setup priority (Windows 10, version 1709 and later)

If you’re deploying **Feature update to Windows 10, version 1709** or later, by default, portions of setup are configured to run at a lower priority. This can result in a longer total install time for the feature update. When deploying within a maintenance window, we recommend that you override this default behavior to benefit from faster total install times. To override the default priority, create a file called SetupConfig.ini on each machine to be upgraded in the below location containing the single section noted. 

%systemdrive%\Users\Default\AppData\Local\Microsoft\Windows\WSUS\SetupConfig.ini

```
[SetupConfig]
Priority=Normal
```

You can use the new [Run Scripts](https://docs.microsoft.com/sccm/apps/deploy-use/create-deploy-scripts) feature to run a PowerShell script like the sample below to create the SetupConfig.ini on target devices. 

```
#Parameters
Param(
  [string] $PriorityValue = "Normal"
  )

#Variable for ini file path
$iniFilePath = "$env:SystemDrive\Users\Default\AppData\Local\Microsoft\Windows\WSUS\SetupConfig.ini"

#Variables for SetupConfig
$iniSetupConfigSlogan = "[SetupConfig]"
$iniSetupConfigKeyValuePair =@{"Priority"=$PriorityValue;}

#Init SetupConfig content
$iniSetupConfigContent = @"
$iniSetupConfigSlogan
"@

#Build SetupConfig content with settings
foreach ($k in $iniSetupConfigKeyValuePair.Keys) 
{
    $val = $iniSetupConfigKeyValuePair[$k]
    
    $iniSetupConfigContent = $iniSetupConfigContent.Insert($iniSetupConfigContent.Length, "`r`n$k=$val")
}

#Write content to file 
New-Item $iniFilePath -ItemType File -Value $iniSetupConfigContent -Force

Disclaimer 
Sample scripts are not supported under any Microsoft standard support program or service. The sample scripts is 
provided AS IS without warranty of any kind. Microsoft further disclaims all implied warranties including, without 
limitation, any implied warranties of merchantability or of fitness for a particular purpose. The entire risk 
arising out of the use or performance of the sample script and documentation remains with you. In no event shall 
Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable 
for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, 
loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample script 
or documentation, even if Microsoft has been advised of the possibility of such damages.
```

>[!NOTE] 
>If you elect not to override the default setup priority, you will need to increase the [maximum run time](https://docs.microsoft.com/sccm/sum/get-started/manage-settings-for-software-updates#BKMK_SetMaxRunTime) value for Feature Update to Windows 10, version 1709 or higher from the default of 60 minutes. A value of 240 minutes may be required. Remember to ensure that your maintenance window duration is larger than your defined maximum run time value. 

## Manually deploy feature updates in a user-initiated installation

The following sections provide the steps to manually deploy a feature update.

### Step 1: Specify search criteria for feature updates
There are potentially a thousand or more feature updates displayed in the Configuration Manager console. The first step in the workflow for manually deploying a feature update is to identify the feature updates that you want to deploy. 

1.	In the Configuration Manager console, click **Software Library**. 
2.	In the Software Library workspace, expand **Windows 10 Servicing**, and click **All Windows 10 Updates**. The synchronized feature updates are displayed. 
3.	In the search pane, filter to identify the feature updates that you need by using one or both of the following steps:
   - In the **search** text box, type a search string that will filter the feature updates. For example, type the version number for a specific feature update, or enter a string that would appear in the title of the feature update. 
   - Click **Add Criteria**, select the criteria that you want to use to filter software updates, click **Add**, and then provide the values for the criteria. For example, Title contains 1803, **Required** is greater than or equal to 1, and **Language** equals English.

4.	Save the search for future use. 

### Step 2: Download the content for the feature update(s)
Before you deploy the feature updates, you can download the content as a separate step. Do this so you can verify that the content is available on the distribution points before you deploy the feature updates. This will help you to avoid any unexpected issues with the content delivery. Use the following procedure to download the content for feature updates before creating the deployment. 

1.	In the Configuration Manager console, navigate to **Software Library > Windows 10 Servicing**. 
2.	Choose the feature update(s) to download by using your saved search criteria. Select one or more of the feature updates returned, right click, and select **Download**.

   The **Download Software Updates Wizard** opens. 
3.	On the **Deployment Package** page, configure the following settings: 
   **Create a new deployment package**: Select this setting to create a new deployment package for the software updates that are in the deployment. Configure the following settings: 
      - **Name**: Specifies the name of the deployment package. The package must have a unique name that briefly describes the package content. It is limited to 50 characters. 
      - **Description**: Specifies the description of the deployment package. The package description provides information about the package contents and is limited to 127 characters. 
      - **Package source**: Specifies the location of the feature update source files. Type a network path for the source location, for example, \\\server\sharename\path, or click **Browse** to find the network location. You must create the shared folder for the deployment package source files before you proceed to the next page. 

      >[!NOTE] 
      >The deployment package source location that you specify cannot be used by another software deployment package. 

      >[!IMPORTANT] 
      >The SMS Provider computer account and the user that is running the wizard to download the feature updates must both have Write NTFS permissions on the download location. You should carefully restrict access to the download location to reduce the risk of attackers tampering with the feature update source files. 

      >[!IMPORTANT] 
      >You can change the package source location in the deployment package properties after Configuration Manager creates the deployment package. But if you do so, you must first copy the content from the original package source to the new package source location. 

   Click **Next**. 
4.	On the **Distribution Points** page, specify the distribution points or distribution point groups that will host the feature update files, and then click **Next**. For more information about distribution points, see [Distribution point configurations](https://docs.microsoft.com/sccm/core/servers/deploy/configure/install-and-configure-distribution-points#bkmk_configs). 

   >[!NOTE]
   >The Distribution Points page is available only when you create a new software update deployment package. 
5.	On the **Distribution Settings** page, specify the following settings: 

   - **Distribution priority**: Use this setting to specify the distribution priority for the deployment package. The distribution priority applies when the deployment package is sent to distribution points at child sites. Deployment packages are sent in priority order: **High**, **Medium**, or **Low**. Packages with identical priorities are sent in the order in which they were created. If there is no backlog, the package will process immediately regardless of its priority. By default, packages are sent using Medium priority. 
   - **Enable for on-demand distribution**: Use this setting to enable on-demand content distribution to preferred distribution points. When this setting is enabled, the management point creates a trigger for the distribution manager to distribute the content to all preferred distribution points when a client requests the content for the package and the content is not available on any preferred distribution points. For more information about preferred distribution points and on-demand content, see [Content source location scenarios](https://docs.microsoft.com/sccm/core/plan-design/hierarchy/content-source-location-scenarios). 
   - **Prestaged distribution point settings**: Use this setting to specify how you want to distribute content to prestaged distribution points. Choose one of the following options: 
      - **Automatically download content when packages are assigned to distribution points**: Use this setting to ignore the prestage settings and distribute content to the distribution point. 
      - **Download only content changes to the distribution point**: Use this setting to prestage the initial content to the distribution point, and then distribute content changes to the distribution point.
      - **Manually copy the content in this package to the distribution point**: Use this setting to always prestage content on the distribution point. This is the default setting. 
      
      For more information about prestaging content to distribution points, see [Use Prestaged content](https://docs.microsoft.com/sccm/core/servers/deploy/configure/deploy-and-manage-content#bkmk_prestage). 
   Click **Next**. 
6.	On the **Download Location** page, specify location that Configuration Manager will use to download the software update source files. As needed, use the following options: 

   - **Download software updates from the Internet**: Select this setting to download the software updates from the location on the Internet. This is the default setting.
   - **Download software updates from a location on the local network**: Select this setting to download software updates from a local folder or shared network folder. Use this setting when the computer running the wizard does not have Internet access. 
   
      >[!NOTE] 
      >When you use this setting, download the software updates from any computer with Internet access, and then copy the software updates to a location on the local network that is accessible from the computer running the wizard.

   Click **Next**. 
7.	On the **Language Selection** page, specify the languages for which the selected feature updates are to be downloaded, and then click **Next**. Ensure that your language selection matches the language(s) of the feature updates selected for download. For example, if you selected English and German based feature updates for download, select those same languages on the language selection page. 
8.	On the **Summary** page, verify the settings that you selected in the wizard, and then click Next to download the software updates. 
9.	On the **Completion** page, verify that the software updates were successfully downloaded, and then click **Close**. 

#### To monitor content status
1.	To monitor the content status for the feature updates, click **Monitoring** in the Configuration Manager console. 
2.	In the Monitoring workspace, expand **Distribution Status**, and then click **Content Status**. 
3.	Select the feature update package that you previously identified to download the feature updates. 
4.	On the **Home** tab, in the Content group, click **View Status**.

### Step 3: Deploy the feature update(s) 
After you determine which feature updates you intend to deploy, you can manually deploy the feature update(s). Use the following procedure to manually deploy the feature update(s). 

1.	In the Configuration Manager console, click **Software Library**. 
2.	In the Software Library workspace, expand **Windows 10 Servicing**, and click **All Windows 10 Updates**. 
3.	 Choose the feature update(s) to deploy by using your saved search criteria. Select one or more of the feature updates returned, right click, and select **Deploy**.

   The **Deploy Software Updates Wizard** opens. 
4.	On the General page, configure the following settings: 
   - **Name**: Specify the name for the deployment. The deployment must have a unique name that describes the purpose of the deployment and differentiates it from other deployments in the Configuration Manager site. By default, Configuration Manager automatically provides a name for the deployment in the following format: **Microsoft Software Updates - \<date\>\<time\>** 
   - **Description**: Specify a description for the deployment. The description provides an overview of the deployment and any other relevant information that helps to identify and differentiate the deployment among others in Configuration Manager site. The description field is optional, has a limit of 256 characters, and has a blank value by default. 
   - **Software Update/Software Update Group**: Verify that the displayed software update group, or software update, is correct. 
   - **Select Deployment Template**: Specify whether to apply a previously saved deployment template. You can configure a deployment template to contain multiple common software update deployment properties and then apply the template when you deploy subsequent software updates to ensure consistency across similar deployments and to save time. 
   - **Collection**: Specify the collection for the deployment, as applicable. Members of the collection receive the feature updates that are defined in the deployment. 
5.	On the Deployment Settings page, configure the following settings: 

   - **Type of deployment**: Specify the deployment type for the software update deployment. Select **Required** to create a mandatory software update deployment in which the feature updates are automatically installed on clients before a configured installation deadline. 
   
      >[!IMPORTANT] 
      > After you create the software update deployment, you cannot later change the type of deployment. 
   
      >[!NOTE] 
      >A software update group deployed as **Required** will be downloaded in background and honor BITS settings, if configured.

   - **Use Wake-on-LAN to wake up clients for required deployments**: Specify whether to enable Wake On LAN at the deadline to send wake-up packets to computers that require one or more software updates in the deployment. Any computers that are in sleep mode at the installation deadline time will be awakened so the software update installation can initiate. Clients that are in sleep mode that do not require any software updates in the deployment are not started. By default, this setting is not enabled and is available only when **Type of deployment** is set to **Required**. 

      >[!WARNING] 
      >Before you can use this option, computers and networks must be configured for Wake On LAN. 

   - **Detail level**: Specify the level of detail for the state messages that are reported by client computers. 
6.	On the Scheduling page, configure the following settings:

   - **Schedule evaluation**: Specify whether the available time and installation deadline times are evaluated according to UTC or the local time of the computer running the Configuration Manager console. 
   
   - **Software available time**: Select **Specific time** to specify when the software updates will be available to clients:
      - **Specific time**: Select this setting to make the feature update in the deployment available to clients at a specific date and time. Specify a date and time that corresponds with the start of your fixed servicing window. When the deployment is created, the client policy is updated and clients are made aware of the deployment at their next client policy polling cycle. However, the feature update in the deployment is not available for installation until after the specified date and time are reached and the required content has been downloaded.
 
   - **Installation deadline**: Select **Specific time** to specify the installation deadline for the software updates in the deployment. 
   
      >[!NOTE] 
      >You can configure the installation deadline setting only when **Type of deployment** is set to **Required** on the Deployment Settings page. 

      - **Specific time**: Select this setting to automatically install the software updates in the deployment at a specific date and time. However, for the purposes of the fixed servicing window, set the installation deadline date and time to a future value, well beyond the fixed servicing window. 

      Required deployments for software updates can benefit from functionality called advanced download. When the software available time is reached, clients will start downloading the content based on a randomized time. The feature update will not be displayed in Software Center for installation until the content is fully downloaded. This ensures that the feature update installation will start immediately when initiated.

7.	On the User Experience page, configure the following settings: 
   - **User notifications**: Specify **Display in Software Center and show all notifications**. 
   - **Deadline behavior**: Available only when **Type of deployment** is set to **Required** on the Deployment Settings page. Specify the behavior that is to occur when the deadline is reached for the software update deployment. Specify whether to install the software updates in the deployment. Also specify whether to perform a system restart after software update installation regardless of a configured maintenance window. 
      >[!NOTE] 
      >Remember that the installation deadline date and time will be well into the future to allow plenty of time for the user-initiated install during a fixed servicing window.
   - **Device restart behavior**: Available only when **Type of deployment** is set to **Required** on the Deployment Settings page. Specify whether to suppress a system restart on servers and workstations after software updates are installed and a system restart is required to complete the installation. 

      >[!IMPORTANT]
      >Suppressing system restarts can be useful in server environments or for cases in which you do not want the computers that are installing the software updates to restart by default. However, doing so can leave computers in an insecure state, whereas allowing a forced restart helps to ensure immediate completion of the software update installation.
   - **Write filter handling for Windows Embedded devices**: When you deploy software updates to Windows Embedded devices that are write filter enabled, you can specify to install the software update on the temporary overlay and either commit changes later or commit the changes at the installation deadline or during a maintenance window. When you commit changes at the installation deadline or during a maintenance window, a restart is required and the changes persist on the device. 

      >[!NOTE] 
      >When you deploy a software update to a Windows Embedded device, make sure that the device is a member of a collection that has a configured maintenance window. 
   - **Software updates deployment re-evaluation behavior upon restart**: Starting in Configuration Manager version 1606, select this setting to configure software updates deployments to have clients run a software updates compliance scan immediately after a client installs software updates and restarts. This enables the client to check for additional software updates that become applicable after the client restarts, and to then install them (and become compliant) during the same maintenance window. 
8.	On the Alerts page, configure how Configuration Manager and System Center Operations Manager will generate alerts for this deployment. You can configure alerts only when **Type of deployment** is set to **Required** on the Deployment Settings page. 

   >[!NOTE]
   >You can review recent software updates alerts from the **Software Updates** node in the **Software Library** workspace. 
9.	On the Download Settings page, configure the following settings: 
   - Specify whether the client will download and install the software updates when a client is connected to a slow network or is using a fallback content location. 
   - Specify whether to have the client download and install the software updates from a fallback distribution point when the content for the software updates is not available on a preferred distribution point. 
   - **Allow clients to share content with other clients on the same subnet**: Specify whether to enable the use of BranchCache for content downloads. For more information about BranchCache, see [Fundamental concepts for content management](https://docs.microsoft.com/sccm/core/plan-design/hierarchy/fundamental-concepts-for-content-management#branchcache). 
   - **If software updates are not available on distribution point in current, neighbor or site groups, download content from Microsoft Updates**: Select this setting to have clients that are connected to the intranet download software updates from Microsoft Update if software updates are not available on distribution points. Internet-based clients can always go to Microsoft Update for software updates content.
   - Specify whether to allow clients to download after an installation deadline when they use metered Internet connections. Internet providers sometimes charge by the amount of data that you send and receive when you are on a metered Internet connection. 

      >[!NOTE]
      >Clients request the content location from a management point for the software updates in a deployment. The download behavior depends upon how you have configured the distribution point, the deployment package, and the settings on this page. For more information, see [Content source location scenarios](https://docs.microsoft.com/sccm/core/plan-design/hierarchy/content-source-location-scenarios). 
10.	On the Summary page, review the settings. To save the settings to a deployment template, click **Save As Template**, enter a name and select the settings that you want to include in the template, and then click **Save**. To change a configured setting, click the associated wizard page and change the setting. 
11.	Click **Next** to deploy the feature update(s). 

### Step 4: Monitor the deployment status
After you deploy the feature update(s), you can monitor the deployment status. Use the following procedure to monitor the deployment status:

1.	In the Configuration Manager console, navigate to **Monitoring > Overview > Deployments**. 
2.	Click the software update group or software update for which you want to monitor the deployment status. 
3.	On the **Home** tab, in the **Deployment** group, click **View Status**. 
