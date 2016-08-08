---
title: Get started with Upgrade Analytics (Windows 10)
description: Explains how to get started with Upgrade Analytics.
ms.prod: w10
author: MaggiePucciEvans
---

# Get started with Upgrade Analytics

Use Upgrade Analytics to plan and manage your upgrade project end to end. After you’ve established communications between user computers and Microsoft, Upgrade Analytics collects computer, application, and driver data for analysis. We use this data to identify compatibility issues that can block your upgrade and suggest fixes that are known to Microsoft.

For system, application, and driver data to be shared with Microsoft, you must configure user computers to send data. For information about what telemetry data Microsoft collects and how that data is used and protected by Microsoft, see:

- [Configure Windows telemetry in your organization](https://technet.microsoft.com/itpro/windows/manage/configure-windows-telemetry-in-your-organization)

- [Manage connections from Windows operating system components to Microsoft services](https://technet.microsoft.com/itpro/windows/manage/manage-connections-from-windows-operating-system-components-to-microsoft-services)

- [Windows 7, Windows 8, and Windows 8.1 appraiser telemetry events and fields](http://go.microsoft.com/fwlink/?LinkID=822965)


This topic explains how to obtain and set up Upgrade Analytics components. If you haven’t done so already, see [Upgrade Analytics requirements](https://technet.microsoft.com/itpro/windows/deploy/upgrade-analytics-requirements) for information about requirements for using Upgrade Analytics.

To configure Upgrade Analytics, you’ll need to:

-   Add the Upgrade Analytics solution to a workspace in the Operations Management Suite portal

-   Establish communications and enable data sharing between your organization and Microsoft

Each task is explained in detail in the following sections.


## Add Upgrade Analytics to Operations Management Suite

Upgrade Analytics is offered as a solution in the Microsoft Operations Management Suite (OMS), a collection of cloud based services for managing your on-premises and cloud environments. For more information about OMS, see [Operations Management Suite overview](http://azure.microsoft.com/documentation/articles/operations-management-suite-overview/).

If you are already using OMS, you’ll find Upgrade Analytics in the Solutions Gallery. Select the **Upgrade Analytics** tile in the gallery and then click **Add** on the solution's details page. Upgrade Analytics is now visible in your workspace.

If you are not using OMS:

1.  Go to the [Upgrade Analytics website](http://go.microsoft.com/fwlink/?LinkID=799190&clcid=0x409) and click **Sign up** to kick off the onboarding process.

2.  Sign in to Operations Management Suite (OMS). You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory (Azure AD), use a Work or School account when you sign in to OMS. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in OMS.

3.  Create a new OMS workspace. Enter a name for the workspace, select the workspace region, and provide the email address that you want associated with this workspace. Select **Create**.

4.  If your organization already has an Azure subscription, you can link it to your workspace. Note that you may need to request access from your organization’s Azure administrator.

    > If your organization does not have an Azure subscription, create a new one or select the default OMS Azure subscription from the list. Your workspace opens.

1.  To add the Upgrade Analytics solution to your workspace, go to the **Solutions Gallery**. Select the **Upgrade Analytics** tile in the gallery and then select **Add** on the solution’s details page. The solution is now visible on your workspace. Note that you may need to scroll to find Upgrade Analytics.

2.  Click the **Upgrade Analytics** tile to configure the solution. The **Settings Dashboard** opens.

## Enable data sharing between your organization and Upgrade Analytics

After you’ve signed in to Operations Management Suite and added the Upgrade Analytics solution to your workspace, complete the following tasks to establish communication and enable data sharing between user computers, Microsoft secure data centers, and Upgrade Analytics.

## Generate your commercial ID key 

Microsoft uses a unique commercial ID to map information from user computers to your OMS workspace. Generate your commercial ID key in OMS and then deploy it to user computers.

1.  On the Settings Dashboard, navigate to the **Windows telemetry** panel.

    ![upgrade-analytics-telemetry](images/upgrade-analytics-telemetry.png)

2. On the Windows telemetry panel, copy and save your commercial ID key. You’ll need to insert this key into the Upgrade Analytics deployment script later so it can be deployed to user computers.

    >**Important**<br> Regenerate a commercial ID key only if your original ID key can no longer be used. Regenerating a commercial ID key resets the data in your workspace for all solutions that use the ID. Additionally, you’ll need to deploy the new commercial ID key to user computers again.

## Subscribe to Upgrade Analytics

For Upgrade Analytics to receive and display upgrade readiness data from Microsoft, subscribe your OMS workspace to Upgrade Analytics.

1.  On the **Windows telemetry** panel, click **Subscribe**. The button changes to **Unsubscribe**. Unsubscribe from the Upgrade Analytics solution if you no longer want to receive upgrade-readiness information from Microsoft. Note that user computer data will continue to be shared with Microsoft for as long as the opt-in keys are set on user computers and the proxy allows the traffic.

1.  Click **Overview** on the Settings Dashboard to return to your OMS workspace portal. The Upgrade Analytics tile now displays summary data. Click the tile to open Upgrade Analytics.

## Whitelist select endpoints

To enable data sharing, whitelist the following endpoints. Note that you may need to get approval from your security group to do this.

Note: The compatibility update KB runs under the computer’s system account and does not support user authenticated proxies.

| **Endpoint**  | **Function**  |
|---------------------------------------------------------|-----------|
| `https://v10.vortex-win.data.microsoft.com/collect/v1`                                                                                                                             | Connected User Experience and Telemetry component endpoint. User computers send data to Microsoft through this endpoint.             |
| `https://settings-win.data.microsoft.com/settings`                                                                                                                                 | Enables the compatibility update KB to send data to Microsoft.                                                                       |
| `http://go.microsoft.com/fwlink/?LinkID=544713`<br>`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc/extended`                                        | This service provides driver information about whether there will be a driver available post-upgrade for the hardware on the system. |
| `https://vortex.data.microsoft.com/health/keepalive` <br>`https://settings.data.microsoft.com/qos` <br>`https://compatexchange1.trafficmanager.net/CompatibilityExchangeService.svc` | These endpoints are used to validate that user computers are sharing data with Microsoft.                                            |

## Deploy the compatibility update and related KBs

The compatibility update KB scans your computers and enables application usage tracking. If you don’t already have these KBs installed, you can download the applicable version from the Microsoft Update Catalog or deploy it using Windows Server Update Services (WSUS) or your software distribution solution, such as System Center Configuration Manager.

| **Operating System** | **KBs** |
|----------------------|-----------------------------------------------------------------------------|
| Windows 8.1          | [KB 2976978](http://catalog.update.microsoft.com/v7/site/Search.aspx?q=KB2976978)<br>Performs diagnostics on the Windows 8.1 systems that participate in the Windows Customer Experience Improvement Program. These diagnostics help determine whether compatibility issues may be encountered when the latest Windows operating system is installed. <br>For more information about this KB, see <https://support.microsoft.com/kb/2976978><br>[KB 3150513](https://catalog.update.microsoft.com/v7/site/Search.aspx?q=3150513)<br>Provides updated configuration and definitions for compatibility diagnostics performed on the system.<br>For more information about this KB, see <https://support.microsoft.com/kb/3150513><br>NOTE: KB2976978 must be installed before you can download and install KB3150513.   |
| Windows 7 SP1        | [KB2952664](http://catalog.update.microsoft.com/v7/site/Search.aspx?q=KB2952664) <br>Performs diagnostics on the Windows 7 SP1 systems that participate in the Windows Customer Experience Improvement Program. These diagnostics help determine whether compatibility issues may be encountered when the latest Windows operating system is installed. <br>For more information about this KB, see <https://support.microsoft.com/kb/2952664><br>[KB 3150513](https://catalog.update.microsoft.com/v7/site/Search.aspx?q=3150513)<br>Provides updated configuration and definitions for compatibility diagnostics performed on the system.<br>For more information about this KB, see <https://support.microsoft.com/kb/3150513><br>NOTE: KB2976978 must be installed before you can download and install KB3150513. |

IMPORTANT: Restart user computers after you install the compatibility update KBs for the first time.

### Automate data collection

To ensure that user computers are receiving the most up to date data from Microsoft, we recommend that you establish the following data sharing and analysis processes.

-   Enable automatic updates for the compatibility update and related KBs. These KBs are updated frequently to include the latest application and driver issue information as we discover it during testing.

-   Schedule the Upgrade Analytics deployment script to automatically run so that you don’t have to manually initiate an inventory scan each time the compatibility update KBs are updated. Computers are re-scanned only when the compatibility KBs are updated, so if your inventory changes significantly between KB releases you won’t see the changes in Upgrade Analytics until you run the script again.

-   Schedule monthly user computer scans to view monthly active computer and usage information.

## Run the Upgrade Analytics deployment script

To automate many of the steps outlined above and to troubleshoot data sharing issues, you can run the Upgrade Analytics deployment script, developed by Microsoft.

The Upgrade Analytics deployment script does the following:

1.  Sets commercial ID key + CommercialDataOptIn + RequestAllAppraiserVersions keys.

2.  Verifies that user computers can send data to Microsoft.

3.  Checks whether the computer has a pending restart.  

4.  Verifies that the latest version of KB package 10.0.x is installed (requires 10.0.14348 or subsequent releases).

5.  If enabled, turns on verbose mode for troubleshooting.

6.  Initiates the collection of the telemetry data that Microsoft needs to assess your organization’s upgrade readiness.

7.  If enabled, displays the script’s progress in a cmd window, providing you immediate visibility into issues (success or fail for each step) and/or writes to log file.

To run the Upgrade Analytics deployment script:

1.  Download the [Upgrade Analytics deployment script](http://go.microsoft.com/fwlink/?LinkID=822966&clcid=0x409) and extract UpgradeAnalytics.zip. The files in the Diagnostics folder are necessary only if you plan to run the script in troubleshooting mode.

2.  Edit the following parameters in RunConfig.bat:

    1.  Provide a storage location for log information. Example: %SystemDrive%\\UADiagnostics

    2.  You can store log information on a remote file share or a local directory. If the script is blocked from creating the log file for the given path, it creates the log files in the drive with the Windows directory.

    3.  Input your commercial ID key.

    4.  By default, the script sends log information to both the console and the log file. To change the default behavior, use one of the following options:

        > *logMode = 0 log to console only*
>
        > *logMode = 1 log to file and console*
>
        > *logMode = 2 log to file only*

3.  For troubleshooting, set isVerboseLogging to $true to generate log information that can help with diagnosing issues. By default, isVerboseLogging is set to $false. Ensure the Diagnostics folder is installed in the same directory as the script to use this mode.

4.  Notify users if they need to restart their computers. By default, this is set to off.

5.  After you finish editing the parameters in RunConfig.bat, run the script as an administrator.

## Seeing data from computers in Upgrade Analytics

After data is sent from computers to Microsoft, it generally takes 48 hours for the data to populate in Upgrade Analytics. The compatibility update KB takes several minutes to run. If the KB does not get a chance to finish running or if the computers are inaccessible (turned off or sleeping for example), data will take longer to populate in Upgrade Analytics. For this reason, you can expect most your computers to be populated in OMS in about 1-2 weeks after deploying the KB and configuration to user computers.

