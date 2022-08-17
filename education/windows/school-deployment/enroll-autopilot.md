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

For more information, see [Overview of Windows Autopilot][MEM-1].
  > [!NOTE]
  > There are some limitations to Windows Autopilot in Windows 11 SE. For more information, see [**this article**][INT-1].
## Windows Autopilot

Windows Autopilot is especially useful in scenarios where devices are handed out to users without the need to build, maintain, and apply custom operating system images. These devices will be enrolled as school-owned devices. 

A cloud-based provisioning technology, Windows Autopilot can be used to set up and preconfigure devices at the start of the school year. There’s no need to wipe devices or use custom OS images. The device must be preregistered, and the enrollment profile created and assigned in Intune for Education. When users sign in with their school account, they are automatically enrolled. 

**NOTE:** A fix for the known TPM attestation issue can now be addressed by using the latest Bare Metal Recovery (BMR) with 5b CU. For more information, see [Support tip: Recovering from Windows Autopilot error code 0x81039023 on Windows 11 SE](https://techcommunity.microsoft.com/t5/intune-customer-success/support-tip-recovering-from-windows-autopilot-error-code/ba-p/3283743). 

### Prerequisites

Before setting up Windows Autopilot, consider these prerequisites:

- **Software requirements. Ensure your school and devices meet the** [**software, networking, licensing, and configuration requirements**](/windows/deployment/windows-autopilot/windows-autopilot-requirements)** for Windows Autopilot.**
- **Devices ordered and registered.** Ensure your school IT administrator or Microsoft partner has ordered the devices from an original equipment manufacturer (OEM) and registered them for the Autopilot deployment service. We recommend that you connect with a partner through the [Microsoft Partner Center](https://partner.microsoft.com/) and work with them to register your devices.
- **Intune for Education tenant. Ensure your tenant for Intune for Education is set up. We recommend configuring your tenant with** [**School Data Sync**](#)**, as this method automatically creates Student and Teacher groups for each school, as well as a combined Teacher and Student group. It also creates tenant-wide All Teachers and All Student groups.**
- **Networking requirements.** Ensure students know to connect to the school network during OOBE setup. For more information on managing devices behind firewalls and proxy servers, see [Network endpoints for Microsoft Intune](/mem/intune/fundamentals/intune-endpoints). 

**NOTE:** Where not explicitly specified, both HTTPS (443) and HTTP (80) must be accessible. If you are auto-enrolling your devices into Microsoft Intune or deploying Microsoft Office, follow the networking guidelines for [Microsoft Intune](/intune/network-bandwidth-use) and [Microsoft 365](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2).

### Register devices to Windows Autopilot

Before deployment, devices must be registered with the Windows Autopilot deployment service. Each device’s unique hardware identity (known as a *hardware hash*) is captured and uploaded to the Autopilot service, and the device is associated with an Azure tenant ID. There are three main ways to register devices to Autopilot:

- **Complete the OEM registration process.** When you purchase devices from an OEM, that company can automatically register them with Windows Autopilot. Before an OEM can register devices, your school must grant permission. The OEM begins this process with approval granted by an Azure AD global administrator from the school. For Microsoft Surface registration, collect the details shown in this [documentation table](/surface/surface-autopilot-registration-support) before submitting the request to Microsoft Support. You can make requests using the [Microsoft Devices Autopilot Support](https://prod.support.services.microsoft.com/supportrequestform/0d8bf192-cab7-6d39-143d-5a17840b9f5f) form.
- **Manually register devices with Windows Autopilot.** To manually register a device, you must first capture its hardware hash. Once this process has been completed, the hardware hash can be uploaded to the Windows Autopilot service using [Microsoft Intune](/mem/autopilot/add-devices), [Partner Center](https://msdn.microsoft.com/partner-center/autopilot), [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa), or the [Microsoft Store](https://apps.microsoft.com/store/apps).

**NOTE:** Windows 11 SE devices do not support the use of Windows PowerShell or Microsoft Configuration Manager to capture hardware hashes. Hardware hashes can only be captured manually. We recommend working with an OEM, partner, or device reseller to register devices. For more information, see [Set up devices with Autopilot](/intune-education/windows-autopilot-setup). 

- **Allow a Cloud Solution Provider (CSP) to register devices.** Surface devices can be registered by device resellers (with active CSP partner status) as part of the ordering process. As with OEMs, CSP partners must be granted permission to register devices for a school. For more information, see this [Microsoft Partner Center clickable demo](https://cloudpartners.transform.microsoft.com/resources/autopilot-in-edu-setup-english).

### Set up the devices

It’s easy to set up Windows 11 SE devices with Windows Autopilot and Microsoft Endpoint Manager. First, you create a dynamic device group, and then you apply a Windows Autopilot deployment profile to each device in this group. Deployment profiles determine the deployment mode and customize the OOBE for your end users.

### Create a dynamic device group

Dynamic groups reference rules that you create to assign devices to groups. The criteria for a rule are specified during initial group creation and can be edited afterward. A device group is required to assign a Windows Autopilot deployment profile. You can create a group with a dynamic membership rule using Autopilot device attributes. Autopilot devices that meet these rules are automatically added to the group.

The steps for creating a dynamic device group are completed in Microsoft Endpoint Manager:

1. Go to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), and then select **Groups** → **New Group**. 
1. Configure the following properties:
1. **Group type**: Select **Security**.
1. **Group name/Group description**: Enter a valid name and description for your group.
1. **Azure AD roles can be assigned to the group**: Select **Yes**. This allows Azure AD roles to be assigned to the group you are creating. Once set, the group is permanent and always allowed to be assigned Azure AD roles. For more information, see [Use Azure AD groups to manage role assignments](/azure/active-directory/roles/groups-concept).
1. **Membership type**: Select **Dynamic Device**. This property allows you to choose how devices become members of this group. For more information, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).
1. **Owners**: Select users who own this group. Owners can also delete the group.
1. **Dynamic device members**: Select **Add dynamic query** → **Add expression**.

![New Group page in Microsoft Endpoint Manager admin center](./image6.png)

### Create rules using Autopilot device attributes

Autopilot devices that meet the rules are automatically added to the group. Note that creating an expression using non-Autopilot attributes does not guarantee that devices included in the group are registered to Autopilot. 

The following steps will create a dynamic device group that uses the query expression defined in the rule.

1. Create expressions, as desired:
1. To create a group that includes all your Autopilot devices, enter **(device.devicePhysicalIDs -any (\_ -contains "[ZTDID]"))**.
1. The Intune group tag field maps to the OrderID attribute on Azure AD devices. To create a group that includes all Autopilot devices with a specific group tag (the Azure AD device OrderID), enter **(device.devicePhysicalIds -any (\_ -eq "[OrderID]:179887111881"))**.
1. To create a group that includes all your Autopilot devices with a specific Purchase Order ID, enter **(device.devicePhysicalIds -any (\_ -eq "[PurchaseOrderId]:76222342342"))**.

![Dynamic membership rules page in Microsoft Endpoint Manager admin center](./image7.png)

5. Save your expressions.
1. Select **Create**. 

### Create an Autopilot deployment profile

Once the dynamic device group is created, it can be used for assigning Windows Autopilot deployment profiles. These profiles are used to configure Autopilot devices.

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), choose **Devices** → **Windows** → **Windows enrollment** → **Deployment Profiles** → **Create Profile** → **Windows PC**.
1. On the **Basics** page:
1. Enter a **Name** and optional **Description**. 
1. If you want all devices in the assigned groups to convert to Autopilot automatically, for **Convert all targeted devices to Autopilot**, select **Yes**.
1. On the **Out-of-box experience** page, for **Deployment** mode, choose one option:
1. **User-driven:** Devices with this profile are associated with the user enrolling the device. User credentials are required to enroll the device.
1. **Self-deploying:** Devices with this profile are not associated with the user enrolling the device. User credentials are not required to enroll the device. When a device has no user associated with it, user-based compliance policies do not apply. When using self-deploying mode, only compliance policies targeting the device will be applied.
1. In the **Join to Azure AD** field, choose **Azure AD joined**.

![Windows Autopilot profile creation page in Microsoft Endpoint Manager admin center](./image8.png)

9. On the **Assignments** page: 
1. Choose **Select groups to include**, and then choose the groups you want to include in this profile.
1. If a group is not showing in the group list, select **Add groups**, and then select the desired group. In this case, you will select the dynamic device group you created above in [Create a dynamic device group](#).

![Group assignments page for Windows Autopilot deployment profiles](./image9.png)

12. On the **Review + create** page, select **Create** to generate the profile.

For more information, see [Configure Autopilot profiles](/mem/autopilot/profiles).

### Enrollment Status Page reference here
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
## Section review and next steps

> [!div class="nextstepaction"]
> [< Enroll devices](enroll-overview.md)
> [Manage devices >](manage-overview.md)