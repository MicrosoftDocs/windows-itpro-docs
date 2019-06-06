---
title: Chromebook migration guide (Windows 10)
description: In this guide you will learn how to migrate a Google Chromebook-based learning environment to a Windows 10-based learning environment.
ms.assetid: 7A1FA48A-C44A-4F59-B895-86D4D77F8BEA
ms.reviewer: 
manager: dansimp
keywords: migrate, automate, device, Chromebook migration
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: edu, devices
ms.localizationpriority: medium
author: levinec
ms.author: ellevin
ms.date: 10/13/2017
---

# Chromebook migration guide


**Applies to**

-   Windows 10

In this guide you will learn how to migrate a Google Chromebook-based learning environment to a Windows 10-based learning environment. You will learn how to perform the necessary planning steps, including Windows device deployment, migration of user and device settings, app migration or replacement, and cloud storage migration. You will then learn the best method to perform the migration by using automated deployment and migration tools.

## <a href="" id="plan-migration"></a>Plan Chromebook migration


Before you begin to migrate Chromebook devices, plan your migration. As with most projects, there can be an urge to immediately start doing before planning. When you plan your Chromebook migration before you perform the migration, you can save countless hours of frustration and mistakes during the migration process.

In the planning portion of this guide, you will identify all the decisions that you need to make and how to make each decision. At the end of the planning section, you will have a list of information you need to collect and what you need to do with the information. You will be ready to perform your Chromebook migration.

## <a href="" id="plan-app-migrate-replace"></a>Plan for app migration or replacement


App migration or replacement is an essential part of your Chromebook migration. In this section you will plan how you will migrate or replace Chromebook (Chrome OS) apps that are currently in use with the same or equivalent Windows apps. At the end of this section, you will have a list of the active Chrome OS apps and the Windows app counterparts.

**Identify the apps currently in use on Chromebook devices**

Before you can do any analysis or make decisions about which apps to migrate or replace, you need to identify which apps are currently in use on the Chromebook devices. You will create a list of apps that are currently in use (also called an app portfolio).

