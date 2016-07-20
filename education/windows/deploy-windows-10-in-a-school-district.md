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

*Table 3. Deployment methods selected*

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

<p>The advantages of this method include:</p>
<ul>
<li>No cost beyond the AD DS infrastructure.</li>
<li>A larger number of settings (compared to Intune).</li>
</ul>

<p>The disadvantages of this method are that it:</p>
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

<p>The advantages of this method are that:</p>
<ul>
<li>You can manage institution-owned and personal devices.</li>
<li>It doesn’t require that devices be domain joined.</li>
<li>It doesn’t require any on-premises infrastructure.</li>
<li>It can manage devices regardless of their location (on or off premises).</li>
</ul>
<p>The disadvantages of this method are that it:</p>
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

*Table 5. Configuration setting management methods selected*

#### Select the app and update management products

For a district, there are many ways to manage apps and software updates. Table 6 lists the products that this guide describes and recommends. Although you could manage updates by using [Windows Updates or Windows Server Update Services (WSUS)](https://technet.microsoft.com/en-us/windowsserver/bb332157.aspx), you still need to use System Center Configuration Manager or Intune to manage apps. Therefore, it only makes sense to use one or both of these tools for update management.

Use the information in Table 6 to determine which combination of app and update management products is right for your district.

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Selection</th>
<th align="left">Management method</th>
</tr>
</thead>
<tbody>

<tr>
<td>System Center Configuration Manager</td>
<td>System Center Configuration Manager is an on-premises solution that allows you to specify configuration settings for Windows 10; previous versions of Windows; and other operating systems, such as iOS or Android, through integration with Intune.<br/><br/>System Center Configuration Manager supports application management throughout the entire application life cycle. You can deploy, upgrade, manage multiple versions, and retire applications by using System Center Configuration Manager. You can also manage Windows desktop and Windows Store applications.<br/><br/>Select this method when you:
<ul>

<li>Selected System Center Configuration Manager to deploy Windows 10.</li>
<li>Want to manage institution-owned devices that are domain joined (personally owned devices are typically not domain joined).</li>
<li>Want to manage AD DS domain-joined devices.</li>
<li>Have an existing AD DS infrastructure.</li>
<li>Typically manage on-premises devices.</li>
<li>Want to deploy operating systems.</li>
<li>Want to provide application management for the entire application life cycle.</li>
</ul>
<p>The advantages of this method are that:</p>
<ul>
<li>You can deploy Windows 10 operating systems.</li>
<li>You can manage applications throughout the entire application life cycle.</li>
<li>You can manage software updates for Windows 10 and apps.</li>
<li>You can manage antivirus and malware protection.</li>
<li>It scales to large numbers of users and devices.</li>
</ul>
<p>The disadvantages of this method are that it:</p>
<ul>
<li>Carries an additional cost for System Center Configuration Manager server licenses (if the institution does not have System Center Configuration Manager already).</li>
<li>Carries an additional cost for Windows Server licenses and the corresponding server hardware.</li>
<li>Can only manage domain-joined (institution-owned devices).</li>
<li>Requires an AD DS infrastructure (if the institution does not have AD DS already).</li>
<li>Typically manages on-premises devices (unless devices through VPN or DirectAccess).</li>
</ul>
</td>
</tr>

<tr>
<td>Intune</td>
<td>Intune is a cloud-based solution that allows you to manage apps and software updates for Windows 10, previous versions of Windows, and other operating systems (such as iOS or Android). Intune is a subscription-based cloud service that integrates with Office 365 and Azure AD.<br/><br/>Select this method when you:
<ul>
<li>
<li>Selected MDT only to deploy Windows 10.</li>
<li>Want to manage institution-owned and personal devices that are not domain joined.</li>
<li>Want to manage Azure AD domain-joined devices.</li>
<li>Need to manage devices regardless of where they are (on or off premises).</li>
<li>Want to provide application management for the entire application life cycle.</li>
</ul>
<p>The advantages of this method are that:</p>
<ul>
<li>You can manage institution-owned and personal devices.</li>
<li>It doesn’t require that devices be domain joined.</li>
<li>It doesn’t require on-premises infrastructure.</li>
<li>It can manage devices regardless of their location (on or off premises).</li>
<li>You can deploy keys to perform in-place Windows 10 upgrades (such as upgrading from Windows 10 Pro to Windows 10 Education edition).</li>
</ul>
<p>The disadvantages of this method are that it:</p>
<ul>
<li>Carries an additional cost for Intune subscription licenses.</li>
<li>Cannot deploy Windows 10 operating systems.</li>
</ul>
</td>
</tr>

<tr>
<td>System Center Configuration Manager and Intune (hybrid)</td>
<td>System Center Configuration Manager and Intune together extend System Center Configuration Manager from an on-premises management system for domain-joined devices to a solution that can manage devices regardless of their location and connectivity options. This hybrid option provides the benefits of both System Center Configuration Manager and Intune.<br/><br/>System Center Configuration Manager and Intune in the hybrid configuration allow you to support application management throughout the entire application life cycle. You can deploy, upgrade, manage multiple versions, and retire applications by using System Center Configuration Manager, and you can manage Windows desktop and Windows Store applications for both institution-owned and personal devices.<br/><br/>Select this method when you:
<ul>
<li>Selected System Center Configuration Manager to deploy Windows 10.</li>
<li>Want to manage institution-owned and personal devices (does not require that the device be domain joined).</li>
<li>Want to manage domain-joined devices.</li>
<li>Want to managed Azure AD domain-joined devices.</li>
<li>Have an existing AD DS infrastructure.</li>
<li>Want to manage devices regardless of their connectivity.</li>
<li>Want to deploy operating systems.</li>
<li>Want to provide application management for the entire application life cycle.</li>
</ul>
<p>The advantages of this method are that:</p>
<li>You can deploy operating systems.</li>
<li>You can manage applications throughout the entire application life cycle.</li>
<li>You can scale to large numbers of users and devices.</li>
<li>You can support institution-owned and personal devices.</li>
<li>It doesn’t require that devices be domain joined.</li>
<li>It can manage devices regardless of their location (on or off premises).</li>
</ul>
<p>The disadvantages of this method are that it:</p>
<li>Carries an additional cost for System Center Configuration Manager server licenses (if the institution does not have System Center Configuration Manager already).</li>
<li>Carries an additional cost for Windows Server licenses and the corresponding server hardware.</li>
<li>Carries an additional cost for Intune subscription licenses.</li>
<li>Requires an AD DS infrastructure (if the institution does not have AD DS already).</li>
</ul>
</td>
</tr>

</tbody>
</table>

*Table 6. App and update management products*

Record the app and update management methods that you selected in Table 7.

|Selection | Management method|
|----------|------------------|
|   |System Center Configuration Manager by itself|
|   |Intune by itself|
|   |System Center Configuration Manager and Intune (hybrid mode)|

#### Summary
In this section, you selected the methods that you will use to deploy Windows 10 to the faculty and student devices in your district. You selected the methods that you will use to manage configuration settings. Finally, you selected the methods that you will use to manage Windows desktop apps, Windows Store apps, and software updates.

## Prepare the admin device

Now, you’re ready to prepare the admin device for use in the district. This process includes installing the Windows ADK, installing MDT, creating the MDT deployment share, installing the Configuration Manager console, and configuring Configuration Manager console integration.

### Install the Windows ADK

The first step in preparing the admin device is to install the Windows ADK. The Windows ADK contains the deployment tools that MDT uses, including the Windows Preinstallation Environment (Windows PE), the Windows User State Migration Tool (USMT), and Deployment Image Servicing and Management.
When you install the Windows ADK on the admin device, select the following features:
* Deployment Tools
* Windows PE
* USMT

For more information about installing the Windows ADK, see [Step 2-2: Install Windows ADK](https://technet.microsoft.com/en-us/library/dn781086.aspx?f=255&MSPPError=-2147217396#InstallWindowsADK).

### Install MDT

Next, install MDT. MDT uses the Windows ADK to help you manage and perform Windows 10 and app deployment. It is a free tool available directly from Microsoft.
You can use MDT to deploy 32-bit or 64-bit versions of Windows 10. Install the 64-bit version of MDT to support deployment of 32-bit and 64-bit operating systems.

>**Note**&nbsp;&nbsp;If you install the 32-bit version of MDT, you can install only 32-bit versions of Windows 10. Ensure that you download and install the 64-bit version of MDT so that you can install 64-bit and 32 bit versions of the operating system.

For more information about installing MDT on the admin device, see [Installing a New Instance of MDT](https://technet.microsoft.com/en-us/library/dn759415.aspx#InstallingaNewInstanceofMDT).

Now, you’re ready to create the MDT deployment share and populate it with the operating system, apps, and device drivers you want to deploy to your devices.

### Create a deployment share

MDT includes the Deployment Workbench, a graphical UI that you can use to manage MDT deployment shares. A deployment share is a shared folder that contains all the MDT deployment content. The LTI Deployment Wizard accesses the deployment content over the network or from a local copy of the deployment share (known as MDT deployment media).

For more information about how to create a deployment share, see [Step 3-1: Create an MDT Deployment Share](https://technet.microsoft.com/en-us/library/dn781086.aspx?f=255&MSPPError=-2147217396#CreateMDTDeployShare).

### Install the Configuration Manager console

>**Note**&nbsp;&nbsp;If you selected System Center Configuration Manager to deploy Windows 10 or manage your devices (in the [Select the deployment methods](#select-the-deployment-methods) and [Select the management methods](#select-the-management-methods) sections, respectively), perform the steps in this section. Otherwise, skip this section and continue to the next.

You can use System Center Configuration Manager to manage Windows 10 deployments, Windows desktop apps, Windows Store apps, and software updates. To manage System Center Configuration Manager, you use the Configuration Manager console. You must install the Configuration Manager console on every device you use to manage System Center Configuration Manager (specifically, the admin device). The Configuration Manager console is automatically installed when you install System Center Configuration Manager primary site servers.

For more information about how to install the Configuration Manager console, see [Install System Center Configuration Manager consoles](https://technet.microsoft.com/en-us/library/mt590197.aspx#bkmk_InstallConsole).

### Configure MDT integration with the Configuration Manager console

>**Note**&nbsp;&nbsp;If you selected MDT only to deploy Windows 10 and your apps (and not System Center Configuration Manager) in the [Select the deployment methods](#select-the-deployment-methods) section, then skip this section and continue to the next.

You can use MDT with System Center Configuration Manager to make ZTI operating system deployment easier. To configure MDT integration with System Center Configuration Manager, run the Configure ConfigMgr Integration Wizard. This wizard is installed when you install MDT.

In addition to the admin device, run the Configure ConfigMgr Integration Wizard on each device that runs the Configuration Manager console to ensure that all Configuration Manager console installation can use the power of MDT–System Center Configuration Manager integration.

For more information, see [Enable Configuration Manager Console Integration for Configuration Manager](https://technet.microsoft.com/en-us/library/dn759415.aspx#EnableConfigurationManagerConsoleIntegrationforConfigurationManager).

#### Summary

In this section, you installed the Windows ADK and MDT on the admin device. You also created the MDT deployment share that you will configure and use later to capture a reference image. You can also use the MDT deployment share to deploy Windows 10 and your apps to faculty and students (if that’s the method you selected in the [Select the deployment methods](#select-the-deployment-methods) section). Finally, you installed the Configuration Manager console and configured MDT integration with the Configuration Manager console.

## Create and configure Office 365

Office 365 is one of the core components of your classroom environment. You create and manage student identities in Office 365, and students and teachers use the suite as their email, contacts, and calendar system. They also use Office 365 collaboration features such as SharePoint, OneNote, and OneDrive for Business.

As a first step in deploying your classroom, create an Office 365 Education subscription, and then configure Office 365 for the classroom. For more information about Office 365 Education deployment, see [School deployment of Office 365 Education](https://www.microsoft.com/en-us/education/products/office-365-deployment-resources/default.aspx).

### Select the appropriate Office 365 Education license plan

Complete the following steps to select the appropriate Office 365 Education license plan for your school:

<ol>
<li>Determine the number of faculty members and students who will use the classroom.
Office 365 Education licensing plans are available specifically for faculty and students. You must assign faculty and students the correct licensing plan.</li>

<li>Determine the faculty members and students who need to install Microsoft Office applications on devices (if any).
Faculty and students can use Office applications online (standard plans) or run them locally (Office 365 ProPlus plans). Table 8 lists the advantages and disadvantages of standard and Office 365 ProPlus plans.<br/><br/>The best user experience is to run Office 365 ProPlus or use native Office apps on mobile devices. If neither of these options is available, use Office applications online. In addition, all Office 365 plans provide a better user experience by storing documents in OneDrive for Business, which is included in all Office 365 plans. OneDrive for Business keeps content in sync among devices and helps ensure that users always have access to their documents on any device.<br/>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%"/>
</colgroup>
<thead>
<tr class="header">
<th align="left">Plan</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
</tr>
</thead>
<tbody>

<tr>
<td>Office 365 Education</td>
<td>
<ul>
<li>Less expensive than Office 365 ProPlus</li>
<li>Can be run from any device</li>
<li>No installation necessary</li>
</ul>
</td>
<td>
<ul>
<li>Must have an Internet connection to use it</li>
<li>Does not support all the features found in Office 365 ProPlus</li>
</ul>
</td>
</tr>

<tr>
<td>Office 365 ProPlus</td>
<td>
<ul>
<li>Only requires an Internet connection every 30 days (for activation)</li>
<li>Supports the full set of Office features</li>
<li>Can be installed on five devices per user (there is no limit to the number of devices on which you can run Office apps online)</li>
</td>
<td>
<ul>
<li>Requires installation</li>
<li>More expensive than Office 365 Education</li>
</ul>
</td>
</tr>

</tbody>
</table>
</li>
<li>Determine whether students or faculty need Azure Rights Management.

  You can use Azure Rights Management to protect classroom information against unauthorized access. Azure Rights Management protects your information inside or outside the classroom through encryption, identity, and authorization policies, securing your files and email. You can retain control of the information, even when it’s shared with people outside the classroom or your educational institution. Azure Rights Management is free to use with all Office 365 Education license plans. For more information, see [Azure Rights Management Documentation](https://docs.microsoft.com/en-us/rights-management/).</li>
<li>Record the Office 365 Education license plans needed for the classroom in Table 9.

|Quantity| Plan|
|--------|-----|
|   |Office 365 Education for students   |
|   |Office 365 Education for faculty   |
|   |Azure Rights Management for students   |
|   |Azure Rights Management for faculty   |


*Table 9. Office 365 Education license plans needed for the classroom*
</li>

You will use the Office 365 Education license plan information you record in Table 9 in [Create user accounts in Office 365](#create-user-accounts-in-office-365) later in this guide.

### Create a new Office 365 Education subscription

To create a new Office 365 Education subscription for use in the classroom, use your educational institution’s email account. There are no costs to you or to students for signing up for Office 365 Education subscriptions.

>**Note**&nbsp;&nbsp;If you already have an Office 365 Education subscription, you can use that subscription and continue to the next section, [Create accounts in Office 365](#create-accounts-in-office-365).

#### To create a new Office 365 subscription

1. In Microsoft Edge or Internet Explorer, type `https://portal.office.com/start?sku=faculty` in the address bar.
   >**Note**&nbsp;&nbsp;If you have already used your current sign-in account to create a new Office 365 subscription, you will be prompted to sign in. If you want to create a new Office 365 subscription, start an In-Private Window by using one of the following methods:
      <ul><li>In Microsoft Edge, open the Microsoft Edge app (press Ctrl+Shift+P, or click or tap **More actions**), and then click or tap **New InPrivate window**.<li>In Internet Explorer 11, open Internet Explorer 11 (press Ctrl+Shift+P, or click or tap **Settings**), click or tap **Safety**, and then click or tap **InPrivate Browsing**.</li></ul>


2. On the **Get started** page, in **Enter your school email address**, type your school email address, and then click **Sign up**.

   You will receive an email in your school email account. 
3. Click the hyperlink in the email in your school email account.
4. On the **One last thing** page, complete your user information, and then click **Start**.

The wizard creates your new Office 365 Education subscription, and you’re automatically signed in as the administrative user you specified when you created the subscription.

### Add domains and subdomains

Now that you have created your new Office 365 Education subscription, add the domains and subdomains that your institution uses. For example, if your institution has contoso.edu as the primary domain name but you have subdomains for students or faculty (such as students.contoso.edu and faculty.contoso.edu), then you need to add the subdomains.

#### To add additional domains and subdomains

1. In the Office 365 admin center, in the list view, click DOMAINS.
2. In the details pane, above the list of domains, on the menu bar, click Add domain.
3. In the Add a New Domain in Office 365 Wizard, on the Verify domain wizard page, click Let’s get started.
4. On the Verify domain wizard page, in Enter a domain you already own, type your domain name, and then click Next.
5. Sign in to your domain name management provider (for example, Network Solutions or GoDaddy), and then complete the steps for your provider.
6. Repeat these steps for each domain and subdomain you want faculty and students to use for your institution.

### Configure automatic tenant join

To make it easier for faculty and students to join your Office 365 Education subscription (or tenant), allow them to automatically sign up to your tenant (automatic tenant join). In automatic tenant join, when a faculty member or student signs up for Office 365, Office 365 automatically adds (joins) the user to your Office 365 tenant.

>**Note**&nbsp;&nbsp;By default, automatic tenant join is enabled in Office 365 Education, with the exception of certain areas in Europe, the Middle East, and Africa. These countries require opt-in steps to add new users to existing Office 365 tenants. Check your country requirements to determine the automatic tenant join default configuration. Also, if you use Azure AD Connect, then automatic tenant join is disabled. For more information, see [Office 365 Education Self-Sign up: Technical FAQ](https://support.office.com/en-us/article/Office-365-Education-Self-Sign-up-Technical-FAQ-7fb1b2f9-94c2-4cbb-b01e-a6eca34261d6?ui=en-US&rs=en-US&ad=US&WT.mc_id=eml_CXM__33537_MOD_EDU_Student_Advantage_Rush).

Office 365 uses the domain portion of the user’s email address to know which Office 365 tenant to join. For example, if a faculty member or student provides an email address of user@contoso.edu, then Office 365 automatically performs one of the following tasks:

* If an Office 365 tenant with that domain name (contoso.edu) exists, Office 365 automatically adds the user to that tenant.
* If an Office 365 tenant with that domain name (contoso.edu) does not exists, Office 365 automatically creates a new Office 365 tenant with that domain name and adds the user to it.

You will always want faculty and students to join the Office 365 tenant that you created. Ensure that you perform the steps in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) and [Add domains and subdomains](#add-domains-and-subdomains) sections before you allow other faculty and students to join Office 365.

>**Note**&nbsp;&nbsp;You cannot merge multiple tenants, so any faculty or students who create their own tenant will need to abandon their existing tenant and join yours.

By default, all new Office 365 Education subscriptions have automatic tenant join enabled, but you can enable or disable automatic tenant join by using the Windows PowerShell commands in Table 10. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](https://support.office.com/en-us/article/Office-365-Education-Self-Sign-up-Technical-FAQ-7fb1b2f9-94c2-4cbb-b01e-a6eca34261d6?ui=en-US&rs=en-US&ad=US#BKMK_PreventJoins).

|Action |Windows PowerShell command|
|-------|--------------------------|
|Enable   |`Set-MsolCompanySettings -AllowEmailVerifiedUsers $true` |
|Disable |`Set-MsolCompanySettings -AllowEmailVerifiedUsers $false`  |

*Table 10. Windows PowerShell commands to enable or disable automatic tenant join*

>**Note**&nbsp;&nbsp;If your institution has AD DS, then disable automatic tenant join. Instead, use Azure AD integration with AD DS to add users to your Office 365 tenant.

### Disable automatic licensing

To reduce your administrative effort, automatically assign Office 365 Education or Office 365 Education Plus licenses to faculty and students when they sign up (automatic licensing). Automatic licensing also enables Office 365 Education or Office 365 Education Plus features that do not require administrative approval.

>**Note**&nbsp;&nbsp;By default, automatic licensing is enabled in Office 365 Education. If you want to use automatic licensing, then skip this section and go to the next section.

Although all new Office 365 Education subscriptions have automatic licensing enabled by default, you can enable or disable it for your Office 365 tenant by using the Windows PowerShell commands in Table 11. For more information about how to run these commands, see [How can I prevent students from joining my existing Office 365 tenant](https://support.office.com/en-us/article/Office-365-Education-Self-Sign-up-Technical-FAQ-7fb1b2f9-94c2-4cbb-b01e-a6eca34261d6?ui=en-US&rs=en-US&ad=US#BKMK_PreventJoins).

|Action |Windows PowerShell command|
|-------|--------------------------|
|Enable |`Set-MsolCompanySettings -AllowAdHocSubscriptions $true`    |
|Disable|`Set-MsolCompanySettings -AllowAdHocSubscriptions $false`    |

*Table 11. Windows PowerShell commands to enable or disable automatic licensing*

### Enable Azure AD Premium

When you create your Office 365 subscription, you create an Office 365 tenant that includes an Azure AD directory, the centralized repository for all your student and faculty accounts in Office 365, Intune, and other Azure AD–integrated apps. Azure AD is available in Free, Basic, and Premium editions. Azure AD Free, which is included in Office 365 Education, has fewer features than Azure AD Basic, which in turn has fewer features than Azure AD Premium.

Educational institutions can obtain Azure AD Basic edition licenses at no cost if they have a volume license agreement. After your institution obtains its licenses, activate your Azure AD access by completing the steps in [Step 3: Activate your Azure Active Directory access](https://azure.microsoft.com/en-us/documentation/articles/active-directory-get-started-premium/#step-3-activate-your-azure-active-directory-access).

The following Azure AD Premium features are not in Azure AD Basic:
* Allow designated users to manage group membership
* Dynamic group membership based on user metadata
* Azure multifactor authentication (MFA; see [What is Azure Multi-Factor Authentication](https://azure.microsoft.com/en-us/documentation/articles/multi-factor-authentication/))
* Identify cloud apps that your users run
* Self-service recovery of BitLocker
* Add local administrator accounts to Windows 10 devices
* Azure AD Connect health monitoring
* Extended reporting capabilities

You can assign Azure AD Premium licenses to the users who need these features. For example, you may want the users who have access to confidential student information to use MFA. In this example, you could assign Azure AD Premium to only those users.

You can sign up for Azure AD Premium, and then assign licenses to users. In this section, you sign up for Azure AD Premium. You will assign Azure AD Premium licenses to users later in the deployment process.

For more information about:
* Azure AD editions and the features in each, see [Azure Active Directory editions](https://azure.microsoft.com/en-us/documentation/articles/active-directory-editions/).
* How to enable Azure AD premium, see [Associate an Azure AD directory with a new Azure subscription](https://msdn.microsoft.com/en-us/library/azure/jj573650.aspx#create_tenant3).

#### Summary

You provision and initially configure Office 365 Education as part of initial configuration. With the subscription in place, automatic tenant join configured, automatic licensing established, and Azure AD Premium enabled (if required), you’re ready to select the method you will use to create user accounts in Office 365.

## Select an Office 365 user account–creation method

Now that you have an Office 365 subscription, you must determine how you’ll create your Office 365 user accounts. Use one of the following methods to make your decision:
* Method 1: Automatically synchronize your on-premises AD DS domain with Azure AD. Select this method if you have an on-premises AD DS domain.
* Method 2: Bulk-import the user accounts from a .csv file (based on information from other sources) into Azure AD. Select this method if you don’t have an on-premises AD DS domain.

### Method 1: Automatic synchronization between AD DS and Azure AD

In this method, you have an on-premises AD DS domain. As shown in Figure 5, the Azure AD Connector tool automatically synchronizes AD DS with Azure AD. When you add or change any user accounts in AD DS, the Azure AD Connector tool automatically updates Azure AD.

>**Note**&nbsp;&nbsp;Azure AD Connect also supports synchronization from any Lightweight Directory Access Protocol version 3 (LDAPv3)–compliant directory by using the information provided in [Generic LDAP Connector for FIM 2010 R2 Technical Reference](https://technet.microsoft.com/en-us/library/dn510997.aspx).

![]()

*Figure 5. Automatic synchronization between AD DS and Azure AD*

For more information about how to perform this step, see the [Integrate on-premises AD DS with Azure AD](#integrate-on-premises-ad-ds-with-azure-ad) section later in this guide.

### Method 2: Bulk import into Azure AD from a .csv file

In this method, you have no on-premises AD DS domain. As shown in Figure 6, you manually prepare a .csv file with the student information from your source, and then manually import the information directly into Azure AD. The .csv file must be in the format that Office 365 specifies.

![]()

*Figure 6. Bulk import into Azure AD from other sources*

To implement this method, perform the following steps:

1. Export the student information from the source.

   Put the student information in the format the bulk-import feature requires.
2. Bulk-import the student information into Azure AD.

   For more information about how to perform this step, see the [Bulk-import user accounts in Office 365](#bulk-import-user-accounts-in-office-365) section.

#### Summary

In this section, you selected the method for creating user accounts in your Office 365 subscription. Ultimately, these user accounts are in Azure AD (which is the identity management system for Office 365). Now, you’re ready to create your Office 365 accounts.

## Integrate on-premises AD DS with Azure AD

You can integrate your on-premises AD DS domain with Azure AD to provide identity management for your Office 365 tenant. With this integration, you can synchronize the users, security groups, and distribution lists in your AD DS domain with Azure AD with the Azure AD Connect tool. Users will be able to sign in to Office 365 automatically by using their email account and the same password they use to sign in to AD DS.

>**Note**&nbsp;&nbsp;If your institution does not have an on-premises AD DS domain, you can skip this section.

### Select a synchronization model

Before you deploy AD DS and Azure AD synchronization, determine where you want to deploy the server that runs Azure AD Connect.
You can deploy the Azure AD Connect tool:

* On premises. As shown in Figure 7, Azure AD Connect runs on premises, which has the advantage of not requiring a VPN connection to Azure. It does, however, require a virtual machine (VM) or physical server.

  ![]()

  *Figure 7. Azure AD Connect on premises*

* In Azure. As shown in Figure 8, Azure AD Connect runs on a VM in Azure AD, which has the advantages of being faster to provision (than a physical, on-premises server), offers better site availability, and helps reduce the number of on-premises servers. The disadvantage is that you need to deploy a VPN gateway on premises.

  ![]()

  *Figure 8. Azure AD Connect in Azure*

This guide describes how to run Azure AD Connect on premises. For information about running Azure AD Connect in Azure, see [Deploy Office 365 Directory Synchronization (DirSync) in Microsoft Azure](https://technet.microsoft.com/en-us/library/dn635310.aspx).

### Deploy Azure AD Connect on premises

In this synchronization model (illustrated in Figure 7), you run Azure AD Connect on premises on a physical device or in a VM. Azure AD Connect synchronizes AD DS user and group accounts with Azure AD and includes a wizard that helps you configure Azure AD Connect for your AD DS domain and Office 365 subscription. First, you install Azure AD Connect; then, you run the wizard to configure it for your institution.

#### To deploy AD DS and Azure AD synchronization

1. Configure your environment to meet the prerequisites for installing Azure AD Connect by performing the steps in [Prerequisites for Azure AD Connect](https://azure.microsoft.com/en-us/documentation/articles/active-directory-aadconnect-prerequisites/).
2. In the VM or on the physical device that will run Azure AD Connect, sign in with a domain administrator account.
3. Install Azure AD Connect by performing the steps in [Install Azure AD Connect](https://azure.microsoft.com/en-us/documentation/articles/active-directory-aadconnect/#install-azure-ad-connect).
4. Configure Azure AD Connect features based on your institution’s requirements by performing the steps in [Configure sync features](https://azure.microsoft.com/en-us/documentation/articles/active-directory-aadconnect/#configure-sync-features).

Now that you have used on premises Azure AD Connect to deploy AD DS and Azure AD synchronization, you’re ready to verify that Azure AD Connect is synchronizing AD DS user and group accounts with Azure AD.

### Verify synchronization

Azure AD Connect should start synchronization immediately. Depending on the number of users in your AD DS domain, the synchronization process can take some time. To monitor the process, view the number of AD DS users and groups the tool has synchronized with Azure AD in the Office 365 admin console.

#### To verify AD DS and Azure AD synchronization

1. Open https://portal.office.com in your web browser.
2. Using the administrative account that you created in the [Create a new Office 365 Education subscription](#create-a-new-office-365-education-subscription) section, sign in to Office 365.
3. In the list view, expand USERS, and then click **Active Users**.
4. In the details pane, view the list of users.
  The list of users should mirror the users in AD DS.
5. In the list view, click **GROUPS**.
6. In the details pane, view the list of security groups.
  The list of users should mirror the security groups in AD DS.
7. In the details pane, double-click one of the security groups.
  The list of security group members should mirror the group membership for the corresponding security group in AD DS.
8. Close the browser.

Now that you have verified Azure AD Connect synchronization, you’re ready to assign user licenses for Azure AD Premium.

#### Summary

In this section, you selected your synchronization model, deployed Azure AD Connect, and verified that Azure AD is synchronizing properly.

## Bulk-import user and group accounts into AD DS

You can bulk-import user and group accounts into your on-premises AD DS domain. Bulk-importing accounts helps reduce the time and effort needed to create users compared to creating the accounts manually in the Office 365 Admin portal. First, you select the appropriate method for bulk-importing user accounts into AD DS. Next, you create the .csv file that contains the user accounts. Finally, you use the selected method to import the .csv file into AD DS.

>**Note**&nbsp;&nbsp;If your institution doesn’t have an on-premises AD DS domain, you can skip this section.

### Select the bulk import method

Several methods are available to bulk-import user accounts into AD DS domains. Table 12 lists the methods that the Windows Server operating system supports natively. In addition, you can use partner solutions to bulk-import user and group accounts into AD DS.

|Method |Description and reason to select this method |
|-------|---------------------------------------------|
|Ldifde.exe|This command-line tool allows you to import and export objects (such as user accounts) from AD DS. Select this method if you aren’t comfortable with Microsoft Visual Basic Scripting Edition (VBScript), Windows PowerShell, or other scripting languages. For more information about using Ldifde.exe, see Step-by-Step Guide to Bulk Import and Export to Active Directory, LDIFDE—Export/Import data from Active Directory—LDIFDE commands, Import or Export Directory Objects Using Ldifde, and LDIFDE.|
|VBScript|This scripting language uses the Active Directory Services Interfaces (ADSI) Component Object Model interface to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with VBScript. For more information about using VBScript and ADSI, see Step-by-Step Guide to Bulk Import and Export to Active Directory and ADSI Scriptomatic.|
|Windows PowerShell|This scripting language natively supports cmdlets to manage AD DS objects, including user and group objects. Select this method if you’re comfortable with Window PowerShell scripting. For more information about using Windows PowerShell, see Import Bulk Users to Active Directory and PowerShell: Bulk create AD Users from CSV file.|

*Table 12. AD DS bulk-import account methods*