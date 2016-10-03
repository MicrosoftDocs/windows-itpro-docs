---
title: Admin group management (Surface Hub)
description: Every Microsoft Surface Hub can be configured individually by opening the Settings app on the device.
ms.assetid: FA67209E-B355-4333-B903-482C4A3BDCCE
keywords: admin group management, Settings app, configure Surface Hub
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub, security
author: TrudyHa
localizationpriority: medium
---

# Admin group management (Surface Hub)


Every Surface Hub can be configured locally using the Settings app on the device. To prevent unauthorized users from changing settings, the Settings app requires admin credentials to open the app.


## Admin Group Management

You can set up administrator accounts for the device in one of three ways:

-   Create a local admin account
-   Domain join the device to Active Directory (AD)
-   Azure Active Directory (Azure AD) join the device


### Create a local admin account

To create a local admin, [choose to use a local admin during first run](first-run-program-surface-hub.md#use-a-local-admin). This will create a single local admin account on the Surface Hub with the username and password of your choice. Use these credentials to open the Settings app.

Note that the local admin account information is not backed by any directory service. We recommend you only choose a local admin if the device does not have access to Active Directory (AD) or Azure Active Directory (Azure AD). If you decide to change the local admin’s password, you can do so in Settings. However, if you want to change from using the local admin account to using a group from your domain or Azure AD tenant, then you’ll need to [reset the device](device-reset-surface-hub.md) and go through the first-time program again.


### Domain join the device to Active Directory (AD)

You can domain join the Surface Hub to your AD domain to allow users from a specified security group to configure settings. During first run, choose to use [Active Directory Domain Services](first-run-program-surface-hub.md#a-href-iduse-active-directoryause-active-directory-domain-services). You'll need to provide credentials that are capable of joining the domain of your choice, and the name of an existing security group. Anyone who is a member of that security group can enter their credentials and unlock Settings.

>**Note**  Surface Hubs use domain join only to set up an admin group for the device. Group policies are not applied after the device is domain joined

>**Note**  If your Surface Hub loses trust with the domain (for example, if you remove the Surface Hub from the domain after it is domain joined), you won't be able to authenticate into the device and open up Settings. If you decide to remove the trust relationship of the Surface Hub with your domain, [reset the device](device-reset-surface-hub.md) first.


### Azure Active Directory (Azure AD) join the device

You can Azure AD join the Surface Hub to allow IT pros from your Azure AD tenant to configure settings. The people who are provisioned as admins on your device depend on your Azure AD subscription. During first run, choose to use [Microsoft Azure Active Directory](first-run-program-surface-hub.md#a-href-iduse-microsoft-azureause-microsoft-azure-active-directory). You will need to provide credentials that are capable of joining the Azure AD tenant of your choice. After you successfully Azure AD join, the appropriate people will be added as admins on the device.

>**Note**  If your Azure AD organization is configured to automatically enroll devices into mobile device management (MDM), you will need to disable this for the Surface Hubs you plan to join to Azure AD, and manually enroll into MDM using Settings. A known issue prevents Surface Hubs from supporting this setting.


### Which should I choose?

If your organization is using AD or Azure AD, we recommend you either domain join or Azure AD join, primarily for security reasons. People will be able to authenticate and unlock Settings with their own credentials, and can be moved in or out of the security groups associated with your domain.


### Summary

| Option                                            | Requirements                            | Which credentials can be used to access the Settings app?  |
|---------------------------------------------------|-----------------------------------------|-------|
| Create a local admin account                      | None                                    | The user name and password specified during first run |
| Domain join to Active Directory (AD)              | Your organization uses AD               | Any AD user from a specific security group in your domain |
| Azure Active Directory (Azure AD) join the device | Your organization uses Azure AD Basic   | Global administators only |
|                                                   | Your organization uses Azure AD Premium | Global administrators and other specified users |

