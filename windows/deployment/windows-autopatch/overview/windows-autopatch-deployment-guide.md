---
title: Windows Autopatch deployment guide
description: This guide explains how to successfully deploy Windows Autopatch in your environment
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - tier2
---

# Windows Autopatch deployment guide

As organizations move to support hybrid and remote workforces, and continue to adopt cloud-based endpoint management with services such as Intune, managing updates is critical.

Windows Autopatch is a cloud service that automates Windows, Microsoft 365 Apps for enterprise, Microsoft Edge, and Microsoft Teams updates to improve security and productivity across your organization.

A successful Windows Autopatch deployment starts with planning and determining your objectives. Use this deployment guide to plan your move or migration to Windows Autopatch.

This guide:

- Helps you plan your deployment and adopt Windows Autopatch
- Lists and describes some common objectives
- Provides a recommended deployment plan
- Provides migration considerations for Windows Update for Business (WUfB) and Microsoft Configuration Manager
- Lists some common general considerations when deploying Windows Autopatch
- Provides suggested business case benefits and communication guidance
- Gives additional guidance and how to join the Autopatch community

## Determine your objectives

This section details some common objectives when using Windows Autopatch.

Once an organization is onboarded, Windows Autopatch automatically creates multiple progressive deployment rings and applies the latest updates according to Windows Autopatch recommended practices and your organization's custom configuration. While there are options to adjust configurations such as quality update cadence, the service provides you with a baseline to begin establishing your update objectives.

Use Windows Autopatch to solve the following challenges:

- Difficulty developing and defending update cadence and general best practices
- Increase visibility and improve issue reporting
- Achieving a consistent update success rate
- Standardize and optimize the configuration for devices, policies, tools and versions across their environment
- Transition to modern update management by configuring Intune and Windows Update for Business
- Make update processes more efficient and less reliant on IT admin resources
- Address vulnerabilities and Windows quality updates as soon as possible to improve security
- Assist with compliance to align with industry standards
- Invest more time on value-add IT projects rather than monthly updates
- Planning and managing Windows feature updates
- Transition to Windows 11

## Recommended deployment steps

The following deployment steps can be used as a guide to help you to create your organization's specific deployment plan to adopt and deploy Windows Autopatch.

:::image type="content" source="../media/windows-autopatch-deployment-journey.png" alt-text="Windows Autopatch deployment journey" lightbox="../media/windows-autopatch-deployment-journey.png":::

### Step one: Prepare

[Review the prerequisites](../prepare/windows-autopatch-prerequisites.md) and [enroll your tenant](../prepare/windows-autopatch-enroll-tenant.md) into the Windows Autopatch service. At this stage, your devices aren't affected.  You can enroll your tenant and review the service options before registering your devices.

| Step | Description |
| ----- | ----- |
| **1A: Set up the service** | <ul><li>Prepare your environment, review existing update policies and [General Considerations](#general-considerations)</li><li>Review and understand [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) when enrolling into the service</li><li>Enroll into the service and [add your admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li><li>Review [Roles and responsibilities](../overview/windows-autopatch-roles-responsibilities.md)</li><li>Verify the [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) completed successfully</li></ul> |
| **1B: Confirm update service needs and configure your workloads** | <ul><li>[Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md): Expedite preferences and cadence customizations</li><li>[Windows feature updates](../operate/windows-autopatch-windows-feature-update-overview.md): Servicing version preferences</li><li>[Driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md): Set to either Manual or Automatic</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md): Set to either Monthly Enterprise Channel or opt-out</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md): Required. Beta and Stable Channel</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md): Required. Automatic</li></ul> |
| **1C: Consider your Autopatch groups distribution** | Organizations have a range of Windows devices including desktop computers, laptops and tablets that might be grouped across multiple logical or physical locations. When planning your Autopatch groups strategy, consider the Autopatch group structure that best fits your organizational needs. It's recommended to utilize the service defaults as much as possible. However, if necessary, you can customize the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) with additional deployment rings and/or [create your own Custom Autopatch group(s)](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group).<br><br><ul><li> Review your device inventory and consider a representative mix of devices across your distribution</li><li>Review your Microsoft Entra groups that you wish to use to register devices into the service</li><li>Review [device registration options](../deploy/windows-autopatch-device-registration-overview.md) and [register your first devices](../deploy/windows-autopatch-register-devices.md)</li></ul> |
| **1D: Review network optimization** | It's important to [prepare your network](../prepare/windows-autopatch-configure-network.md) to ensure that your devices have access to updates in the most efficient way, without impacting your infrastructure.<br><br>A recommended approach to manage bandwidth consumption is to utilize [Delivery Optimization](../prepare/windows-autopatch-configure-network.md#delivery-optimization). You can use Delivery Optimization to reduce bandwidth consumption by sharing the work of downloading these packages amongst multiple devices in your deployment. |

