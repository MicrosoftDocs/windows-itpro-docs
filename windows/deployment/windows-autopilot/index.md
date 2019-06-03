---
title: Windows Autopilot
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot

**Applies to**

-   Windows 10

Windows Autopilot is one of the most anticipated features of the Windows ..... Windows Autopilot is a new platform that allows network administrators to . If a client is ... automatically bringing the client into ... and then dynamically ... Windows Autopilot is supported by Windows xxx, and . Windows Autopilot includes .... and vendors can use to integrate their products and leverage this .... 

Windows AutoPilot is a service which allows users to enroll their device with the Intune/Azure AD tenant of the organization during the Out-of-the-Box (OOBE) experience of Windows 10. By using Windows AutoPilot, organizations can dramatically decrease the time needed to configure a new device.

the following deployment scenario now becomes reality

When you buy a device with one of the supported OEMs, the device are automatically added to the Windows AutoPilot service and ready for deployment. No manual registration needed! The following OEMs support Windows AutoPilot:

by using an Offline Domain Join connector and a VPN connection! In theory this means you can now manage those devices with Active Directory (GPOs etc.) and SCCM too! This is a brilliant idea and will allow a lot of organizations to use Windows AutoPilot now while migrating to a modern workplace.

new way to dynamically provision devices. While Autopilot isn't new — in fact, it was announced with the release of Windows 10 version 1703 over a year ago — it now has some new features and significant improvements that are worth mentioning.

Windows Autopilot was introduced as a way to facilitate zero-touch, self-service deployments in enterprises or large educational organizations. Within the past 18 months, the scope of Autopilot has significantly broadened to include the full lifecycle of a device. Now, it can be used to deploy, repurpose, break-fix, and retire a device.  

According to Microsoft, one of the main goals for using this new service is to change the way we deploy Windows devices. Traditionally, large organizations purchase thousands of new devices every year, ship them to IT, wipe them completely, and re-image them with a new, custom corporate image. However, while this image may include many common corporate applications, it usually does not include the user's personal data or specific business applications. 

The promise of Autopilot is that these new devices can be unboxed by the user and are dynamically configured in the background while the user interacts with a Status Enrollment page. All configuration and data can flow down to the device out-of-the box with Intune and can be secured and configured without IT interaction. After a few minutes, or sometimes a few hours depending on how large your download is, the device is ready for productive use, including:

Microsoft's promise is that this would lead to an improved user experience as well as time savings for IT as they now do not have to wipe a clean version of Windows to add a custom legacy version of Windows. In addition, the upcoming hybrid join with Active Directory allows you to include more users, e.g., for a Windows 7 to 10 migration.
This is achieved by joining the device into the Azure Active Directory, enrolling it into Intune, and letting Intune push the configuration down (Microsoft's Modern IT Vision) or in a hybrid scenario that includes traditional desktop management tools (the Microsoft Configuration Manager and Active Directory).

During his talk, Michael Niehaus introduced several usage scenarios for Autopilot. His session largely focused on the first three, while the other three had their own dedicated session the next day:

User-Driven, Self-Service Deployment. This first, most widely spoken of scenario is user-driven, self-service deployment for single users (not used for shared devices), Essentially, the end user authenticates a previously joined device with Azure AD by signing into the corporate network for the first time. This action triggers the Autopilot process to start. During the preliminary set-up tasks, the IT Pro can choose whether or not this device should have admin rights. If the device is a non-admin machine, IT can still later sign in with a different tenant to gain admin rights to the machine. 

Local Reset. Formerly called Windows Automatic Redeployment (since 1709), the local reset option allows IT to wipe any unwanted clutter that has accumulated on local devices. In this scenario, everything but the MDM enrollment, the Azure AD join details, and the options picked during the initial setup (Microsoft refers to that as Out-Of-The-Box-Experience (or OOBE) will be gone. Afterwards, you end up with a fully managed device ready to be used for the next person.

Remote Reset. The Remote Reset is a feature new with Windows version 1809 (October 2018 Update). It is the same as the local reset but it can be initiated remotely through Intune.

Self-Deploying Mode. Also new in Windows 10 1809 is the self-deploying mode which, in contrast to the user-driven scenario, should be used for shared devices that have no primary user. Initially intended for larger educational organizations with a changing student population using school-owned devices, this scenario is equally suitable for help desks or call centers. Users can put in their credentials and the device can be deployed quickly.

Hybrid AD Join. This new feature is not yet available as a Public Preview, but will be soon. This will allow you to include more devices through Microsoft's new co-management capabilities by joining devices to Active Directory and enrolling them in Intune or any comparable MDM solution. 

Windows Autopilot for existing devices. Last, but not least, users with Windows 1809 and above can now also leverage Windows Autopilot for existing devices. IT pros can now facilitate for example a Windows 7 to Windows 10 migration through Autopilot by utilizing a ConfigMgr task sequence, followed by an Autopilot user-driven mode.

There are several portal options to access and administer Autopilot: 
Microsoft Store for Business (this was the initial portal intended to administer Autopilot, but the management was since transitioned to Intune. However, if you are an enterprise using a different MDM solution, you can use this portal option.)
Partner Center (primarily to distributors, re-sellers, etc.)
Microsoft Intune (Microsoft recommends that enterprises who are using Intune should only use this as their portal.)
Microsoft 365 Business (for small and medium businesses with fewer than 300 seats only)

## In this guide



## Related topics

