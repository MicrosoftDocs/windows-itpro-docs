---
title: Overview of Windows as a service
description: Windows as a service is a way to build, deploy, and service Windows. Learn how Windows as a service works.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
ms.collection:
  - highpri
  - tier2
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 12/31/2017
---

# Overview of Windows as a service

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows as a service is a way to simplify the lives of IT pros and maintain a consistent Windows 10 experience for its customers. These improvements focus on maximizing customer involvement in Windows development, simplifying the deployment and servicing of Windows client computers, and leveling out the resources needed to deploy and maintain Windows over time. 

## Building

Prior to Windows 10, Microsoft released new versions of Windows every few years. This traditional deployment schedule imposed a training burden on users because the feature revisions were often significant. That schedule also meant waiting long periods without new features — a scenario that doesn't work in today's rapidly changing world, a world in which new security, management, and deployment capabilities are necessary to address challenges. 

In the past, when Microsoft developed new versions of Windows, it typically released technical previews near the end of the process, when Windows was nearly ready to ship. With Windows 10, new features are delivered to the [Windows Insider community](/windows-insider/business/register) as soon as possible, during the development cycle, through a process called *flighting*. Organizations can see exactly what Microsoft is developing and start their testing as soon as possible. 

Microsoft also depends on receiving feedback from organizations throughout the development process so that it can make adjustments as quickly as possible rather than waiting until after release. For more information about the Windows Insider Program and how to sign up, see the section [Windows Insider](#windows-insider).

Of course, Microsoft also performs extensive internal testing, with engineering teams installing new builds daily, and larger groups of employees installing builds frequently, all before those builds are ever released to the Windows Insider Program. 

## Deploying

Deploying Windows 10 and Windows 11 is simpler than with previous versions of Windows. When migrating from earlier versions of Windows, you can use an easy in-place upgrade process to automatically preserve all apps, settings, and data. Afterwards, deployment of feature updates is equally simple.


### Application compatibility

Application compatibility testing has historically been a burden when approaching a Windows deployment or upgrade. Application compatibility from the perspective of desktop applications, websites, and apps built on the Universal Windows Platform (UWP) has improved tremendously over older versions of Windows. For the most important business-critical applications, organizations should still perform testing regularly to validate compatibility with new builds. 

## Servicing

Traditional Windows servicing has included several release types: major revisions (for example, the Windows 8.1, Windows 8, and Windows 7 operating systems), service packs, and monthly updates. With Windows 10 and Windows 11, there are two release types: feature updates that add new functionality and quality updates that provide security and reliability fixes. 

Servicing channels are the first way to separate users into deployment groups for feature and quality updates. For more information about developing a deployment strategy that uses servicing channels, see [Plan servicing strategy for Windows client updates](waas-servicing-strategy-windows-10-updates.md). 

For information about each servicing tool, see [Servicing tools](#servicing-tools).

There are three servicing channels, each of which provides different levels of flexibility over when these updates are delivered to client computers. For more information, see [Servicing channels](#servicing-channels).


There are currently three release channels for Windows clients:

- The **General Availability Channel** receives feature updates as soon as they're available. 
- The **Long-Term Servicing Channel**, which is designed to be used only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATM machines, receives new feature releases every two to three years.
- The **Windows Insider Program** provides organizations with the opportunity to test and provide feedback on features that will be shipped in the next feature update.

>[!NOTE]
>With each General Availability release, we recommend beginning deployment right away to devices selected for early adoption (targeted validation) and ramp up to full deployment at your discretion. This will enable you to gain access to new features, experiences, and integrated security as soon as possible. 

>[!IMPORTANT]
>Devices on the General Availability Channel must have their diagnostic data set to **1 (Basic)** or higher in order to ensure that the service is performing at the expected quality. For instructions to set the diagnostic data level, see [Configure the operating system diagnostic data level](/windows/configuration/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-levels).

### Feature updates

New features are packaged into feature updates that you can deploy using existing management tools. These changes come in bite-sized chunks rather than all at once, decreasing user readiness time. 


### Quality updates

Monthly updates in previous Windows versions were often overwhelming because of the sheer number of updates available each month. Many organizations selectively chose which updates they wanted to install and which they didn't, and this created countless scenarios in which organizations deployed essential security updates but picked only a subset of nonsecurity fixes.

Rather than receiving several updates each month and trying to figure out which the organization needs, which ultimately causes platform fragmentation, administrators see one cumulative monthly update that supersedes the previous month's update, containing both security and non-security fixes. This approach makes updating simpler and ensures that devices are more closely aligned with the testing done at Microsoft, reducing unexpected issues resulting from updates.

## Servicing channels 

There are three servicing channels. The [Windows Insider Program](#windows-insider) provides organizations with the opportunity to test and provide feedback on features that will be shipped in the next feature update. The [General Availability Channel](#general-availability-channel) provides new functionality with feature update releases. Organizations can choose when to deploy updates from the General Availability Channel. The [Long-Term Servicing Channel](#long-term-servicing-channel), which is designed to be used only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATM machines, receives new feature releases every two to three years. For details about the versions in each servicing channel, see [Windows 10 release information](/windows/release-health/release-information).

> [!NOTE]
> Servicing channels are not the only way to separate groups of devices when consuming updates. Each channel can contain subsets of devices, which staggers servicing even further. For information about the servicing strategy and ongoing deployment process for Windows 10, including the role of servicing channels, see [Plan servicing strategy for Windows client updates](waas-servicing-strategy-windows-10-updates.md). 

### General Availability Channel

In the General Availability Channel, feature updates are available annually. This servicing model is ideal for pilot deployments and testing of feature updates and for users such as developers who need to work with the latest features. Once the latest release has gone through pilot deployment and testing, you'll be able to choose the timing at which it goes into broad deployment.

When Microsoft officially releases a feature update, we make it available to any device not configured to defer feature updates so that those devices can immediately install it. Organizations that use Windows Server Update Services (WSUS), Microsoft Configuration Manager, or Windows Update for Business, however, can defer feature updates to selective devices by withholding their approval and deployment. In this scenario, the content available for the General Availability Channel is available but not necessarily immediately mandatory, depending on the policy of the management system. For more information about servicing tools, see [Servicing tools](#servicing-tools).


> [!NOTE]
> All releases of Windows 10 have **18 months of servicing for all editions**--these updates provide security and feature updates for the release. However, fall releases of the **Enterprise and Education editions** will have an **additional 12 months of servicing for specific Windows 10 releases, for a total of 30 months from initial release**. This extended servicing window applies to Enterprise and Education editions starting with Windows 10, version 1607.
> 
> 
> [!NOTE]
> Organizations can electively delay feature updates into as many phases as they wish by using one of the servicing tools mentioned in the section Servicing tools.

### Long-term Servicing Channel

Specialized systems—such as devices that control medical equipment, point-of-sale systems, and ATMs—often require a longer servicing option because of their purpose. These devices typically perform a single important task and don't need feature updates as frequently as other devices in the organization. It's more important that these devices be kept as stable and secure as possible than up to date with user interface changes. The LTSC servicing model prevents Enterprise LTSC devices from receiving the usual feature updates and provides only quality updates to ensure that device security stays up to date. With this in mind, quality updates are still immediately available to Windows 10 Enterprise LTSC clients, but customers can choose to defer them by using one of the servicing tools mentioned in the section Servicing tools.

> [!NOTE]
>
> The Long-term Servicing channel is not intended for deployment on most or all the devices in an organization; it should be used only for special-purpose devices. As a general guideline, a device with Microsoft Office installed is a general-purpose device, typically used by an information worker, and therefore it is better suited for the General Availability channel.

Microsoft never publishes feature updates through Windows Update on devices that run Windows 10 Enterprise LTSC. Instead, it typically offers new LTSC releases every 2–3 years, and organizations can choose to install them as in-place upgrades or even skip releases over the product's lifecycle. Always check your individual LTSC release to verify its servicing lifecycle. For more information, see [release information](/windows/release-health/release-information), or perform a search on the [product's lifecycle information](/lifecycle/products/) page.

> [!NOTE]
> LTSC releases will support the currently released processors and chipsets at the time of release of the LTSC. As future CPU generations are released, support will be created through future LTSC releases that customers can deploy for those systems. For more information, see **Supporting the latest processor and chipsets on Windows** in [Lifecycle support policy FAQ - Windows Products](/lifecycle/faq/windows).

The Long-term Servicing Channel is available only in the Windows 10 Enterprise LTSC editions. This edition of Windows doesn't include some applications, such as Microsoft Edge, Microsoft Store, Cortana (though limited search capabilities remain available), Microsoft Mail, Calendar, OneNote, Weather, News, Sports, Money, Photos, Camera, Music, and Clock. These apps aren't supported in the Enterprise LTSC editions, even if you install by using sideloading.


### Windows Insider

For many IT pros, gaining visibility into feature updates early can be both intriguing and valuable for future end user communications as well as provide the means to test for any issues on the next General Availability release. Windows Insiders can consume and deploy preproduction code to their test machines, gaining early visibility into the next build. Testing the early builds helps both Microsoft and its customers because they have the opportunity to discover possible issues before the update is ever publicly available and can report it to Microsoft.

Microsoft recommends that all organizations have at least a few devices enrolled in the Windows Insider Program and provide feedback on any issues they encounter. For information about the Windows Insider Program for Business, go to [Windows Insider Program for Business](/windows-insider/business/register).



## Servicing tools

There are many tools you can use to service Windows as a service. Each option has its pros and cons, ranging from capabilities and control to simplicity and low administrative requirements. The following are examples of the servicing tools available to manage Windows as a service updates:

- **Windows Update (stand-alone)** provides limited control over feature updates, with IT pros manually configuring the device to be in the General Availability Channel. Organizations can target which devices defer updates by selecting the **Defer upgrades** check box in **Start\Settings\Update & Security\Advanced Options** on a Windows client device.
- **Windows Update for Business** includes control over update deferment and provides centralized management using Group Policy or MDM. Windows Update for Business can be used to defer updates by up to 365 days, depending on the version. These deployment options are available to clients in the General Availability Channel. In addition to being able to use Group Policy to manage Windows Update for Business, either option can be configured without requiring any on-premises infrastructure by using Microsoft Intune.
- **Windows Server Update Services (WSUS)** provides extensive control over updates and is natively available in the Windows Server operating system. In addition to the ability to defer updates, organizations can add an approval layer for updates and choose to deploy them to specific computers or groups of computers whenever ready. 
- **Microsoft Configuration Manager** provides the greatest control over servicing Windows as a service. IT pros can defer updates, approve them, and have multiple options for targeting deployments and managing bandwidth usage and deployment times. 

**Servicing tools comparison**

| Servicing tool | Can updates be deferred? | Ability to approve updates | Peer-to-peer option | Additional features |
| --- | --- | --- | --- | --- |
| Windows Update | Yes (manual) | No | Delivery Optimization | None|
| Windows Update for Business | Yes | No | Delivery Optimization | Other Group Policy objects |
| WSUS | Yes | Yes | BranchCache or Delivery Optimization | Upstream/downstream server scalability |
| Configuration Manager | Yes | Yes | BranchCache, Client Peer Cache, or Delivery Optimization. For the latter, see [peer-to-peer content distribution](/configmgr/sum/deploy-use/optimize-windows-10-update-delivery#peer-to-peer-content-distribution) and [Optimize Windows Update Delivery](../do/waas-optimize-windows-10-updates.md) | Distribution points, multiple deployment options |


