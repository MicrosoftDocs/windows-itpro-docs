---
title: Admin group management (Surface Hub)
description: Every Microsoft Surface Hub can be configured individually by opening the Settings app on the device.
ms.assetid: FA67209E-B355-4333-B903-482C4A3BDCCE
ms.reviewer: 
manager: dansimp
keywords: admin group management, Settings app, configure Surface Hub
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
ms.localizationpriority: medium
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

#### What happens when you domain join your Surface Hub?
Surface Hubs use domain join to:
- Grant admin rights to members of a specified security group in AD.
- Backup the device's BitLocker recovery key by storing it under the computer object in AD. See [Save your BitLocker key](save-bitlocker-key-surface-hub.md) for details.
- Synchronize the system clock with the domain controller for encrypted communication

Surface Hub does not support applying group policies or certificates from the domain controller.

> [!NOTE]
> If your Surface Hub loses trust with the domain (for example, if you remove the Surface Hub from the domain after it is domain joined), you won't be able to authenticate into the device and open up Settings. If you decide to remove the trust relationship of the Surface Hub with your domain, [reset the device](device-reset-surface-hub.md) first.


### Azure Active Directory (Azure AD) join the device

You can Azure AD join the Surface Hub to allow IT pros from your Azure AD tenant to configure settings. During first run, choose to use [Microsoft Azure Active Directory](first-run-program-surface-hub.md#a-href-iduse-microsoft-azureause-microsoft-azure-active-directory). You will need to provide credentials that are capable of joining the Azure AD tenant of your choice. After you successfully Azure AD join, the appropriate people will be granted admin rights on the device.

By default, all **global administrators** will be given admin rights on an Azure AD joined Surface Hub. With **Azure AD Premium** or **Enterprise Mobility Suite (EMS)**, you can add additional administrators:
1.  In the [Azure classic portal](https://manage.windowsazure.com/), click **Active Directory**, and then click the name of your organization's directory.
2.  On the **Configure** page, under **Devices** > **Additional administrators on Azure AD joined devices**, click **Selected**.
3.  Click **Add**, and select the users you want to add as administrators on your Surface Hub and other Azure AD joined devices.
4.  When you have finished, click the checkmark button to save your change.

#### What happens when you Azure AD join your Surface Hub?
Surface Hubs use Azure AD join to:
- Grant admin rights to the appropriate users in your Azure AD tenant.
- Backup the device's BitLocker recovery key by storing it under the account that was used to Azure AD join the device. See [Save your BitLocker key](save-bitlocker-key-surface-hub.md) for details.

### Automatic enrollment via Azure Active Directory join

Surface Hub now supports the ability to automatically enroll in Intune by joining the device to Azure Active Directory. 

For more information, see [Enable Windows 10 automatic enrollment](https://docs.microsoft.com/intune/windows-enroll#enable-windows-10-automatic-enrollment).

### Which should I choose?

If your organization is using AD or Azure AD, we recommend you either domain join or Azure AD join, primarily for security reasons. People will be able to authenticate and unlock Settings with their own credentials, and can be moved in or out of the security groups associated with your domain.

| Option                                            | Requirements                            | Which credentials can be used to access the Settings app?  |
|---------------------------------------------------|-----------------------------------------|-------|
| Create a local admin account                      | None                                    | The user name and password specified during first run |
| Domain join to Active Directory (AD)              | Your organization uses AD               | Any AD user from a specific security group in your domain |
| Azure Active Directory (Azure AD) join the device | Your organization uses Azure AD Basic   | Global administrators only |
| &nbsp;                                            | Your organization uses Azure AD Premium or Enterprise Mobility Suite (EMS) | Global administrators and additional administrators |


