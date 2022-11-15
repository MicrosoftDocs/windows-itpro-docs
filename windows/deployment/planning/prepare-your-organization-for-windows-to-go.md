---
title: Prepare your organization for Windows To Go (Windows 10)
description: Though Windows To Go is no longer being developed, you can find info here about the "what", "why", and "when" of deployment.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: itpro-deploy
ms.date: 10/28/2022
---

# Prepare your organization for Windows To Go

**Applies to**

-   Windows 10

> [!IMPORTANT]
> Windows To Go is removed in Windows 10, version 2004 and later operating systems. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

The following information is provided to help you plan and design a new deployment of a Windows To Go in your production environment. It provides answers to the "what", "why", and "when" questions an IT professional might have when planning to deploy Windows To Go.

## What is Windows To Go?

Windows To Go is a feature of Windows 10 Enterprise and Windows 10 Education that enables users to boot Windows from a USB-connected external drive. Windows To Go drives can use the same image that enterprises use for their desktops and laptops, and can be managed the same way. A Windows To Go workspace isn't intended to replace desktops or laptops, or supplant other mobility offerings.

Enterprise customers utilizing Volume Activation Windows licensing will be able to deploy USB drives provisioned with Windows To Go workspace. These drives will be bootable on multiple compatible host computers. Compatible host computers are computers that are:

-   USB boot capable
-   Have USB boot enabled in the firmware
-   Meet Windows 7 minimum system requirements
-   Have compatible processor architectures (for example, x86 or AMD64) as the image used to create the Windows To Go workspace. ARM isn't a supported processor for Windows To Go.
-   Have firmware architecture that is compatible with the architecture of the image used for the Windows To Go workspace

Booting a Windows To Go workspace requires no specific software on the host computer. PCs certified for Windows 7 and later can host Windows To Go.

The following articles will familiarize you with how you can use a Windows To Go workspace. They also give you an overview of some of the things you should consider in your design.

## Usage scenarios


The following scenarios are examples of situations in which Windows To Go workspaces provide a solution for an IT implementer:

-   **Continuance of operations (COO).** In this scenario, selected employees receive a USB drive with a Windows To Go workspace, which includes all of the applications that the employees use at work. The employees can keep the device at home, in a briefcase, or wherever they want to store it until needed. When the users boot their home computer from the USB drive, it will create a corporate desktop experience so that they can quickly start working. On the first boot, the employee sees that Windows is installing devices; after that one time, the Windows To Go drive boots like a normal computer. If they have enterprise network access, employees can use a virtual private network (VPN) connection, or DirectAccess to access corporate resources. If the enterprise network is available, the Windows To Go workspace will automatically be updated using your standard client management processes.

-   **Contractors and temporary workers.** In this situation, an enterprise IT pro or manager would distribute the Windows To Go drive directly to the worker. Then they can be assisted with any necessary other user education needs or address any possible compatibility issues. While the worker is on assignment, they can boot their computer exclusively from the Windows To Go drive. And run all applications in that environment until the end of the assignment when the device is returned. No installation of software is required on the worker's personal computer.

-   **Managed free seating.** The employee is issued a Windows To Go drive. This drive is then used with the host computer assigned to that employee for a given session (this could be a vehicle, workspace, or standalone laptop). When the employee leaves the session, the next time they return, they use the same USB flash drive but use a different host computer.

-   **Work from home.** In this situation, the Windows To Go drive can be provisioned for employees using various methods including Microsoft Configuration Manager or other deployment tools and then distributed to employees. The employee is instructed to boot the Windows To Go drive initially at work. This boot caches the employee's credentials on the Windows To Go workspace and allows the initial data synchronization between the enterprise network and the Windows To Go workspace. The user can then bring the Windows To Go drive home where it can be used with their home computer, with or without enterprise network connectivity.

-   **Travel lightly.** In this situation, you have employees who are moving from site to site, but who always will have access to a compatible host computer on site. Using Windows To Go workspaces allows them to travel without the need to pack their PC.

> [!NOTE]
> If the employee wants to work offline for the majority of the time, but still maintain the ability to use the drive on the enterprise network, they should be informed of how often the Windows To Go workspace needs to be connected to the enterprise network. Doing so will ensure that the drive retains its access privileges and the workspace's computer object isn't potentially deleted from Active Directory Domain Services (AD DS).

 ## Infrastructure considerations

Because Windows To Go requires no other software and minimal configuration, the same tools used to deploy images to other PCs can be used by an enterprise to install Windows To Go on a large group of USB devices. Moreover, because Windows To Go is compatible with connectivity and synchronization solutions already in use—such as Remote Desktop, DirectAccess and Folder Redirection—no other infrastructure or management is necessary for this deployment. A Windows To Go image can be created on a USB drive that is identical to the hard drive inside a desktop. However, you may wish to consider making some modifications to your infrastructure to help make management of Windows To Go drives easier and to be able to identify them as a distinct device group.

