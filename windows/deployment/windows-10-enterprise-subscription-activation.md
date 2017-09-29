---
title: Windows 10 Subscription Activation
description: How to enable Windows 10 Enterprise E3 and E5 subscriptions
keywords: upgrade, update, task sequence, deploy
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
ms.sitesec: library
ms.pagetype: mdt
ms.date: 08/23/2017
author: greg-lindsay
---

# Windows 10 Subscription Activation

With Windows 10 version 1703 (also known as the Creator’s Update), both Windows 10 Enterprise E3 and Windows 10 Enterprise E5 are available as online services via subscription. Deploying [Windows 10 Enterprise](planning/windows-10-enterprise-faq-itpro.md) in your organization can now be accomplished with no keys and no reboots.

 If you are running Windows 10 version 1703 or later:

- Devices with a current Windows 10 Pro license can be seamlessly upgraded to Windows 10 Enterprise.
- Product key-based Windows 10 Enterprise software licenses can be transitioned to Windows 10 Enterprise subscriptions.

Organizations that have an Enterprise agreement can also benefit from the new service, using traditional Active Directory-joined devices. In this scenario, the Active Directory user that signs in on their device must be synchronized with Azure AD using [Azure AD Connect Sync](https://docs.microsoft.com/en-us/azure/active-directory/connect/active-directory-aadconnectsync-whatis).

See the following topics in this article:
- [Requirements](#requirements): Prerequisites to use the Windows 10 Enterprise subscription model.
- [Benefits](#benefits): Advantages of Windows 10 Enterprise + subscription-based licensing.
- [How it works](#how-it-works): A summary of the subscription-based licensing option.
- [Virtual Desktop Access (VDA)](#virtual-desktop-access-vda): Enable Windows 10 Subscription Activation for VMs in the cloud.

For information on how to deploy Windows 10 Enterprise licenses, see [Deploy Windows 10 Enterprise licenses](deploy-enterprise-licenses.md).

## Requirements

For Microsoft customers with Enterprise Agreements (EA) or Microsoft Products & Services Agreements (MPSA), you must have the following: 

- Windows 10 (Pro or Enterprise) version 1703 or later installed on the devices to be upgraded
- Azure Active Directory (Azure AD) available for identity management
- Devices must be Azure AD-joined or Active Directory joined with Azure AD Connect. Workgroup-joined devices are not supported.

For Microsoft customers that do not have EA or MPSA, you can obtain Windows 10 Enterprise E3 or E5 through a cloud solution provider (CSP). Identity management and device requirements are the same when you use CSP to manage licenses, with the exception that Windows 10 Enterprise E3 is also available through CSP to devices running Windows 10, version 1607. For more information about obtaining Windows 10 Enterprise E3 through your CSP, see [Windows 10 Enterprise E3 in CSP](windows-10-enterprise-e3-overview.md).

If devices are running Windows 7 or Windows 8.1, see [New Windows 10 upgrade benefits for Windows Cloud Subscriptions in CSP](https://blogs.windows.com/business/2017/01/19/new-windows-10-upgrade-benefits-windows-cloud-subscriptions-csp/)

## Benefits

With Windows 10 Enterprise, businesses can benefit from enterprise-level security and control. Previously, only organizations with a Microsoft Volume Licensing Agreement could deploy Windows 10 Enterprise E3 or E5 to their users. Now, with Windows 10 Enterprise E3 and E5 being available as a true online service, it is available in every channel thus allowing all organizations to take advantage of enterprise grade Windows 10 features. To compare Windows 10 editions and review pricing, see the following:

- [Compare Windows 10 editions](https://www.microsoft.com/en-us/windowsforbusiness/compare)
- [Enterprise Mobility + Security Pricing Options](https://www.microsoft.com/en-us/cloud-platform/enterprise-mobility-security-pricing)

You can benefit by moving to Windows as an online service in the following ways:

1. Licenses for Windows 10 Enterprise are checked based on Azure Active Directory (Azure AD) credentials, so now businesses have a systematic way to assign licenses to end users and groups in their organization.
2. Azure AD logon triggers a silent edition upgrade, with no reboot required 
3. Support for mobile worker/BYOD activation; transition away from on-prem KMS and MAK keys. 
4. Compliance support via seat assignment.  

## How it works

When a licensed user signs in to a device that meets requirements using the Azure AD credentials associated with a Windows 10 Enterprise E3 or E5 license, the operating system turns from Windows 10 Pro to Windows 10 Enterprise and all the appropriate Windows 10 Enterprise features are unlocked. When a user’s subscription expires or is transferred to another user, the Windows 10 Enterprise device reverts seamlessly to Windows 10 Pro edition, after a grace period of up to 90 days.

Devices currently running Windows 10 Pro, version 1703 can get Windows 10 Enterprise Semi-Annual Channel on up to five devices for each user covered by the license. This benefit does not include Long Term Servicing Channel.

### Licenses

The following policies apply to acquisition and renewal of licenses on devices:
- Devices that have been upgraded will attempt to acquire licenses every 30 days, and must be connected to the Internet to be successful. 
- Licenses are valid for 90 days. If a device is disconnected from the Internet until its current license expires, the operating system will revert to Windows 10 Pro. As soon as the device is connected to the Internet again, the license will automatically renew assuming the device is still present on list of user devices.
- Up to five devices can be upgraded for each user license. 
- The list of devices is chronological and cannot be manually modified. 
- If a device meets requirements and a licensed user signs in on that device, it will be upgraded. 
- If five devices are already on the list and a subscribed user signs in on a sixth device, then this new device is added to the end of the list and the first device is removed. 
- Devices that are removed from the list will cease trying to acquire a license and revert to Windows 10 Pro when the grace period expires.

Licenses can also be reallocated from one user to another user, allowing you to optimize your licensing investment against changing needs.

When you have the required Azure AD subscription, group-based licensing is the preferred method to assign Enterprise E3 and E5 licenses to users. For more information, see [Group-based licensing basics in Azure AD](https://docs.microsoft.com/azure/active-directory/active-directory-licensing-whatis-azure-portal).

### Existing Enterprise deployments

If you have already deployed Windows 10 Enterprise, but you want to move away from depending on KMS servers and MAK keys for Windows client machines, you are able to seamlessly transition as long as the computer has been activated with a firmware-embedded Windows 10 Pro product key.

If the computer has never been activated with a Pro key, run the following script. Copy the text below into a .cmd file and run the file from an elevated command prompt:

<pre style="overflow-y: visible">
@echo off
FOR /F "skip=1" %%A IN ('wmic path SoftwareLicensingService get OA3xOriginalProductKey') DO  ( 
SET "ProductKey=%%A"
goto InstallKey
)

:InstallKey
IF [%ProductKey%]==[] (
echo No key present
) ELSE (
echo Installing %ProductKey%
changepk.exe /ProductKey %ProductKey%
)
</pre>

### Obtaining an Azure AD licence

Enterprise Agreement/Software Assurance (EA/SA):
- Organizations with a traditional EA must order a $0 SKU, process e-mails sent to the license administrator for the company, and assign licenses using Azure AD (ideally to groups using the new Azure AD Premium feature for group assignment). For more information, see [Enabling Subscription Activation with an existing EA](https://docs.microsoft.com/en-us/windows/deployment/deploy-enterprise-licenses#enabling-subscription-activation-with-an-existing-ea).
- The license administrator can assign seats to Azure AD users with the same process that is used for O365.
- New EA/SA Windows Enterprise customers can acquire both an SA subscription and an associated $0 cloud subscription.

Microsoft Products & Services Agreements (MPSA):
- Organizations with MPSA are automatically emailed the details of the new service. They must take steps to process the instructions.
- Existing MPSA customers will receive service activation emails that allow their customer administrator to assign users to the service.  
- New MPSA customers who purchase the Software Subscription Windows Enterprise E3 and E5 will be enabled for both the traditional key-based and new subscriptions activation method.

### Deploying licenses

See [Deploy Windows 10 Enterprise licenses](deploy-enterprise-licenses.md).

## Virtual Desktop Access (VDA)

Subscriptions to Windows 10 Enterprise are also available for virtualized clients. Windows 10 Enterprise E3 and E5 are available for Virtual Desktop Access (VDA) in Windows Azure or in another [qualified multitenant hoster](https://www.microsoft.com/en-us/CloudandHosting/licensing_sca.aspx).

Virtual machines (VMs) must be configured to enable Windows 10 Enterprise subscriptions for VDA. Active Directory-joined and Azure Active Directory-joined clients are supported. See [Enable VDA for Subscription Activation](vda-subscription-activation.md).

## Related topics

[Connect domain-joined devices to Azure AD for Windows 10 experiences](https://azure.microsoft.com/en-us/documentation/articles/active-directory-azureadjoin-devices-group-policy/)
<BR>[Compare Windows 10 editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare)
<BR>[Windows for business](https://www.microsoft.com/en-us/windowsforbusiness/default.aspx)
