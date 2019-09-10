---
title: Windows 10 Enterprise FAQ for IT pros (Windows 10)
description: Get answers to common questions around compatibility, installation, and support for Windows 10 Enterprise.
keywords: Windows 10 Enterprise, download, system requirements, drivers, appcompat, manage updates, Windows as a service, servicing channels, deployment tools
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 08/18/2017
ms.reviewer: 
manager: laurawi
ms.author: greglin
audience: itproauthor: greg-lindsay
ms.topic: article
---

# Windows 10 Enterprise: FAQ for IT professionals

Get answers to common questions around compatibility, installation, and support for Windows 10 Enterprise.

## Download and requirements

### Where can I download Windows 10 Enterprise?

If you have Windows volume licenses with Software Assurance, or if you have purchased licenses for Windows 10 Enterprise volume licenses, you can download 32-bit and 64-bit versions of Windows 10 Enterprise from the [Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx). If you do not have current Software Assurance for Windows and would like to purchase volume licenses for Windows 10 Enterprise, contact your preferred Microsoft Reseller or see [How to purchase through Volume Licensing](https://www.microsoft.com/Licensing/how-to-buy/how-to-buy.aspx).

### What are the system requirements?

For details, see [Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752).

### What are the hardware requirements for Windows 10?

Most computers that are compatible with Windows 8.1 will be compatible with Windows 10. You may need to install updated drivers in Windows 10 for your devices to properly function. See [Windows 10 specifications](https://www.microsoft.com/windows/windows-10-specifications) for more information.

### Can I evaluate Windows 10 Enterprise?

Yes, a 90-day evaluation of Windows 10 Enterprise is available through the [TechNet Evaluation Center](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise). The evaluation is available in Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), and Spanish (Spain, International Sort). We highly recommend that organizations make use of the Windows 10 Enterprise 90-day Evaluation to try out deployment and management scenarios, test compatibility with hardware and applications, and to get hands on experience with Windows 10 Enterprise features.

## Drivers and compatibility

### Where can I find drivers for my devices for Windows 10 Enterprise?

For many devices, drivers will be automatically installed in Windows 10 and there will be no need for additional action.
- For some devices, Windows 10 may be unable to install drivers that are required for operation. If your device drivers are not automatically installed, visit the manufacturer’s support website for your device to download and manually install the drivers. If Windows 10 drivers are not available, the most up-to-date drivers for Windows 8.1 will often work in Windows 10.
- For some devices, the manufacturer may provide more up-to-date drivers or drivers that enable additional functionality than the drivers installed by Windows 10. Always follow the recommendations of the device manufacturer for optimal performance and stability.
- Some computer manufacturers provide packs of drivers for easy implementation in management and deployment solutions like the Microsoft Deployment Toolkit (MDT) or Microsoft System Center Configuration Manager. These driver packs contain all of the drivers needed for each device and can greatly simplify the process of deploying Windows to a new make or model of computer. Driver packs for some common manufacturers include:
    - [HP driver pack](http://www8.hp.com/us/en/ads/clientmanagement/drivers-pack.html)
    - [Dell driver packs for enterprise client OS deployment](http://en.community.dell.com/techcenter/enterprise-client/w/wiki/2065.dell-command-deploy-driver-packs-for-enterprise-client-os-deployment)
    - [Lenovo Configuration Manager and MDT package index](https://support.lenovo.com/us/en/documents/ht074984)
    - [Panasonic Driver Pack for Enterprise](http://pc-dl.panasonic.co.jp/itn/drivers/driver_packages.html)

### Where can I find out if an application or device is compatible with Windows 10?

Many existing Win32 and Win64 applications already run reliably on Windows 10 without any changes. You can also expect strong compatibility and support for Web apps and devices. The [Ready for Windows](https://www.readyforwindows.com/) website lists software solutions that are supported and in use for Windows 10. You can find additional guidance to help with application compatibility at [Windows 10 application compatibility](https://technet.microsoft.com/windows/mt703793) on the Windows IT Center.

### Is there an easy way to assess if my organization’s devices are ready to upgrade to Windows 10?

[Windows Analytics Upgrade Readiness](https://technet.microsoft.com/itpro/windows/deploy/manage-windows-upgrades-with-upgrade-analytics) (formerly known as Upgrade Analytics) provides powerful insights and recommendations about the computers, applications, and drivers in your organization, at no extra cost and without additional infrastructure requirements. This new service guides you through your upgrade and feature update projects using a workflow based on Microsoft recommended practices. Up-to-date inventory data allows you to balance cost and risk in your upgrade projects. You can find additional product information at [Windows Analytics](https://www.microsoft.com/WindowsForBusiness/Windows-Analytics).

## Administration and deployment

### Which deployment tools support Windows 10?

Updated versions of Microsoft deployment tools, including MDT, Configuration Manager, and the Windows Assessment and Deployment Kit (Windows ADK) have been released to support Windows 10.
- [MDT](https://www.microsoft.com/mdt) is Microsoft’s recommended collection of tools, processes, and guidance for automating desktop and server deployment.
- Configuration Manager simplifies the deployment and management of Windows 10. If you are not currently using Configuration Manager, you can download a free 180-day trial of [System Center Configuration Manager and Endpoint Protection (current branch)](https://www.microsoft.com/evalcenter/evaluate-system-center-configuration-manager-and-endpoint-protection) from the TechNet Evaluation Center.
- The [Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit#winADK) has tools that allow you to customize Windows images for large-scale deployment, and test system quality and performance. You can download the latest version of the Windows ADK for Windows 10 from the Hardware Dev Center.

### Can I upgrade computers from Windows 7 or Windows 8.1 without deploying a new image?

Computers running Windows 7 or Windows 8.1 can be upgraded directly to Windows 10 through the in-place upgrade process without a need to reimage the device using MDT and/or Configuration Manager. For more information, see [Upgrade to Windows 10 with System Center Configuration Manager](https://technet.microsoft.com/itpro/windows/deploy/upgrade-to-windows-10-with-system-center-configuraton-manager) or [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](https://technet.microsoft.com/itpro/windows/deploy/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit).

### Can I upgrade from Windows 7 Enterprise or Windows 8.1 Enterprise to Windows 10 Enterprise for free?

If you have Windows 7 Enterprise or Windows 8.1 Enterprise and current Windows 10 Enterprise E3 or E5 subscription, you are entitled to the upgrade to Windows 10 Enterprise through the rights of Software Assurance. You can find your product keys and installation media at the [Volume Licensing Service Center](https://www.microsoft.com/Licensing/servicecenter/default.aspx).

For devices that are licensed under a volume license agreement for Windows that does not include Software Assurance, new licenses will be required to upgrade these devices to Windows 10.

## Managing updates

### What is Windows as a service?

The Windows 10 operating system introduces a new way to build, deploy, and service Windows: Windows as a service. Microsoft has reimagined each part of the process, to simplify the lives of IT pros and maintain a consistent Windows 10 experience for its customers. These improvements focus on maximizing customer involvement in Windows development, simplifying the deployment and servicing of Windows client computers, and leveling out the resources needed to deploy and maintain Windows over time. For more information, see [Overview of Windows as a service](https://technet.microsoft.com/itpro/windows/manage/waas-overview).

### How is servicing different with Windows as a service?

Traditional Windows servicing has included several release types: major revisions (e.g., the Windows 8.1, Windows 8, and Windows 7 operating systems), service packs, and monthly updates. With Windows 10, there are two release types: feature updates that add new functionality two to three times per year, and quality updates that provide security and reliability fixes at least once a month.

### What are the servicing channels?

To align with the new method of delivering feature updates and quality updates in Windows 10, Microsoft introduced the concept of servicing channels to allow customers to designate how aggressively their individual devices are updated. For example, an organization may have test devices that the IT department can update with new features as soon as possible, and then specialized devices that require a longer feature update cycle to ensure continuity. With that in mind, Microsoft offers two servicing channels for Windows 10: Semi-Annual Channel, and Long-Term Servicing Channel (LTSC). For details about the versions in each servicing channel, see [Windows 10 release information](https://technet.microsoft.com/windows/release-info.aspx). For more information on each channel, see [servicing channels](/windows/deployment/update/waas-overview#servicing-channels).

### What tools can I use to manage Windows as a service updates?

There are many tools are available. You can choose from these:
- Windows Update
- Windows Update for Business
- Windows Server Update Services
- System Center Configuration Manager

For more information on pros and cons for these tools, see [Servicing Tools](/windows/deployment/update/waas-overview#servicing-tools).

## User experience

### Where can I find information about new features and changes in Windows 10 Enterprise?

For an overview of the new enterprise features in Windows 10 Enterprise, see [What's new in Windows 10](https://technet.microsoft.com/itpro/windows/whats-new/index) and [What's new in Windows 10, version 1703](/windows/whats-new/whats-new-windows-10-version-1703) in the Docs library.

Another place to track the latest information about new features of interest to IT professionals is the [Windows for IT Pros blog](https://blogs.technet.microsoft.com/windowsitpro/). Here you’ll find announcements of new features, information on updates to the Windows servicing model, and details about the latest resources to help you more easily deploy and manage Windows 10.

To find out which version of Windows 10 is right for your organization, you can also [compare Windows editions](https://www.microsoft.com/WindowsForBusiness/Compare).

### How will people in my organization adjust to using Windows 10 Enterprise after upgrading from Windows 7 or Windows 8.1?

Windows 10 combines the best aspects of the user experience from Windows 8.1 and Windows 7 to make using Windows simple and straightforward. Users of Windows 7 will find the Start menu in the same location as they always have. In the same place, users of Windows 8.1 will find the live tiles from their Start screen, accessible by the Start button in the same way as they were accessed in Windows 8.1. To help you make the transition a seamless one, download the [Windows 10 Adoption Planning Kit](https://info.microsoft.com/Windows10AdoptionPlanningKit) and see our [end user readiness](https://technet.microsoft.com/windows/dn621092) resources.

### How does Windows 10 help people work with applications and data across a variety of devices?

The desktop experience in Windows 10 has been improved to provide a better experience for people that use a traditional mouse and keyboard. Key changes include:
- Start menu is a launching point for access to apps.
- Universal apps now open in windows instead of full screen.
- [Multitasking is improved with adjustable Snap](http://blogs.windows.com/bloggingwindows/2015/06/04/arrange-your-windows-in-a-snap/), which allows you to have more than two windows side-by-side on the same screen and to customize how those windows are arranged.
- Tablet Mode to simplify using Windows with a finger or pen by using touch input.

## Help and support

### Where can I ask a question about Windows 10?

Use the following resources for additional information about Windows 10.
- If you are an IT professional or if you have a question about administering, managing, or deploying Windows 10 in your organization or business, visit the [Windows 10 IT Professional forums](https://social.technet.microsoft.com/forums/home?category=windows10itpro) on TechNet.
- If you are an end user or if you have a question about using Windows 10, visit the [Windows 10 forums on Microsoft Community](https://answers.microsoft.com/windows/forum/windows_10).
- If you are a developer or if you have a question about making apps for Windows 10, visit the [Windows Desktop Development forums](https://social.msdn.microsoft.com/forums/en-us/home?category=windowsdesktopdev) or [Windows and Windows phone apps forums](https://social.msdn.microsoft.com/forums/en-us/home?category=windowsapps) on MSDN.
- If you have a question about Internet Explorer, visit the [Internet Explorer forums](https://social.technet.microsoft.com/forums/ie/en-us/home) on TechNet.