> [!NOTE]  
> The majority of Chromebook apps are web apps. For these apps you need to first perform Microsoft Edge compatibility testing and then publish the web app URL to the Windows users. For more information, see the [Perform app compatibility testing for web apps](#perform-testing-webapps) section.

 

You can divide the apps into the following categories:

-   **Apps installed and managed by the institution.** These apps are typically managed in the Apps section in the Google Admin Console. You can record the list of these apps in your app portfolio.

-   **Apps installed by faculty or students.** Faculty or students might have installed these apps as a part of a classroom curriculum. Obtain the list of these apps from faculty or students. Ensure you only record apps that are legitimately used as a part of classroom curriculum (and not for personal entertainment or use).

Record the following information about each app in your app portfolio:

-   App name

-   App type (such as offline app, online app, web app, and so on)

-   App publisher or developer

-   App version currently in use

-   App priority (how necessary is the app to the day-to-day process of the institution or a classroom? Rank as high, medium, or low)

Throughout the entire app migration or replacement process, focus on the higher priority apps. Focus on lower priority apps only after you have determined what you will do with the higher priority apps.

### <a href="" id="select-googleapps"></a>

**Select Google Apps replacements**

Table 1 lists the Windows device app replacements for the common Google Apps on Chromebook devices. If your users rely on any of these Google Apps, use the corresponding app on the Windows device. Use the information in Table 1 to select the Google App replacement on a Windows device.

Table 1. Google App replacements

| If you use this Google app on a Chromebook | Use this app on a Windows device     |
|--------------------------------------------|--------------------------------------|
| Google Docs                                | Word 2016 or Word for the web             |
| Google Sheets                              | Excel 2016 or Excel for the web           |
| Google Slides                              | PowerPoint 2016 or PowerPoint for the web |
| Google Apps Gmail                          | Outlook 2016 or Outlook Web App      |
| Google Hangouts                            | Microsoft Skype for Business         |
| Chrome                                     | Microsoft Edge                       |
| Google Drive                               | Microsoft OneDrive for Business      |

 

It may be that you will decide to replace Google Apps after you deploy Windows devices. For more information on making this decision, see the [Select cloud services migration strategy](#select-cs-migrationstrat) section of this guide.

**Find the same or similar apps in the Microsoft Store**

In many instances, software vendors will create a version of their app for multiple platforms. You can search the Microsoft Store to find the same or similar apps to any apps not identified in the [Select Google Apps replacements](#select-googleapps) section.

In other instances, the offline app does not have a version written for the Microsoft Store or is not a web app. In these cases, look for an app that provides similar functions. For example, you might have a graphing calculator offline Android app published on the Chrome OS, but the software publisher does not have a version for Windows devices. Search the Microsoft Store for a graphing calculator app that provides similar features and functionality. Use that Microsoft Store app as a replacement for the graphing calculator offline Android app published on the Chrome OS.

Record the Windows app that replaces the Chromebook app in your app portfolio.

### <a href="" id="perform-testing-webapps"></a>

**Perform app compatibility testing for web apps**

The majority of Chromebook apps are web apps. Because you cannot run native offline Chromebook apps on a Windows device, there is no reason to perform app compatibility testing for offline Chromebook apps. However, you may have a number of web apps that will run on both platforms.

Ensure that you test these web apps in Microsoft Edge. Record the level of compatibility for each web app in Microsoft Edge in your app portfolio.

## <a href="" id="plan-migrate-user-device-settings"></a>Plan for migration of user and device settings


Some institutions have configured the Chromebook devices to make the devices easier to use by using the Google Chrome Admin Console. You have also probably configured the Chromebook devices to help ensure the user data access and ensure that the devices themselves are secure by using the Google Chrome Admin Console.

However, in addition to your centralized configuration in the Google Admin Console, Chromebook users have probably customized their device. In some instances, users may have changed the web content that is displayed when the Chrome browser starts. Or they may have bookmarked websites for future reference. Or users may have installed apps for use in the classroom.

In this section, you will identify the user and device configuration settings for your Chromebook users and devices. Then you will prioritize these settings to focus on the configuration settings that are essential to your educational institution.

At the end of this section, you should have a list of Chromebook user and device settings that you want to migrate to Windows, as well as a level of priority for each setting. You may discover at the end of this section that you have few or no higher priority settings to be migrated. If this is the case, you can skip the [Perform migration of user and device settings](#migrate-user-device-settings) section of this guide.

**Identify Google Admin Console settings to migrate**

You use the Google Admin Console (as shown in Figure 1) to manage user and device settings. These settings are applied to all the Chromebook devices in your institution that are enrolled in the Google Admin Console. Review the user and device settings in the Google Admin Console and determine which settings are appropriate for your Windows devices.

![figure 1](images/chromebook-fig1-googleadmin.png)

Figure 1. Google Admin Console

Table 2 lists the settings in the Device Management node in the Google Admin Console. Review the settings and determine which settings you will migrate to Windows.

Table 2. Settings in the Device Management node in the Google Admin Console

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Section</th>
<th align="left">Settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Network</td>
<td align="left"><p>These settings configure the network connections for Chromebook devices and include the following settings categories:</p>
<ul>
<li><p><strong>Wi-Fi.</strong> Configures the Wi-Fi connections that are available. The Windows devices will need these configuration settings to connect to the same Wi-Fi networks.</p></li>
<li><p><strong>Ethernet.</strong> Configures authentication for secured, wired Ethernet connections (802.1x). The Windows devices will need these configuration settings to connect to the network.</p></li>
<li><p><strong>VPN.</strong> Specifies the VPN network connections used by devices when not directly connected to your intranet. The Windows devices will need the same VPN network connections for users to remotely connect to your intranet.</p></li>
<li><p><strong>Certificates.</strong> Contains the certificates used for network authentication. The Windows devices will need these certificates to connect to the network.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Mobile</td>
<td align="left"><p>These settings configure and manage companion devices (such as smartphones or tablets) that are used in conjunction with the Chromebook devices and include the following settings categories:</p>
<ul>
<li><p><strong>Device management settings.</strong> Configures settings for mobile (companion) devices, such as device synchronization, password settings, auditing, enable remote wipe, and other settings. Record these settings so that you can ensure the same settings are applied when the devices are being managed by Microsoft Intune or another mobile device management (MDM) provider.</p></li>
<li><p><strong>Device activation.</strong> Contains a list of mobile (companion) devices that need to be approved for management by using the Google Admin Console. Approve or block any devices in this list so that the list of managed devices accurately reflects active managed devices.</p></li>
<li><p><strong>Managed devices.</strong> Performs management tasks on mobile (companion) devices that are managed by the Google Admin Console. Record the list of companion devices on this page so that you can ensure the same devices are managed by Intune or another MDM provider.</p></li>
<li><p><strong>Set Up Apple Push Certificate.</strong> Configures the certificate that is essentially the digital signature that lets the Google Admin Console manage iOS devices. You will need this certificate if you plan to manage iOS devices by using Intune or another MDM provider.</p></li>
<li><p><strong>Set Up Android for Work.</strong> Authorizes the Google Admin Console to be the MDM provider for Android devices by providing an Enterprise Mobility Management (EMM) token. You will need this token if you plan to manage Android devices by using another MDM provider.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Chrome management</td>
<td align="left"><p>These settings configure and manage companion devices (such as smartphones or tablets) that are used in conjunction with the Chromebook devices and include the following settings categories:</p>
<ul>
<li><p><strong>User settings.</strong> Configures user-based settings for the Chrome browser and Chromebook devices. Most of these Chromebook user-based settings can be mapped to a corresponding setting in Windows. Record the settings and then map them to settings in Group Policy or Intune.</p></li>
<li><p><strong>Public session settings.</strong> Configures Public Sessions for Chrome devices that are used as kiosks, loaner devices, shared computers, or for any other work or school-related purpose for which users don't need to sign in with their credentials. You can configure Windows devices similarly by using Assigned Access. Record the settings and apps that are available in Public Sessions so that you can provide similar configuration in Assigned Access.</p></li>
<li><p><strong>Device settings.</strong> Configures device-based settings for the Chrome browser and Chromebook devices. You can map most of these Chromebook device-based settings to a corresponding setting in Windows. Record the settings and then map them to settings in Group Policy or Intune.</p></li>
<li><p><strong>Devices.</strong> Manages Chrome device management licenses. The number of licenses recorded here should correspond to the number of licenses you will need for your new management system, such as Intune. Record the number of licenses and use those to determine how many licenses you will need to manage your Windows devices.</p></li>
<li><p><strong>App Management.</strong> Provides configuration settings for Chrome apps. Record the settings for any apps that you have identified that will run on Windows devices.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Table 3 lists the settings in the Security node in the Google Admin Console. Review the settings and determine which settings you will migrate to Windows.

Table 3. Settings in the Security node in the Google Admin Console

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Section</th>
<th align="left">Settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Basic settings</p></td>
<td align="left"><p>These settings configure password management and whether or not two-factor authentication (2FA) is configured. You can set the minimum password length, the maximum password length, if non-admin users can recover their own passwords, and enable 2FA.</p>
<p>Record these settings and use them to help configure your on-premises Active Directory or Azure Active Directory (Azure AD) to mirror the current behavior of your Chromebook environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Password monitoring</p></td>
<td align="left"><p>This section is used to monitor the strength of user passwords. You don’t need to migrate any settings in this section.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>API reference</p></td>
<td align="left"><p>This section is used to enable access to various Google Apps Administrative APIs. You don’t need to migrate any settings in this section.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Set up single sign-on (SSO)</p></td>
<td align="left"><p>This section is used to configure SSO for Google web-based apps (such as Google Apps Gmail or Google Apps Calendar). While you don’t need to migrate any settings in this section, you probably will want to configure Azure Active Directory synchronization to replace Google-based SSO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Advanced settings</p></td>
<td align="left"><p>This section is used to configure administrative access to user data and to configure the Google Secure Data Connector (which allows Google Apps to access data on your local network). You don’t need to migrate any settings in this section.</p></td>
</tr>
</tbody>
</table>

 

**Identify locally-configured settings to migrate**

In addition to the settings configured in the Google Admin Console, users may have locally configured their devices based on their own personal preferences (as shown in Figure 2). Table 4 lists the Chromebook user and device settings that you can locally configure. Review the settings and determine which settings you will migrate to Windows. Some of the settings listed in Table 4 can only be seen when you click the **Show advanced settings** link (as shown in Figure 2).

![figure 2](images/fig2-locallyconfig.png)

Figure 2. Locally-configured settings on Chromebook

Table 4. Locally-configured settings

| Section                | Settings                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Internet connections   | These settings configure the Internet connection for the devices, such as Wi-Fi and VPN connections. Record the network connection currently in use and configure the Windows device to use the same network connection settings.                                                                                                                                                                                                                                                                                            |
| Appearances            | These settings affect the appearance of the desktop. Record the wallpaper image file that is used. Migrate the image file to the Windows device and configure as the user’s wallpaper to maintain similar user experience.                                                                                                                                                                                                                                                                                                   |
| Search                 | These settings configure which search engine is used to search for content. Record this setting so that you can use as the search engine on the Windows device.                                                                                                                                                                                                                                                                                                                                                              |
| Advanced sync settings | These settings configure which user settings are synchronized with the Google cloud, such as Apps, Extensions, History, Passwords, Settings, and so on. Record these settings and configure the Windows device with the same settings if you decide to continue to use Google Apps and other cloud services after you migrate to Windows devices.                                                                                                                                                                            |
| Date and time          | These settings configure the time zone and if 24-hour clock time should be used. Record these settings and configure the Windows device to use these settings.                                                                                                                                                                                                                                                                                                                                                               |
| Privacy                | These settings configure Google Chrome web browser privacy settings (such as prediction service, phishing and malware protection, spelling errors, resource pre-fetch, and so on). Record these settings and configure Microsoft Edge, Internet Explorer, or the web browser of your choice with these settings.                                                                                                                                                                                                             |
| Bluetooth              | This setting configures whether or not Bluetooth is enabled on the device. Record this setting and configure the Windows device similarly.                                                                                                                                                                                                                                                                                                                                                                                   |
| Passwords and forms    | These settings configure Google Chrome web browser to enable autofill of web forms and to save web passwords. Record these settings and configure Microsoft Edge, Internet Explorer, or the web browser of your choice with these settings.                                                                                                                                                                                                                                                                                  |
| Smart lock             | These settings configure the Chromebook when the user’s Android phone is nearby and unlocked, which eliminates the need to type a password. You don’t need to migrate settings in this section.                                                                                                                                                                                                                                                                                                                              |
| Web content            | These settings configure how the Chrome web browser displays content (such as font size and page zoom). Record these settings and configure Microsoft Edge, Internet Explorer, or the web browser of your choice with these settings.                                                                                                                                                                                                                                                                                        |
| Languages              | These settings configure the language in use for the Chromebook. Record these settings and configure the Windows device to support the same language.                                                                                                                                                                                                                                                                                                                                                                        |
| Downloads              | These settings configure the default folder for file download, if the user should be prompted where to save files, and if the Google Drive account should be disconnected. Record these settings and configure the Windows device with similar settings.                                                                                                                                                                                                                                                                     |
| HTTPS/SSL              | These settings configure client-side certificates that are used to authenticate the device. Depending on the services or apps that use these certificates, you may need to export and then migrate these certificates to the Windows device. Contact the service or app provider to determine if you can use the existing certificate or if a new certificate needs to be issued. Record these settings and migrate the certificate to the Windows device or enroll for a new certificate as required by the service or app. |
| Google Cloud Print     | These settings configure the printers that are available to the user. Record the list of printers available to the user and configure the Windows device to have the same printers available. Ensure that the user-friendly printer names in Windows are the same as for the Chromebook device. For example, if the Chromebook device has a printer named “Laser Printer in Registrar’s Office”, use that same name in Windows.                                                                                              |
| On startup             | These settings configure which web pages are opened when the Chrome web browser starts. Record these settings and configure Microsoft Edge, Internet Explorer, or the web browser of your choice with these settings.                                                                                                                                                                                                                                                                                                        |
| Accessibility          | These settings configure the Chromebook ease of use (such as display of large mouse cursor, use of high contrast mode, enablement of the screen magnifier, and so on). Record these settings and configure the Windows device with similar settings.                                                                                                                                                                                                                                                                         |
| Powerwash              | This action removes all user accounts and resets the Chromebook device back to factory settings. You don’t have to migrate any settings in this section.                                                                                                                                                                                                                                                                                                                                                                     |
| Reset settings         | This action retains all user accounts, but restores all settings back to their default values. You don’t have to migrate any settings in this section.                                                                                                                                                                                                                                                                                                                                                                       |

 

Determine how many users have similar settings and then consider managing those settings centrally. For example, a large number of users may have many of the same Chrome web browser settings. You can centrally manage these settings in Windows after migration.

Also, as a part of this planning process, consider settings that may not be currently managed centrally, but should be managed centrally. Record the settings that are currently being locally managed, but you want to manage centrally after the migration.

**Prioritize settings to migrate**

After you have collected all the Chromebook user, app, and device settings that you want to migrate, you need to prioritize each setting. Evaluate each setting and assign a priority to the setting based on the levels of high, medium, and low.

Assign the setting-migration priority based on how critical the setting is to the faculty performing their day-to-day tasks and how the setting affects the curriculum in the classrooms. Focus on the migration of higher priority settings and put less effort into the migration of lower priority settings. There may be some settings that are not necessary at all and can be dropped from your list of settings entirely. Record the setting priority in the list of settings you plan to migrate.

## <a href="" id="plan-email-migrate"></a>Plan for email migration


Many of your users may be using Google Apps Gmail to manage their email, calendars, and contacts. You need to create the list of users you will migrate and the best time to perform the migration.

Office 365 supports automated migration from Google Apps Gmail to Office 365. For more information, see [Migrate Google Apps mailboxes to Office 365](https://go.microsoft.com/fwlink/p/?LinkId=690252).

**Identify the list of user mailboxes to migrate**

In regards to creating the list of users you will migrate, it might seem that the answer “all the users” might be the best one. However, depending on the time you select for migration, only a subset of the users may need to be migrated. For example, you may not persist student email accounts between semesters or between academic years. In this case you would only need to migrate faculty and staff.

Also, when you perform a migration it is a great time to verify that all user mailboxes are active. In many environments there are a significant number of mailboxes that were provisioned for users that are no longer a part of the institution (such as interns or student assistants). You can eliminate these users from your list of user mailboxes to migrate.

Create your list of user mailboxes to migrate in Excel 2016 based on the format described in step 7 in [Create a list of Gmail mailboxes to migrate](https://go.microsoft.com/fwlink/p/?LinkId=690253). If you follow this format, you can use the Microsoft Excel spreadsheet to perform the actual migration later in the process.

**Identify companion devices that access Google Apps Gmail**

In addition to Chromebook devices, users may have companion devices (smartphones, tablets, desktops, laptops, and so on) that also access the Google Apps Gmail mailbox. You will need to identify those companion devices and identify the proper configuration for those devices to access Office 365 mailboxes.

After you have identified each companion device, verify the settings for the device that are used to access Office 365. You only need to test one type of each companion device. For example, if users use Android phones to access Google Apps Gmail mailboxes, configure the device to access Office 365 and then record those settings. You can publish those settings on a website or to your helpdesk staff so that users will know how to access their Office 365 mailbox.

In most instances, users will only need to provide in their Office 365 email account and password. However, you should verify this on each type of companion device. For more information about how to configure a companion device to work with Office 365, see [Compare how different mobile devices work with Office 365](https://go.microsoft.com/fwlink/p/?LinkId=690254).

**Identify the optimal timing for the migration**

Typically, the best time to perform the migration is between academic years or during semester breaks. Select the time of least activity for your institution. And during that time, the optimal time to perform the migration might be during an evening or over a weekend.

Ensure that you communicate the time the migration will occur to your users well in advance. Also, ensure that users know how to access their Office 365 email after the migration is complete. Finally, ensure that your users know how to perform the common tasks they performed in Google Apps Gmail in Office 365 and/or Outlook 2016.

## <a href="" id="plan-cloud-storage-migration"></a>Plan for cloud storage migration


Chromebook devices have limited local storage. So, most of your users will store data in cloud storage, such as Google Drive. You will need to plan how to migrate your cloud storage as a part of the Chromebook migration process.

In this section, you will create a list of the existing cloud services, select the Microsoft cloud services that best meet your needs, and then optimize your cloud storage services migration plan.

**Identify cloud storage services currently in use**

Typically, most Chromebook users use Google Drive for cloud storage services because your educational institution purchased other Google cloud services and Google Drive is a part of those services. However, some users may use cloud storage services from other vendors. For each member of your faculty and staff and for each student, create a list of cloud storage services that includes the following:

-   Name of the cloud storage service

-   Cloud storage service vendor

-   Associated licensing costs or fees

-   Approximate storage currently in use per user

Use this information as the requirements for your cloud storage services after you migrate to Windows devices. If at the end of this discovery you determine there is no essential data being stored in cloud storage services that requires migration, then you can skip to the [Plan for cloud services migration](#plan-cloud-services) section.

**Optimize cloud storage services migration plan**

Now that you know the current cloud storage services configuration, you need to optimize your cloud storage services migration plan for Microsoft OneDrive for Business. Optimization helps ensure that your use only the cloud storage services resources that are necessary for your requirements.

Consider the following to help optimize your cloud storage services migration plan:

-   **Eliminate inactive user storage.** Before you perform the cloud storage services migration, identify cloud storage that is currently allocated to inactive users. Remove this storage from your list of cloud storage to migrate.

-   **Eliminate or archive inactive files.** Review cloud storage to identify files that are inactive (have not been accessed for some period of time). Eliminate or archive these files so that they do not consume cloud storage.

-   **Consolidate cloud storage services.** If multiple cloud storage services are in use, reduce the number of cloud storage services and standardize on one cloud storage service. This will help reduce management complexity, support time, and typically will reduce cloud storage costs.

Record your optimization changes in your cloud storage services migration plan.

## <a href="" id="plan-cloud-services"></a>Plan for cloud services migration


Many of your users may use cloud services on their Chromebook device, such as Google Apps, Google Drive, or Google Apps Gmail. You have planned for these individual cloud services in the [Plan for app migration or replacement](#plan-app-migrate-replace), [Plan for Google Apps Gmail to Office 365 migration](#plan-email-migrate), and [Plan for cloud storage migration](#plan-cloud-storage-migration) sections.

In this section, you will create a combined list of these cloud services and then select the appropriate strategy to migrate these cloud services.

### <a href="" id="identify-cloud-services-inuse"></a>

**Identify cloud services currently in use**

You have already identified the individual cloud services that are currently in use in your educational institution in the [Plan for app migration or replacement](#plan-app-migrate-replace), [Plan for Google Apps Gmail to Office 365 migration](#plan-email-migrate), and [Plan for cloud storage migration](#plan-cloud-storage-migration) sections. Create a unified list of these cloud services and record the following about each service:

-   Cloud service name

-   Cloud service provider

-   Number of users that use the cloud service

**Select cloud services to migrate**

One of the first questions you should ask after you identify the cloud services currently in use is, “Why do we need to migrate from these cloud services?” The answer to this question largely comes down to finances and features.

Here is a list of reasons that describe why you might want to migrate from an existing cloud service to Microsoft cloud services:

-   **Better integration with Office 365.** If your long-term strategy is to migrate to Office 365 apps (such as Word 2016 or Excel 2016) then a migration to Microsoft cloud services will provide better integration with these apps. The use of existing cloud services may not be as intuitive for users. For example, Office 365 apps will integrate better with OneDrive for Business compared to Google Drive.

-   **Online apps offer better document compatibility.** Microsoft Office apps (such as Word and Excel for the web) provide the highest level of compatibility with Microsoft Office documents. The Office apps allow you to open and edit documents directly from SharePoint or OneDrive for Business. Users can access the Office app from any device with Internet connectivity.

-   **Reduce licensing costs.** If you pay for Office 365 licenses, then Office 365 apps and cloud storage are included in those licenses. Although you could keep existing cloud services, you probably would pay more to keep those services.

-   **Improve storage capacity and cross-platform features.** Microsoft cloud services provide competitive storage capacity and provide more Windows-centric features than other cloud services providers. While the Microsoft cloud services user experience is highly optimized for Windows devices, Microsoft cloud services are also highly optimized for companion devices (such as iOS or Android devices).

Review the list of existing cloud services that you created in the [Identify cloud services currently in use](#identify-cloud-services-inuse) section and identify the cloud services that you want to migrate to Microsoft cloud services. If you determine at the end of this task that there are no cloud services to be migrated, then skip to the [Plan for Windows device deployment](#plan-windevice-deploy) section. Also, skip the [Perform cloud services migration](#perform-cloud-services-migration) section later in this guide.

**Prioritize cloud services**

After you have created your aggregated list of cloud services currently in use by Chromebook users, prioritize each cloud service. Evaluate each cloud service and assign a priority based on the levels of high, medium, and low.

Assign the priority based on how critical the cloud service is to the faculty and staff performing their day-to-day tasks and how the cloud service affects the curriculum in the classrooms. Also, make cloud services that are causing pain for the users a higher priority. For example, if users experience outages with a specific cloud service, then make migration of that cloud service a higher priority.

Focus on the migration of higher priority cloud services first and put less effort into the migration of lower priority cloud services. There may be some cloud services that are unnecessary and you can remove them from your list of cloud services to migrate entirely. Record the cloud service migration priority in the list of cloud services you plan to migrate.

### <a href="" id="select-cs-migrationstrat"></a>

**Select cloud services migration strategy**

When you deploy the Windows devices, should you migrate the faculty, staff, and students to the new cloud services? Perhaps. But, in most instances you will want to select a migration strategy that introduces a number of small changes over a period of time.

Consider the following when you create your cloud services migration strategy:

-   **Introduce small changes.** The move from Chrome OS to Windows will be simple for most users as most will have exposure to Windows from home, friends, or family. However, users may not be as familiar with the apps or cloud services. Consider the move to Windows first, and then make other changes as time progresses.

-   **Start off by using existing apps and cloud services.** Immediately after the migration to Windows devices, you may want to consider running the existing apps and cloud services (such Google Apps, Google Apps Gmail, and Google Drive). This gives users a familiar method to perform their day-to-day tasks.

-   **Resolve pain points.** If some existing apps or cloud services cause problems, you may want to migrate them sooner rather than later. In most instances, users will be happy to go through the learning curve of a new app or cloud service if it is more reliable or intuitive for them to use.

-   **Migrate classrooms or users with common curriculum.** Migrate to Windows devices for an entire classroom or for multiple classrooms that share common curriculum. You must ensure that the necessary apps and cloud services are available for the curriculum prior to the migration of one or more classrooms.

-   **Migrate when the fewest number of active users are affected.** Migrate your cloud services at the end of an academic year or end of a semester. This will ensure you have minimal impact on faculty, staff, and students. Also, a migration during this time will minimize the learning curve for users as they are probably dealing with new curriculum for the next semester. Also, you may not need to migrate student apps and data because many educational institutions do not preserve data between semesters or academic years.

-   **Overlap existing and new cloud services.** For faculty and staff, consider overlapping the existing and new cloud services (having both services available) for one business cycle (end of semester or academic year) after migration. This allows you to easily recover any data that might not have migrated successfully from the existing cloud services. At a minimum, overlap the user of existing and new cloud services until the user can verify the migration. Of course, the tradeoff for using this strategy is the cost of the existing cloud services. However, depending on when license renewal occurs, the cost may be minimal.

## <a href="" id="plan-windevice-deploy"></a>Plan for Windows device deployment


You need to plan for Windows device deployment to help ensure that the devices are successfully installed and configured to replace the Chromebook devices. Even if the vendor that provides the devices pre-loads Windows 10 on them, you still will need to perform other tasks.

In this section you will select a Windows device deployment strategy; plan for Active Directory Domain Services (AD DS) and Azure AD services; plan for device, user, and app management; and plan for any necessary network infrastructure remediation.

### <a href="" id="select-windows-device-deploy"></a>

**Select a Windows device deployment strategy**

What decisions need to be made about Windows device deployment? You just put the device on a desk, hook up power, connect to Wi-Fi, and then let the users operate the device, right? That is essentially correct, but depending on the extent of your deployment and other factors, you need to consider different deployment strategies.

For each classroom that has Chromebook devices, select a combination of the following device deployment strategies:

-   **Deploy one classroom at a time.** In most cases you will want to perform your deployment in batches of devices and a classroom is an excellent way to batch devices. You can treat each classroom as a unit and check each classroom off your list after you have deployed the devices.

-   **Deploy based on curriculum.** Deploy the Windows devices after you have confirmed that the curriculum is ready for the Windows devices. If you deploy Windows devices without the curriculum installed and tested, you could significantly reduce the ability for students and teachers to perform effectively in the classroom. Also, deployment based on curriculum has the advantage of letting you move from classroom to classroom quickly if multiple classrooms use the same curriculum.

-   **Deploy side-by-side.** In some instances you may need to have both the Chromebook and Windows devices in one or more classrooms. You can use this strategy if some of the curriculum only works on Chromebook and other parts of the curriculum works on Windows devices. This is a good method to help prevent delays in Windows device deployment, while ensuring that students and teachers can make optimal use of technology in their curriculum.

-   **Deploy after apps and cloud services migration.** If you deploy a Windows device without the necessary apps and cloud services to support the curriculum, this provides only a portion of your complete solution. Ensure that the apps and cloud services are tested, provisioned, and ready for use prior to the deployment of Windows devices.

-   **Deploy after the migration of user and device settings.** Ensure that you have identified the user and device settings that you plan to migrate and that those settings are ready to be applied to the new Windows devices. For example, you would want to create Group Policy Objects (GPOs) to apply the user and device settings to Windows devices.

    If you ensure that Windows devices closely mirror the Chromebook device configuration, you will ease user learning curve and create a sense of familiarity. Also, when you have the settings ready to be applied to the devices, it helps ensure you will deploy your new Windows devices in a secure configuration.

Record the combination of Windows device deployment strategies that you selected.

### <a href="" id="plan-adservices"></a>

**Plan for AD DS and Azure AD services**

The next decision you will need to make concerns AD DS and Azure AD services. You can run AD DS on-premises, in the cloud by using Azure AD, or a combination of both (hybrid). The decision about which of these options is best is closely tied to how you will manage your users, apps, and devices and if you will use Office 365 and other Azure-based cloud services.

In the hybrid configuration, your on-premises AD DS user and group objects are synchronized with Azure AD (including passwords). The synchronization happens both directions so that changes are made in both your on-premises AD DS and Azure AD.

Table 5 is a decision matrix that helps you decide if you can use only on-premises AD DS, only Azure AD, or a combination of both (hybrid). If the requirements you select from the table require on-premises AD DS and Azure AD, then you should select hybrid. For example, if you plan to use Office 365 and use Group Policy for management, then you would select hybrid. However, if you plan to use Office 365 and use Intune for management, then you would select only Azure AD.

Table 5. Select on-premises AD DS, Azure AD, or hybrid

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you plan to...</th>
<th align="left">On-premises AD DS</th>
<th align="left">Azure AD</th>
<th align="left">Hybrid</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Use Office 365</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">Use Intune for management</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">Use System Center 2012 R2 Configuration Manager for management</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">Use Group Policy for management</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">Have devices that are domain-joined</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">Allow faculty and students to Bring Your Own Device (BYOD) which are not domain-joined</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left">X</td>
</tr>
</tbody>
</table>

 

### <a href="" id="plan-userdevapp-manage"></a>

**Plan device, user, and app management**

You may ask the question, “Why plan for device, user, and app management before you deploy the device?” The answer is that you will only deploy the device once, but you will manage the device throughout the remainder of the device's lifecycle.

Also, planning management before deployment is essential to being ready to support the devices as you deploy them. You want to have your management processes and technology in place when the first teachers, facility, or students start using their new Windows device.

Table 6 is a decision matrix that lists the device, user, and app management products and technologies and the features supported by each product or technology. The primary device, user, and app management products and technologies include Group Policy, System Center Configuration Manager, Intune, and the Microsoft Deployment Toolkit (MDT). Use this decision matrix to help you select the right combination of products and technologies for your plan.

Table 6. Device, user, and app management products and technologies

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Desired feature</th>
<th align="left">Windows provisioning packages</th>
<th align="left">Group Policy</th>
<th align="left">Configuration Manager</th>
<th align="left">Intune</th>
<th align="left">MDT</th>
<th align="left">Windows Software Update Services</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Deploy operating system images</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Deploy apps during operating system deployment</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Deploy apps after operating system deployment</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Deploy software updates during operating system deployment</td>
<td align="left"></td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Deploy software updates after operating system deployment</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">Support devices that are domain-joined</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Support devices that are not domain-joined</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left"></td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Use on-premises resources</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left">X</td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Use cloud-based services</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"></td>
<td align="left">X</td>
<td align="left"></td>
<td align="left"></td>
</tr>
</tbody>
</table>

 

You can use Configuration Manager and Intune in conjunction with each other to provide features from both products and technologies. In some instances you may need only one of these products or technologies. In other instances, you may need two or more to meet the device, user, and app management needs for your institution.

Record the device, user, and app management products and technologies that you selected.

### <a href="" id="plan-network-infra-remediation"></a>

**Plan network infrastructure remediation**

In addition to AD DS, Azure AD, and management components, there are other network infrastructure services that Windows devices need. In most instances, Windows devices have the same network infrastructure requirements as the existing Chromebook devices.

Examine each of the following network infrastructure technologies and services and determine if any remediation is necessary:

-   **Domain Name System (DNS)** provides translation between a device name and its associated IP address. For Chromebook devices, public facing, Internet DNS services are the most important. For Windows devices that only access the Internet, they have the same requirements.

    However, if you intend to communicate between Windows devices (peer-to-peer or client/server) then you will need local DNS services. Windows devices will register their name and IP address with the local DNS services so that Windows devices can locate each other.

-   **Dynamic Host Configuration Protocol (DHCP)** provides automatic IP configuration for devices. Your existing Chromebook devices probably use DHCP for configuration. If you plan to immediately replace the Chromebook devices with Windows devices, then you only need to release all the DHCP reservations for the Chromebook devices prior to the deployment of Windows devices.

    If you plan to run Chromebook and Windows devices side-by-side, then you need to ensure that your DHCP service has adequate IP addresses available for both sets of devices.

-   **Wi-Fi.** Chromebook devices are designed to connect to Wi-Fi networks. Windows devices are the same. Your existing Wi-Fi network for the Chromebook devices should be adequate for the same number of Windows devices.

    If you plan to significantly increase the number of Windows devices or you plan to run Chromebook and Windows devices side-by-side, then you need to ensure that Wi-Fi network can support the number of devices.

-   **Internet bandwidth.** Chromebook devices consume more Internet bandwidth (up to 700 times more) than Windows devices. This means that if your existing Internet bandwidth is adequate for the Chromebook devices, then the bandwidth will be more than adequate for Windows devices.

    However, if you plan to significantly increase the number of Windows devices or you plan to run Chromebook and Windows devices side-by-side, then you need to ensure that your Internet connection can support the number of devices.

    For more information that compares Internet bandwidth consumption for Chromebook and Windows devices, see the following resources:

    -   [Chromebook vs. Windows Notebook Network Traffic Analysis](https://go.microsoft.com/fwlink/p/?LinkId=690255)

    -   [Hidden Cost of Chromebook Deployments](https://go.microsoft.com/fwlink/p/?LinkId=690256)

    -   [Microsoft Windows 8.1 Notebook vs. Chromebooks for Education](https://go.microsoft.com/fwlink/p/?LinkId=690257)

-   **Power.** Although not specifically a network infrastructure, you need to ensure your classrooms have adequate power. Chromebook and Windows devices should consume similar amounts of power. This means that your existing power outlets should support the same number of Windows devices.

    If you plan to significantly increase the number of Windows devices or you plan to run Chromebook and Windows devices side-by-side, you need to ensure that the power outlets, power strips, and other power management components can support the number of devices.

At the end of this process, you may determine that no network infrastructure remediation is necessary. If so, you can skip the [Perform network infrastructure remediation](#network-infra-remediation) section of this guide.

## Perform Chromebook migration


Thus far, planning has been the primary focus. Believe it or not most of the work is now done. The rest of the Chromebook migration is just the implementation of the plan you have created.

In this section you will perform the necessary steps for the Chromebook device migration. You will perform the migration based on the planning decision that you made in the [Plan Chromebook migration](#plan-migration) section earlier in this guide.

You must perform some of the steps in this section in a specific sequence. Each section has guidance about when to perform a step. You can perform other steps before, during, or after the migration. Again, each section will tell you if the sequence is important.

## <a href="" id="network-infra-remediation"></a>Perform network infrastructure remediation


The first migration task is to perform any network infrastructure remediation. In the [Plan network infrastructure remediation](#plan-network-infra-remediation) section, you determined the network infrastructure remediation (if any) that you needed to perform.

It is important that you perform any network infrastructure remediation first because the remaining migration steps are dependent on the network infrastructure. Table 7 lists the Microsoft network infrastructure products and technologies and deployment resources for each.

Table 7. Network infrastructure products and technologies and deployment resources

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Product or technology</th>
<th align="left">Resources</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">DHCP</td>
<td align="left"><ul>
<li><p>[Core Network Guide](https://go.microsoft.com/fwlink/p/?LinkId=733920)</p></li>
<li><p>[DHCP Deployment Guide](https://go.microsoft.com/fwlink/p/?LinkId=734021)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">DNS</td>
<td align="left"><ul>
<li><p>[Core Network Guide](https://go.microsoft.com/fwlink/p/?LinkId=733920)</p></li>
<li><p>[Deploying Domain Name System (DNS)](https://go.microsoft.com/fwlink/p/?LinkId=734022)</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

If you use network infrastructure products and technologies from other vendors, refer to the vendor documentation on how to perform the necessary remediation. If you determined that no remediation is necessary, you can skip this section.

## Perform AD DS and Azure AD services deployment or remediation


It is important that you perform AD DS and Azure AD services deployment or remediation right after you finish network infrastructure remediation. Many of the remaining migration steps are dependent on you having your identity system (AD DS or Azure AD) in place and up to necessary expectations.

In the [Plan for Active Directory services](#plan-adservices) section, you determined the AD DS and/or Azure AD deployment or remediation (if any) that needed to be performed. Table 8 list AD DS, Azure AD, and the deployment resources for both. Use the resources in this table to deploy or remediate on-premises AD DS, Azure AD, or both.

Table 8. AD DS, Azure AD and deployment resources

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Product or technology</th>
<th align="left">Resources</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">AD DS</td>
<td align="left"><ul>
<li><p>[Core Network Guide](https://go.microsoft.com/fwlink/p/?LinkId=733920)</p></li>
<li><p>[Active Directory Domain Services Overview](https://go.microsoft.com/fwlink/p/?LinkId=733909)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Azure AD</td>
<td align="left"><ul>
<li><p>[Azure Active Directory documentation](https://go.microsoft.com/fwlink/p/?LinkId=690258)</p></li>
<li><p>[Manage and support Azure Active Directory Premium](https://go.microsoft.com/fwlink/p/?LinkId=690259)</p></li>
<li><p>[Guidelines for Deploying Windows Server Active Directory on Azure Virtual Machines](https://go.microsoft.com/fwlink/p/?LinkId=690260)</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

If you decided not to migrate to AD DS or Azure AD as a part of the migration, or if you determined that no remediation is necessary, you can skip this section. If you use identity products and technologies from another vendor, refer to the vendor documentation on how to perform the necessary steps.

## Prepare device, user, and app management systems


In the [Plan device, user, and app management](#plan-userdevapp-manage) section of this guide, you selected the products and technologies that you will use to manage devices, users, and apps on Windows devices. You need to prepare your management systems prior to Windows 10 device deployment. You will use these management systems to manage the user and device settings that you selected to migrate in the [Plan for migration of user and device settings](#plan-migrate-user-device-settings) section. You need to prepare these systems prior to the migration of user and device settings.

Table 9 lists the Microsoft management systems and the deployment resources for each. Use the resources in this table to prepare (deploy or remediate) these management systems.

Table 9. Management systems and deployment resources

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Management system</th>
<th align="left">Resources</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Windows provisioning packages</td>
<td align="left"><ul>
<li><p>[Build and apply a provisioning package](https://go.microsoft.com/fwlink/p/?LinkId=733918)</p></li>
<li><p>[Windows Imaging and Configuration Designer](https://go.microsoft.com/fwlink/p/?LinkId=733911)</p></li>
<li><p>[Step-By-Step: Building Windows 10 Provisioning Packages](https://go.microsoft.com/fwlink/p/?LinkId=690261)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Group Policy</td>
<td align="left"><ul>
<li><p>[Core Network Companion Guide: Group Policy Deployment](https://go.microsoft.com/fwlink/p/?LinkId=733915)</p></li>
<li><p>[Deploying Group Policy](https://go.microsoft.com/fwlink/p/?LinkId=734024)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Configuration Manager</td>
<td align="left"><ul>
<li><p>[Site Administration for System Center 2012 Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=733914)</p></li>
<li><p>[Deploying Clients for System Center 2012 Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=733919)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Intune</td>
<td align="left"><ul>
<li><p>[Set up and manage devices with Microsoft Intune](https://go.microsoft.com/fwlink/p/?LinkId=690262)</p></li>
<li><p>[Smoother Management Of Office 365 Deployments with Windows Intune](https://go.microsoft.com/fwlink/p/?LinkId=690263)</p></li>
<li><p>[System Center 2012 R2 Configuration Manager &amp; Windows Intune](https://go.microsoft.com/fwlink/p/?LinkId=690264)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">MDT</td>
<td align="left"><ul>
<li><p>[MDT documentation in the Microsoft Deployment Toolkit (MDT) 2013](https://go.microsoft.com/fwlink/p/?LinkId=690324)</p></li>
<li><p>[Step-By-Step: Installing Windows 8.1 From A USB Key](https://go.microsoft.com/fwlink/p/?LinkId=690265)</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

If you determined that no new management system or no remediation of existing systems is necessary, you can skip this section. If you use a management system from another vendor, refer to the vendor documentation on how to perform the necessary steps.

## <a href="" id="perform-app-migration-or-replacement-"></a>Perform app migration or replacement


In the [Plan for app migration or replacement](#plan-app-migrate-replace) section, you identified the apps currently in use on Chromebook devices and selected the Windows apps that will replace the Chromebook apps. You also performed app compatibility testing for web apps to ensure that web apps on the Chromebook devices would run on Microsoft Edge and Internet Explorer.

In this step, you need to configure your management system to deploy the apps to the appropriate Windows users and devices. Table 10 lists the Microsoft management systems and the app deployment resources for each. Use the resources in this table to configure these management systems to deploy the apps that you selected in the [Plan for app migration or replacement](#plan-app-migrate-replace) section of this guide.

Table 10. Management systems and app deployment resources

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Management system</th>
<th align="left">Resources</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Group Policy</td>
<td align="left"><ul>
<li><p>[Editing an AppLocker Policy](https://go.microsoft.com/fwlink/p/?LinkId=734025)</p></li>
<li><p>[Group Policy Software Deployment Background](https://go.microsoft.com/fwlink/p/?LinkId=734026)</p></li>
<li><p>[Assigning and Publishing Software](https://go.microsoft.com/fwlink/p/?LinkId=734027)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Configuration Manager</td>
<td align="left"><ul>
<li><p>[How to Deploy Applications in Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=733917)</p></li>
<li><p>[Application Management in Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=733907)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Intune</td>
<td align="left"><ul>
<li><p>[Deploy apps to mobile devices in Microsoft Intune](https://go.microsoft.com/fwlink/p/?LinkId=733913)</p></li>
<li><p>[Manage apps with Microsoft Intune](https://go.microsoft.com/fwlink/p/?LinkId=733910)</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

If you determined that no deployment of apps is necessary, you can skip this section. If you use a management system from another vendor, refer to the vendor documentation on how to perform the necessary steps.

## <a href="" id="migrate-user-device-settings"></a>Perform migration of user and device settings


In the [Plan for migration of user and device settings](#plan-migrate-user-device-settings) section, you determined the user and device settings that you want to migrate. You selected settings that are configured in the Google Admin Console and locally on the Chromebook device.

Perform the user and device setting migration by using the following steps:

1.  From the list of institution-wide settings that you created in the [Plan for migration of user and device settings](#plan-migrate-user-device-settings) section, configure as many as possible in your management system (such as Group Policy, Configuration Manager, or Intune).

2.  From the list of device-specific settings that you created in the [Plan for migration of user and device settings](#plan-migrate-user-device-settings) section, configure device-specific setting for higher priority settings.

3.  From the list of user-specific settings that you created in the [Plan for migration of user and device settings](#plan-migrate-user-device-settings) section, configure user-specific setting for higher priority settings.

4.  Verify that all higher-priority user and device settings have been configured in your management system.

If you do no want to migrate any user or device settings from the Chromebook devices to the Windows devices, you can skip this section.

## Perform email migration


In the [Plan for email migration](#plan-email-migrate) section, you identified the user mailboxes to migrate, identified the companion devices that access Google Apps Gmail, and identified the optimal timing for migration. You can perform this migration before or after you deploy the Windows devices.

Office 365 supports automated migration from Google Apps Gmail to Office 365. For more information on how to automate the migration from Google Apps Gmail to Office 365, see [Migrate Google Apps mailboxes to Office 365](https://go.microsoft.com/fwlink/p/?LinkId=690252).

Alternatively, if you want to migrate to Office 365 from:

-   **On-premises Microsoft Exchange Server.** Use the following resources to migrate to Office 365 from an on-premises Microsoft Exchange Server:

    -   [Cutover Exchange Migration and Single Sign-On](https://go.microsoft.com/fwlink/p/?LinkId=690266)

    -   [Step-By-Step: Migration of Exchange 2003 Server to Office 365](https://go.microsoft.com/fwlink/p/?LinkId=690267)

    -   [Step-By-Step: Migrating from Exchange 2007 to Office 365](https://go.microsoft.com/fwlink/p/?LinkId=690268)

-   **Another on-premises or cloud-based email service.** Follow the guidance from that vendor.

## Perform cloud storage migration


In the [Plan for cloud storage migration](#plan-cloud-storage-migration) section, you identified the cloud storage services currently in use, selected the Microsoft cloud storage services that you will use, and optimized your cloud storage services migration plan. You can perform the cloud storage migration before or after you deploy the Windows devices.

Manually migrate the cloud storage migration by using the following steps:

1.  Install both Google Drive app and OneDrive for Business or OneDrive app on a device.

2.  Sign in as the user in the Google Drive app.

3.  Sign in as the user in the OneDrive for Business or OneDrive app.

4.  Copy the data from the Google Drive storage to the OneDrive for Business or OneDrive storage.

5.  Optionally uninstall the Google Drive app.

There are also a number of software vendors who provide software that helps automate the migration from Google Drive to OneDrive for Business, Office 365 SharePoint, or OneDrive. For more information about these automated migration tools, contact the vendors.

## Perform cloud services migration


In the [Plan for cloud services migration](#plan-cloud-services)section, you identified the cloud services currently in use, selected the cloud services that you want to migrate, prioritized the cloud services to migrate, and then selected the cloud services migration strategy. You can perform the cloud services migration before or after you deploy the Windows devices.

Migrate the cloud services that you currently use to the Microsoft cloud services that you selected. For example, you could migrate from a collaboration website to Office 365 SharePoint. Perform the cloud services migration based on the existing cloud services and the Microsoft cloud services that you selected.

There are also a number of software vendors who provide software that helps automate the migration from other cloud services to Microsoft cloud services. For more information about these automated migration tools, contact the vendors.

## Perform Windows device deployment


In the [Select a Windows device deployment strategy](#select-windows-device-deploy) section, you selected how you wanted to deploy Windows 10 devices. The other migration task that you designed in the [Plan for Windows device deployment](#plan-windevice-deploy) section have already been performed. Now it's time to deploy the actual devices.

For example, if you selected to deploy Windows devices by each classroom, start with the first classroom and then proceed through all of the classrooms until you’ve deployed all Windows devices.

In some instances, you may receive the devices with Windows 10 already deployed, and want to use provisioning packages. In other cases, you may have a custom Windows 10 image that you want to deploy to the devices by using Configuration Manager and/or MDT. For information on how to deploy Windows 10 images to the devices, see the following resources:

-   [Windows Imaging and Configuration Designer](https://go.microsoft.com/fwlink/p/?LinkId=733911)

-   [Build and apply a provisioning package](https://go.microsoft.com/fwlink/p/?LinkId=733918)

-   [MDT documentation in the Microsoft Deployment Toolkit (MDT) 2013](https://go.microsoft.com/fwlink/p/?LinkId=690324)

-   [Step-By-Step: Installing Windows 8.1 From A USB Key](https://go.microsoft.com/fwlink/p/?LinkId=690265)

-   [Operating System Deployment in Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=733916)

In addition to the Windows 10 image deployment, you may need to perform the following tasks as a part of device deployment:

-   Enroll the device with your management system.

-   Ensure that Windows Defender is enabled and configured to receive updates.

-   Ensure that Windows Update is enabled and configured to receive updates.

-   Deploy any apps that you want the user to immediately be able to access when they start the device (such as Word 2016 or Excel 2016).

After you complete these steps, your management system should take over the day-to-day maintenance tasks for the Windows 10 devices. Verify that the user and device settings migrated correctly as you deploy each batch of Windows 10 devices. Continue this process until you deploy all Windows 10 devices.

## Related topics


[Try it out: Windows 10 deployment (for education)](https://go.microsoft.com/fwlink/p/?LinkId=623254)

[Try it out: Windows 10 in the classroom](https://go.microsoft.com/fwlink/p/?LinkId=623255)

 

 





