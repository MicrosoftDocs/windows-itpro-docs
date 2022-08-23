---
title: Changes made at tenant enrollment
description:  This reference article details the changes made to your tenant when enrolling into Windows Autopatch
ms.date: 08/08/2022
ms.prod: w11
ms.technology: windows
ms.topic: reference
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Changes made at tenant enrollment

## Service principal

Windows Autopatch will create a service principal in your tenant allowing the service to establish an identity and restrict access to what resources the service has access to within the tenant. For more information, see [Application and service principal objects in Azure Active Directory](/azure/active-directory/develop/app-objects-and-service-principals#service-principal-object). The service principal created by Windows Autopatch is:  

- Modern Workplace Customer APIs

## Azure Active Directory groups

Windows Autopatch will create Azure Active Directory groups that are required to operate the service. The following groups are used for targeting Windows Autopatch configurations to devices and management of the service by our first party enterprise application.

| Group name | Description |
| ----- | ----- |
| Modern Workplace-All | All Modern Workplace users |
| Modern Workplace - Windows 11 Pre-Release Test Devices | Device group for Windows 11 Pre-Release testing. |
| Modern Workplace Devices-All | All Modern Workplace devices |
| Modern Workplace Devices-Windows Autopatch-Test | Immediate ring for device rollout |
| Modern Workplace Devices-Windows Autopatch-First | First production ring for early adopters |
| Modern Workplace Devices-Windows Autopatch-Fast | Fast ring for quick rollout and adoption |
| Modern Workplace Devices-Windows Autopatch-Broad | Final ring for broad rollout into an organization |
| Modern Workplace Devices Dynamic - Windows 10 | Microsoft Managed Desktop Devices with Windows 10<p>Group Rule:<ul><li>`(device.devicePhysicalIds -any _ -startsWith \"[OrderID]:Microsoft365Managed_\")`</li><li>`(device.deviceOSVersion -notStartsWith \"10.0.22000\")`</li></ul><br>Exclusions:<ul><li>Modern Workplace - Telemetry Settings for Windows 11</li></ul>  |
| Modern Workplace Devices Dynamic - Windows 11 | Microsoft Managed Desktop Devices with Windows 11<p>Group Rule:<ul><li>`(device.devicePhysicalIds -any _ -startsWith \"[OrderID]:Microsoft365Managed_\")`</li><li>`(device.deviceOSVersion -startsWith \"10.0.22000\")`</li></ul><br>Exclusions:<ul><li>Modern Workplace - Telemetry Settings for Windows 10</li></ul> |
| Modern Workplace Roles - Service Administrator | All users granted access to Modern Workplace Service Administrator Role |
| Modern Workplace Roles - Service Reader | All users granted access to Modern Workplace Service Reader Role |
| Windows Autopatch Device Registration | Group for automatic device registration for Windows Autopatch |

## Windows Autopatch enterprise applications

Enterprise applications are applications (software) that a business uses to do its work.

Windows Autopatch creates an enterprise application in your tenant. This enterprise application is a first party application used to run the Windows Autopatch service.

| Enterprise application name | Usage | Permissions |
| ----- | ------ | ----- |
| Modern Workplace Management | This enterprise application is a limited first party enterprise application with elevated privileges. This account is used to manage the service, publish baseline configuration updates, and maintain overall service health. | <ul><li>DeviceManagementApps.ReadWrite.All</li><li>DeviceManagementConfiguration.ReadWrite.All</li><li>DeviceManagementManagedDevices.PriviligedOperation.All</li><li>DeviceManagementManagedDevices.ReadWrite.All</li><li>DeviceManagementRBAC.ReadWrite.All</li><li>DeviceManagementServiceConfig.ReadWrite.All</li><li>Directory.Read.All</li><li>Group.Create</li><li>Policy.Read.All</li><li>WindowsUpdates.Read.Write.All</li></ul> |

> [!NOTE]
> Enterprise application authentication is only available on tenants enrolled after July 9th, 2022. For tenants enrolled before this date, Enterprise Application authentication will be made available for enrollment soon.

## Device configuration policies

- Modern Workplace - Set MDM to Win Over GPO
- Modern Workplace - Telemetry Settings for Windows 10
- Modern Workplace - Telemetry Settings for Windows 11
- Modern Workplace-Window Update Detection Frequency
- Modern Workplace - Data Collection

| Policy name | Policy description | OMA | Value |
| ----- | ----- | ----- | ----- |
| Modern Workplace - Set MDM to Win Over GPO | Sets mobile device management (MDM) to win over GPO<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| | |
| Modern Workplace - Telemetry Settings for Windows 10 | Telemetry settings for Windows 10<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>|[./Device/Vendor/MSFT/Policy/Config/System/AllowTelemetry](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry) | 2 |
| Modern Workplace - Telemetry Settings for Windows 11 | Telemetry settings for Windows 11<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>|<ul><li>[./Device/Vendor/MSFT/Policy/Config/System/AllowTelemetry ](/windows/client-management/mdm/policy-csp-system#system-allowtelemetry)</li><li>[./Device/Vendor/MSFT/Policy/Config/System/LimitEnhancedDiagnosticDataWindowsAnalytics](/windows/client-management/mdm/policy-csp-system#system-limitenhanceddiagnosticdatawindowsanalytics)</li><li>[./Device/Vendor/MSFT/Policy/Config/System/LimitDumpCollection](/windows/client-management/mdm/policy-csp-system#system-limitdumpcollection)</li><li>[./Device/Vendor/MSFT/Policy/Config/System/LimitDiagnosticLogCollection](/windows/client-management/mdm/policy-csp-system#system-limitdiagnosticlogcollection)</li></ul>|<ul><li>3</li><li>1</li><li>1</li><li>1</li> |
| Modern Workplace - Windows Update Detection Frequency | Sets Windows update detection frequency<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| [./Vendor/MSFT/Policy/Config/Update/DetectionFrequency](/windows/client-management/mdm/policy-csp-update#update-detectionfrequency)| 4 |
| Modern Workplace - Data Collection | Allows diagnostic data from this device to be processed by Microsoft Managed Desktop.<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul> | | |

## Update rings for Windows 10 and later

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

- Modern Workplace - Office ADMX Deployment
- Modern Workplace - Office Configuration v5
- Modern Workplace - Office Update Configuration [Test]
- Modern Workplace - Office Update Configuration [First]
- Modern Workplace - Office Update Configuration [Fast]
- Modern Workplace - Office Update Configuration [Broad]

| Policy name | Policy description | OMA | Value |
| ----- | ----- | ----- | ----- |
| Modern Workplace - Office ADMX Deployment | ADMX file for Office<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul> | | |
| Modern Workplace - Office Configuration v5 | Sets Office Update Channel to the Monthly Enterprise servicing branch.<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| | |
| Modern Workplace - Office Update Configuration [Test] | Sets the Office update deadline<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li></ul> |<ul><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_UpdateDeadline`</li><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_DeferUpdateDays`</li></ul>|<li>Enabled; L_UpdateDeadlineID == 7</li><li>Enabled; L_DeferUpdateDaysID == 0</li>|
| Modern Workplace - Office Update Configuration [First] | Sets the Office update deadline<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-First</li></ul> |<ul><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_UpdateDeadline`</li><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_DeferUpdateDays`</li></ul> | <li>Enabled; L_UpdateDeadlineID == 7</li><li>Enabled; L_DeferUpdateDaysID == 0</li>|
| Modern Workplace - Office Update Configuration [Fast] | Sets the Office update deadline<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Fast</li></ul>|<ul><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_UpdateDeadline`</li><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_DeferUpdateDays`</li></ul>| <li>Enabled; L_UpdateDeadlineID == 7</li><li>Enabled; L_DeferUpdateDaysID == 3</li>|
| Modern Workplace - Office Update Configuration [Broad] | Sets the Office update deadline<br>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Broad</li>|<ul><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_UpdateDeadline`</li><li>`./Device/Vendor/MSFT/Policy/Config/Office365ProPlus~Policy~L_MicrosoftOfficemachine~L_Updates/L_DeferUpdateDays`</li></ul>|<li>Enabled; L_UpdateDeadlineID == 7</li><li>Enabled; L_DeferUpdateDaysID == 7</li> |

## Microsoft Edge update policies

- Modern Workplace - Edge Update ADMX Deployment
- Modern Workplace - Edge Update Channel Stable
- Modern Workplace - Edge Update Channel Beta

| Policy name | Policy description | OMA | Value |
| ----- | ----- | ----- | ----- |
| Modern Workplace - Edge Update ADMX Deployment | Deploys ADMX update policy for Edge<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test</li><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| | |
| Modern Workplace - Edge Update Channel Stable | Deploys updates via the Edge Stable Channel<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-First</li><li>Modern Workplace Devices-Windows Autopatch-Fast</li><li>Modern Workplace Devices-Windows Autopatch-Broad</li></ul>| `./Device/Vendor/MSFT/Policy/Config/MicrosoftEdgeUpdate~Policy~Cat_EdgeUpdate~Cat_Applications~Cat_MicrosoftEdge/Pol_TargetChannelMicrosoftEdge` | Enabled |
| Modern Workplace - Edge Update Channel Beta | Deploys updates via the Edge Beta Channel<p>Assigned to:<ul><li>Modern Workplace Devices-Windows Autopatch-Test </li></ul>| `./Device/Vendor/MSFT/Policy/Config/MicrosoftEdgeUpdate~Policy~Cat_EdgeUpdate~Cat_Applications~Cat_MicrosoftEdge/Pol_TargetChannelMicrosoftEdge` | Enabled |


## PowerShell scripts

| Script | Description |
| ----- | ----- |
| Modern Workplace - Autopatch Client Setup | Installs necessary client components for the Windows Autopatch service |
