---
title: Prepare your organization for Windows To Go (Windows 10)
description: Prepare your organization for Windows To Go
ms.assetid: f3f3c160-90ad-40a8-aeba-2aedee18f7ff
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: ["mobile, device, USB, deploy"]
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: mobility
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Prepare your organization for Windows To Go


**Applies to**

-   Windows 10

>[!IMPORTANT]
>Windows To Go is no longer being developed. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

The following information is provided to help you plan and design a new deployment of a Windows To Go in your production environment. It provides answers to the “what”, “why”, and “when” questions an IT professional might have when planning to deploy Windows To Go.

## What is Windows To Go?


Windows To Go is a feature of Windows 10 Enterprise and Windows 10 Education that enables users to boot Windows from a USB-connected external drive. Windows To Go drives can use the same image that enterprises use for their desktops and laptops, and can be managed the same way. Offering a new mobility option, a Windows To Go workspace is not intended to replace desktops or laptops, or supplant other mobility offerings.

Enterprise customers utilizing Volume Activation Windows licensing will be able to deploy USB drives provisioned with Windows To Go workspace. These drives will be bootable on multiple compatible host computers. Compatible host computers are computers that are:

-   USB boot capable
-   Have USB boot enabled in the firmware
-   Meet Windows 7 minimum system requirements
-   Have compatible processor architectures (for example, x86 or AMD64) as the image used to create the Windows To Go workspace. ARM is not a supported processor for Windows To Go.
-   Have firmware architecture that is compatible with the architecture of the image used for the Windows To Go workspace

Booting a Windows To Go workspace requires no specific software on the host computer. PCs certified for Windows 7 and later can host Windows To Go.

The following topics will familiarize you with how you can use a Windows To Go workspace and give you an overview of some of the things you should consider in your design.

## Usage scenarios


The following scenarios are examples of situations in which Windows To Go workspaces provide a solution for an IT implementer:

-   **Continuance of operations (COO).** In this scenario, selected employees receive a USB drive with a Windows To Go workspace, which includes all of the applications that the employees use at work. The employees can keep the device at home, in a briefcase, or wherever they want to store it until needed. When the users boot their home computer from the USB drive, it will create a corporate desktop experience so that they can quickly start working. On the very first boot, the employee sees that Windows is installing devices; after that one time, the Windows To Go drive boots like a normal computer. If they have enterprise network access, employees can use a virtual private network (VPN) connection or DirectAccess to access corporate resources. If the enterprise network is available, the Windows To Go workspace will automatically be updated using your standard client management processes.

-   **Contractors and temporary workers.** In this situation, an enterprise IT pro or manager would distribute the Windows To Go drive directly to the worker where they can be assisted with any necessary additional user education needs or address any possible compatibility issues. While the worker is on assignment, they can boot their computer exclusively from the Windows To Go drive and run all applications in that environment until the end of the assignment when the device is returned. No installation of software is required on the worker’s personal computer.

-   **Managed free seating.** The employee is issued a Windows To Go drive that is then used with the host computer assigned to that employee for a given session (this could be a vehicle, workspace, or standalone laptop). When the employee leaves the session, the next time they return they use the same USB flash drive but use a different host computer.

-   **Work from home.** In this situation, the Windows To Go drive can be provisioned for employees using various methods including System Center Configuration Manager or other deployment tools and then distributed to employees. The employee is instructed to boot the Windows To Go drive initially at work, which caches the employee’s credentials on the Windows To Go workspace and allows the initial data synchronization between the enterprise network and the Windows To Go workspace. The user can then bring the Windows To Go drive home where it can be used with their home computer, with or without enterprise network connectivity.

-   **Travel lightly.** In this situation you have employees who are moving from site to site, but who always will have access to a compatible host computer on site. Using Windows To Go workspaces allows them to travel without the need to pack their PC.

**Note**  
If the employee wants to work offline for the majority of the time, but still maintain the ability to use the drive on the enterprise network, they should be informed of how often the Windows To Go workspace needs to be connected to the enterprise network. Doing so will ensure that the drive retains its access privileges and the workspace’s computer object is not potentially deleted from Active Directory Domain Services (AD DS).

 

## Infrastructure considerations


Because Windows To Go requires no additional software and minimal configuration, the same tools used to deploy images to other PCs can be used by an enterprise to install Windows To Go on a large group of USB devices. Moreover, because Windows To Go is compatible with connectivity and synchronization solutions already in use—such as Remote Desktop, DirectAccess and Folder Redirection—no additional infrastructure or management is necessary for this deployment. A Windows To Go image can be created on a USB drive that is identical to the hard drive inside a desktop. However, you may wish to consider making some modifications to your infrastructure to help make management of Windows To Go drives easier and to be able to identify them as a distinct device group.

