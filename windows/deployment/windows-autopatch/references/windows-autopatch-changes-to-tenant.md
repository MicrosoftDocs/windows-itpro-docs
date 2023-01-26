---
title: Changes made at tenant enrollment
description: This reference article details the changes made to your tenant when enrolling into Windows Autopatch
ms.date: 01/24/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Changes made at tenant enrollment

The following configuration details are provided as information to help you understand the changes made to your tenant when enrolling into the Windows Autopatch service.

> [!IMPORTANT]
> The service manages and maintains the following configuration items. Don't change, edit, add to, or remove any of the configurations. Doing so might cause unintended configuration conflicts and impact the Windows Autopatch service.

## Windows Autopatch enterprise applications

Enterprise applications are applications (software) that a business uses to do its work.

Windows Autopatch creates an enterprise application in your tenant. This enterprise application is a first party application used to run the Windows Autopatch service.

| Enterprise application name | Usage | Permissions |
| ----- | ------ | ----- |
| Modern Workplace Management | This enterprise application is a limited first party enterprise application with elevated privileges. This application is used to manage the service, publish baseline configuration updates, and maintain overall service health. | <ul><li>DeviceManagementApps.ReadWrite.All</li><li>DeviceManagementConfiguration.ReadWrite.All</li><li>DeviceManagementManagedDevices.PriviligedOperation.All</li><li>DeviceManagementManagedDevices.ReadWrite.All</li><li>DeviceManagementRBAC.ReadWrite.All</li><li>DeviceManagementServiceConfig.ReadWrite.All</li><li>Directory.Read.All</li><li>Group.Create</li><li>Policy.Read.All</li><li>WindowsUpdates.Read.Write.All</li></ul> |

### Service principal

