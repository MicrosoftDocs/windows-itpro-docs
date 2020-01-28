---
title: Infrastructure Guidelines for HoloLens
description: 
ms.prod: hololens
ms.sitesec: library
author: pawinfie
ms.author: pawinfie
audience: ITPro
ms.topic: article
ms.localizationpriority: high
ms.date: 1/23/2020
ms.reviewer: 
manager: bradke
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Configure Your Network

This portion of the document will require the following people:
1.	Network Admin with permissions to make changes to the proxy/firewall
2.	Azure Active Directory Admin
3.	Mobile Device Manager Admin
4.	Teams admin for Remote Assist only

## Infrastructure Requirements

### HoloLens Specific Network Requirements
Make sure that these ports and URLs are allowed on your network firewall. This will enable HoloLens to function properly. The latest list can be found [here](hololens-offline.md).

### Remote Assist Specific Network Requirements

1.	The recommended bandwidth for optimal performance of Remote Assist is 1.5Mbps. Detailed network requirements and additional information can be found [here](https://docs.microsoft.com/MicrosoftTeams/prepare-network).
**Please note, if you don’t network have network speeds of at least 1.5Mbps, Remote Assist will still work. However, quality may suffer.**
1. Make sure that these ports and URLs are allowed on your network firewall. This will enable Microsoft Teams to function. The latest list can be found [here](https://docs.microsoft.com/office365/enterprise/urls-and-ip-address-ranges#skype-for-business-online-and-microsoft-teams).

### Guides Specific Network Requirements
Guides only require network access to download and use the app.

## Azure Active Directory Guidance
This step is only necessary if your company plans on managing the HoloLens and mixed reality apps.

### 1. Ensure that you have an Azure AD License. 
Please [HoloLens Licenses Requirements](hololens-licenses-requirements.md)for additional information.

### 2. Ensure that your company’s users are in Azure Active Directory (Azure AD).
Instructions for adding users can be found [here](https://docs.microsoft.com/azure/active-directory/fundamentals/add-users-azure-active-directory).

### 3. We suggest that users who will be need similar licenses are added to a group.
1. [Create a Group](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal) 

2. [Add users to groups](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-groups-members-azure-portal)

### 4. Ensure that your company’s users (or group of users) are assigned the necessary licenses. 
Directions for assigning licenses can be found [here](https://docs.microsoft.com/azure/active-directory/fundamentals/license-users-groups).

### 5. **IMPORTANT:** Only do this step if users are expected to enroll their HoloLens/Mobile device onto the network. 
These steps ensure that your company’s users (or a group of users) can add devices.
1. Option 1: Give all users permission to join devices to Azure AD.
**Sign in to the Azure portal as an administrator** > **Azure Active Directory** > **Devices** > **Device Settings** >
**Set Users may join devices to Azure AD to *All***

1.	Option 2: Give selected users/groups permission to join devices to Azure AD
**Sign in to the Azure portal as an administrator** > **Azure Active Directory** > **Devices** > **Device Settings** >
**Set Users may join devices to Azure AD to *Selected***
![Image that shows Configuration of Azure AD Joined Devices](images/azure-ad-image.png)

1.	Option 3: You can block all users from joining their devices to the domain. This means that all devices will need to be manually enrolled by your IT department. 

## Mobile Device Manager Admin Steps

### Scenario 1: Kiosk Mode
As a note, auto-launching an app does not currently work for HoloLens.

How to Set Up Kiosk Mode Using Microsoft Intune.
#### 1. Sync Microsoft Store to Intune ([Here](https://docs.microsoft.com/intune/apps/windows-store-for-business))

#### 2.	Check your app settings

1. Log into your Microsoft Store Business account
1. **Manage** > **Products and Services** > **Apps and Software** > **Select the app you want to sync** > **Private Store Availability** > **Select “Everyone” or “Specific Groups”**
1.	If you do not see your apps in **Intune** > **Client Apps** > **Apps** , you may have to [sync your apps](https://docs.microsoft.com/intune/apps/windows-store-for-business#synchronize-apps) again.

#### 3.	Configuring Kiosk Mode using MDM

Information on configuring Kiosk Mode in Intune can be found [here](https://docs.microsoft.com/hololens/hololens-kiosk#set-up-kiosk-mode-using-microsoft-intune-or-mdm-windows-10-version-1803)

 >[!NOTE]
    >You can configure different users to have different Kiosk Mode experiences by using “Azure AD” as the “User logon type”. However, this option is only available in Multi-App kiosk mode. Multi-App kiosk mode will work with only one app as well as multiple apps.

![Image that shows Configuration of Kiosk Mode in Intune](images/aad-kioskmode.png)

If you are configuring Kiosk Mode on an MDM other than Intune, please check your MDM provider's documentation.

## Additional Intune Quick Links

1.	[Create Profiles:](https://docs.microsoft.com/intune/configuration/device-profile-create) Profiles allow you to add and configure settings that will be pushed to the devices in your organization.

1. [CSPs (Configuration Service Providers)](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#csps-supported-in-hololens-devices) allows you to create and deploy management settings for the devices on your network. Some CSPs are supported by HoloLens devices. (See the list of CSPs for HoloLens [here](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#csps-supported-in-hololens-devices).

1.	[Create Compliance Policy](https://docs.microsoft.com/intune/protect/create-compliance-policy)

1.	 Conditional Access allows/denies mobile devices and mobile applications from accessing company resources. Two documents you may find helpful are [Plan your CA Deployment](https://docs.microsoft.com/azure/active-directory/conditional-access/plan-conditional-access) and [Best Practices](https://docs.microsoft.com/azure/active-directory/conditional-access/best-practices).

## Certificates and Authentication
### MDM Certificate Distribution
If your company requires certificates, Intune supports PKCS, PFX, and SCEP. It is important to understand which certificate is right for your company. Please visit [here](https://docs.microsoft.com/intune/protect/certificates-configure) to determine which cert is best for you. If you plan to use certs for HoloLens Authentication, PFX or SCEP may be right for you.

Steps for SCEP can be found [here](https://docs.microsoft.com/intune/protect/certificates-profile-scep).

### Device Certificates
Certificates can also be added to the HoloLens through package provisioning. Please see [HoloLens Provisioning](hololens-provisioning.md) for additional information.
