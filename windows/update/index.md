nterprise


**Applies to**

- Windows 10
- Windows 10 Mobile

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows as a service provides a new way to think about building, deploying, and servicing the Windows operating system. The Windows as a service model is focused on continually providing new capabilities and updates while maintaining a high level of hardware and software compatibility. Deploying new versions of Windows is simpler than ever before: Microsoft releases new features two to three times per year rather than the traditional upgrade cycle where new features are only made available every few years. Ultimately, this model replaces the need for traditional Windows deployment projects, which can be disruptive and costly, and spreads the required effort out into a continuous updating process, reducing the overall effort required to maintain Windows 10 devices in your environment. In addition, with the Windows 10 operating system, organizations have the chance to try out “flighted” builds of Windows as Microsoft develops them, gaining insight into new features and the ability to provide continual feedback about them. 

>[!TIP]
>See [Windows 10 update history](https://support.microsoft.com/help/12387/windows-10-update-history) for details about each Windows 10 update released to date. 

 

## In this section

| Topic | Description|
| --- | --- |
| [Quick guide to Windows as a service](waas-quick-start.md) | Provides a brief summary of the key points for the new servicing model for Windows 10. |
| [Overview of Windows as a service](waas-overview.md) | Explains the differences in building, deploying, and servicing Windows 10; introduces feature updates, quality updates, and the different servicing branches; compares servicing tools. |
| [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) | Explains the decisions you need to make in your servicing strategy.  |
| [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) | Explains how to make use of servicing branches and update deferrals to manage Windows 10 updates.  |
| [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md) | Explains how to assign devices to Current Branch (CB) or Current Branch for Business (CBB) for feature and quality updates, and how to enroll devices in Windows Insider. |
| [Monitor Windows Updates with Update Compliance](update-compliance-monitor.md) | Explains how to use Windows Analytics: Update Compliance to monitor and manage Windows Updates on devices in your organization.  |
| [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) | Explains the benefits of using Delivery Optimization or BranchCache for update distribution.  |
| [Manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) | Explains updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile. |
| [Manage updates using Windows Update for Business](waas-manage-updates-wufb.md) | Explains how to use Windows Update for Business to manage when devices receive updates directly from Windows Update. Includes walkthroughs for configuring Windows Update for Business using Group Policy and Microsoft Intune.  |
| [Manage Windows 10 updates using Windows Server Update Services (WSUS)](waas-manage-updates-wsus.md) | Explains how to use WSUS to manage Windows 10 updates. |
| [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) | Explains how to use Configuration Manager to manage Windows 10 updates.  |
| [Manage device restarts after updates](waas-restart.md) | Explains how to use Group Policy to manage device restarts. |

>[!TIP]
>Windows servicing is changing, but for disaster recovery scenarios and bare-metal deployments of Windows 10, you still can use traditional imaging software such as System Center Configuration Manager or the Microsoft Deployment Toolkit. Using these tools to deploy Windows 10 images is similar to deploying previous versions of Windows.
>With each release of a new feature update for CB, Microsoft makes available new .iso files for use in updating your custom images. Each Windows 10 build has a finite servicing lifetime, so it’s important that images stay up to date with the latest build. For detailed information about how to deploy Windows 10 to bare-metal machines or to upgrade to Windows 10 from previous builds of Windows, see [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](https://technet.microsoft.com/itpro/windows/deploy/deploy-windows-10-with-system-center-2012-r2-configuration-manager).---
title: Manage and update Windows 10 (Windows 10)
description: Learn about managing and updating Windows 10.
ms.assetid: E5716355-02AB-4B75-A962-14B1A7F7BDA0
keywords: Windows 10, MDM, WSUS, Windows update
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: jdeckerMS
---

# Manage and update Windows 10

Learn about managing and updating Windows 10.

>[!NOTE]
>Information for Windows 10 Enterprise also applies to Windows 10 IoT Enterprise, and information for Windows 10 Mobile Enterprise also applies to Windows 10 IoT Mobile. For information about managing devices running Windows 10 IoT Core, see [Windows 10 IoT Core Commercialization](https://www.windowsforiotdevices.com/).

## In this section

<table>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="even">
<td align="left"><p>[Administrative Tools in Windows 10](administrative-tools-in-windows-10.md)</p></td>
<td align="left"><p>Administrative Tools is a folder in Control Panel that contains tools for system administrators and advanced users.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Cortana integration in your business or enterprise](manage-cortana-in-enterprise.md)</p></td>
<td align="left"><p>The world’s first personal digital assistant helps users get things done, even at work. Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.</p></td></tr>
<tr><td>[Update Windows 10 in the enterprise](waas-update-windows-10.md) </td><td>Learn how to manage updates to Windows 10 in your organization, including Update Compliance, and Windows Update for Business. </td></tr>
<tr><td align="left"><p>[Manage corporate devices](manage-corporate-devices.md)</p></td>
<td align="left"><p>You can use the same management tools to manage all device types running Windows 10: desktops, laptops, tablets, and phones. And your current management tools, such as Group Policy, Windows Management Instrumentation (WMI), PowerShell scripts, Orchestrator runbooks, System Center tools, and so on, will continue to work for Windows 10 on desktop editions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Windows Spotlight on the lock screen](windows-spotlight.md)</p></td>
<td align="left"><p>Windows Spotlight is an option for the lock screen background that displays different background images and occasionally offers suggestions on the lock screen.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Manage Windows 10 Start layout options](windows-10-start-layout-options-and-policies.md)</p></td>
<td align="left"><p>Organizations might want to deploy a customized Start screen and menu to devices running Windows 10 Enterprise or Windows 10 Education. A standard Start layout can be useful on devices that are common to multiple users and devices that are locked down for specialized purposes.</p></td>
</tr>
<tr><td><p>[Create mandatory user profiles](mandatory-user-profile.md)</p></td><td><p>Mandatory user profiles are useful when standardization is important, such as on a kiosk device or in educational settings.</p></td></tr>
<tr class="odd">
<td align="left"><p>[Lock down Windows 10](lock-down-windows-10.md)</p></td>
<td align="left"><p>Enterprises often need to manage how people use corporate devices. Windows 10 provides a number of features and methods to help you lock down specific parts of a Windows 10 device.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Join Windows 10 Mobile to Azure Active Directory](join-windows-10-mobile-to-azure-active-directory.md)</p></td>
<td align="left"><p>Devices running Windows 10 Mobile can join Azure Active Directory (Azure AD) when the device is configured during the out-of-box experience (OOBE).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Configure devices without MDM](configure-devices-without-mdm.md)</p></td>
<td align="left"><p>Create a runtime provisioning package to apply settings, profiles, and file assets to a device running Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile, or Windows 10 Mobile Enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Application Virtualization for Windows (App-V)](appv-for-windows.md)</p></td>
<td align="left"><p>When you deploy Application Virtualization (App-V) in your orgnazation, you can deliver Win32 applications to users as virtual applications. Virtual applications are installed on centrally managed servers and delivered to users as a service – in real time and on as as-needed basis. Users launch virtual applications from familiar access points, including the Windows Store, and interact with them as if they were installed locally.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[User Experience Virtualization for Windows (UE-V)](uev-for-windows.md)</p></td>
<td align="left"><p>When you deploy User Experience Virtualization (UE-V) in your organization, you can synchronize users' personalized application and operating system settings across all the devices they work from. UE-V allows you to capture user-customized application and Windows settings and store them on a centrally managed network file share. When users log on, their personalized settings are applied to their work session, regardless of which device or virtual desktop infrastructure (VDI) sessions they log on to.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Windows Store for Business](windows-store-for-business.md)</p></td>
<td align="left"><p>Welcome to the Windows Store for Business! You can use the Store for Business, to find, acquire, distribute, and manage apps for your organization.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Change history for Manage and update Windows 10](change-history-for-manage-and-update-windows-10.md)</p></td>
<td align="left"><p>This topic lists new and updated topics in the Manage and update Windows 10 documentation for [Windows 10 and Windows 10 Mobile](../index.md).</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Windows 10 and Windows 10 Mobile](../index.md)

 
[Learn how Microsoft does IT at the IT Showcase](https://www.microsoft.com/itshowcase)