### Step two: Evaluate

Evaluate Windows Autopatch with around 50 devices to ensure the service meets your needs. You can adjust this number based on your organizational make-up. It's recommended to monitor one update cycle during this evaluation step.

| Step | Description |
| ----- | ----- |
| **2A: Review reporting capabilities** | <ul><li>[Windows quality update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-quality-update-reports)</li><li>[Windows feature update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-feature-update-reports)</li><li>[Windows Update for Business (WUfB) reports](/mem/intune/protect/windows-update-compatibility-reports#use-the-windows-feature-update-device-readiness-report)</li></ul>Windows Autopatch quality and feature update reports provide a progress view on the latest update cycle for your devices. These reports should be reviewed often to ensure you understand the update state of your Windows Autopatch devices.<br><br>There might be times when using Windows Autopatch for update deployment that it's beneficial to review Windows Update for Business (WUfB) reports.<br><br>For example, when preparing to deploy Windows 11, you might find it useful to evaluate your devices using the [Windows feature update device readiness](/mem/intune/protect/windows-update-compatibility-reports#use-the-windows-feature-update-device-readiness-report) and [Windows feature update compatibility risks reports](/mem/intune/protect/windows-update-compatibility-reports#use-the-windows-feature-update-compatibility-risks-report) in Intune.|
| **2B: Review operational changes** | As part of the introduction of Windows Autopatch, you should consider how the service integrates with your existing operational processes.<br><ul><li>Identify service desk and end user computing process changes</li><li>Identify any alignment with third party support agreements</li><li>Review the default Windows Autopatch support process and alignment with your existing Premier and Unified support options</li><li>Identify IT admin process change & service interaction points</li></ul> |
| **2C: Educate end users and key stakeholders**| Educate your end users by creating guides for the Windows Autopatch end user experience.<ul><li>[Windows quality updates](../manage/windows-autopatch-windows-quality-update-end-user-exp.md)</li><li>[Windows feature updates](../manage/windows-autopatch-windows-feature-update-overview.md)</li>[Microsoft 365 Apps for enterprise updates](../manage/windows-autopatch-microsoft-365-apps-enterprise.md)<li>[Microsoft Edge](../manage/windows-autopatch-edge.md)</li><li>[Microsoft Teams](../manage/windows-autopatch-teams.md)</li></ul><br>Include your IT support and help desk in the early stages of the Windows Autopatch deployment and planning process. Early involvement allows your support staff to:<br><ul><li>Gain knowledge and experience in identifying and resolving update issues more effectively</li><li>Prepare them to support production rollouts. Knowledgeable help desk and support teams also help end users adopt to changes</li></ul><br>Your support staff can experience a walkthrough of the Windows Autopatch admin experience through the [Windows Autopatch demo site](https://aka.ms/autopatchdemo). |
| **2D: Pilot planning** | Identify target pilot group(s) of up to 500 devices. It's recommended to include a cross-section of your organizational make-up to ensure your pilot results are representative of your organizational environment. |

### Step three: Pilot

Plan to pilot the service with around 500 devices to provide sufficient pilot coverage to be ready for deployment. You can adjust this number based on your organizational make-up. It's recommended to monitor one to two update cycles during the pilot step.

| Step | Description |
| ----- | ----- |
| **3A: Register devices** | Register pilot device group(s) |
| **3B: Monitor update process success** |<ul><li>Quality update: One to two update cycles</li><li>Feature update: Set of pilot devices scheduled across several weeks</li><li>Drivers and firmware: One to two update cycles</li><li>Microsoft 365 Apps for enterprise (if not opted-out): One to two update cycles</li><li>Microsoft Edge: One to two update cycles</li><li>Microsoft Teams: One to two update cycles</li> |
| **3C: Review reports** |<ul><li>[Quality update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-quality-update-reports): Monitor data in the reports across one to two update cycles</li><li>[Feature update reports](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-feature-update-reports): Monitor data in the reports across the update schedule</li><li>[Windows Update for Business (WUfB) reports](/mem/intune/protect/windows-update-compatibility-reports#use-the-windows-feature-update-device-readiness-report): Monitor data in the report across one to two update cycles</li></ul> |
| **3D: Implement operational changes** |<ul><li>Pilot Service Desk, end user computing and third party (if applicable) process changes with pilot representatives</li><li>IT admins must:<ul><li>Review deployment progress using Windows Autopatch reports</li><li>Respond to identified actions to help improve success rates</li></ul></ul> |
| **3E: Communicate with stakeholders** | Review and action your stakeholder communication plan. |
| **3F: Deployment planning** | Prepare target deployment groups for phased deployment of Windows Autopatch. |

### Step four: Deploy

Following a successful pilot, you can commence deployment to your broader organization.  The pace at which you deploy is dependent on your own requirements; for example, deploying in groups of 500 to 5000 per week are commonly used approaches to complete the deployment of Windows Autopatch.

| Step | Description |
| ----- | ----- |
| **4A: Review reports** |<ul><li>Review deployment progress using Windows Autopatch reports</li><li>Respond to identified actions to help improve success rates</li></ul> |
| **4B: Communicate with stakeholders** | Review and action your stakeholder communication plan |
| **4C: Complete operational changes** |<ul><li>Service Desk readiness is complete and in place</li><li>IT admins take the required action(s) based on the Autopatch reports</li></ul> |

## Migration considerations

If you're an existing Windows Update for Business (WUfB) or Configuration Manager customer, there are several considerations that could accelerate your deployment along a shorter path.

### Why migrate from Windows Update for Business or Configuration Manager to Windows Autopatch?

Customers who are using Windows Update for Business (WUfB) or Configuration Manager can quickly adopt Windows Autopatch and take advantage of the key benefits that Windows Autopatch provides.

When moving from Windows Update for Business (WUfB) or Configuration Manager to Windows Autopatch, you can enhance and optimize the update experience that you're already familiar with.

Once migrated, there are several configuration tasks that you no longer need to carry out:

| Autopatch benefit | Configuration Manager | Windows Update for Business (WUfB) |
| ----- | ----- | ----- |
| Automated setup and on-going configuration of Windows Update policies | Manage and perform recurring tasks such as:<ul><li>Download updates</li><li>Distribute to distribution points</li><li>Target update collections</li></ul> | Manage "static" deployment ring policies |
| Automated management of deployment ring membership | Manually check collection membership and targets | Manage "static" deployment ring membership |
| Maintain minimum Windows feature version and progressively move between servicing versions | Spend time developing, testing and rolling-out task sequence | Set up and deploy Windows feature update policies |
| Service provides release management, signal monitoring, testing, and Windows Update deployment | Setup, target and monitor update test collections | Manage Test deployment rings and manually monitor update signals |
| Simple, integrated process to turn on the service as part of the Windows 365 provisioning policy | Manually target Cloud PCs in device collections | Manually target Cloud PCs in Microsoft Entra groups |

In addition to the reports, other benefits include:

| Autopatch benefit | Configuration Manager and Windows Update for Business (WUfB) |
| ----- | ----- |
| Windows quality and feature update reports with integrated alerts, deep filtering, and status-at-a-glance | Requires you to manually navigate and hunt for status and alerts |
| Filter by action needed with integrated resolution documentation | Requires you to research and discover possible actions relating to update issues |
| Better visibility for IT admins, Security compliance and proof for regulator | Requires you to pull together different reports and views across multiple admin portals |

Service management benefits include:

| Autopatch benefit | Configuration Manager and Windows Update for Business (WUfB) |
| ----- | ----- |
| Windows automation and Microsoft Insights | First or third-party resources required to support and manage updates internally |
| Microsoft research and insights determine the 'go/no-go' for your update deployment | Limited signals and insights from your organization to determine the 'go/no-go' for your update deployment |
| Windows Autopatch might pause or roll back an update. The pause or rollback is dependent on the scope of impact and to prevent end user disruption | Manual intervention required, widening the potential impact of any update issues |
| By default, Windows Autopatch [expedites quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md#expedited-releases) as needed. | Manual intervention required, widening the potential impact of any update issues |

### Migrating from Windows Update for Business (WUfB) to Windows Autopatch

#### Assessing your readiness to migrate from Windows Update for Business (WUfB) to Windows Autopatch

When moving from Windows Update for Business (WUfB) to Windows Autopatch, you can accelerate and simplify your adoption by assessing your readiness to quickly migrate to the Windows Autopatch service by considering key differences that might impact your deployment:

| Step | Assessment step | Recommendation |
| ----- | ----- | ----- |
| **1** | "User based" vs. "device based" targeting | Windows Autopatch doesn't support "user based" targeting.  If your Windows Update deployment is "user based", you must plan to move to a device-based targeting model by adding and registering devices into Windows Autopatch. Use the [Consider your Autopatch groups guidance](#step-one-prepare) |
| **2** | Microsoft Edge channels | Windows Autopatch deploys Microsoft Edge Stable channel to devices in all deployment rings except for the Test deployment ring. The Test deployment ring is configured for the Microsoft Edge Beta channel. If you're currently using different channels, your teams should understand that your Windows Autopatch devices use these channels. For more information, see [Confirm update service needs and configure your workloads](#step-one-prepare). |
| **3** | Microsoft 365 Apps for enterprise | Windows Autopatch deploys the Monthly Enterprise Channel to all Microsoft 365 Apps for enterprise clients. If your organization is using a different channel and you don't wish to adopt the Monthly Enterprise Channel, you can opt out Microsoft 365 Apps for enterprise updates. For more information, see [Confirm update service needs and configure your workloads](#step-one-prepare) |
| **4** | Prepare your policies | You should consider any existing policy configurations in your Windows Update for Business (WUfB), Intune or on-premises environment that could impact your deployment of Windows Autopatch. For more information, review [General considerations](#general-considerations) |
| **5** | Network optimization technologies | We recommend you consider your network optimization technologies as part of your Windows Autopatch deployment.  However, if you're already using Windows Update for Business (WUfB) it's likely you already have your network optimization solution in place.  For more information, see [Review network optimization](#step-one-prepare) |

### Optimized deployment path: Windows Update for Business (WUfB) to Windows Autopatch

Once you have assessed your readiness state to ensure you're aligned to Windows Autopatch readiness, you can optimize your deployment of Windows Autopatch to quickly migrate to the service. The following steps illustrate a recommended optimized deployment path:

| Step | Example timeline | Task |
| ----- | ----- | ----- |
| **[Step one: Prepare > Set up the service](#step-one-prepare)** | Week one | Follow our standard guidance to turn on the Windows Autopatch service<ul><li>Prepare your environment, review existing update policies and [General Considerations](#general-considerations)</li><li>Review and understand the [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) when enrolling into the service</li><li>Enroll into the service and [add your admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li><li>Review [Roles and responsibilities](../overview/windows-autopatch-roles-responsibilities.md)</li><li>Verify the [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) have completed successfully</li></ul> |
| **[Step one: Prepare > Adjust the service configuration based on your migration readiness](#step-one-prepare)** | Week one | <ul><li>[Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md)</li><li>[Windows feature updates](../operate/windows-autopatch-windows-feature-update-overview.md)</li><li>[Driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md)</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md)</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md)</li><li>Use the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) or [create a Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul> |
| **[Step two: Evaluate](#step-two-evaluate)** | Week one to month two | Evaluate with around 50 devices for one update cycle to confirm the correct service configurations are in place |
| **[Step three: Pilot](#step-three-pilot)** | Month two to three | Pilot with around 500 - 5000 devices for one update cycle to ensure you can further validate with your key stakeholders and Service Desk teams |
| **[Step four: Deploy](#step-four-deploy)** | Month three to six | Phase deployments as necessary to migrate your estate. You can move as quickly as you feel comfortable |

### Migrating from Configuration Manager to Windows Autopatch

Regardless of if you're migrating from Configuration Manager to Microsoft Intune or if you're remaining with Configuration Manager, if you're currently using Configuration Manager to manage updates, you can migrate the update workloads to Windows Autopatch and take advantage of the key benefits for your Configuration Manager environment.

#### Assessing your readiness to migrate from Configuration Manager to Windows Autopatch

When you migrate from Configuration Manager to Windows Autopatch, the fastest path to quickly gain value from Windows Autopatch is to already have co-management and the requisite workloads moved to Intune.

| Step | Assessment step | Recommendation |
| ----- | ----- | ----- |
| **1** | Turn on co-management | If you're using co-management across Configuration Manager and your managed devices, you meet the key requirements to use Windows Autopatch.<br><br>If you don't have co-management, see [How to use co-management in Configuration Manager](/mem/configmgr/comanage/how-to-enable) |
| **2** | Use required co-management workloads | Using Windows Autopatch requires that your managed devices use the following three co-management workloads:<ul><li>Windows Update policies workload</li><li>Device configuration workload</li><li>Office Click-to-Run apps workload</li></ul><br>If you have these workloads configured, you meet the key requirements to use Windows Autopatch. If you don't have these workloads configured, review [How to switch Configuration Manager workloads to Intune](/mem/configmgr/comanage/how-to-switch-workloads) |
| **3** | Prepare your policies | You should consider any existing policy configurations in your Configuration Manager (or on-premises) environment that could impact your deployment of Windows Autopatch. For more information, review [General considerations](#general-considerations) |
| **4** | Ensure Configuration Manager collections or Microsoft Entra device groups readiness | To move devices to Windows Autopatch, you must register devices with the Windows Autopatch service. To do so, use either Microsoft Entra device groups, or Configuration Manager collections. Ensure you have either Microsoft Entra device groups or Configuration Manager collections that allow you to evaluate, pilot and then migrate to the Windows Autopatch service. For more information, see [Register your devices](../deploy/windows-autopatch-register-devices.md#before-you-begin). |

### Optimized deployment path: Configuration Manager to Windows Autopatch

Once you have assessed your readiness state to ensure you're aligned to Windows Autopatch readiness, you can optimize your deployment of Windows Autopatch to quickly migrate to the service.   The following steps illustrate a recommended optimized deployment path:

| Step | Example timeline | Task |
| ----- | ----- | ----- |
| **[Step one: Prepare > Set up the service](#step-one-prepare)** | Week one | Follow our standard guidance to turn on the Windows Autopatch service<ul><li>Prepare your environment, review existing update policies and [General Considerations](#general-considerations).</li><li>Review and understand the [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) when enrolling into the service</li><li>Enroll into the service and [add your admin contacts](../deploy/windows-autopatch-admin-contacts.md)</li><li>Review [Roles and responsibilities](../overview/windows-autopatch-roles-responsibilities.md)</li><li>Verify the [changes made at tenant enrollment](../references/windows-autopatch-changes-to-tenant.md) have completed successfully.</li></ul> |
| **[Step one: Prepare > Adjust the service configuration based on your migration readiness](#step-one-prepare)** | Week one | <ul><li>[Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md)</li><li>[Windows feature updates](../operate/windows-autopatch-windows-feature-update-overview.md)</li><li>[Driver and firmware updates](../operate/windows-autopatch-manage-driver-and-firmware-updates.md)</li><li>[Microsoft 365 Apps for enterprise](../operate/windows-autopatch-microsoft-365-apps-enterprise.md)</li><li>[Microsoft Edge](../operate/windows-autopatch-edge.md)</li><li>[Microsoft Teams](../operate/windows-autopatch-teams.md)</li><li>Use the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) or [create a Custom Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups)</li></ul> |
| **[Step two: Evaluate](#step-two-evaluate)** | Week one to month two | Evaluate with around 50 devices for one update cycle to confirm the correct service configurations are in place |
| **[Step three: Pilot](#step-three-pilot)** | Month two to three | Pilot with around 500 - 5000 devices for one update cycle to ensure you can further validate with your key stakeholders and Service Desk teams |
| **[Step four: Deploy](#step-four-deploy)** | Month three to six | Phase deployments as necessary to migrate your estate. You can move as quickly as you feel comfortable |

## General considerations

As part of your planning process, you should consider any existing enterprise configurations in your environment that could affect your deployment of Windows Autopatch.

Many organizations have existing policies and device management infrastructure, for example:

- Group Policy Objects (GPO)
- Registry settings
- Configuration Manager
- Existing Mobile Device Management (MDM) policies
- Servicing profiles for Microsoft 365 Apps

It's a useful exercise to create a baseline of your policies and existing settings to map out the configuration that could impact your move to Windows Autopatch.

### Group policy

Review existing policies and their structure. Some policies might apply globally, some apply at the site level, and some are specific to a device. The goal is to know and understand the intent of global policies, the intent of local policies, and so on.

On-premises AD group policies are applied in the LSDOU order (Local, Site, Domain, and Organizational Unit (OU)). In this hierarchy, OU policies overwrite domain policies, domain policies overwrite site policies, and so on.

| Area | Path | Recommendation |
| -----  | ----- | ----- |
| Windows Update Group Policy settings | `Computer Configuration\Administrative Templates\Windows Components\Windows Updates` | The most common Windows Update settings delivered through Group Policy can be found under this path. This is a good place for you to start your review. |
| Don't connect to any Windows Update Internet locations | `Computer Configuration\Administrative Templates\Windows Components\Windows update\Do not connect to any Windows Update Internet locations` | This is a common setting for organizations that rely solely on intranet update locations such as Windows Server Update Services (WSUS) servers and can often be overlooked when moving to cloud update services such as Windows Update for Business (WUfB)<br><br>When turned on, this policy prevents contact with the public Windows Update service and won't establish connections to Windows Update, and might cause the connection to Windows Update for Business (WUfB), and Delivery Optimization to stop working. |
| Scan Source policy | `Computer Configuration\Administrative Templates\Windows Components\Windows Update\Manage updates offered from Windows Server Update Service` | You can choose what types of updates to get from either Windows Server Update Services (WSUS) or Windows Update for Business (WUfB) service with the Windows Update Scan Source policy.<br><br>You should review any scan source policy settings targeting devices to ensure:<ul><li>That no conflicts exist that could affect update deployment through Windows Autopatch</li><li>Such policies aren't targeting devices enrolled into Windows Autopatch</li></ul> |

### Registry settings

Any policies, scripts or settings that create or edit values in the following registry keys might interfere with Windows and Office Update settings delivered through Autopatch. It's important to understand how these settings interact with each other and with the Windows and Office Update service as part of your Autopatch planning.

| Key | Description |
| ----- | ----- |
| `HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\PolicyState`<br>(Intune MDM only cloud managed)<br><br>`HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate`<br>(If GPO/WSUS/Configuration Manager is deployed) | This key contains general settings for Windows Update, such as the update source, the service branch, and the deferral periods for feature and quality updates. |
| `HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU`<br>(If GPO/WSUS/Configuration Manager is deployed) | This key contains settings for Automatic Updates, such as the schedule, the user interface, and the detection frequency. |
| `HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update`<br>(GPO/WSUS/Configuration Manager/Intune MDM Managed) | This key contains settings for update policies that are managed by Mobile Device Management (MDM) or Group Policy, such as pausing updates, excluding drivers, or configuring delivery optimization. |
| `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\ClickToRun\Configuration`<br>(GPO/Configuration Manager/Intune MDM Managed) | This key contains the registry keys for the Update Channel. This is a dynamic key that changes (depending on the configured settings) and the CDNBaseUrl (set when Microsoft 365 installs on the device).<br><br>Look at the `UpdateChannel` value. The value tells you how frequently Office is updated.<br><br>For more information, see [Manage Microsoft 365 Apps with Configuration Manager](/mem/configmgr/sum/deploy-use/manage-office-365-proplus-updates#bkmk_channel) to review the values, and what they're set to. Windows Autopatch currently supports the Monthly Enterprise Channel. If you opt into Office updates, it should be set to the Monthly Enterprise channel. |

> [!NOTE]
> For more information about Windows Update Settings for Group Policy and Mobile Device Management (MDM), see [Manage additional Windows Update settings](/windows/deployment/update/waas-wu-settings).

### Configuration Manager

#### Windows and Microsoft 365 Apps for enterprise updates

When Configuration Manager is deployed, and if Software Update policies are configured, the Software Update policies could conflict with Windows Update for Business and Office Update policies.

Configuration Manager could require custom settings to disable software updates and assist with troubleshooting conflicting legacy, on-premises configurations to ensure that Autopatch deliver Windows and Office updates. It's safe to implement this change if you aren't managing third party updates from Configuration Manager.

To ensure that Software Update Policies don't conflict with Windows Update for Business (WUfB) and Office Update policies, create a Software Update Policy in Configuration Manager that has:

- Windows and Office Update configuration disabled
- Includes devices enrolled into Autopatch to remove any existing configuration(s).

If this policy remains live, confirm that Autopatch devices aren't included in the live Software Update Policy in Configuration Manager.

All devices that are enrolled in Autopatch use Windows and Office Update policies from the service, and any configurations that are applied through Configuration Manager Software Update Policies can be removed.

For example, Configuration Manager Software Update Policy settings exclude Autopatch enrolled devices from receiving conflicting configuration for Windows and Office Updates:

| Device setting | Recommended configuration |
| ----- | ----- |
| Enable software updates | No |
| Enable management of the Office 365 Client Agent | No |

> [!NOTE]
> There is no requirement to create a Configuration Manager Software Update Policy if the policies aren't in use.

#### Existing Mobile Device Management (MDM) policies

| Policy | Description |
| ----- | ----- |
| **MDM to win over GP** | As part of the tenant enrollment process, Autopatch deploys a Device configuration profile, which applies to all registered devices to set Mobile Device Management (MDM) to win over Group Policy (GP) with the "MDMWinsOverGP" CSP.<br><br>When applied, any MDM policy that's set, and has an equivalent GP Policy, results in the GP service blocking the policy setting. Setting the value to 0 (zero) or deleting the policy removes the GP policy blocks and restore the saved GP policies.<br><br>This setting doesn't apply to all scenarios. This setting doesn't work for:<ul><li>User scoped settings. This setting applies to device scoped settings only</li><li>Any custom Group Policy Object (GPO) outside of ADMX. For example, Microsoft Edge or Chrome settings</li><li>Any Windows Update for Business policies (WUfB). When you use Windows Update for Business (WUfB), ensure all previous Group Policies (GP) are removed that relate to Windows Update to ensure that Autopatch policies can take effect</li></ul><br><br>For more information and guidance on the expected behavior applied through this policy, see [ControlPolicyConflict Policy CSP](/windows/client-management/mdm/policy-csp-controlpolicyconflict) |
| **Windows Update for Business (WUfB) policies** | If you have any existing *Deployment rings for Windows 10 and later or Windows feature update DSS policies* in place, ensure that the assignments don't target Windows Autopatch devices. This is to avoid creating policy conflicts and unexpected update behavior, which could impact update compliance and end user experience. |
| **Update Policy CSP** | If any policies from the [Update Policy CSP](/windows/client-management/mdm/policy-csp-update) that aren't deployed and managed by Windows Autopatch are deployed to devices, policy conflicts and unexpected update behavior could occur and could affect update compliance and the end user experience. |

#### Servicing profiles for Microsoft 365 Apps for enterprise

You can use automation to deliver monthly updates to Microsoft 365 Apps for enterprise directly from the Office Content Delivery Network (CDN) using [Servicing profiles](/windows/deployment/windows-autopatch/operate/windows-autopatch-microsoft-365-apps-enterprise#compatibility-with-servicing-profiles). A servicing profile takes precedence over other policies, such as a Microsoft Intune policy or the Office Deployment Tool. The servicing profile affects all devices that meet the [device eligibility requirements](/windows/deployment/windows-autopatch/operate/windows-autopatch-microsoft-365-apps-enterprise#device-eligibility) regardless of existing management tools in your environment.

You can consider retargeting servicing profiles to non-Windows Autopatch devices or if you plan to continue using them, you can [block Windows Autopatch delivered Microsoft 365 App updates](/windows/deployment/windows-autopatch/operate/windows-autopatch-microsoft-365-apps-enterprise#allow-or-block-microsoft-365-app-updates) for Windows Autopatch-enrolled devices.

## Business case

Part of your planning might require articulating the business benefits of moving to Windows Autopatch from your existing update solution(s). Windows Autopatch provides several resources to help when building your business case.

- [How Windows Autopatch works for you](https://www.microsoft.com/microsoft-365/windows/autopatch)
- [What is Windows Autopatch?](https://techcommunity.microsoft.com/t5/windows-autopatch/windows-autopatch-resource-guide/m-p/3502461#_note3)
- [Forrester - The Projected Total Economic Impact™ Of Windows Autopatch: Cost Savings And Business Benefits Enabled By Windows Autopatch](https://techcommunity.microsoft.com/t5/windows-autopatch/windows-autopatch-resource-guide/m-p/3502461#_note6)
- [Windows Autopatch Skilling snack](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/skilling-snack-windows-autopatch/ba-p/3787448)

## Stakeholder communications

Change management relies on clear and helpful communication about upcoming changes. The best way to have a smooth deployment is to make sure end users and stakeholders are aware of all changes and disruptions. Your rollout communication plan should include all pertinent information, how to notify users, and when to communicate.

- Identify groups impacted by the Autopatch deployment
- Identify key stakeholders in the impacted groups
- Determine the types of communications needed
- Develop your messaging based on the [Recommended deployment steps](#recommended-deployment-steps)
- Create your stakeholder and communication plan schedule based on the [Recommended deployment steps](#recommended-deployment-steps)
- Have communications drafted and reviewed, and consider your delivery channels such as:
    - Social media posts
    - Internal messaging app (for example, Microsoft Teams)
    - Internal team site
    - Email
    - Company blog
    - Prerecorded on-demand videos
    - Virtual meeting(s)
    - In-person meetings
    - Team workshops
- Deploy your stakeholder communication plan

## Review your objectives and business case with stakeholders

Review your original objectives and business case with your key stakeholders to ensure your outcomes have been met and to ensure your expected value has been achieved.

## Need additional guidance?

If you need assistance with your Windows Autopatch deployment journey, you have the following support options:

- Microsoft Account Team
- [Microsoft FastTrack](/windows/deployment/windows-autopatch/operate/windows-autopatch-support-request#microsoft-fasttrack)
- Windows Autopatch Service Engineering Team
    - [Tenant enrollment support request](../prepare/windows-autopatch-enrollment-support-request.md)
    - [General support request](../operate/windows-autopatch-support-request.md)

First contact your Microsoft Account team who can work with you to establish any guidance or support you might need. If you don't have a Microsoft Account Team contact or wish to explore other routes, Microsoft FastTrack offers Microsoft 365 deployment guidance for customers with 150 or more licenses of an eligible subscription at no additional cost. Finally, you can also log a support request with the Windows Autopatch Service Engineering Team.

### Windows Commercial Advisors (WCA)

Once you're underway with your deployment, consider joining the [Windows Commercial Advisors (WCA)](https://aka.ms/joinccp) community within the [Microsoft Management Customer Connection Program (MM CCP)](https://techcommunity.microsoft.com/t5/microsoft-intune-blog/announcing-the-microsoft-management-customer-connection-program/ba-p/3725035), where you can:

- Engage directly with the Windows Commercial Engineering Teams and other Windows Commercial Customers
- Gain access to:
    - Exclusive virtual meetings
    - Focus groups
    - Surveys
    - Teams discussions
    - Previews
