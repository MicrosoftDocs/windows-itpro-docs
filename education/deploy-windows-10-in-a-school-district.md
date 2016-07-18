---
title: Deploy Windows 10 in a school district (Windows 10)
description: 
keywords: configure, tools, device, school
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: edu
ms.sitesec: library
author: craigash
---

# Deploy Windows 10 in a school district


This guide shows you how to deploy the Windows 10 operating system in a school district. You learn how to deploy Windows 10 in classrooms; integrate the school environment with Microsoft Office 365, Active Directory Domain Services (AD DS), and Microsoft Azure Active Directory (Azure AD); and deploy Windows 10 and your apps to new devices or upgrade existing devices to Windows 10. This guide also describes how to use Microsoft System Center Configuration Manager, Microsoft Intune, and Group Policy to manage devices. Finally, the guide discusses common, ongoing maintenance tasks that you will perform after initial deployment as well as the automated tools and built-in features of the operating system.

## Prepare for district deployment

Proper preparation is essential for a successful district deployment. To avoid common mistakes, your first step is to plan a typical district configuration. Just as with building a house, you need a blueprint for what your district and individual schools should look like when it’s finished. The second step in preparation is to learn how you will manage the users, apps, and devices in your district. Just as a builder needs to have the right tools to build a house, you need the right set of tools to deploy your district.

