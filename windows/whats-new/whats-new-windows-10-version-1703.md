---
title: What's new in Windows 10, version 1703
description: New and updated features in Windows 10, version 1703 (also known as the Creators Updated).
ms.prod: windows-client
ms.localizationpriority: medium
author: mestew
manager: aaroncz
ms.author: mstewart
ms.topic: article
ROBOTS: NOINDEX
ms.technology: itpro-fundamentals
ms.date: 12/31/2017
---

# What's new in Windows 10, version 1703 for IT Pros

Below is a list of some of what's new in Information Technology (IT) pro features in Windows 10, version 1703 (also known as the Creators Update).

For more general info about Windows 10 features, see [Features available only on Windows 10](https://www.microsoft.com/windows/features). For info about previous versions of Windows 10, see [What's New in Windows 10](./index.yml). Also see this blog post: [What’s new for IT pros in the Windows 10 Creators Update}(https://blogs.technet.microsoft.com/windowsitpro/2017/04/05/whats-new-for-it-pros-in-the-windows-10-creators-update/).

>[!NOTE]
>Windows 10, version 1703 contains all fixes included in previous cumulative updates to Windows 10, version 1607. For info about each version, see [Windows 10 release information](https://technet.microsoft.com/windows/release-info). For a list of removed features, see [Features that are removed in Windows 10 Creators Update](removed-features.md).

## Configuration

### Windows Configuration Designer

Previously known as *Windows Imaging and Configuration Designer (ICD)*, the tool for creating provisioning packages is renamed **Windows Configuration Designer**. The new Windows Configuration Designer is available in [Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22) as an app. To run Windows Configuration Designer on earlier versions of Windows, you can still install Windows Configuration Designer from the [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit).

Windows Configuration Designer in Windows 10, version 1703, includes several new wizards to make it easier to create provisioning packages.

![wizards for desktop, mobile, kiosk, Surface Hub.](images/wcd-options.png)

Both the desktop and kiosk wizards include an option to remove pre-installed software, based on the new [CleanPC configuration service provider (CSP)](/windows/client-management/mdm/cleanpc-csp).

![remove pre-installed software option.](images/wcd-cleanpc.png)

[Learn more about Windows Configuration Designer.](/windows/configuration/provisioning-packages/provisioning-packages)


### Azure Active Directory join in bulk

Using the new wizards in Windows Configuration Designer, you can [create provisioning packages to enroll devices in Azure Active Directory](/windows/configuration/provisioning-packages/provisioning-packages#configuration-designer-wizards). Azure AD join in bulk is available in the desktop, mobile, kiosk, and Surface Hub wizards.


### Windows Spotlight

The following new Group Policy and mobile device management (MDM) settings are added to help you configure Windows Spotlight user experiences:

- **Turn off the Windows Spotlight on Action Center**
- **Do not use diagnostic data for tailored experiences**
- **Turn off the Windows Welcome Experience**

[Learn more about Windows Spotlight.](/windows/configuration/windows-spotlight)


### Start and taskbar layout

Enterprises have been able to apply customized Start and taskbar layouts to devices running Windows 10 Enterprise and Education. In Windows 10, version 1703, customized Start and taskbar layout can also be applied to Windows 10 Pro.

Previously, the customized taskbar could only be deployed using Group Policy or provisioning packages. Windows 10, version 1703, adds support for customized taskbars to [MDM](/windows/configuration/customize-windows-10-start-screens-by-using-mobile-device-management).

[More MDM policy settings are available for Start and taskbar layout](/windows/configuration/windows-10-start-layout-options-and-policies). New MDM policy settings include:

- Settings for the User tile: [**Start/HideUserTile**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideusertile), [**Start/HideSwitchAccount**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideswitchaccount), [**Start/HideSignOut**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesignout), [**Start/HideLock**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidelock), and [**Start/HideChangeAccountSettings**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidechangeaccountsettings)
- Settings for Power: [**Start/HidePowerButton**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidepowerbutton), [**Start/HideHibernate**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidehibernate), [**Start/HideRestart**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderestart), [**Start/HideShutDown**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideshutdown), and [**Start/HideSleep**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesleep)
- Other new settings: [**Start/HideFrequentlyUsedApps**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidefrequentlyusedapps), [**Start/HideRecentlyAddedApps**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentlyaddedapps), **AllowPinnedFolder**, **ImportEdgeAssets**, [**Start/HideRecentJumplists**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentjumplists), [**Start/NoPinningToTaskbar**](/windows/client-management/mdm/policy-configuration-service-provider#start-nopinningtotaskbar), [**Settings/PageVisibilityList**](/windows/client-management/mdm/policy-configuration-service-provider#settings-pagevisibilitylist), and [**Start/HideAppsList**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideapplist).

### Cortana at work

Cortana is Microsoft’s personal digital assistant, who helps busy people get things done, even while at work. Cortana has powerful configuration options, optimized for your business. When your employees sign in with an Azure Active Directory (Azure AD) account, they can give Cortana access to their enterprise/work identity, while getting all the functionality Cortana provides to them outside of work.

Using Azure AD also means that you can remove an employee’s profile (for example, when an employee leaves your organization) while respecting Windows Information Protection (WIP) policies and ignoring enterprise content, such as emails, calendar items, and people lists that are marked as enterprise data.

For more info about Cortana at work, see [Cortana integration in your business or enterprise](/windows/configuration/cortana-at-work/cortana-at-work-overview)


## Deployment

### MBR2GPT.EXE

MBR2GPT.EXE is a new command-line tool available in Windows 10 version 1703 and later versions. MBR2GPT converts a disk from Master Boot Record (MBR) to GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. The tool is designed to be run from a Windows Preinstallation Environment (Windows PE) command prompt, but can also be run from the full Windows 10 operating system (OS).

The GPT partition format is newer and enables the use of larger and more disk partitions. It also provides added data reliability, supports other partition types, and enables faster boot and shutdown speeds. If you convert the system disk on a computer from MBR to GPT, you must also configure the computer to boot in UEFI mode, so make sure that your device supports UEFI before attempting to convert the system disk.

Other security features of Windows 10 that are enabled when you boot in UEFI mode include: Secure Boot, Early Launch Anti-malware (ELAM) driver, Windows Trusted Boot, Measured Boot, Device Guard, Credential Guard, and BitLocker Network Unlock.

For details, see [MBR2GPT.EXE](/windows/deployment/mbr-to-gpt).

## Security

### Microsoft Defender for Endpoint

New features in Microsoft Defender for Endpoint for Windows 10, version 1703 include:
- **Detection**: Enhancements to the detection capabilities include:
  - Improvements on OS memory and kernel sensors to enable detection of attackers who are using in-memory and kernel-level attacks
  - Upgraded detections of ransomware and other advanced attacks
  - Historical detection capability ensures new detection rules apply to up to six months of stored data to detect previous attacks that might not have been noticed

- **Investigation**: Enterprise customers can now take advantage of the entire Windows security stack with Microsoft Defender Antivirus detections and Device Guard blocks being surfaced in the Microsoft Defender for Endpoint portal. Other capabilities have been added to help you gain a holistic view on investigations.

   Other investigation enhancements include:
   - [Investigate a user account](/windows/threat-protection/windows-defender-atp/investigate-user-windows-defender-advanced-threat-protection) - Identify user accounts with the most active alerts and investigate cases of potential compromised credentials.
   - [Alert process tree](/windows/threat-protection/windows-defender-atp/investigate-alerts-windows-defender-advanced-threat-protection#alert-process-tree) - Aggregates multiple detections and related events into a single view to reduce case resolution time.
   - [Pull alerts using REST API](/windows/threat-protection/windows-defender-atp/pull-alerts-using-rest-api-windows-defender-advanced-threat-protection) - Use REST API to pull alerts from Microsoft Defender for Endpoint.

- **Response**: When an attack is detected, security response teams can now take immediate action to contain a breach:
  - [Take response actions on a machine](/windows/threat-protection/windows-defender-atp/respond-machine-alerts-windows-defender-advanced-threat-protection) - Quickly respond to detected attacks by isolating machines or collecting an investigation package.
  - [Take response actions on a file](/windows/threat-protection/windows-defender-atp/respond-file-alerts-windows-defender-advanced-threat-protection) - Quickly respond to detected attacks by stopping and quarantining files or blocking a file.


- **Other features**
  - [Check sensor health state](/windows/threat-protection/windows-defender-atp/check-sensor-status-windows-defender-advanced-threat-protection) - Check an endpoint's ability to provide sensor data and communicate with the Microsoft Defender for Endpoint service and fix known issues.

You can read more about ransomware mitigations and detection capability in Microsoft Defender for Endpoint in the blog: [Averting ransomware epidemics in corporate networks with Microsoft Defender for Endpoint](https://blogs.technet.microsoft.com/mmpc/2017/01/30/averting-ransomware-epidemics-in-corporate-networks-with-windows-defender-atp/).

Get a quick, but in-depth overview of Microsoft Defender for Endpoint for Windows 10 and the new capabilities in Windows 10, version 1703 see [Microsoft Defender for Endpoint for Windows 10 Creators Update](/windows/deployment/deploy-whats-new).

### Microsoft Defender Antivirus
Windows Defender is now called Microsoft Defender Antivirus, and we've [increased the breadth of the documentation library for enterprise security admins](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows).

The new library includes information on:
- [Deploying and enabling AV protection](/microsoft-365/security/defender-endpoint/deploy-microsoft-defender-antivirus)
- [Managing updates](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus)
- [Reporting](/microsoft-365/security/defender-endpoint/report-monitor-microsoft-defender-antivirus)
- [Configuring features](/microsoft-365/security/defender-endpoint/configure-microsoft-defender-antivirus-features)
- [Troubleshooting](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus)

Some of the highlights of the new library include:
- [Evaluation guide for Microsoft Defender AV](/microsoft-365/security/defender-endpoint/evaluate-microsoft-defender-antivirus)
- [Deployment guide for Microsoft Defender AV in a virtual desktop infrastructure environment](/microsoft-365/security/defender-endpoint/deployment-vdi-microsoft-defender-antivirus)

New features for Microsoft Defender AV in Windows 10, version 1703 include:

- [Updates to how the Block at First Sight feature can be configured](/microsoft-365/security/defender-endpoint/configure-block-at-first-sight-microsoft-defender-antivirus)
- [The ability to specify the level of cloud-protection](/microsoft-365/security/defender-endpoint/specify-cloud-protection-level-microsoft-defender-antivirus)
- [Microsoft Defender Antivirus protection in the Windows Defender Security Center app](/microsoft-365/security/defender-endpoint/microsoft-defender-security-center-antivirus)


In Windows 10, version 1607, we [invested heavily in helping to protect against ransomware](https://blogs.windows.com/business/2016/11/11/defending-against-ransomware-with-windows-10-anniversary-update/#UJlHc6SZ2Zm44jCt.97), and we continue that investment in version 1703 with [updated behavior monitoring and always-on real-time protection](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus).

You can read more about ransomware mitigations and detection capability in Microsoft Defender AV in the [Microsoft Malware Protection Center blog](https://blogs.technet.microsoft.com/mmpc/category/research/ransomware/).

### Device Guard and Credential Guard

More security qualifications for Device Guard and Credential Guard help protect vulnerabilities in UEFI runtime.
For more information, see [Device Guard Requirements](/windows/device-security/device-guard/requirements-and-deployment-planning-guidelines-for-device-guard) and [Credential Guard Security Considerations](/windows/access-protection/credential-guard/credential-guard-requirements#security-considerations).

### Group Policy Security Options

The security setting [**Interactive logon: Display user information when the session is locked**](/windows/device-security/security-policy-settings/interactive-logon-display-user-information-when-the-session-is-locked) has been updated to work in conjunction with the **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**.

A new security policy setting
[**Interactive logon: Don't display username at sign-in**](/windows/device-security/security-policy-settings/interactive-logon-dont-display-username-at-sign-in) has been introduced in Windows 10 version 1703. This security policy setting determines whether the username is displayed during sign-in. It works in conjunction with the **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**. The setting only affects the **Other user** tile.

### Windows Hello for Business

You can now reset a forgotten PIN without deleting company managed data or apps on devices managed by [Microsoft Intune](https://www.microsoft.com/cloud-platform/microsoft-intune).

For Windows desktops, users are able to reset a forgotten PIN through **Settings > Accounts > Sign-in options**.

For more details, check out [What if I forget my PIN?](/windows/security/identity-protection/hello-for-business/hello-feature-pin-reset).

### Windows Information Protection (WIP) and Azure Active Directory (Azure AD)
Microsoft Intune helps you create and deploy your Windows Information Protection (WIP) policy, including letting you choose your allowed apps, your WIP-protection level, and how to find enterprise data on the network. For more info, see [Create a Windows Information Protection (WIP) policy using Microsoft Intune](/windows/threat-protection/windows-information-protection/create-wip-policy-using-intune) and [Associate and deploy your Windows Information Protection (WIP) and VPN policies by using Microsoft Intune](/windows/threat-protection/windows-information-protection/create-vpn-and-wip-policy-using-intune).

You can also now collect your audit event logs by using the Reporting configuration service provider (CSP) or the Windows Event Forwarding (for Windows desktop domain-joined devices). For info, see the brand-new topic, [How to collect Windows Information Protection (WIP) audit event logs](/windows/threat-protection/windows-information-protection/collect-wip-audit-event-logs).

## Update

### Windows Update for Business

The pause feature has been changed, and now requires a start date to set up. Users are now able to pause through **Settings > Update & security > Windows Update > Advanced options** in case a policy hasn't been configured. We've also increased the pause limit on quality updates to 35 days. You can find more information on pause in [Pause Feature Updates](/windows/deployment/update/waas-configure-wufb#pause-feature-updates) and [Pause Quality Updates](/windows/deployment/update/waas-configure-wufb#pause-quality-updates).


Windows Update for Business managed devices are now able to defer feature update installation by up to 365 days (it used to be 180 days). In settings, users are able to select their branch readiness level and update deferral periods. See [Configure devices for Current Branch (CB) or Current Branch for Business (CBB)](/windows/deployment/update/waas-configure-wufb#configure-devices-for-current-branch-or-current-branch-for-business), [Configure when devices receive Feature Updates](/windows/deployment/update/waas-configure-wufb#configure-when-devices-receive-feature-updates) and [Configure when devices receive Quality Updates](/windows/deployment/update/waas-configure-wufb#configure-when-devices-receive-quality-updates) for details.


### Windows Insider for Business

We recently added the option to download Windows 10 Insider Preview builds using your corporate credentials in Azure Active Directory (Azure AD). By enrolling devices in Azure AD, you increase the visibility of feedback submitted by users in your organization, especially on features that support your specific business needs. For details, see [Windows Insider Program for Business](/windows-insider/business/register).

### Optimize update delivery

With changes delivered in Windows 10, version 1703, [express updates](/windows/deployment/do/waas-optimize-windows-10-updates#express-update-delivery) are now fully supported with Microsoft Configuration Manager, starting with version 1702 of Configuration Manager, and with other third-party updating and management products that [implement this new functionality](/windows-server/administration/windows-server-update-services/deploy/express-update-delivery-isv-support). This support is in addition to current Express support on Windows Update, Windows Update for Business and WSUS.

>[!NOTE]
> The above changes can be made available to Windows 10, version 1607, by installing the April 2017 cumulative update.

Delivery Optimization policies now enable you to configure more restrictions to have more control in various scenarios.

Added policies include:
- [Allow uploads while the device is on battery while under set Battery level](/windows/deployment/update/waas-delivery-optimization#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level)
- [Enable Peer Caching while the device connects via VPN](/windows/deployment/update/waas-delivery-optimization#enable-peer-caching-while-the-device-connects-via-vpn)
- [Minimum RAM (inclusive) allowed to use Peer Caching](/windows/deployment/update/waas-delivery-optimization#minimum-ram-allowed-to-use-peer-caching)
- [Minimum disk size allowed to use Peer Caching](/windows/deployment/update/waas-delivery-optimization#minimum-disk-size-allowed-to-use-peer-caching)
- [Minimum Peer Caching Content File Size](/windows/deployment/update/waas-delivery-optimization#minimum-peer-caching-content-file-size)

To check out all the details, see [Configure Delivery Optimization for Windows 10 updates](/windows/deployment/update/waas-delivery-optimization)

### Uninstalled in-box apps no longer automatically reinstall

Starting with Windows 10, version 1703, in-box apps that were uninstalled by the user won't automatically reinstall as part of the feature update installation process.

Additionally, apps de-provisioned by admins on Windows 10, version 1703 machines will stay de-provisioned after future feature update installations. This condition won't apply to the update from Windows 10, version 1607 (or earlier) to version 1703.

## Management

### New MDM capabilities

Windows 10, version 1703 adds many new [configuration service providers (CSPs)](/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers) that provide new capabilities for managing Windows 10 devices using MDM or provisioning packages. Among other things, these CSPs enable you to configure a few hundred of the most useful Group Policy settings via MDM - see [Policy CSP - ADMX-backed policies](/windows/client-management/mdm/policy-configuration-service-provider).

Some of the other new CSPs are:

- The [DynamicManagement CSP](/windows/client-management/mdm/dynamicmanagement-csp) allows you to manage devices differently depending on location, network, or time. For example, managed devices can have cameras disabled when at a work location, the cellular service can be disabled when outside the country/region to avoid roaming charges, or the wireless network can be disabled when the device isn't within the corporate building or campus. Once configured, these settings will be enforced even if the device can’t reach the management server when the location or network changes. The Dynamic Management CSP enables configuration of policies that change how the device is managed in addition to setting the conditions on which the change occurs.

- The [CleanPC CSP](/windows/client-management/mdm/cleanpc-csp) allows removal of user-installed and pre-installed applications, with the option to persist user data.

- The [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) is used to manage encryption of PCs and devices. For example, you can require storage card encryption on mobile devices, or require encryption for operating system drives.

- The [NetworkProxy CSP](/windows/client-management/mdm/networkproxy-csp) is used to configure a proxy server for ethernet and Wi-Fi connections.

- The [Office CSP](/windows/client-management/mdm/office-csp) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool. For more information, see [Configuration options for the Office Deployment Tool](/deployoffice/office-deployment-tool-configuration-options).

- The [EnterpriseAppVManagement CSP](/windows/client-management/mdm/enterpriseappvmanagement-csp) is used to manage virtual applications in Windows 10 PCs (Enterprise and Education editions) and enables App-V sequenced apps to be streamed to PCs even when managed by MDM.


[Learn more about new MDM capabilities.](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management#whatsnew10)

### Mobile application management support for Windows 10

The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP), starting in Windows 10, version 1703.

For more info, see [Implement server-side support for mobile application management on Windows](/windows/client-management/mdm/implement-server-side-mobile-application-management).

### MDM diagnostics

In Windows 10, version 1703, we continue our work to improve the diagnostic experience for modern management. By introducing auto-logging for mobile devices, Windows will automatically collect logs when encountering an error in MDM, eliminating the need to have always-on logging for memory-constrained devices. Additionally, we're introducing [Microsoft Message Analyzer](/message-analyzer/microsoft-message-analyzer-operating-guide) as an extra tool to help Support personnel quickly reduce issues to their root cause, while saving time and cost.

### Application Virtualization for Windows (App-V)
Previous versions of the Microsoft Application Virtualization Sequencer (App-V Sequencer) have required you to manually create your sequencing environment. Windows 10, version 1703 introduces two new PowerShell cmdlets, New-AppVSequencerVM and Connect-AppvSequencerVM, which automatically create your sequencing environment for you, including provisioning your virtual machine. Additionally, the App-V Sequencer has been updated to let you sequence or update multiple apps at the same time, while automatically capturing and storing your customizations as an App-V project template (.appvt) file, and letting you use PowerShell or Group Policy settings to automatically clean up your unpublished packages after a device restart.

For more info, see the following topics:
- [Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/windows/application-management/app-v/appv-auto-provision-a-vm)
- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/windows/application-management/app-v/appv-auto-batch-sequencing)
- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/windows/application-management/app-v/appv-auto-batch-updating)
- [Automatically clean up unpublished packages on the App-V client](/windows/application-management/app-v/appv-auto-clean-unpublished-packages)

### Windows diagnostic data

Learn more about the diagnostic data that's collected at the Basic level and some examples of the types of data that is collected at the Full level.

- [Windows 10, version 1703 basic level Windows diagnostic events and fields](/windows/configuration/basic-level-windows-diagnostic-events-and-fields-1703)
- [Windows 10, version 1703 Diagnostic Data](/windows/configuration/windows-diagnostic-data-1703)

### Group Policy spreadsheet

Learn about the new Group Policies that were added in Windows 10, version 1703.

- [Group Policy Settings Reference for Windows and Windows Server](https://www.microsoft.com/download/details.aspx?id=25250)

## Miracast on existing wireless network or LAN

In the Windows 10, version 1703, Microsoft has extended the ability to send a Miracast stream over a local network rather than over a direct wireless link. This functionality is based on the [Miracast over Infrastructure Connection Establishment Protocol (MS-MICE)](/openspecs/windows_protocols/ms-mice/9598ca72-d937-466c-95f6-70401bb10bdb).

Miracast over Infrastructure offers many benefits:

- Windows automatically detects when sending the video stream over this path is applicable.
- Windows will only choose this route if the connection is over Ethernet or a secure Wi-Fi network.
- Users don't have to change how they connect to a Miracast receiver. They use the same UX as for standard Miracast connections.
- No changes to current wireless drivers or PC hardware are required.
- It works well with older wireless hardware that isn't optimized for Miracast over Wi-Fi Direct.
- It uses an existing connection that reduces the time to connect and provides a stable stream.

### How it works

Users attempt to connect to a Miracast receiver as they did previously. When the list of Miracast receivers is populated, Windows 10 will identify that the receiver is capable of supporting a connection over the infrastructure. When the user selects a Miracast receiver, Windows 10 will attempt to resolve the device's hostname via standard DNS, and via multicast DNS (mDNS). If the name isn't resolvable via either DNS method, Windows 10 will fall back to establishing the Miracast session using the standard Wi-Fi direct connection.

### Enabling Miracast over Infrastructure

If you have a device that has been updated to Windows 10, version 1703, then you automatically have this new feature. To take advantage of it in your environment, you need to ensure the following requirements are true within your deployment:

- The device (PC or Surface Hub) needs to be running Windows 10, version 1703.
- A Windows PC or Surface Hub can act as a Miracast over Infrastructure *receiver*. A Windows device can act as a Miracast over Infrastructure *source*.
    - As a Miracast receiver, the PC or Surface Hub must be connected to your enterprise network via either Ethernet or a secure Wi-Fi connection (for example, using either WPA2-PSK or WPA2-Enterprise security). If the Hub is connected to an open Wi-Fi connection, Miracast over Infrastructure will disable itself.
    - As a Miracast source, the device must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection.
- The DNS Hostname (device name) of the device needs to be resolvable via your DNS servers. You can achieve this resolution by either allowing your device to register automatically via Dynamic DNS, or by manually creating an A or AAAA record for the device's hostname.
- Windows 10 PCs must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection.

It's important to note that Miracast over Infrastructure isn't a replacement for standard Miracast. Instead, the functionality is complementary, and provides an advantage to users who are part of the enterprise network. Users who are guests to a particular location and don’t have access to the enterprise network will continue to connect using the Wi-Fi Direct connection method.

## New features in related products
The following new features aren't part of Windows 10, but help you make the most of it.

### Upgrade Readiness

Upgrade Readiness helps you ensure that applications and drivers are ready for a Windows 10 upgrade. The solution provides up-to-date application and driver inventory, information about known issues, troubleshooting guidance, and per-device readiness and tracking details. The Upgrade Readiness tool moved from public preview to general availability on March 2, 2017.

The development of Upgrade Readiness has been heavily influenced by input from the community the development of new features is ongoing. To begin using Upgrade Readiness, add it to an existing Operation Management Suite (OMS) workspace or sign up for a new OMS workspace with the Upgrade Readiness solution enabled.

For more information about Upgrade Readiness, see the following topics:

- [Windows Analytics blog](/archive/blogs/upgradeanalytics/)
- [Manage Windows upgrades with Upgrade Readiness](/windows/deployment/upgrade/manage-windows-upgrades-with-upgrade-readiness)


### Update Compliance

Update Compliance helps you to keep Windows 10 devices in your organization secure and up-to-date.

Update Compliance is a solution built using OMS Log Analytics that provides information about installation status of monthly quality and feature updates. Details are provided about the deployment progress of existing updates and the status of future updates. Information is also provided about devices that might need attention to resolve issues.

For more information about Update Compliance, see [Monitor Windows Updates with Update Compliance](/windows/deployment/update/update-compliance-monitor).
