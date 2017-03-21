---
title: What's new in Windows 10, version 1607 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
keywords: ["What's new in Windows 10", "Windows 10", "creators update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: TrudyHa
localizationpriority: high
---

# What's new in Windows 10, version 1703

Below is a list of some of the new and updated features in Windows 10, version 1703 (also known as the Creators Update).

>[!NOTE]
>For release dates and servicing options for each version, see [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info).
 
## Configuration

### Windows Configuration Designer

Previously known as *Windows Imaging and Configuration Designer (ICD)*, the tool for creating provisioning packages is renamed **Windows Configuration Designer**. The new Windows Configuration Designer is available in Windows Store as an app. To run Windows Configuration Designer on earlier versions of Windows, you can still install Windows Configuration Designer from the Windows Assessment and Deployment Kit (ADK).

Windows Configuration Designer in Windows 10, version 1703, includes several new wizards to make it easier to create provisioning packages.

![wizards for desktop, mobile, kiosk, HoloLens, Surface Hub](images/wcd-options.png)

[Learn more about Windows Configuration Designer.](../configure/provisioning-packages.md)

### Windows Spotlight

The following new Group Policy and mobile device management (MDM) settings are added to help you configure Windows Spotlight user experiences:

- **Turn off the Windows Spotlight on Action Center**
- **Do not use diagnostic data for tailored experiences**
- **Turn off the Windows Welcome Experience**

[Learn more about Windows Spotlight.](../configure/windows-spotlight.md)


### Start and taskbar layout

Enterprises can apply a customized Start and tasbkar layout to devices running Windows 10 Pro, version 1703. 

Additional MDM policy settings are available for Start and taskbar layout. For details, see [Manage Windows 10 Start and taskbar layout](../configure/windows-10-start-layout-options-and-policies.md).

Previously, the customized taskbar could only be deployed using Group Policy or provisioning packages. Windows 10, version 1703, adds support for customized taskbars to [MDM](../configure/customize-windows-10-start-screens-by-using-mobile-device-management.md).

### Lockdown Designer app

The Lockdown Designer app helps you configure and create a lockdown XML file to apply to devices running Windows 10 Mobile, and includes a remote simulation to help you determine the layout for tiles on the Start screen. Using Lockdown Designer is easier than [manually creating a lockdown XML file](../configure/lockdown-xml.md).

![Lockdown Designer app in Store](images/ldstore.png)

[Learn more about the Lockdown Designer app.](../configure/mobile-lockdown-designer.md)



### Kiosk mode for Windows 10 Mobile

In Windows 10 Mobile, version 1703, [Apps Corner](https://support.microsoft.com/instantanswers/7959c547-aa80-5ff1-9097-1784b6894845/set-up-apps-corner) is removed. Enterprises can use [Enterprise Assigned Access to configure kiosk experiences](../configure/set-up-a-kiosk-for-windows-10-for-mobile-edition.md) on devices running Windows 10 Mobile. 



## Deployment

### MBR2GPT.EXE

MBR2GPT.EXE is a new command-line tool available in Windows 10 version 1703 and later versions. MBR2GPT converts a disk from Master Boot Record (MBR) to GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. The tool is designed to be run from a Windows Preinstallation Environment (Windows PE) command prompt, but can also be run from the full Windows 10 operating system (OS).

The GPT partition format is newer and enables the use of larger and more disk partitions. It also provides added data reliability and supports additional partition types. If you convert the system disk on a computer from MBR to GPT, you must also configure the computer to boot in UEFI mode, so make sure that your device supports UEFI before attempting to convert the system disk. 

For details, see [MBR2GPT.EXE](../deploy/mbr-to-gpt.md).

### Cortana at work

Cortana is Microsoft’s personal digital assistant, who helps busy people get things done, even while at work. Cortana has powerful configuration options, specifically optimized for your business. By signing in with an Azure Active Directory (Azure AD) account, your employees can give Cortana access to their enterprise/work identity, while getting all the functionality Cortana provides to them outside of work.

Using Azure AD also means that you can remove an employee’s profile (for example, when an employee leaves your organization) while respecting Windows Information Protection (WIP) policies and ignoring enterprise content, such as emails, calendar items, and people lists that are marked as enterprise data.

## Security

### Windows Defender Advanced Threat Protection (Windows Defender ATP)
- **Detection**<br>
  Enhancements to the detection capabilities include:
  - [Use the threat intelligence API to create custom alerts](../keep-secure/use-custom-ti-windows-defender-advanced-threat-protection.md) - Understand threat intelligence concepts, enable the threat intel application, and create custom threat intelligence alerts for your organization.
  - Improvements on OS memory and kernel sensors to enable detection of attackers who are using in-memory and kernel-level attacks
  - Upgraded detections of ransomware and other advanced attacks
  - Historical detection capability ensures new detection rules apply to up to six months of stored data to detect attacks that previously went unnoticed

- **Investigation**<br>
  Enterprise customers can now take advantage of the entire Windows security stack with Windows Defender Antivirus detections and Device Guard blocks being surfaced in the Windows Defender ATP portal. Other capabilities have been added to help you gain a holistic view on investigations.

   Other investigation enhancements include:
   - [Investigate a user account](../keep-secure/investigate-user-windows-defender-advanced-threat-protection.md) - Identify user accounts with the most active alerts and investigate cases of potential compromised credentials.
   - [Alert process tree](../keep-secure/investigate-alerts-windows-defender-advanced-threat-protection.md#alert-process-tree) - Aggregates multiple detections and related events into a single view to reduce case resolution time.
   - [Pull alerts using REST API](../keep-secure/pull-alerts-using-rest-api-windows-defender-advanced-threat-protection.md) - Use REST API to pull alerts from Windows Defender ATP.

- **Response**<br>
  When detecting an attack, security response teams can now take immediate action to contain a breach:
  - [Take response actions on a machine](../keep-secure/respond-machine-alerts-windows-defender-advanced-threat-protection.md) - Quickly respond to detected attacks by isolating machines or collecting an investigation package.
  - [Take response actions on a file](../keep-secure/respond-file-alerts-windows-defender-advanced-threat-protection.md) - Quickly respond to detected attacks by stopping and quarantining files or blocking a file.


- **Other features**
  - [Check sensor health state](../keep-secure/check-sensor-status-windows-defender-advanced-threat-protection.md) - Check an endpoint's ability to provide sensor data and communicate with the Windows Defender ATP service and fix known issues.

 

### Windows Defender Antivirus (Windows Defender AV)
New features for Windows Defender AV in Windows 10, version 1703 include:

- [Updates to how the Block at First Sight feature can be configured](../keep-secure/configure-block-at-first-sight-windows-defender-antivirus.md)
- [The ability to specify the level of cloud-protection](../keep-secure/specify-cloud-protection-level-windows-defender-antivirus.md)
- [Windows Defender Antivirus protection in the Windows Defender Security Center app](../keep-secure/windows-defender-security-center-antivirus.md)

Windows Defender is now called Windows Defender Antivirus, and we've [increased the breadth of the documentation library for enterprise security admins](../keep-secure/windows-defender-antivirus-in-windows-10.md). 

The new library includes information on:
- [Deploying and enabling AV protection](../keep-secure/deploy-windows-defender-antivirus.md)
- [Managing updates](../keep-secure/manage-updates-baselines-windows-defender-antivirus.md)
- [Reporting](../keep-secure/report-monitor-windows-defender-antivirus.md)
- [Configuring features](../keep-secure/configure-windows-defender-antivirus-features.md)
- [Troubleshooting](../keep-secure/troubleshoot-windows-defender-antivirus.md)

Some of the highlights of the new library include:
- [Evaluation guide for Windows Defender AV](../keep-secure/evaluate-windows-defender-antivirus.md)
- [Deployment guide for Windows Defender AV in a virtual desktop infrastructure environment](../keep-secure/deployment-vdi-windows-defender-antivirus.md)


### Device Guard and Credential Guard

Additional security qualifications for Device Guard and Credential Guard help protect vulnerabilities in UEFI runtime. 
For more information, see [Device Guard Requirements](../keep-secure/requirements-and-deployment-planning-guidelines-for-device-guard.md#device-guard-requirements-for-improved-security) and [Credential Guard Security Considerations](../keep-secure/credential-guard.md#security-considerations).

### Group Policy Security Options

The security setting [**Interactive logon: Display user information when the session is locked**](../keep-secure/interactive-logon-display-user-information-when-the-session-is-locked.md) has been updated to work in conjunction with the **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**. 

## Update

### Windows Update for Business

The pause feature has been changed, and now requires a start date to set up. Users are now able to pause through **Settings > Update & security > Windows Update > Advanced options** in case a policy has not been configured. We have also increased the pause limit on quality updates to 35 days. You can find more information on pause in [Pause Feature Updates](../update/waas-configure-wufb.md#pause-feature-updates) and [Pause Quality Updates](../update/waas-configure-wufb.md#pause-quality-updates).

You are now able to defer feature update installation by up to 365 days. In settings, users are able to select their branch readiness level and update deferal periods. See [Configure devices for Current Branch (CB) or Current Branch for Business (CBB)](../update/waas-configure-wufb.md#configure-devices-for-current-branch-or-current-branch-for-business), [Configure when devices receive Feature Updates](../update/waas-configure-wufb.md#configure-when-devices-receive-feature-updates) and [Configure when devices receive Quality Updates](../update/waas-configure-wufb.md#configure-when-devices-receive-quality-updates) for details.

### Delivery Optimization

Delivery Optimization policies now enable you to configure additional restrictions to have more control in various scenarios. 

Added policies include:
- [Allow uploads while the device is on battery while under set Battery level](../update/waas-delivery-optimization.md#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level)
- [Enable Peer Caching while the device connects via VPN](../update/waas-delivery-optimization.md#enable-peer-caching-while-the-device-connects-via-vpn)
- [Minimum RAM (inclusive) allowed to use Peer Caching](../update/waas-delivery-optimization.md#minimum-ram-allowed-to-use-peer-caching)
- [Minimum disk size allowed to use Peer Caching](../update/waas-delivery-optimization.md#minimum-disk-size-allowed-to-use-peer-caching)
- [Minimum Peer Caching Content File Size](../update/waas-delivery-optimization.md#minimum-peer-caching-content-file-size)

To check out all the details, see [Configure Delivery Optimization for Windows 10 updates](../update/waas-delivery-optimization.md)

## Learn more

- [Windows 10 release information](https://technet.microsoft.com/en-us/windows/release-info)
