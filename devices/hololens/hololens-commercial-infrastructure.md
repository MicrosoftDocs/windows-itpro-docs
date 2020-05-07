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
audience: ITPro
manager: bradke
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Configure Your Network for HoloLens

This portion of the document will require the following people:

1. Network Admin with permissions to make changes to the proxy/firewall
2. Azure Active Directory Admin
3. Mobile Device Manager Admin

## Infrastructure Requirements

HoloLens is, at its core, a Windows mobile device integrated with Azure.  It works best in commercial environments with wireless network availability (wi-fi) and access to Microsoft services.

Critical cloud services include:

- Azure active directory (AAD)
- Windows Update (WU)

Commercial customers will need enterprise mobility management (EMM) or mobile device management (MDM) infrastructure to manage HoloLens devices at scale.  This guide uses [Microsoft Intune](https://www.microsoft.com/enterprise-mobility-security/microsoft-intune) as an example, though any provider with full support for Microsoft Policy can support HoloLens.  Ask your mobile device management provider if they support HoloLens 2.

HoloLens does support a limited set of cloud disconnected experiences.

### Wireless network EAP support

- PEAP-MS-CHAPv2
- PEAP-TLS
- TLS
- TTLS-CHAP
- TTLS-CHAPv2
- TTLS-MS-CHAPv2
- TTLS-PAP
- TTLS-TLS

### HoloLens Specific Network Requirements

Make sure that [this list](hololens-offline.md) of endpoints are allowed on your network firewall. This will enable HoloLens to function properly.

### Remote Assist Specific Network Requirements

1. The recommended bandwidth for optimal performance of Remote Assist is 1.5Mbps. Detailed network requirements and additional information can be found [here](https://docs.microsoft.com/MicrosoftTeams/prepare-network).
**(Please note, if you don't network have network speeds of at least 1.5Mbps, Remote Assist will still work. However, quality may suffer).**
1. Make sure that these ports and URLs are allowed on your network firewall. This will enable Microsoft Teams to function. The latest list can be found [here](https://docs.microsoft.com/office365/enterprise/urls-and-ip-address-ranges#skype-for-business-online-and-microsoft-teams).

### Guides Specific Network Requirements

Guides only require network access to download and use the app.

## Azure Active Directory Guidance

> [!NOTE]
> This step is only necessary if your company plans on managing the HoloLens.

1. Ensure that you have an Azure AD License.
Please [HoloLens Licenses Requirements](hololens-licenses-requirements.md) for additional information.

1. If you plan on using Auto Enrollment, you will have to [Configure Azure AD enrollment.](https://docs.microsoft.com/intune/deploy-use/.set-up-windows-device-management-with-microsoft-intune#azure-active-directory-enrollment)

1. Ensure that your company's users are in Azure Active Directory (Azure AD).
Instructions for adding users can be found [here](https://docs.microsoft.com/azure/active-directory/fundamentals/add-users-azure-active-directory).

1. We suggest that users who need similar licenses are added to the same group.
    1. [Create a Group](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)
    1. [Add users to groups](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-groups-members-azure-portal)

1. Ensure that your company's users (or group of users) are assigned the necessary licenses.
Directions for assigning licenses can be found [here](https://docs.microsoft.com/azure/active-directory/fundamentals/license-users-groups).

1. Only do this step if users are expected to enroll their HoloLens/Mobile device into you (There are three options)
These steps ensure that your company's users (or a group of users) can add devices.
    1. **Option 1:** Give all users permission to join devices to Azure AD.
**Sign in to the Azure portal as an administrator** > **Azure Active Directory** > **Devices** > **Device Settings** >
**Set Users may join devices to Azure AD to *All***

    1. **Option 2:** Give selected users/groups permission to join devices to Azure AD
**Sign in to the Azure portal as an administrator** > **Azure Active Directory** > **Devices** > **Device Settings** >
**Set Users may join devices to Azure AD to *Selected***
![Image that shows Configuration of Azure AD Joined Devices](images/azure-ad-image.png)

    1. **Option 3:** You can block all users from joining their devices to the domain. This means that all devices will need to be manually enrolled.

## Mobile Device Manager Guidance

### Ongoing device management

> [!NOTE]
> This step is only necessary if your company plans to manage the HoloLens.

Ongoing device management will depend on your mobile device management infrastructure.  Most have the same general functionality but the user interface may vary widely.

1. [CSPs (Configuration Service Providers)](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#csps-supported-in-hololens-devices) allows you to create and deploy management settings for the devices on your network. A list of CSPs for HoloLens can be found [here](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#csps-supported-in-hololens-devices).

1. [Compliance policies](https://docs.microsoft.com/intune/device-compliance-get-started) are rules and settings that devices must meet to be compliant in your corporate infrastructure. Use these policies with Conditional Access to block access to company resources for devices that are non-compliant. For example, you can create a policy that requires Bitlocker be enabled.

1. [Create Compliance Policy](https://docs.microsoft.com/intune/protect/compliance-policy-create-windows).

1. Conditional Access allows/denies mobile devices and mobile applications from accessing company resources. Two documents you may find helpful are [Plan your CA Deployment](https://docs.microsoft.com/azure/active-directory/conditional-access/plan-conditional-access) and [Best Practices](https://docs.microsoft.com/azure/active-directory/conditional-access/best-practices).

1. [This article](https://docs.microsoft.com/intune/fundamentals/windows-holographic-for-business) talks about Intune's management tools for HoloLens.

1. [Create a device profile](https://docs.microsoft.com/intune/configuration/device-profile-create)

### Manage updates

Intune includes a feature called Update rings for Windows 10 devices, including HoloLens 2 and HoloLens v1 (with Holographic for Business). Update rings include a group of settings that determine how and when updates are installed.

For example, you can create a maintenance window to install updates, or choose to restart after updates are installed.  You can also choose to pause updates indefinitely until you're ready to update.

Read more about [configuring update rings with Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure).

### Application management

Manage HoloLens applications through:

1. Microsoft Store  
  The Microsoft Store is the best way to distribute and consume applications on HoloLens.  There is a great set of core HoloLens applications already available in the store or you can [publish your own](https://docs.microsoft.com/windows/uwp/publish/).  
  All applications in the store are available publicly to everyone, but if it isn't acceptable, checkout the Microsoft Store for Business.  

1. [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/)  
  Microsoft Store for Business and Education is a custom store for your corporate environment.  It lets you use the Microsoft Store built into Windows 10 and HoloLens to find, acquire, distribute, and manage apps for your organization.  It also lets you deploy apps that are specific to your commercial environment but not to the world.

1. Application deployment and management via Intune or another mobile device management solution  
  Most mobile device management solutions, including Intune, provide a way to deploy line of business applications directly to a set of enrolled devices.  See this article for [Intune app install](https://docs.microsoft.com/intune/apps-deploy).

1. _not recommended_ Device Portal  
  Applications can also be installed on HoloLens directly using the Windows Device Portal.  This isn't recommended since Developer Mode has to be enabled to use the device portal.

Read more about [installing apps on HoloLens](https://docs.microsoft.com/hololens/hololens-install-apps).

### Certificates

You can distribute certificates through your MDM provider. If your company requires certificates, Intune supports PKCS, PFX, and SCEP. It is important to understand which certificate is right for your company. Please visit [here](https://docs.microsoft.com/intune/protect/certificates-configure) to determine which cert is best for you. If you plan to use certificates for HoloLens Authentication, PFX or SCEP may be right for you.

Steps for SCEP can be found [here](https://docs.microsoft.com/intune/protect/certificates-profile-scep).

### How to Upgrade to Holographics for Business Commercial Suite

> [!NOTE]
> Windows Holographics for Business (commercial suite) is only intended for HoloLens 1st gen devices. The profile will not be applied to HoloLens 2 devices.

Directions for upgrading to the commercial suite can be found [here](https://docs.microsoft.com/intune/configuration/holographic-upgrade).

### How to Configure Kiosk Mode Using Microsoft Intune

1. Sync Microsoft Store to Intune ([Here](https://docs.microsoft.com/intune/apps/windows-store-for-business)).

1. Check your app settings
    1. Log into your Microsoft Store Business account
    1. **Manage > Products and Services > Apps and Software > Select the app you want to sync > Private Store Availability > Select "Everyone" or "Specific Groups"**
        >[!NOTE]
        >If you don't see the app you want, you will have to "get" the app by searching the store for your app. **Click the "Search" bar in the upper right-hand corner > type in the name of the app > click on the app > select "Get"**.
    1. If you do not see your apps in **Intune > Client Apps > Apps** , you may have to [sync your apps](https://docs.microsoft.com/intune/apps/windows-store-for-business#synchronize-apps) again.

1. [Create a device profile for Kiosk mode](https://docs.microsoft.com/intune/configuration/kiosk-settings#create-the-profile)

> [!NOTE]
> You can configure different users to have different Kiosk Mode experiences by using "Azure AD" as the "User logon type". However, this option is only available in Multi-App kiosk mode. Multi-App kiosk mode will work with only one app as well as multiple apps.

![Image that shows Configuration of Kiosk Mode in Intune](images/aad-kioskmode.png)

For other MDM services, check your provider's documentation for instructions. If you need to use a custom setting and full XML configuration to set up a kiosk in your MDM service, additional directions can be found [here](hololens-kiosk.md#use-microsoft-intune-or-other-mdm-to-set-up-a-single-app-or-multi-app-kiosk)

## Certificates and Authentication

Certificates can be deployed via you MDM (see "certificates" in the [MDM Section](hololens-commercial-infrastructure.md#mobile-device-manager-guidance)). Certificates can also be deployed to the HoloLens through package provisioning. Please see [HoloLens Provisioning](hololens-provisioning.md) for additional information.

### Additional Intune Quick Links

1. [Create Profiles:](https://docs.microsoft.com/intune/configuration/device-profile-create) Profiles allow you to add and configure settings that will be pushed to the devices in your organization.

## Next (Optional) Step: [Configure HoloLens using a provisioning package](hololens-provisioning.md)

## Next Step: [Enroll your device](hololens-enroll-mdm.md)
