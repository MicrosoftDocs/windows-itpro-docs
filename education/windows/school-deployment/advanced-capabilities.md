---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
---

# Advanced capabilities

This section of the cookbook provides information about the advanced capabilities in Intune for Education for device management, reporting, security, and support.

## Endpoint security

Intune for Education helps protect devices and school data with tools like security baselines and Windows Update policies. Through the Endpoint security node, you can configure device security and manage security tasks for devices at risk. The node configures and deploys Microsoft Defender for Endpoint to help prevent security breaches and gain visibility into your school’s security posture. 

### Create security policies

To create security policies in Intune for Education:

1. In the [Microsoft Endpoint Manager admin center](https://intuneeducation.portal.azure.com/), select the **Endpoint security** node. 
1. Under **Manage**, choose the policies you want to set from the included list. For more information, see [Antivirus](/mem/intune/protect/endpoint-security-antivirus-policy), [Disk encryption](/mem/intune/protect/endpoint-security-disk-encryption-policy), [Firewall](/mem/intune/protect/endpoint-security-firewall-policy), [Endpoint detection and response](/mem/intune/protect/endpoint-security-edr-policy), [Attack surface reduction](/mem/intune/protect/endpoint-security-asr-policy), and [Account protection](/mem/intune/protect/endpoint-security-account-protection-policy).
1. Select **Create policy**. For more information, see [Creating an endpoint security policy](/mem/intune/protect/endpoint-security-policy).

![Endpoint security overview page in Microsoft Endpoint Manager](./image22.png)


## Manage device firmware for Surface devices

Managing devices from the cloud has dramatically simplified IT deployment and provisioning. Surface devices are designed to use a unique Unified Extensible Firmware Interface (UEFI) setting that provides the ability to enable or disable built-in devices and components, protect UEFI settings from being changed, and adjust device boot settings. With [Device Firmware Configuration Interface profiles built into Intune](/intune/configuration/device-firmware-configuration-interface-windows), Surface UEFI management extends the modern management stack down to the UEFI hardware level. DFCI enables Windows to pass management commands from Intune to UEFI for Autopilot-deployed devices. DFCI also supports zero-touch provisioning, eliminates BIOS passwords, and provides control of security settings for boot options, cameras and microphones, built-in peripherals, and more. For more information, see [Manage DFCI with Windows Autopilot](/mem/autopilot/dfci-management) and [Manage DFCI on Surface devices](/surface/surface-manage-dfci-guide). Then, return to this document to continue with the steps below. 

### Prerequisites

The following prerequisites are required to manage DFCI with Intune:

- The device must be managed with Intune, as DFCI management is not supported with Set Up School PCs (provisioning package) enrollments. For more information, see [DFCI Management](/mem/autopilot/dfci-management). 
- The device should be registered through Windows Autopilot in Intune. The device must be registered for Windows Autopilot by a [Microsoft CSP partner](https://partner.microsoft.com/membership/cloud-solution-provider) or registered directly by the OEM. **NOTE:** Devices manually registered for Autopilot (such as by importing a CSV file) are not allowed to use DFCI. By design, DFCI management requires external attestation of the device’s commercial acquisition through an OEM or a Microsoft CSP partner registration to Windows Autopilot.
- The device manufacturer must have DFCI added to their UEFI firmware in the manufacturing process or as a firmware update that you install. Work with your device vendors to determine the [manufacturers that support DFCI](/mem/autopilot/dfci-management). 

### Manage DFCI profiles with Autopilot

There are four basic parts to managing a DFCI profile with Windows Autopilot:

- Create a DFCI profile.
- Create an Autopilot profile. 
- Create an enrollment status profile.
- Configure DFCI settings on Surface devices.

The DFCI environment requires creating a DFCI profile that contains settings and an Autopilot profile to apply those settings to registered devices. An enrollment status profile is also recommended to ensure settings are pushed down during OOBE setup when users start the device.

#### Create a DFCI profile

Create a [DFCI profile](/surface/surface-manage-dfci-guide), and then assign it to the Azure AD security group that contains your targeted Surface devices: 

1. In Microsoft Endpoint Manager, select **Devices** → **Configuration profiles** → **Create profile**. 
1. In the **Create a profile** pane:
1. For the platform, select **Windows 10 and later**. 
1. For the profile type, select **Templates**, and then select **Device Firmware Configuration Interface**. 
1. Enter a name and description for the profile. 

![Profile creation page for devices in Microsoft Endpoint Manager admin center](./image24.png)

6. In **Configuration settings**, review the available settings in the UEFI configuration.
1. Select **Assignments**.
1. Under **Select groups to include**, select the Azure AD security group that contains your target devices.
1. Select **Next** to continue through **applicability rules**.
1. Review the group settings, and then select **Create**.

#### Create an Autopilot profile

To create an Autopilot profile:

1. In Microsoft Endpoint Manager, choose **Select devices** → **Windows enrollment**. 
1. Scroll to **Deployment profiles**, and then follow the on-screen prompts.

For more information, see [How to create Autopilot Profile](/surface/surface-manage-dfci-guide). Then, return to this document to continue with the steps below. 

#### Create an enrollment status profile

To ensure devices apply the DFCI configuration during OOBE before users sign in, you must configure enrollment status. For more information, see [Set up an enrollment status page](/intune/enrollment/windows-enrollment-status), and then return to this document to continue with the steps below. 

#### Configure DFCI settings on Surface devices

You can configure DFCI policy settings by editing the DFCI profile from Microsoft Endpoint Manager:

1. In the Microsoft Endpoint Manager admin center, select **Devices** → **Windows** → **Configuration profiles**.
1. Select the **DFCI profile name** → **Properties** → **Settings**.

:::image type="content" source="./image25.png" alt-text="Device Firmware Configuration Interface page in Microsoft Endpoint Manager admin center" border="true":::

For more information, see [Configuring the DFCI environment and managing UEFI configuration settings for targeted Surface devices](/surface/surface-manage-dfci-guide). 


## Microsoft Surface Management Portal

Located in the Microsoft Endpoint Manager admin center, the Microsoft Surface Management Portal enables you to self-serve, manage, and monitor your school’s Intune-managed Surface devices at scale. Get insights into device compliance, support activity, warranty coverage, and more. When Surface Laptop SE devices are enrolled in cloud management and users sign in for the first time, information automatically flows into the Surface Management Portal, giving you a single pane of glass for Surface-specific administration activities.

To access and use the Surface Management Portal: 

1. In the Microsoft Endpoint Manager admin center, select **All services** → **Surface Management Portal**.

:::image type="content" source="./image26.png" alt-text="Surface Management Portal monitoring page in Microsoft Endpoint Manager admin center" border="true":::

2. To display insights for all your Surface devices, select **Monitor**. This shows devices that are out of compliance or not registered, have critically low storage, require updates, or are currently inactive. 
1. To see details on each insights category, select **View report**. This displays diagnostic information that you can customize and export. 

To see the device’s warranty information, select **Device warranty and coverage**.

5. To see support requests and their status, select **Support requests**.

## Autopilot motherboard replacement

Repairing Autopilot-enrolled devices can be complex, as OEM requirements must be balanced with Autopilot requirements. If a motherboard replacement is needed on an Autopilot device, we recommend the following process:

1. [Deregister the device](/mem/autopilot/autopilot-mbr) from Autopilot.
1. [Replace the motherboard](/mem/autopilot/autopilot-mbr).
1. [Capture a new device ID (4K HH)](/mem/autopilot/autopilot-mbr).
1. [Reregister the device](/mem/autopilot/autopilot-mbr) with Autopilot. **NOTE:** For DFCI management, the device must be reregistered by a partner or OEM. Self-registration of devices is not supported with DFCI management.
1. [Reset the device](/mem/autopilot/autopilot-mbr).
1. [Return the device](/mem/autopilot/autopilot-mbr).

For more information, see [Autopilot motherboard replacement scenario guidance](/mem/autopilot/autopilot-mbr).

**UP NEXT:** By this point in the cookbook, you have reviewed the basic steps for full device lifecycle management. In the next section, we'll look at some advanced Intune capabilities that can help support your device management needs today and into the future.

## How to contact Microsoft Support

Microsoft provides global technical, pre-sales, billing, and subscription support for cloud-based device management services. This support includes Microsoft Intune, Configuration Manager, Windows 365, and Microsoft Managed Desktop.

Follow these steps to obtain support in Microsoft Endpoint Manager:

- Sign in to the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com)
- Select **Troubleshooting + support** > **Help and support**
    :::image type="content" source="images/advanced-support.png" alt-text="Screenshot that shows how to obtain support from Microsoft Endpoint Manager.":::
- Select the required support scenario: Configuration Manager, Intune, Co-management, or Windows 365
- Above **How can we help?**, select one of three icons to open different panes: *Find solutions*, *Contact support*, or *Service requests*
- In the **Find solutions** pane, use the text box to specify a few details about your issue. The console may offer suggestions based on what you've entered. Depending on the presence of specific keywords, the console provides help like:
  - Run diagnostics: start automated tests and investigations of your tenant from the console to reveal known issues. When you run a diagnostic, you may receive mitigation steps to help with resolution
  - View insights: find links to documentation that provides context and background specific to the product area or actions you've described
  - Recommended articles: browse suggested troubleshooting topics and other content related to your issue
- If needed, use the *Contact support* pane to file an online support ticket
  > [!IMPORTANT]
  > When opening a case, be sure to include as many details as possible in the *Description* field. Such information includes: timestamp and date, device ID, device model, serial number, OS version, and any other details relevant to the issue.
- To review your case history, select the **Service requests** pane. Active cases are at the top of the list, with closed issues also available for review

For more information, see [Microsoft Endpoint Manager support page](/mem/get-support).
