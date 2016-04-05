---
title: Enterprise management for Windows 10 devices (Windows 10)
description: Windows 10 provides mobile device management (MDM) capabilities for PCs, laptops, tablets, and phones that enable enterprise-level management of corporate-owned and personal devices.
ms.assetid: 36DA67A1-25F1-45AD-A36B-AEEAC30C9BC4
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: jdeckerMS
---

# Enterprise management for Windows 10 devices


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows 10 provides mobile device management (MDM) capabilities for PCs, laptops, tablets, and phones that enable enterprise-level management of corporate-owned and personal devices.

## MDM support


MDM policies for Windows 10 align with the policies supported in Windows 8.1 and are expanded to address even more enterprise scenarios, such as managing multiple users who have Microsoft Azure Active Directory (Azure AD) accounts, full control over the Windows Store, VPN configuration, and more. To learn more about policies, see [Configuration service provider reference for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=533046).

MDM support in Windows 10 is based on [Open Mobile Alliance (OMA)](http://go.microsoft.com/fwlink/p/?LinkId=533885) Device Management (DM) protocol 1.2.1 specification.

Corporate-owned devices can be enrolled automatically for enterprises using Azure AD.

## Unenrollment


When a person leaves your organization and you unenroll the user account or device from management, the enterprise-controlled configurations and apps are removed from the device. You can unenroll the device remotely or the person can unenroll by manually removing the account from the device.

When a personal device is unenrolled, the user's data and apps are untouched, while enterprise information such as certificates, VPN profiles, and enterprise apps are removed.

## Infrastructure


Enterprises have the following identity and management choices.

| Area | Choices |
|---|---|                                                                                                                                                                            
| Identity          | Active Directory; Azure AD                                                                                                                                                  |
| Grouping          | Domain join; Workgroup; Azure AD join                                                                                                                                       |
| Device management | Group Policy; System Center Configuration Manager; Microsoft Intune; other MDM solutions; Exchange ActiveSync; Windows PowerShell; Windows Management Instrumentation (WMI) |

 

**Note**  
With the release of Windows Server 2012 R2, Network Access Protection (NAP) was deprecated and the NAP client has now been removed in Windows 10. For more information about support lifecycles, see [Microsoft Support Lifecycle](http://go.microsoft.com/fwlink/p/?LinkID=613512).

 

## Device lockdown


Do you need a computer that can only do one thing? For example:

-   A device in the lobby that customers can use to view your product catalog.

-   A portable device that drivers can use to check a route on a map.

-   A device that a temporary worker uses to enter data.

You can configure a persistent locked down state to create a kiosk-type device. When the locked-down account is logged on, the device displays only the app that you select.

You can also configure a lockdown state that takes effect when a given user account logs on. The lockdown restricts the user to only the apps that you specify.

Lockdown settings can also be configured for device look and feel, such as a theme or a custom layout on the Start screen.

## Updates


With Windows 10, your enterprise will have more choice and flexibility in applying operating system updates. You can manage and control updates to devices running Windows 10 Pro and Windows 10 Enterprise using MDM policies.

While Windows Update provides updates to unmanaged devices, most enterprises prefer to manage and control the flow of updates using their device management solution. You can choose to apply the latest updates as soon as they are available, or you can set a source and schedule for updates that works for your specific requirements.

For more information about updating Windows 10, see [Windows 10 servicing options for updates and upgrades](../manage/introduction-to-windows-10-servicing.md).

## Easier certificate management


For Windows 10-based devices, you can use your MDM server to directly deploy client authentication certificates using Personal Information Exchange (PFX), in addition to enrolling using Simple Certificate Enrollment Protocol (SCEP), including certificates to enable Microsoft Passport in your enterprise. You'll be able to use MDM to enroll, renew, and delete certificates. As in Windows Phone 8.1, you can use the [Certificates app](http://go.microsoft.com/fwlink/p/?LinkId=615824) to review the details of certificates on your device.

## Learn more


[Windows 10: Manageability Choices](http://go.microsoft.com/fwlink/p/?LinkId=533886)

[Windows 10: Management](http://go.microsoft.com/fwlink/p/?LinkId=533887)

[Windows 10 Technical Preview Fundamentals for IT Pros: Windows 10 Management and Deployment](http://go.microsoft.com/fwlink/p/?LinkId=533888)

[Reference for Mobile device management for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=533172)

Active Directory blog posts on Azure AD and Windows 10:

-   [Azure AD, Microsoft Intune and Windows 10 - Using the cloud to modernize enterprise mobility!](http://go.microsoft.com/fwlink/p/?LinkId=619025)

-   [Azure AD Join on Windows 10 devices](http://go.microsoft.com/fwlink/p/?LinkID=616791)

-   [Azure AD on Windows 10 Personal Devices]( http://go.microsoft.com/fwlink/p/?LinkId=619028)

-   [Azure Active Directory and Windows 10: Bringing the cloud to enterprise desktops!](http://go.microsoft.com/fwlink/p/?LinkID=615765)

## Related topics


[Manage corporate devices](../manage/manage-corporate-devices.md)

[Microsoft Passport](microsoft-passport.md)

[Enterprise Data Protection Overview](edp-whats-new-overview.md)

 

 