## Activation considerations

Windows To Go uses volume activation. You can use either Active Directory-based activation or KMS activation with Windows To Go. The Windows To Go workspace counts as another installation when assessing compliance with application licensing agreements.

Microsoft software, such as Microsoft Office, distributed to a Windows To Go workspace must also be activated. Office deployment is fully supported on Windows To Go. Due to the retail subscription activation method associated with Microsoft 365 Apps for enterprise, Microsoft 365 Apps for enterprise subscribers are provided volume licensing activation rights for Office Professional Plus 2013 MSI for local installation on the Windows To Go drive. This method is available to organizations who purchase Microsoft 365 Apps for enterprise or Office 365 Enterprise SKUs containing Microsoft 365 Apps for enterprise via volume licensing channels. For more information about activating Microsoft Office, see [Volume activation methods in Office 2013](/DeployOffice/vlactivation/plan-volume-activation-of-office).

You should investigate other software manufacturer's licensing requirements to ensure they're compatible with roaming usage before deploying them to a Windows To Go workspace.

> [!NOTE]
> Using Multiple Activation Key (MAK) activation isn't a supported activation method for Windows To Go as each different PC-host would require separate activation. MAK activation should not be used for activating Windows, Office, or any other application on a Windows To Go drive.

 For more information about these activation methods and how they can be used in your organization, see [Plan for Volume Activation](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj134042(v=ws.11)).

## Organizational unit structure and use of Group Policy Objects

You may find it beneficial to create other Active Directory organizational unit (OU) structures to support your Windows To Go deployment: one for host computer accounts and one for Windows To Go workspace computer accounts. Creating an organizational unit for host computers allows you to enable the Windows To Go Startup Options using Group Policy for only the computers that will be used as Windows To Go hosts. Setting this policy helps to prevent computers from being accidentally configured to automatically boot from USB devices and allows closer monitoring and control of those computers that can boot from a USB device. The organizational unit for Windows To Go workspaces allows you to apply specific policy controls to them, such as the ability to use the Store application, power state controls, and line-of-business application installation.

If you're deploying Windows To Go workspaces for a scenario in which they're not going to be roaming, but are instead being used on the same host computer, such as with temporary or contract employees, you might wish to enable hibernation or the Windows Store.

For more information about Group Policy settings that can be used with Windows To Go, see [Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

## Computer account management

If you configure Windows To Go drives for scenarios where drives may remain unused for extended periods of time such as used in continuance of operations scenarios, the AD DS computer account objects that correspond to Windows To Go drives have the potential to become stale and be pruned during maintenance operations. To address this issue, you should either have users log on regularly according to a schedule, or modify any maintenance scripts to not clean computer accounts in the Windows To Go device organizational unit.

## User account and data management

People use computers to work with data and consume content - that is their core function. The data must be stored and retrievable for it to be useful. When users are working in a Windows To Go workspace, they need to be able to get to the data that they work with, and to keep it accessible when the workspace isn't being used. For this reason, we recommend that you use folder redirection and offline files to redirect the path of local folders (such as the Documents folder) to a network location, while caching the contents locally for increased speed and availability. We also recommend that you use roaming user profiles to synchronize user specific settings so that users receive the same operating system and application settings when using their Windows To Go workspace and their desktop computer. When a user signs in using a domain account that is set up with a file share as the profile path, the user's profile is downloaded to the local computer and merged with the local profile (if present). When the user logs off the computer, the local copy of their profile, including any changes, is merged with the server copy of the profile. For more information, see [Folder Redirection, Offline Files, and Roaming User Profiles overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh848267(v=ws.11)).

Windows To Go is fully integrated with your Microsoft account. Setting synchronization is accomplished by connecting a Microsoft account to a user account. Windows To Go devices fully support this feature and can be managed by Group Policy so that the customization and configurations you prefer will be applied to your Windows To Go workspace.

## Remote connectivity

If you want Windows To Go to be able to connect back to organizational resources when it's being used off-premises a remote connectivity solution must be enabled. Windows Server 2012 DirectAccess can be used as can a virtual private network (VPN) solution. For more information about configuring a remote access solution, see the [Remote Access (DirectAccess, Routing and Remote Access) Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn636119(v=ws.11)).

## Related articles


[Windows To Go: feature overview](windows-to-go-overview.md)

[Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

[Security and data protection considerations for Windows To Go](security-and-data-protection-considerations-for-windows-to-go.md)

[Windows To Go: frequently asked questions](windows-to-go-frequently-asked-questions.yml)
