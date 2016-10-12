---
title: Manage settings with an MDM provider (Surface Hub)
description: Microsoft Surface Hub provides an enterprise management solution to help IT administrators manage policies and business applications on these devices using a mobile device management (MDM) solution.
ms.assetid: 18EB8464-6E22-479D-B0C3-21C4ADD168FE
keywords: mobile device management, MDM, manage policies
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub, mobility
author: TrudyHa
localizationpriority: medium
---

# Manage settings with an MDM provider (Surface Hub)

Surface Hub and other Windows 10 devices allow IT administrators to manage settings and policies using a mobile device management (MDM) provider. A built-in management component communicates with the management server, so there is no need to install additional clients on the device. For more information, see [Windows 10 mobile device management](https://msdn.microsoft.com/library/windows/hardware/dn914769.aspx).

Surface Hub has been validated with Microsoft’s first-party MDM providers: Microsoft Intune and System Center Configuration Manager (current branch). You can also manage Surface Hubs using any third-party provider that can communicate with Windows 10 using the MDM protocol.

## <a href="" id="enroll-into-mdm"></a>Enroll a Surface Hub into MDM
You can enroll your Surface Hubs using automatic, bulk, or manual enrollment. 

> [!NOTE]
> You can join your Surface Hub to Azure Active Directory (Azure AD) to manage admin groups on the device. However, Surface Hub does not currently support automatic MDM enrollment through Azure AD join. If your organization automatically enrolls Azure AD joined devices into MDM, you must disable this policy for Surface Hub before joining the device to Azure AD.

### Automatic enrollment
**To configure automatic enrollment**
- For information on configuring automatic enrollment, see [Azure Active Directory enrollment](https://docs.microsoft.com/intune/deploy-use/set-up-windows-phone-management-with-microsoft-intune#azure-active-directory-enrollment). 

### Bulk enrollment
**To configure bulk enrollment**
- Surface Hub supports the [Provisioning CSP](https://msdn.microsoft.com/library/windows/hardware/mt203665.aspx) for bulk enrollment into MDM. For more information, see [Windows 10 bulk enrollment](https://msdn.microsoft.com/library/windows/hardware/mt613115.aspx).<br>
--OR--
- If you have an on-premises System Center Configuration Manager infrastructure, see [How to bulk enroll devices with On-premises Mobile Device Management in System Center Configuration Manager](https://technet.microsoft.com/library/mt627898.aspx).

### Manual enrollment
You can manually enroll with an MDM using **Settings** on your Surface Hub. 

**To configure manual enrollment**
1. From your Surface Hub, open **Settings**.
2. Type the device admin credentials when prompted.
3. Select **This device**, and navigate to **Device management**.
4. Under **Device management**, select **+ Device management**.
5. Follow the instructions in the dialog to connect to your MDM provider.

## Manage Surface Hub settings with MDM

You can use MDM to manage some [Surface Hub CSP settings](#supported-surface-hub-csp-settings), and some [Windows 10 settings](#supported-windows-10-settings). 

### Supported Surface Hub CSP settings

You can configure the Surface Hub settings in the following table using MDM. The table also tells if the setting is supported on Microsoft Intune, System Center Configuration Manager (Configuration Manager), or SyncML. 

For more information, see [Surface Hub configuration service provider](https://msdn.microsoft.com/library/windows/hardware/mt608323.aspx). 

| Setting              | Supported CSPs         | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| -------------------- | -----------------------|-------------------------- | ---------------------------------------- | ------------------------- |
| Maintenance hours | MaintenanceHoursSimple/Hours/StartTime <br> MaintenanceHoursSimple/Hours/Duration | Yes | Yes | Yes |
| Automatically turn on the screen using motion sensors | InBoxApps/Welcome/AutoWakeScreen | Yes | Yes | Yes |
| Require a pin for wireless projection | InBoxApps/WirelessProjection/PINRequired | Yes | Yes | Yes |
| Enable wireless projection | InBoxApps/WirelessProjection/Enabled | Yes | Yes.<br> Use a custom setting.| Yes |
| Miracast channel to use for wireless projection | InBoxApps/WirelessProjection/Channel | Yes | Yes.<br> Use a custom setting.| Yes |
| Connect to your Operations Management Suite workspace | MOMAgent/WorkspaceID <br> MOMAgent/WorkspaceKey | Yes | Yes.<br> Use a custom setting.| Yes |
| Welcome screen background image | InBoxApps/Welcome/CurrentBackgroundPath | Yes | Yes.<br> Use a custom setting. | Yes |
| Meeting information displayed on the welcome screen | InBoxApps/Welcome/MeetingInfoOption | Yes | Yes.<br> Use a custom setting. | Yes |
| Friendly name for wireless projection | Properties/FriendlyName | Yes. <br> Use a custom policy | Yes.<br> Use a custom setting.| Yes |
| Device account, including password rotation | Multiple | No | No | Yes |

Refer to documentation from your MDM provider to learn how to create and deploy SyncML.

> [!TIP]
You need to use a setting’s OMA URI to create a custom policy in Intune, or a custom setting in System Center Configuration Manager. 

**To generate the OMA URI for any setting in the CSP documentation**

- Prepend the node path with path of the root node. <br>
    For example, the OMA URI for the InBoxApps/WirelessProjection/Enabled setting in the SurfaceHub CSP is “./Vendor/MSFT/SurfaceHub/InBoxApps/WirelessProjection/Enabled”.

The data type is stated in the CSP documentation. The most common data types are:
- char (string)
- int (integer)
- bool (boolean)

Depending on the MDM provider that you use, you may set these settings using the SyncML nodes defined in the SurfaceHub CSP, or using a built-in user interface. Intune and System Center Configuration Manager provide built-in experiences to help create policy templates for Surface Hub.

### Supported Windows 10 settings 

In addition to Surface Hub specific settings, there are numerous settings common to all Windows 10 devices. These settings are defined in the [Configuration service provider reference](). 

The following tables include info on Windows 10 settings have been validated with Surface Hub. There is a table with settings for these areas: security, browser, Windows Updates, Windows Defender, remote reboot, certificates, and logs. Each table also tells if the setting is supported on Microsoft Intune, System Center Configuration Manager (Configuration Manager), or SyncML.


**Security settings** 

| Setting  | Details  | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| -------- | -------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Allow Bluetooth | Keep this enabled to support Bluetooth peripherals.  | ./Vendor/MSFT/Policy/Config/Connectivity/AllowBluetooth| Yes. <br> Use a custom policy. | Yes.<br> Use a custom setting. | Yes |
| Bluetooth policies | Use to set the Bluetooth device name, and block advertising, discovery, and automatic pairing. | Various policies in the Policy CSP: ./Vendor/MSFT/Policy/Config/Bluetooth/<name of policy> | Yes. <br> Use a custom policy. | Yes.<br> Use a custom setting. | Yes |
| Allow camera | Keep this enabled for Skype for Business. | ./Vendor/MSFT/Policy/Config/Camera/AllowCamera| Yes. <br> Use a custom policy. | Yes.<br> Use a custom setting. | Yes |
| Allow location | Keep this enabled to support apps such as Maps.| ./Vendor/MSFT/Policy/Config/System/AllowLocation| Yes. <br> Use a custom policy. | Yes.<br> Use a custom setting. | Yes |
| Allow telemetry | Keep this enabled to help Microsoft improve Surface Hub. | ./Vendor/MSFT/Policy/Config/System/AllowTelemetry| Yes. <br> Use a custom policy. | Yes.<br> Use a custom setting. | Yes |

**Browser settings**

| Setting  | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| -------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Homepages | Use to configure the default homepages in Microsoft Edge.| ./Vendor/MSFT/Policy/Config/Browser/Homepages  | Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Allow cookies | Surface Hub automatically deletes cookies at the end of a session. Use this to block cookies within a session. |./Vendor/MSFT/Policy/Config/Browser/AllowCookies | Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Allow developer tools  | Use to stop users from using F12 Developer Tools.| ./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools| Yes. <br>  Use a custom policy.| Yes. <br> Use a custom setting.| Yes |
| Allow Do Not Track | Use to enable Do Not Track headers. | ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack | Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Allow pop-ups | Use to block pop-up browser windows. | ./Vendor/MSFT/Policy/Config/Browser/AllowPopups | Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Allow search suggestions| Use to block search suggestions in the address bar| ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar| Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |
| Allow SmartScreen | Keep this enabled to turn on SmartScreen| ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen	| Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |
| Prevent ignoring SmartScreen Filter warnings for websites| For extra security, use to stop users from ignoring SmartScreen Filter warnings and block them from accessing potentially malicious websites.| ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverride| Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |
| Prevent ignoring SmartScreen Filter warnings for files| For extra security, use to stop users from ignoring SmartScreen Filter warnings and block them from downloading unverified files from Microsoft Edge.| ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles| Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |

**Windows Update settings**

| Setting     | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| ----------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Use Current Branch or Current Branch for Business | Use to configure Windows Update for Business – see Windows Updates.| ./Vendor/MSFT/Policy/Config/Update/BranchReadinessLevel | Yes. Use a custom policy.| Yes. Use a custom setting.| Yes |
| Defer feature updates| See above. | ./Vendor/MSFT/Policy/Config/Update/ DeferFeatureUpdatesPeriodInDays| Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Defer quality updates	See above. | ./Vendor/MSFT/Policy/Config/Update/DeferQualityUpdatesPeriodInDays| Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Pause feature updates| See above. | ./Vendor/MSFT/Policy/Config/PauseFeatureUpdates| Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Pause quality updates| See above. | ./Vendor/MSFT/Policy/Config/Update/PauseQualityUpdates| Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes|
| Configure device to use WSUS| Use to connect your Surface Hub to WSUS instead of Windows Update – see Windows Updates. | ./Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl | Yes. <br> Use a custom policy. | Yes. <br> Use a custom setting. | Yes |
| Delivery optimization | Use peer-to-peer content sharing to reduce bandwidth issues during updates. See [Configure Delivery Optimization for Windows 10](https://technet.microsoft.com/itpro/windows/manage/waas-delivery-optimization) for details. | Various policies in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx): <br>./Vendor/MSFT/Policy/Config/DeliveryOptimization/<name of policy>| Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |

**Windows Defender settings**

| Setting     | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| ----------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Defender policies. |Use to configure various Defender settings, including a scheduled scan time. | Various policies in [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx): <br> ./Vendor/MSFT/Policy/Config/Defender/<name of policy>. | Yes. <br>  Use a custom policy. | Yes. <br> Use a custom setting. | Yes
| Defender status | Use to initiate a Defender scan, force a signature update, query any threats detected. | [Defender CSP](https://msdn.microsoft.com/library/windows/hardware/mt187856.aspx) | No. | No. | Yes |

**Remote reboot settings**

| Setting     | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| ----------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Reboot the device immediately| Use in conjunction with OMS to minimize support costs – see Monitoring.| ./Vendor/MSFT/Reboot/RebootNow| No| No| Yes |
| Reboot the device at a scheduled date and time| See above.| ./Vendor/MSFT/Reboot/Schedule/Single | Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |
| Reboot the device daily at a scheduled date and time| See above.| ./Vendor/MSFT/Reboot/Schedule/DailyRecurrent | Yes. <br> Use a custom policy.| Yes. <br> Use a custom setting.| Yes |

**Certficate settings**

| Setting     | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| ----------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Install certificates | Use to deploy certificates to the Surface Hub. | [RootCATrustedCertificates CSP](https://msdn.microsoft.com/library/windows/hardware/dn904970.aspx) and [ClientCertificateInstall CSP](https://msdn.microsoft.com/library/windows/hardware/dn920023.aspx) | Yes. <br> See [Secure resource access with certificate profiles](https://docs.microsoft.com/intune/deploy-use/secure-resource-access-with-certificate-profiles). | Yes. <br> See [How to create certificate profiles in Configuration Manager](https://technet.microsoft.com/library/dn270541.aspx). | Yes |

**Log settings**

| Setting     | Details          | CSP documentation reference | Supported with<br>Intune? | Supported with<br>Configuration Manager? | Supported with<br>SyncML? |
| ----------- | ---------------- | --------------------------- |-------------------------- | ---------------------------------------- | ------------------------- |
| Log collection | Use to remotely collect ETW logs from Surface Hub.| [DiagnosticLog CSP](https://msdn.microsoft.com/library/windows/hardware/mt219118.aspx) | No| No| Yes |

<!-- ## Example: Manage Surface Hub settings with Micosoft Intune

You can Use Intune to create a configuration policy from a template, or create a custom configuration policy to manage some Surface Hub settings. 

**To create a configuration policy from a template**
You'll use the **Windows 10 Team general configuration policy** as the template.

1. Access the Intune management portal at [https://manage.microsoft.com](https://manage.microsoft.com).
2. Sign in with your Intune administrator account.
3. On the left-hand navigation menu, click **Policy**.
4. In the Overview page, click **Add Policy**.
5. On **Select a template for the new policy**, expand **Windows**, select **General Configuration (Windows 10 Team and later)**, select **Create and Deploy a Custom Policy**, and then click **Create Policy**.
6. Configure your policy, then click **Save Policy**
7. When prompted, click **Yes** to deploy your new policy to a user or device group. 

For more informration, see [Use groups to manage users and devices in Microsoft Intune](https://docs.microsoft.com/intune/deploy-use/use-groups-to-manage-users-and-devices-with-microsoft-intune).

**To create a custom configuration policy**
You’ll need to create a custom policy to manage settings that are not available in the template. 

1. Access the Intune management portal at [https://manage.microsoft.com](https://manage.microsoft.com).
2. Sign in with your Intune administrator account.
3. On the left-hand navigation menu, click **Policy**.
4. In the Overview page, click **Add Policy**.
5. On **Select a template for the new policy**, expand **Windows**, select **Custom Configuration (Windows 10 Desktop and Mobile and later)**, select **Create and Deploy a Custom Policy**, and then click **Create Policy**.
6. Type a name for the policy.
7. Under OMA-URI Settings, click **Add**.
8. Complete the form to create a new setting, and then click **OK**.
9. Repeat Step 8 for each setting you want to configure with this policy.
10. Once you're done, click **Save Policy** and deploy it to a user or device group. 

## Example: Manage Surface Hub settings with System Center Configuration Manager
The current branch of System Center Configuration Manager supports managing modern devices that do not require the Configuration Manager client to manage them, including Surface Hub. If you already use System Center Configuration Manager to manage other devices in your organization, you can continue to use the administrative console as your single location for managing Surface Hubs.

> [!NOTE]
> These instructions are based on the current branch of System Center Configuration Manager.

**To create a configuration item for Surface Hub settings**:
1. Open the Configuration Manager console.
2. Under **Assets and Compliance**, expand **Compliance Settings**, and select **Configuration Items**.
3. Click **Create Configuration Item**.
4. Type a name and a description for the configuration item. 
5. Under **Settings for devices managed without the Configuration Manager client**, select **Windows 8.1 and Windows 10**, and then click **Next**.
6. On **Supported Platforms**, select **Supported Platforms**, expand **Windows 10**, select **All Windows 10 Team and higher**, and then click **Next**.
7. On **Windows 10 team**, under **Device settings**, select **Windows 10 Team**. A new tab labelled **Windows 10 Team** will appear on the left-hand side. -->

## Related topic

[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