>**Note**&nbsp;&nbsp;This guide focuses on Windows 10 deployment and management in a district. For management of other devices and operating systems in education environments, see [Manage BYOD and corporate-owned devices with MDM solutions](https://www.microsoft.com/en-us/cloud-platform/mobile-device-management).

### Plan a typical district configuration

As part of preparing for your district deployment, you need to plan your district configuration — the focus of this guide. Figure 1 illustrates a typical finished district configuration that you can use as a model (the blueprint in our builder analogy) for the finished state.

![]()

*Figure 1. Typical district configuration for this guide*

A *district* consists of multiple schools, typically at different physical locations. Figure 2 illustrates a typical school configuration within the district that this guide uses.

![]()

*Figure 2. Typical school configuration for this guide*

Finally, each school consists of multiple classrooms. Figure 3 shows the classroom configuration this guide uses.

![]()

*Figure 3. Typical classroom configuration in a school*

This district configuration has the following characteristics:

* It contains one or more admin devices.
* It contains two or more schools.
* Each school contains two or more classrooms.
* Each classroom contains one teacher device.
* The classrooms connect to each other through multiple subnets.
* All devices in each classroom connect to a single subnet.
* All devices have high-speed, persistent connections to each other and to the Internet.
* All teachers and students have access to Windows Store or Windows Store for Business.
* You install a 64-bit version of Windows 10 on the admin device.
* You install the Windows Assessment and Deployment Kit (Windows ADK) on the admin device.
* You install the 64-bit version of the Microsoft Deployment Toolkit (MDT) 2013 Update 2 on the admin device.
  >**Note**&nbsp;&nbsp;In this guide, all references to MDT refer to the 64-bit version of MDT 2013 Update 2.
* The devices use Azure AD in Office 365 Education for identity management.
* If you have on-premises AD DS, you can [integrate Azure AD with on-premises AD DS](https://azure.microsoft.com/en-us/documentation/articles/active-directory-aadconnect/).
* Use [Intune](https://docs.microsoft.com/en-us/intune/), [Mobile Device Management for Office 365](https://support.office.com/en-us/article/Set-up-Mobile-Device-Management-MDM-in-Office-365-dd892318-bc44-4eb1-af00-9db5430be3cd?ui=en-US&rs=en-US&ad=US), or [Group Policy in AD DS](https://technet.microsoft.com/en-us/library/cc725828.aspx) to manage devices.
* Each device supports a one-student-per-device or multiple-students-per-device scenario.
* The devices can be a mixture of different make, model, and processor architecture (32 bit or 64 bit) or be identical.
* To initiate Windows 10 deployment, use a USB flash drive, DVD-ROM or CD-ROM, or Pre-Boot Execution Environment (PXE) boot.
* The devices can be a mixture of different Windows 10 editions, such as Windows 10 Pro, Windows 10 Enterprise, or Windows 10 Education.

Use these characteristics at a minimum as you deploy your schools. If your district deployment is less complex, you may want to review the guidance in [Deploy Windows 10 in a school](https://technet.microsoft.com/edu/windows/deploy-windows-10-in-a-school).

>**Note**&nbsp;&nbsp;This guide focuses on Intune as the mobile device management (MDM) solution. If you want to use an MDM solution other than Intune, ignore the Intune-specific content in this guide. For each section, contact your MDM provider to determine the features and management capabilities for your institution.

Office 365 Education allows:

* Students and faculty to use Microsoft Office Online to create and edit Microsoft Word, OneNote, PowerPoint, and Excel documents in a browser.
* Teachers to use the [OneNote Class Notebook app](https://www.onenote.com/classnotebook) to share content and collaborate with students.
* Faculty to use the [OneNote Staff Notebooks app](https://www.onenote.com/staffnotebookedu) to collaborate with other teachers, the administration, and faculty.
* Teachers to employ Sway to create interactive educational digital storytelling.
* Students and faculty to use email and calendars, with mailboxes up to 50 GB per user.
* Faculty to use advanced email features like email archiving and legal hold capabilities.
* Faculty to help prevent unauthorized users from accessing documents and email by using Microsoft Azure Rights Management.
* Faculty to use advanced compliance tools on the unified eDiscovery pages in the Office 365 Compliance Center.
* Faculty to host online classes, parent–teacher conferences, and other collaboration in Skype for Business.
* Students and faculty to access up to 1 TB of personal cloud storage that users inside and outside the educational institution can share through OneDrive for Business.
* Teachers to provide collaboration in the classroom through Microsoft SharePoint Online team sites.
* Students and faculty to use Office 365 Video to manage videos.
* Students and faculty to use Yammer to collaborate through private social networking.
* Students and faculty to access classroom resources from anywhere on any device (including Windows 10 Mobile, iOS, and Android devices).

For more information about Office 365 Education features and an FAQ, go to [Office 365 Education plans and pricing](https://products.office.com/en-us/academic).

### How to configure a district

Now that you have the plan (blueprint) for your district and individual schools and classrooms, you’re ready to learn about the tools you will use to deploy it. There are many tools you could use to accomplish the task, but this guide focuses on using those tools that require the least infrastructure and technical knowledge.

The primary tool you will use to deploy Windows 10 in your school is MDT, which uses Windows ADK components to make deployment easier. You could just use the Windows ADK to perform your deployment, but MDT simplifies the process by providing an intuitive, wizard-driven user interface (UI).

You can use MDT as a stand-alone tool or integrate it with System Center Configuration Manager. As a stand-alone tool, MDT performs Lite Touch Installation (LTI) deployments—deployments that require minimal infrastructure and allow you to control the level of automation. When integrated with System Center Configuration Manager, MDT performs Zero Touch Installation (ZTI) deployments, which require more infrastructure (such as System Center Configuration Manager) but result in fully automated deployments.

This guide focuses on LTI deployments to deploy the reference device. You can use ZTI deployments with System Center Configuration Manager or LTI deployments to deploy the reference images to your faculty and student devices. If you want to only use MDT, see [Deploy Windows 10 in a school](https://technet.microsoft.com/edu/windows/deploy-windows-10-in-a-school).

MDT includes the Deployment Workbench, a console from which you can manage the deployment of Windows 10 and your apps. You configure the deployment process in the Deployment Workbench, including the management of operating systems, device drivers, apps, and migration of user settings on existing devices.

LTI performs deployment from a deployment share—a network-shared folder on the device on which you installed MDT. You can perform over-the-network deployments from the deployment share or perform deployments from a local copy of the deployment share on a USB drive or DVD. You will learn more about MDT in the [Prepare the admin device](#prepare-the-admin-device) section.

The focus of MDT is deployment, so you also need tools that help you manage your Windows 10 devices and apps. You can manage Windows 10 devices and apps with Intune, the Compliance Management feature in Office 365, or Group Policy in AD DS. You can use any combination of these tools based on your school requirements.

ZTI performs fully automated deployments using System Center Configuration Manager and MDT. Although you could use System Center Configuration Manager by itself, using System Center Configuration Manager with MDT provides an easier process for deploying operating systems. MDT works with the operating system deployment feature in System Center Configuration Manager.

The configuration process requires the following devices:

* **Admin device.** This is the device you use for your day-to-day job functions. It’s also the one you use to create and manage the Windows 10 and app deployment process. You install the Windows ADK, MDT, and the System Center Configuration Manager Console on this device.
* **Reference devices.** These are the devices that you will use as a template for the faculty and student devices. You install Windows 10 and Windows desktop apps on these devices, and then capture an image (.wim file) of the devices.
  You will have a reference device for each type of device in your district. For example, if your district has Surface, HP Stream, Dell Inspiron, and Lenovo Yoga devices, then you would have a reference device for each model. For more information about approved Windows 10 devices, see [Explore devices](https://www.microsoft.com/en-us/windows/view-all).
* **Faculty and staff devices.** These are the devices that the teachers, faculty, and staff use for their day-to-day job functions. You use the admin device to deploy (or upgrade) Windows 10 and apps to these devices.
* **Student devices.** The students will use these devices. You will use the admin device deploy (or upgrade) Windows 10 and apps to them.

The high-level process for deploying and configuring devices within individual classrooms, individual schools, and the district as a whole is as follows and illustrated in Figure 4:

1. Prepare the admin device for use, which includes installing the Windows ADK, MDT, and the Configuration Manager console.
2. On the admin device, create and configure the Office 365 Education subscription that you will use for the district’s classrooms.
3. On the admin device, configure integration between on-premises AD DS and Azure AD (if you have an on premises AD DS configuration).
4. On the admin device, create and configure a Windows Store for Business portal.
5. On the admin device, prepare for management of the Windows 10 devices after deployment.
6. On the reference devices, deploy Windows 10 and the Windows desktop apps on the device, and then capture the reference image from the devices.
7. Import the captured reference images into MDT or System Center Configuration Manager.
8. On the student and faculty devices, deploy Windows 10 to new or existing devices, or upgrade eligible devices to Windows 10.
9. On the admin device, manage the Windows 10 devices and apps, the Office 365 subscription, and the AD DS–Azure AD integration.

![]()

*Figure 4. How district configuration works*

Each step illustrated in Figure 4 directly corresponds to the remaining high-level sections in this guide.

#### Summary

In this district, you looked at the final configuration of your individual classrooms, individual schools, and the district as a whole upon completion of this guide. You also learned the high-level steps for deploying the faculty and student devices in your district.

## Select deployment and management methods

Now that you know what a typical district looks like and how to configure the devices in your district, you need to make a few decisions. You must select the methods you’ll use to deploy Windows 10 to the faculty and student devices in your district. Next, you must select the method you’ll use to manage configuration settings for your users and devices. Finally, you must select the method you’ll use to manage Windows desktop apps, Windows Store apps, and software updates.

### Typical deployment and management scenarios

Before you select the deployment and management methods, you need to review the typical deployment and management scenarios (the cloud-centric scenario and the on-premises and cloud scenario). Table 1 lists the scenario feature and the corresponding products and technologies for that feature in each scenario.

|Scenario feature |Cloud-centric|On-premises and cloud|
|---|---|---|
|Identity management | Azure AD (stand-alone or integrated with on-premises AD DS)  |  AD DS integrated with Azure AD |
|Windows 10 deployment   | MDT only  |  System Center Configuration Manager with MDT |
|Configuration setting management  | Intune  |  Group Policy<br/>Intune|
|App and update management |  Intune |System Center Configuration Manager<br/>Intune|


*Table 1. Deployment and management scenarios*

These scenarios assume the need to support:

* Institution-owned and personal devices.
* AD DS domain-joined and nondomain-joined devices.

Some constraints exist in these scenarios. As you select the deployment and management methods for your device, keep the following constraints in mind:
* You can use Group Policy or Intune to manage configuration settings on a device but not both.
* You can use System Center Configuration Manager or Intune to manage apps and updates on a device but not both.
* You cannot manage multiple users on a device with Intune if the device is AD DS domain joined.

Use the cloud-centric scenario and on-premises and cloud scenario as a guide for your district. You may need to customize these scenarios, however, based on your district. As you go through the [Select the deployment methods](#select-the-deployment-methods), [Select the configuration setting management methods](#select-the-configuration-management-methods), and the [Select the app and update management products](#select-the-app-and-update-management-products) sections, remember these scenarios and use them as the basis for your district.

### Select the deployment methods

To deploy Windows 10 and your apps, you can use MDT by itself or System Center Configuration Manager and MDT together. For a district, there are a few ways to deploy Windows 10 to devices. Table 2 lists the methods that this guide describes and recommends. Use this information to determine which combination of deployment methods is right for your institution.

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>

<tr>
<td>MDT</td>
<td>MDT is an on-premises solution that supports initial operating system deployment and upgrade. You can use MDT to deploy and upgrade Windows 10. In addition, you can initially deploy Windows desktop and Windows Store apps and software updates.
Select this method when you:

<ul>
<li>Want to deploy Windows 10 to institution-owned and personal devices. (Devices need not be domain joined.)</li>
<li>Don’t have an existing AD DS infrastructure.</li>
<li>Need to manage devices regardless of where they are (on or off premises).</li>
</ul>

The advantages of this method are that:<br/>
<ul>
<li>You can deploy Windows 10 operating systems.</li>
<li>You can manage device drivers during initial deployment.</li>
<li>You can deploy Windows desktop apps (during initial deployment)</li>
<li>It doesn’t require an AD DS infrastructure.</li>
<li>It doesn’t have additional infrastructure requirements.</li>
<li>MDT doesn’t incur additional cost: it’s a free tool.</li>
<li>You can deploy Windows 10 operating systems to institution-owned and personal devices.</li>
</ul>

The disadvantages of this method are that it:

<ul>
<li>Can’t manage applications throughout entire application life cycle (by itself).</li>
<li>Can’t manage software updates for Windows 10 and apps (by itself).</li>
<li>Doesn’t provide antivirus and malware protection (by itself).</li>
<li>Has limited scaling to large numbers of users and devices.</li>
</ul>

</td>
</tr>

<tr>
<td>System Center Configuration Manager</td>
<td>System Center Configuration Manager is an on-premises solution that supports operating system management throughout the entire operating system life cycle. You can use System Center Configuration Manager to deploy and upgrade Windows 10. In addition, you can manage Windows desktop and Windows Store apps and software updates as well as provide antivirus and antimalware protection.
Select this method when you:<br/>
<ul>
<li>Want to deploy Windows 10 to institution-owned devices that are domain joined (personal devices are typically not domain joined).</li>
<li>Have an existing AD DS infrastructure (or plan to deploy an AD DS infrastructure).</li>
<li>Typically deploy Windows 10 to on-premises devices.</li>
</ul>

The advantages of this method are that:<br/>
<ul>
<li>You can deploy Windows 10 operating systems.</li>
<li>You can manage (deploy) Windows desktop and Windows Store apps throughout entire application life cycle.</li>
<li>You can manage software updates for Windows 10 and apps.</li>
<li>You can manage antivirus and malware protection.</li>
<li>It scales to large number of users and devices.</li>
</ul>
The disadvantages of this method are that it:<br/>
<ul>
<li>Carries an additional cost for System Center Configuration Manager server licenses (if the institution does not have System Center Configuration Manager already).</li>
<li>Can deploy Windows 10 only to domain-joined (institution-owned devices).</li>
<li>Requires an AD DS infrastructure (if the institution does not have AD DS already).</li>
</ul>
</td>
</tr>
</tbody>
</table>

*Table 2. Deployment methods*

Record the deployment methods you selected in Table 3.

|Selection | Deployment method|
|--------- | -----------------|
|   |MDT by itself |
|   |System Center Configuration Manager and MDT|

### Select the configuration setting management methods

If you have only one device to configure, manually configuring that one device is tedious but possible. When you have multiple classrooms of devices to configure, however, manually configuring each device becomes overwhelming. In addition, maintaining an identical configuration on every device will become virtually impossible as the number of devices in the district increases.

For a district, there are many ways to manage the configuration setting for users and devices. Table 4 lists the methods that this guide describes and recommends. Use this information to determine which combination of configuration setting management methods is right for your institution.

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>

<tr>
<td>Group Policy</td>
<td>Group Policy is an integral part of AD DS and allows you to specify configuration settings for Windows 10 and previous versions of Windows.<br/><br/>
Select this method when you:<br/>

<ul>
<li>Want to manage institution-owned devices that are domain joined (personal devices are typically not domain joined).</li>
<li>Want more granular control of device and user settings.</li>
<li>Have an existing AD DS infrastructure.</li>
<li>Typically manage on-premises devices.</li>
<li>Can manage a required setting only by using Group Policy.</li>
</ul>
<ul>
<p>The advantages of this method include:</p>
<ul>
<li>No cost beyond the AD DS infrastructure.</li>
<li>A larger number of settings (compared to Intune).</li>
</ul>

The disadvantages of this method are that it:
<ul>
<li>Can only manage domain-joined (institution-owned devices).</li>
<li>Requires an AD DS infrastructure (if the institution does not have AD DS already).</li>
<li>Typically manages on-premises devices (unless devices use a virtual private network [VPN] or Microsoft DirectAccess to connect).</li>
<li>Has rudimentary app management capabilities.</li>
<li>Cannot deploy Windows 10 operating systems.</li>
</ul>
</td>
</tr>
<tr>
<td>Intune</td>
<td>Intune is a cloud-based management system that allows you to specify configuration settings for Windows 10, previous versions of Windows, and other operating systems (such as iOS or Android). Intune is a subscription-based cloud service that integrates with Office 365 and Azure AD.<br/><br/>
Intune is the cloud-based management system described in this guide, but you can use other MDM providers. If you use an MDM provider other than Intune, integration with System Center Configuration Manager is unavailable.<br/><br/>
Select this method when you:<br/>

<ul>
<li>Want to manage institution-owned and personal devices (does not require that the device be domain joined).</li>
<li>Don’t need granular control over device and user settings (compared to Group Policy).</li>
<li>Don’t have an existing AD DS infrastructure.</li>
<li>Need to manage devices regardless of where they are (on or off premises).</li>
<li>Want to provide application management for the entire application life cycle.</li>
<li>Can manage a required setting only by using Intune.</li>
</ul>

The advantages of this method are that:
<ul>
<li>You can manage institution-owned and personal devices.</li>
<li>It doesn’t require that devices be domain joined.</li>
<li>It doesn’t require any on-premises infrastructure.</li>
<li>It can manage devices regardless of their location (on or off premises).</li>
</ul>
The disadvantages of this method are that it:
<ul>
<li>Carries an additional cost for Intune subscription licenses.</li>
<li>Doesn’t offer granular control over device and user settings (compared to Group Policy).</li>
<li>Cannot deploy Windows 10 operating systems.</li>
</ul>
</td>
</tr>

</tbody>
</table>

*Table 4. Configuration setting management methods*

Record the configuration setting management methods you selected in Table 5. Although you can use both Group Policy and Intune to manage devices, to manage a device, you must choose either Group Policy or Intune (but not both).

|Selection |Configuration setting management method |
|----------|--------------|
|   |Group Policy  |
|   |Intune   |

#### Select the app and update management products

For a district, there are many ways to manage apps and software updates. Table 6 lists the products that this guide describes and recommends. Although you could manage updates by using [Windows Updates or Windows Server Update Services (WSUS)](https://technet.microsoft.com/en-us/windowsserver/bb332157.aspx), you still need to use System Center Configuration Manager or Intune to manage apps. Therefore, it only makes sense to use one or both of these tools for update management.

Use the information in Table 6 to determine which combination of app and update management products is right for your district.




*Table 6. App and update management products*
