---
title: Windows Autopilot
description: Windows Autopilot
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
- ✅ <b>Windows 11 SE</b>
---

# Windows Autopilot

Windows Autopilot is especially useful in scenarios where devices are handed out to users without the need to build, maintain, and apply custom operating system images. These devices will be enrolled as school-owned devices. 

A cloud-based provisioning technology, Windows Autopilot can be used to set up and preconfigure devices at the start of the school year. There's no need to wipe devices or use custom OS images. The device must be preregistered, and the enrollment profile created and assigned in Intune for Education. When users sign in with their school account, they are automatically enrolled.

## Prerequisites

Before setting up Windows Autopilot, consider these prerequisites:

- **Software requirements. Ensure your school and devices meet the** [**software, networking, licensing, and configuration requirements**][WIN-1]** for Windows Autopilot.**
- **Devices ordered and registered.** Ensure your school IT administrator or Microsoft partner has ordered the devices from an original equipment manufacturer (OEM) and registered them for the Autopilot deployment service. We recommend that you connect with a partner through the [Microsoft Partner Center][MSFT-1] and work with them to register your devices.
- **Networking requirements.** Ensure students know to connect to the school network during OOBE setup. For more information on managing devices behind firewalls and proxy servers, see [Network endpoints for Microsoft Intune][MEM-1].

**NOTE:** Where not explicitly specified, both HTTPS (443) and HTTP (80) must be accessible. If you are auto-enrolling your devices into Microsoft Intune or deploying Microsoft Office, follow the networking guidelines for [Microsoft Intune][INT-1] and [Microsoft 365][M365-1].

### Register devices to Windows Autopilot

Before deployment, devices must be registered in the Windows Autopilot service. Each device's unique hardware identity (known as a *hardware hash*) must be uploaded, so that the Autopilot service can recognize which tenant devices belong to and which OOBE experience they should present to the users. There are three main ways to register devices to Autopilot:

- **OEM registration process.** When you purchase devices from an OEM or Reseller, that company can automatically register devices to Windows Autopilot and associate them to your tenant. Before this registration can happen, a *Global Administrator* must grant the OEM/Reseller permissions to register devices. For more inrmation, see [Windows Autopilot customer consent][MEM-2].
    > [!NOTE]
    > For **Microsoft Surface registration**, collect the details shown in this [<u>documentation table</u>][SURF-1] and follow the instruction to submit the request form to Microsoft Support.

- **Manually register devices with Windows Autopilot.** To manually register a device, you must first capture its hardware hash. Once this process has been completed, the hardware hash can be uploaded to the Windows Autopilot service using [Microsoft Intune](/mem/autopilot/add-devices), [Partner Center](https://msdn.microsoft.com/partner-center/autopilot) or [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa).

**NOTE:** Windows 11 SE devices do not support the use of Windows PowerShell or Microsoft Configuration Manager to capture hardware hashes. Hardware hashes can only be captured manually. We recommend working with an OEM, partner, or device reseller to register devices. For more information, see [Set up devices with Autopilot][EDU-1].

- **Allow a Cloud Solution Provider (CSP) to register devices.** Surface devices can be registered by device resellers (with active CSP partner status) as part of the ordering process. As with OEMs, CSP partners must be granted permission to register devices for a school. For more information, see this [Microsoft Partner Center clickable demo][MSFT-2].

### Set up the devices

First, you create a dynamic device group, and then you apply a Windows Autopilot deployment profile to each device in this group. Deployment profiles determine the deployment mode and customize the out-of-box experience of your devices.

### Create a group for your Autopilot devices

A device group is required to assign a Windows Autopilot deployment profile. You can create a group with a dynamic membership rule using Autopilot device attributes. Autopilot devices that meet these rules are automatically added to the group.

Here are the steps for creating a dynamic group for the devices that have an assigned Autopilot group tag:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the different categories and review information about individual settings

:::image type="content" source="./images/intune-education-autopilot-group.png" alt-text="Intune for Education - creation of a dynamic group for Autopilot devices" border="false":::

More advanced dynamic membership rules can be created from Microsoft Endpoint Manager admin center. For more information, see []().

### Create an Autopilot deployment profile

For Autopilot devices to offer a customized OOBE experience, you must create **deployment profiles** and assign them to a group containing the devices.
A deployment profile is a set of settings that determine the behavior of the device during OOBE.


1. **User-driven:** Devices with this profile are associated with the user enrolling the device. User credentials are required to enroll the device.
1. **Self-deploying:** Devices with this profile are not associated with the user enrolling the device. User credentials are not required to enroll the device.

To learn more about deployment profiles, see [Windows Autopilot deployment profiles](/mem/autopilot/profiles).

To create an Autopilot deployment profile:

More advanced Autopilot deployment profiles can be created from Microsoft Endpoint Manager admin center. For more information, see []().

### Configure an Enrollment Status Page

An Enrollment Status Page (ESP) is a greeting page displayed to users while enrolling or signing in for the first time to Windows devices. The ESP displays provisioning progress, showing applications and profiles installation status.

To deploy the ESP to devices, you need to create an ESP profile in Microsoft Endpoint Manager.

:::image type="content" source="./images/win11-oobe-esp.png" alt-text="Windows OOBE - enrollment status page" border="false":::

For more information, see [Set up the Enrollment Status Page][MEM-3].

> [!CAUTION]
> When targeting an ESP to **Windows 11 SE devices**, only approved apps should be included as part of the ESP configuration.

## branding reference here
### Autopilot end-user experience

Once configuration is complete and devices are distributed, students and teachers are able to complete device setup with Autopilot. They can set up their devices at home, at school, or wherever there is a reliable network. After a user turns on the device and signs in with their school account, enrollment automatically starts. 

When a Windows 11 SE device is turned on for the first time, the end-user experience with Windows Autopilot using a Wi-Fi connection is as follows:

1. Identify the language and region.
1. Select the keyboard layout and decide on the option for a second keyboard layout.
1. Connect to the internet. Windows will verify network connectivity to the internet. If connecting through Wi-Fi, the user will be prompted to connect to a wireless network. If the device is connected through an ethernet cable, Windows will skip this step.
1. Wait for detection. Windows will detect that the device has an Autopilot profile assigned and belongs to your school.
1. Enter the email address and password associated with your school account.
1. Apply updates. Once connected, the Windows 11 SE device will look for and apply required updates.
1. Sign in on the school-branded welcome screen. Users need only their school account credentials. No local administrator permissions are required.

________________________________________________________
## Next steps

With the devices joined to Azure AD tenant and managed by Intune, you can use Intune to maintain them and report on their status.

> [!div class="nextstepaction"]
> [Next: Manage devices >](manage-overview.md)

<!-- Reference links in article -->

[MEM-1]: /mem/intune/fundamentals/intune-endpoints
[MEM-3]: /mem/intune/enrollment/windows-enrollment-status
[MEM-2]: /mem/autopilot/registration-auth

[WIN-1]: /windows/deployment/windows-autopilot/windows-autopilot-requirements

[MSFT-1]: https://partner.microsoft.com/
[MSFT-2]: https://cloudpartners.transform.microsoft.com/resources/autopilot-in-edu-setup-english

[INT-1]: /intune/network-bandwidth-use

[M365-1]: https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2

[EDU-1]: /intune-education/windows-autopilot-setup
[EDU-2]: /intune-education/windows-11-se-overview#windows-autopilot

[SURF-1]: /surface/surface-autopilot-registration-support