## Activation considerations


Windows To Go uses volume activation. You can use either Active Directory-based activation or KMS activation with Windows To Go. The Windows To Go workspace counts as another installation when assessing compliance with application licensing agreements.

Microsoft software, such as Microsoft Office, distributed to a Windows To Go workspace must also be activated. Office deployment is fully supported on Windows To Go. Please note, due to the retail subscription activation method associated with Office 365 ProPlus, Office 365 ProPlus subscribers are provided volume licensing activation rights for Office Professional Plus 2013 MSI for local installation on the Windows To Go drive. This is available to organizations who purchase Office 365 ProPlus or Office 365 Enterprise SKUs containing Office 365 ProPlus via volume licensing channels. For more information about activating Microsoft Office, see [Volume activation methods in Office 2013](https://go.microsoft.com/fwlink/p/?LinkId=618922).

You should investigate other software manufacturer’s licensing requirements to ensure they are compatible with roaming usage before deploying them to a Windows To Go workspace.

**Note**  
Using Multiple Activation Key (MAK) activation is not a supported activation method for Windows To Go as each different PC-host would require separate activation. MAK activation should not be used for activating Windows, Office, or any other application on a Windows To Go drive.

 

See [Plan for Volume Activation](https://go.microsoft.com/fwlink/p/?LinkId=618923) for more information about these activation methods and how they can be used in your organization.

## Organizational unit structure and use of Group Policy Objects


You may find it beneficial to create additional Active Directory organizational unit (OU) structures to support your Windows To Go deployment; one for host computer accounts and one for Windows To Go workspace computer accounts. Creating an organizational unit for host computers allows you to enable the Windows To Go Startup Options using Group Policy for only the computers that will be used as Windows To Go hosts. Setting this policy helps to prevent computers from being accidentally configured to automatically boot from USB devices and allows closer monitoring and control of those computers which have the ability to boot from a USB device. The organizational unit for Windows To Go workspaces allows you to apply specific policy controls to them, such as the ability to use the Store application, power state controls, and line-of-business application installation.

If you are deploying Windows To Go workspaces for a scenario in which they are not going to be roaming, but are instead being used on the same host computer, such as with temporary or contract employees, you might wish to enable hibernation or the Windows Store.

For more information about Group Policy settings that can be used with Windows To Go, see [Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

## Computer account management


If you configure Windows To Go drives for scenarios where drives may remain unused for extended period of time such as use in continuance of operations scenarios, the AD DS computer account objects that correspond to Windows To Go drives have the potential to become stale and be pruned during maintenance operations. To address this issue, you should either have users log on regularly according to a schedule or modify any maintenance scripts to not clean up computer accounts in the Windows To Go device organizational unit.

## User account and data management


People use computers to work with data and consume content - that is their core function. The data must be stored and retrievable for it to be useful. When users are working in a Windows To Go workspace, they need to have the ability to get to the data that they work with and to keep it accessible when the workspace is not being used. For this reason we recommend that you use folder redirection and offline files to redirect the path of local folders (such as the Documents folder) to a network location, while caching the contents locally for increased speed and availability. We also recommend that you use roaming user profiles to synchronize user specific settings so that users receive the same operating system and application settings when using their Windows To Go workspace and their desktop computer. When a user signs in using a domain account that is set up with a file share as the profile path, the user’s profile is downloaded to the local computer and merged with the local profile (if present). When the user logs off the computer, the local copy of their profile, including any changes, is merged with the server copy of the profile. For more information, see [Folder Redirection, Offline Files, and Roaming User Profiles overview](https://go.microsoft.com/fwlink/p/?LinkId=618924).

Windows To Go is fully integrated with your Microsoft account. Setting synchronization is accomplished by connecting a Microsoft account to a user account. Windows To Go devices fully support this feature and can be managed by Group Policy so that the customization and configurations you prefer will be applied to your Windows To Go workspace.

## Remote connectivity


If you want Windows To Go to be able to connect back to organizational resources when it is being used off-premises a remote connectivity solution must be enabled. Windows Server 2012 DirectAccess can be used as can a virtual private network (VPN) solution. For more information about configuring a remote access solution, see the [Remote Access (DirectAccess, Routing and Remote Access) Overview](https://go.microsoft.com/fwlink/p/?LinkId=618925).

## Related topics


[Windows To Go: feature overview](windows-to-go-overview.md)

[Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

[Security and data protection considerations for Windows To Go](security-and-data-protection-considerations-for-windows-to-go.md)

[Windows To Go: frequently asked questions](windows-to-go-frequently-asked-questions.md)

 

 