Windows Autopatch will create a service principal in your tenant allowing the service to establish an identity and restrict access to what resources the service has access to within the tenant. For more information, see [Application and service principal objects in Azure Active Directory](/azure/active-directory/develop/app-objects-and-service-principals#service-principal-object). The service principal created by Windows Autopatch is:  

- Modern Workplace Customer APIs

## Azure Active Directory groups

Windows Autopatch will create Azure Active Directory groups that are required to operate the service. The following groups are used for targeting Windows Autopatch configurations to devices and management of the service by our [first party enterprise applications](#windows-autopatch-enterprise-applications).

| Group name | Description |
| ----- | ----- |
| Modern Workplace-All | All Modern Workplace users |
| Modern Workplace - Windows 11 Pre-Release Test Devices | Device group for Windows 11 Pre-Release testing. |
| Modern Workplace Devices-All | All Modern Workplace devices |
| Modern Workplace Devices-Windows Autopatch-Test | Deployment ring for testing update deployments prior production rollout |
| Modern Workplace Devices-Windows Autopatch-First | First production deployment ring for early adopters |
| Modern Workplace Devices-Windows Autopatch-Fast | Fast deployment ring for quick rollout and adoption |
| Modern Workplace Devices-Windows Autopatch-Broad | Final deployment ring for broad rollout into the organization |
| Modern Workplace Roles - Service Administrator | All users granted access to Modern Workplace Service Administrator Role |
| Modern Workplace Roles - Service Reader | All users granted access to Modern Workplace Service Reader Role |
| Windows Autopatch Device Registration | Group for automatic device registration for Windows Autopatch |

## Device configuration policies

- Windows Autopatch - Set MDM to Win Over GPO
- Windows Autopatch - Data Collection

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Set MDM to Win Over GPO | Sets mobile device management (MDM) to win over GPO<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| [MDM Wins Over GP](/windows/client-management/mdm/policy-csp-controlpolicyconflict#controlpolicyconflict-MDMWinsOverGP) | The MDM policy is used and the GP policy is blocked |
| Windows Autopatch - Data Collection | Allows diagnostic data from this device to be processed by Microsoft Managed Desktop and Telemetry settings for Windows devices.<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>|<ol><li>[Configure Telemetry Opt In Change Notification](/windows/client-management/mdm/policy-csp-system#system-configuretelemetryoptinchangenotification)</li><li>[Configure Telemetry Opt In Settings Ux](/windows/client-management/mdm/policy-csp-system#system-configuretelemetryoptinsettingsux)</li><li>[Allow Telemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry)</li><li>[Limit Enhanced Diagnostic Data Windows Analytics](/windows/client-management/mdm/policy-csp-system#system-limitenhanceddiagnosticdatawindowsanalytics)</li><li>[Limit Dump Collection](/windows/client-management/mdm/policy-csp-system#system-limitdumpcollection)</li><li>[Limit Diagnostic Log Collection](/windows/client-management/mdm/policy-csp-system#system-limitdiagnosticlogcollection)</li></ol>|<ol><li>Enable telemetry change notifications</li><li>Enable Telemetry opt-in Settings</li><li>Full</li><li>Enabled</li><li>Enabled</li><li>Enabled</li></ol> |

## Deployment rings for Windows 10 and later

- Modern Workplace Update Policy [Test]-[Windows Autopatch]
- Modern Workplace Update Policy [First]-[Windows Autopatch]
- Modern Workplace Update Policy [Fast]-[Windows Autopatch]
- Modern Workplace Update Policy [Broad]-[Windows Autopatch]

| Policy name | Policy description | OMA | Value |
| ----- | ----- | ----- | ----- |
| Modern Workplace Update Policy [Test]-[Windows Autopatch | Windows Update for Business Configuration for the Test Ring<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li></ul>|<ul><li>QualityUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesRollbackWindowInDays</li><li>BusinessReadyUpdatesOnly</li><li>AutomaticUpdateMode</li><li>InstallTime</li><li>DeadlineForFeatureUpdatesInDays</li><li>DeadlineForQualityUpdatesInDays</li><li>DeadlineGracePeriodInDays</li><li>PostponeRebootUntilAfterDeadline</li><li>DriversExcluded</li></ul>|<ul><li>0</li><li>0</li><li>30</li><li>All</li><li>WindowsDefault</li><li>3</li><li>5</li><li>0</li><li>0</li><li>False</li><li>False</li>|
| Modern Workplace Update Policy [First]-[Windows Autopatch] | Windows Update for Business Configuration for the First Ring <p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-First</li></ul>|<ul><li>QualityUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesRollbackWindowInDays</li><li>BusinessReadyUpdatesOnly</li><li>AutomaticUpdateMode</li><li>InstallTime</li><li>DeadlineForFeatureUpdatesInDays</li><li>DeadlineForQualityUpdatesInDays</li><li>DeadlineGracePeriodInDays</li><li>PostponeRebootUntilAfterDeadline</li><li>DriversExcluded</li></ul>|<ul><li>1</li><li>0</li><li>30</li><li>All</li><li>WindowsDefault</li><li>3</li><li>5</li><li>2</li><li>2</li><li>False</li><li>False</li>|
| Modern Workplace Update Policy [Fast]-[Windows Autopatch] | Windows Update for Business Configuration for the Fast Ring<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Fast</li></ul>|<ul><li>QualityUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesRollbackWindowInDays</li><li>BusinessReadyUpdatesOnly</li><li>AutomaticUpdateMode</li><li>InstallTime</li><li>DeadlineForFeatureUpdatesInDays</li><li>DeadlineForQualityUpdatesInDays</li><li>DeadlineGracePeriodInDays</li><li>PostponeRebootUntilAfterDeadline</li><li>DriversExcluded</li></ul>|<ul><li>6</li><li>0</li><li>30</li><li>All</li><li>WindowsDefault</li><li>3</li><li>5</li><li>2</li><li>2</li><li>False</li><li>False</li>|
| Modern Workplace Update Policy [Broad]-[Windows Autopatch] | Windows Update for Business Configuration for the Broad Ring<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>|<ul><li>QualityUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesDeferralPeriodInDays</li><li>FeatureUpdatesRollbackWindowInDays</li><li>BusinessReadyUpdatesOnly</li><li>AutomaticUpdateMode</li><li>InstallTime</li><li>DeadlineForFeatureUpdatesInDays</li><li>DeadlineForQualityUpdatesInDays</li><li>DeadlineGracePeriodInDays</li><li>PostponeRebootUntilAfterDeadline</li><li>DriversExcluded</li></ul>|<ul><li>9</li><li>0</li><li>30</li><li>All</li><li>WindowsDefault</li><li>3</li><li>5</li><li>5</li><li>2</li><li>False</li><li>False</li>|

## Feature update policies

- Modern Workplace DSS Policy [Test]
- Modern Workplace DSS Policy [First]
- Modern Workplace DSS Policy [Fast]
- Modern Workplace DSS Policy [Broad]
- Modern Workplace DSS Policy [Windows 11]

| Policy name | Policy description | Value |
| ----- | ----- | ----- |
| Modern Workplace DSS Policy [Test] | DSS policy for Test device group | Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li></ul><br>Exclude from:<ul><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li></ul>|
| Modern Workplace DSS Policy [First] | DSS policy for First device group | Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li> |
| Modern Workplace DSS Policy [Fast] | DSS policy for Fast device group | Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Fast</li></ul><br>Exclude from:<ul><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li></ul> |
| Modern Workplace DSS Policy [Broad] | DSS policy for Broad device group | Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul><br>Exclude from:<ul><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li></ul>|
| Modern Workplace DSS Policy [Windows 11] | Windows 11 DSS policy | Assigned to:<ul><li>Modern Workplace - Windows 11 Pre-Release Test Devices</li></ul>|

## Microsoft Office update policies

- Windows Autopatch - Office Configuration
- Windows Autopatch - Office Update Configuration [Test]
- Windows Autopatch - Office Update Configuration [First]
- Windows Autopatch - Office Update Configuration [Fast]
- Windows Autopatch - Office Update Configuration [Broad]

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Office Configuration | Sets Office Update Channel to the Monthly Enterprise servicing branch.<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ol>|<ol><li>Enable Automatic Updates</li><li>Hide option to enable or disable updates</li><li>Update Channel</li><li>Channel Name (Device)</li><li>Hide Update Notifications</li><li>Update Path</li></ol> |<ol><li>Enabled</li><li>Enabled</li><li>Enabled</li><li>Monthly Enterprise Channel</li><li>Disabled</li><li>Enabled</li></ol> |
| Windows Autopatch - Office Update Configuration [Test] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test</li></ol> |<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>|<ol><li>Enabled;Days(Device) == 0 days</li></li><li>Enabled;Update Deadline(Device) == 7 days</li></ol>|
| Windows Autopatch - Office Update Configuration [First] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-First</li></ol> |<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol> | <ol><li>Enabled;Days(Device) == 0 days</li><li>Enabled;Update Deadline(Device) == 7 days</li></ol>|
| Windows Autopatch - Office Update Configuration [Fast] | Sets the Office update deadline<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Fast</li></ol>|<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>| <ol><li>Enabled;Days(Device) == 3 days</li><li>Enabled;Update Deadline(Device) == 7 days</li></ol>|
| Windows Autopatch - Office Update Configuration [Broad] | Sets the Office update deadline<br>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Broad</li>|<ol><li>Delay downloading and installing updates for Office</li><li>Update Deadline</li></ol>| <ol><li>Enabled;Days(Device) == 7 days</li><li>Enabled;Update Deadline(Device) == 7 days</li></ol> |

## Microsoft Edge update policies

- Windows Autopatch - Edge Update Channel Stable
- Windows Autopatch - Edge Update Channel Beta

| Policy name | Policy description | Properties | Value |
| ----- | ----- | ----- | ----- |
| Windows Autopatch - Edge Update Channel Stable | Deploys updates via the Edge Stable Channel<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><ol><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ol>| <ol><li>Target Channel Override </li><li>Target Channel (Device) </li></ol> | <ol><li>Enabled</li><li>Stable</li></ol>|
| Windows Autopatch - Edge Update Channel Beta | Deploys updates via the Edge Beta Channel<p>Assigned to:<ol><li>Modern Workplace Devices-Windows Autopatch-Test </li></ol>| <ol><li>Target Channel Override</li><li>Target Channel (Device)</li></ol> | <ol><li>Enabled</li><li>Beta</li></ol>|

## PowerShell scripts

| Script | Description |
| ----- | ----- |
| Modern Workplace - Autopatch Client Setup v1.1 | Installs necessary client components for the Windows Autopatch service |
