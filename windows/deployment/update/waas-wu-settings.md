---
title: Manage additional Windows Update settings
description: In this article, learn about additional settings to control the behavior of Windows Update in your organization.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
ms.collection:
  - highpri
  - tier2
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 09/03/2024
---

# Manage additional Windows Update settings

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

You can use Group Policy settings or mobile device management (MDM) to configure the behavior of Windows Update on your Windows 10 devices. You can configure the update detection frequency, select when updates are received, specify the update service location and more.

## Summary of Windows Update settings

| Group Policy setting | MDM setting | Supported from version |
| --- | --- | --- |
| [Specify Intranet Microsoft update service location](#specify-intranet-microsoft-update-service-location) | [UpdateServiceUrl](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurl) and [UpdateServiceUrlAlternate](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurlalternate) | All |
| [Automatic Updates Detection Frequency](#automatic-updates-detection-frequency) | [DetectionFrequency](/windows/client-management/mdm/policy-configuration-service-provider#update-detectionfrequency) | 1703 |
| [Remove access to use all Windows Update features](#remove-access-to-use-all-windows-update-features) | [Update/SetDisableUXWUAccess](/windows/client-management/mdm/policy-csp-update#update-setdisableuxwuaccess)| All |
| [Do not connect to any Windows Update Internet locations](#do-not-connect-to-any-windows-update-internet-locations) | | All |
| [Enable client-side targeting](#enable-client-side-targeting) | | All |
| [Allow signed updates from an intranet Microsoft update service location](#allow-signed-updates-from-an-intranet-microsoft-update-service-location) | [AllowNonMicrosoftSignedUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-allownonmicrosoftsignedupdate) | All |
| [Do not include drivers with Windows Updates](#do-not-include-drivers-with-windows-updates) | [ExcludeWUDriversInQualityUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-excludewudriversinqualityupdate) | 1607 |
| [Configure Automatic Updates](#configure-automatic-updates) | [AllowAutoUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-allowautoupdate) | All |
| |  [Windows Update notifications display organization name](#display-organization-name-in-windows-update-notifications) </br></br> *Organization name is displayed by default. A registry value can disable this behavior. | Windows 11 devices that are Microsoft Entra joined or registered <!--6286260-->|
| | [Allow Windows updates to install before initial user sign-in](#allow-windows-updates-to-install-before-initial-user-sign-in) (registry only)| Windows 11 version 22H2 with 2023-04 Cumulative Update Preview, or a later cumulative update <!--7679187-->|


>[!IMPORTANT]
>Additional information about settings to manage device restarts and restart notifications for updates is available on **[Manage device restarts after updates](waas-restart.md)**.
>
>Additional settings that configure when feature and quality updates are received are detailed on **[Configure Windows Update for Business](waas-configure-wufb.md)**.

## Scanning for updates

Admins have flexibility in configuring how their devices scan and receive updates.

[Specify Intranet Microsoft update service location](#specify-intranet-microsoft-update-service-location) allows admins to point devices to an internal Microsoft update service location, while [Do not connect to any Windows Update Internet locations](#do-not-connect-to-any-windows-update-internet-locations) gives them the option to restrict devices to just that internal update service. [Automatic Updates Detection Frequency](#automatic-updates-detection-frequency) controls how frequently devices scan for updates.

You can make custom device groups that work with your internal Microsoft update service by using [Enable client-side targeting](#enable-client-side-targeting). You can also make sure your devices receive updates that weren't signed by Microsoft from your internal Microsoft update service, through [Allow signed updates from an intranet Microsoft update service location](#allow-signed-updates-from-an-intranet-microsoft-update-service-location).

Finally, to make sure the updating experience is fully admin controlled, you can [Remove access to use all Windows Update features](#remove-access-to-use-all-windows-update-features) for users.

For additional settings that configure when feature and quality updates are received, see [Configure Windows Update for Business](waas-configure-wufb.md).

### Specify intranet Microsoft update service location

Specifies an intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.
This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client searches this service for updates that apply to the computers on your network.

To use this setting in Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update\Specify Intranet Microsoft update service location**. You must set two server name values: 
- The server from which the Automatic Updates client detects and downloads updates
- The server to which updated workstations upload statistics
You can set both values to be the same server. An optional server name value can be specified to configure Windows Update Agent to download updates from an alternate download server instead of the intranet update service.

If the setting is set to **Enabled**, the Automatic Updates client connects to the specified intranet Microsoft update service (or alternate download server), instead of Windows Update, to search for and download updates. Enabling this setting means that end users in your organization don't have to go through a firewall to get updates, and it gives you the opportunity to test updates after deploying them.
If the setting is set to **Disabled** or **Not Configured**, and if Automatic Updates isn't disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

The alternate download server configures the Windows Update Agent to download files from an alternative download server instead of the intranet update service.
The option to download files with missing URLs allows content to be downloaded from the Alternate Download Server when there are no download URLs for files in the update metadata. This option should only be used when the intranet update service doesn't provide download URLs in the update metadata for files that are present on the alternate download server.

>[!NOTE]
>If the "Configure Automatic Updates" policy is disabled, then this policy has no effect.
>
>If the "Alternate Download Server" is not set, it will use the intranet update service by default to download updates.
>
>The option to "Download files with no Url..." is only used if the "Alternate Download Server" is set.

To configure this policy with MDM, use [UpdateServiceUrl](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurl) and [UpdateServiceUrlAlternate](/windows/client-management/mdm/policy-configuration-service-provider#update-updateserviceurlalternate).

### Automatic Updates detection frequency

Specifies the hours that Windows will use to determine how long to wait before checking for available updates. The exact wait time is determined by using the hours specified here minus zero to twenty percent of the hours specified. For example, if this policy is used to specify a 20-hour detection frequency, then all clients to which this policy is applied will check for updates anywhere between 16 to 20 hours.

To set this setting with Group Policy, navigate to **Computer Configuration\Administrative Templates\Windows Components\Windows Update\Automatic Updates detection frequency**.

If the setting is set to **Enabled**, Windows checks for available updates at the specified interval.
If the setting is set to **Disabled** or **Not Configured**, Windows checks for available updates at the default interval of 22 hours.

>[!NOTE]
>The "Specify intranet Microsoft update service location" setting must be enabled for this policy to have effect.
>
>If the "Configure Automatic Updates" policy is disabled, this policy has no effect.

To configure this policy with MDM, use [DetectionFrequency](/windows/client-management/mdm/policy-configuration-service-provider#update-detectionfrequency).

### Remove access to use all Windows Update features

By enabling the Group Policy setting under **Computer Configuration\Administrative Templates\Windows Components\Windows update\Remove access to use all Windows update features**, administrators can disable the "Check for updates" option for users. Any background update scans, downloads, and installations will continue to work as configured.

### Do not connect to any Windows Update Internet locations

Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Microsoft Store.

Use **Computer Configuration\Administrative Templates\Windows Components\Windows update\Do not connect to any Windows Update Internet locations** to enable this policy. When enabled, this policy will disable the functionality described above, and may cause connection to public services such as the Microsoft Store, Windows Update for Business, and Delivery Optimization to stop working.

>[!NOTE]
>This policy applies only when the device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

### Enable client-side targeting

Specifies the target group name or names that should be used to receive updates from an intranet Microsoft update service. This allows admins to configure device groups that receive different updates from sources like WSUS or Configuration Manager.

This Group Policy setting can be found under **Computer Configuration\Administrative Templates\Windows Components\Windows update\Enable client-side targeting**.
If the setting is set to **Enabled**, the specified target group information is sent to the intranet Microsoft update service, which uses it to determine which updates should be deployed to this computer.
If the setting is set to **Disabled** or **Not Configured**, no target group information is sent to the intranet Microsoft update service.

If the intranet Microsoft update service supports multiple target groups, this policy can specify multiple group names separated by semicolons. Otherwise, a single group must be specified.

>[!NOTE]
>This policy applies only when the intranet Microsoft update service the device is directed to is configured to support client-side targeting. If the "Specify intranet Microsoft update service location" policy is disabled or not configured, this policy has no effect.

### Allow signed updates from an intranet Microsoft update service location

This policy setting allows you to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.

To configure this setting in Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows update\Allow signed updates from an intranet Microsoft update service location**.

If you enable this policy setting, Automatic Updates accepts updates received through an intranet Microsoft update service location, as specified by [Specify Intranet Microsoft update service location](#specify-intranet-microsoft-update-service-location), if they're signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.
If you disable or don't configure this policy setting, updates from an intranet Microsoft update service location must be signed by Microsoft.

>[!NOTE]
>Updates from a service other than an intranet Microsoft update service must always be signed by Microsoft and are not affected by this policy setting.

To configure this policy with MDM, use [AllowNonMicrosoftSignedUpdate](/windows/client-management/mdm/policy-configuration-service-provider#update-allownonmicrosoftsignedupdate).


## Installing updates

To add more flexibility to the update process, settings are available to control update installation.

[Configure Automatic Updates](#configure-automatic-updates) offers four different options for automatic update installation, while [Do not include drivers with Windows Updates](#do-not-include-drivers-with-windows-updates) makes sure drivers aren't installed with the rest of the received updates.

### Do not include drivers with Windows Updates

Allows admins to exclude Windows Update drivers during updates.

To configure this setting in Group Policy, use **Computer Configuration\Administrative Templates\Windows Components\Windows update\Do not include drivers with Windows Updates**.
Enable this policy to not include drivers with Windows quality updates.
If you disable or don't configure this policy, Windows Update includes updates that have a Driver classification.

### Configure Automatic Updates

Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

#### Configuring Automatic Updates by using Group Policy

Under **Computer Configuration\Administrative Templates\Windows Components\Windows update\Configure Automatic Updates**, you must select one of the following options:

**2 - Notify for download and auto install** -  When Windows finds updates that apply to this device, users are notified that updates are ready to be downloaded. After going to **Settings > Update & security > Windows Update**, users can download and install any available updates.

**3 - Auto download and notify for Install** - Windows finds updates that apply to the device and downloads them in the background (the user isn't notified or interrupted during this process). When the downloads are complete, users will be notified that they're ready to install. After going to **Settings > Update & security > Windows Update**, users can install them.

**4 - Auto download and schedule the install** - Specify the schedule using the options in the Group Policy Setting. For more information about this setting, see [Schedule update installation](waas-restart.md#schedule-update-installation).

**5 - Allow local admin to choose setting** - With this option, local administrators are allowed to use the settings app to select a configuration option of their choice. Local administrators won't be allowed to disable the configuration for Automatic Updates. This option isn't available in any Windows 10 or later versions. 

**7 - Notify for install and notify for restart** (Windows Server 2016 and later only) - With this option, when Windows finds updates that apply to this device, they are downloaded, then users are notified that updates are ready to be installed. Once updates are installed, a notification is displayed to users to restart the device. 

If this setting is set to **Disabled**, any updates that are available on Windows Update must be downloaded and installed manually. To do this, users must go to **Settings > Update & security > Windows Update**.

If this setting is set to **Not Configured**, an administrator can still configure Automatic Updates through the settings app, under **Settings > Update & security > Windows Update > Advanced options**.

#### Configuring Automatic Updates by editing the registry

> [!NOTE]
> Serious problems might occur if you modify the registry incorrectly by using Registry Editor or by using another method. These problems might require you to reinstall the operating system. Microsoft cannot guarantee that these problems can be resolved. Modify the registry at your own risk.

In an environment that doesn't have Active Directory deployed, you can edit registry settings to configure group policies for Automatic Update.

To do this, follow these steps:

1. Select **Start**, search for "regedit", and then open Registry Editor.

2. Open the following registry key:

   ```
   HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
   ```

3. Add one of the following registry values to configure Automatic Update.

   * NoAutoUpdate (REG_DWORD):

     * **0**: Automatic Updates is enabled (default).

     * **1**: Automatic Updates is disabled.

   * AUOptions (REG_DWORD):

     * **1**: Keep my computer up to date is disabled in Automatic Updates.

     * **2**: Notify of download and installation.

     * **3**: Automatically download and notify of installation.

     * **4**: Automatically download and scheduled installation.

     * **5**: Allow local admin to select the configuration mode. This option isn't available for Windows 10 or later versions.

     * **7**:  Notify for install and notify for restart. (Windows Server 2016 and later only)

   * ScheduledInstallDay (REG_DWORD):

     * **0**: Every day.

     * **1** through **7**: The days of the week from Sunday (1) to Saturday (7).

   * ScheduledInstallTime (REG_DWORD):

     **n**, where **n** equals the time of day in a 24-hour format (0-23).

   * UseWUServer (REG_DWORD)

     Set this value to **1** to configure Automatic Updates to use a server that is running Software Update Services instead of Windows Update.

   * RescheduleWaitTime (REG_DWORD)

     **m**, where **m** equals the time period to wait between the time Automatic Updates starts and the time that it begins installations where the scheduled times have passed. The time is set in minutes from 1 to 60, representing 1 minute to 60 minutes)

     > [!NOTE]
     > This setting only affects client behavior after the clients have updated to the SUS SP1 client version or later versions.

   * NoAutoRebootWithLoggedOnUsers (REG_DWORD):

     **0** (false) or **1** (true). If set to **1**, Automatic Updates doesn't automatically restart a computer while users are logged on.

     > [!NOTE]
     > This setting affects client behavior after the clients have updated to the SUS SP1 client version or later versions.

To use Automatic Updates with a server that is running Windows Software Update Services (WSUS), see the [Deploying Microsoft Windows Server Update Services](/windows-server/administration/windows-server-update-services/deploy/deploy-windows-server-update-services) guidance.

When you configure Automatic Updates directly by using the policy registry keys, the policy overrides the preferences that are set by the local administrative user to configure the client. If an administrator removes the registry keys at a later date, the preferences that were set by the local administrative user are used again.

To determine the WSUS server that the client computers and servers connect to for updates, add the following registry values to the registry:
```
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\
```

* WUServer (REG_SZ)

  This value sets the WSUS server by HTTP name (for example, http://IntranetSUS).

*  WUStatusServer (REG_SZ)

   This value sets the SUS statistics server by HTTP name (for example, http://IntranetSUS).

## Display organization name in Windows Update notifications
<!--6286260-->
When Windows 11 clients are associated with a Microsoft Entra tenant, the organization name appears in the Windows Update notifications. For instance, when you have a compliance deadline configured for Windows Update for Business, the user notification displays a message similar to **Contoso requires important updates to be installed**. The organization name will also display on the **Windows Update** page in the **Settings** for Windows 11.  
  
The organization name appears automatically for Windows 11 clients that are associated with Microsoft Entra ID in any of the following ways:
- [Microsoft Entra joined](/azure/active-directory/devices/concept-azure-ad-join) 
- [Microsoft Entra registered](/azure/active-directory/devices/concept-azure-ad-register)
- [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid)

To disable displaying the organization name in Windows Update notifications, add or modify the following values in the registry:

   - **Registry key**: `HKEY_LOCAL_MACHINE\Software\Microsoft\WindowsUpdate\Orchestrator\Configurations`
  - **DWORD value name**: UsoDisableAADJAttribution
  - **Value data:** 1

The following PowerShell script is provided as an example to you: 
```powershell
$registryPath = "HKLM:\Software\Microsoft\WindowsUpdate\Orchestrator\Configurations"
$Name = "UsoDisableAADJAttribution"
$value = "1" 

if (!(Test-Path $registryPath)) 
{
  New-Item -Path $registryPath -Force | Out-Null
}

New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null
```

## Allow Windows updates to install before initial user sign-in
*(Starting in Windows 11, version 22H2 with 2023-04 Cumulative Update Preview, or a later cumulative update)* <!--7679187-->

On new devices, Windows Update doesn't begin installing background updates until a user has completed the Out of Box Experience (OOBE) and signs in for the first time. In many cases, the user signs in immediately after completing the OOBE. However, some VM-based solutions provision a device and automate the first user experience. These VMs may not be immediately assigned to a user so they won't see an initial sign-in until several days later.  

In scenarios where initial sign-in is delayed, setting the following registry values allow devices to begin background update work before a user first signs in:

- **Registry key**: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Orchestrator
- **DWORD value name**: ScanBeforeInitialLogonAllowed
- **Value data**: 1

> [!Warning]
> This value is designed to be used only for scenarios with a deferred initial user sign in. Setting this value on devices where initial user sign in isn't delayed could have a detrimental effect on performance since it may allow update work to occur as the user is signing in for the first time.
