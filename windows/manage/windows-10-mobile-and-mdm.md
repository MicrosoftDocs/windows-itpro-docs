---
title: Windows 10 Mobile and mobile device management (Windows 10)
description: This guide provides an overview of the mobile device and app management technologies in the Windows 10 Mobile operating system.
ms.assetid: 6CAA1004-CB65-4FEC-9B84-61AAD2125E5E
keywords: ["telemetry", "BYOD", "MDM"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Windows 10 Mobile and mobile device management


**Applies to**

-   Windows 10 Mobile

**In this article**

-   [Overview](#overview)
-   [Device deployment](#device_deployment__)
-   [Device configuration](#device_configuration)
-   [App management](#__app_management)
-   [Device operations](#device_operations)
-   [Device retirement](#device_retirement)
-   [Related topics](#related_topics)

This guide provides an overview of the mobile device and app management technologies in the Windows 10 Mobile operating system. It describes how mobile device management (MDM) systems use the built-in device management client to deploy, configure, maintain, and support phones and small tablets running Windows 10 Mobile.

Bring Your Own Device (BYOD—that is, personal devices) and corporate devices are key scenarios that Windows 10 Mobile MDM capabilities support. The operating system offers a flexible approach to registering devices with directory services and MDM systems, and IT organizations can provision comprehensive device-configuration profiles based on their company’s need to control and secure mobile business data.

Windows 10 Mobile not only delivers more comprehensive, restrictive configuration settings than Windows Phone 8.1 did but also provides capabilities to deploy and manage apps built on the Universal Windows Platform (UWP). Companies can distribute apps directly from Windows Store or by using their MDM system. They can control and distribute custom line-of-business (LOB) apps the same way.

## Overview


Organizations’ users increasingly depend on their mobile devices, but phones and tablets bring new and unfamiliar challenges for IT departments. IT must be able to deploy and manage mobile devices and apps quickly to support the business while balancing the growing need to protect corporate data because of evolving laws, regulations, and cybercrime. IT must ensure that the apps and data on those mobile devices are safe, especially on personal devices. Windows 10 Mobile helps organizations address these challenges by providing a robust, flexible, built-in MDM client. IT departments can use the MDM system of their choice to manage this client.

### Built-in MDM client

The built-in MDM client is common to all editions of the Windows 10 operating system, including desktop, mobile, and Internet of Things (IoT). The client provides a single interface through which you can manage any device that runs Windows 10. The client has two important roles: device enrollment in an MDM system and device management.

-   **Device enrollment.** Users can enroll in the MDM system. On Windows 10, a user can register a device with Microsoft Azure Active Directory (Azure AD) and enroll in an MDM system at the same time so that the system can manage the device, the apps running on it, and the confidential data it holds. Enrollment establishes the management authority for the device. Only one management authority (or MDM enrollment) is possible at a time, which helps prevent unauthorized access to devices and ensures their stability and reliability.

-   **Device management.** The MDM client allows the MDM system to configure policy settings; deploy apps and updates; and perform other management tasks, such as remotely wiping the device. The MDM system sends configuration requests and collects inventory through the MDM client. The client uses [configuration service providers (CSPs)](http://go.microsoft.com/fwlink/p/?LinkId=734049) to configure and inventory settings. A CSP is an interface to read, set, modify, or delete configuration settings on the device. These settings map to registry keys or files. (The security architecture of Windows 10 Mobile prevents direct access to registry settings and operating system files. For more information, see the [Windows 10 Mobile security guide](../keep-secure/windows-10-mobile-security-guide.md).)

The MDM client is an integral part of Windows 10 Mobile. As a result, there is no need for an additional, custom MDM app to enroll the device or to allow an MDM system to manage it. All MDM systems have equal access to Windows 10 Mobile MDM application programming interfaces (APIs), so you can choose Microsoft Intune or a third-party MDM product to manage Windows 10 Mobile devices. For more information about Windows 10 Mobile device management APIs, see [Mobile device management](http://go.microsoft.com/fwlink/p/?LinkId=734050).

### Windows 10 Mobile editions

Every device that runs Windows 10 Mobile includes all the enterprise mobile device security and management capabilities the MDM client provides. Microsoft also offers an Enterprise edition of Windows 10 Mobile, which includes three additional capabilities. To enable these capabilities, you can provision a license file without reinstalling the operating system:

-   **Ability to postpone software updates.**Windows 10 Mobile gets software updates directly from Windows Update, and you cannot curate updates prior to deployment. Windows 10 Mobile Enterprise, however, allows you to curate and validate updates prior to deploying them.

-   **No limit on the number of self-signed LOB apps that you can deploy to a single device.** To use an MDM system to deploy LOB apps directly to devices, you must cryptographically sign the software packages with a code signing certificate that your organization’s certificate authority (CA) generates. You can deploy a maximum of 20 self-signed LOB apps to a Windows 10 Mobile device, more than 20 if your organization’s devices run Windows 10 Mobile Enterprise.

-   **Set telemetry to security level.** The telemetry security level configures the operating system to gather only the telemetry information required to keep devices secured.

**Note**  
Your organization can opt to purchase a code signing certificate from Verisign to sign LOB apps or use [Windows Store for Business](windows-store-for-business.md) to obtain apps. With either method, you can distribute more than 20 apps to a single device without activating Windows 10 Mobile Enterprise on that device by using your MDM system.

 

To activate Windows 10 Mobile Enterprise on any Windows 10 Mobile device, use your company’s MDM system or a provisioning package to inject a license onto the device. You can download a Windows 10 Mobile Enterprise license from the Business Support Portal.

### Lifecycle management

Windows 10 Mobile supports end-to-end lifecycle device management to give companies control of their devices, data, and apps. Comprehensive MDM systems use the built-in MDM client to manage devices throughout their lifecycle, as Figure 1 illustrates. The remainder of this guide describes the operating system’s mobile device and app management capabilities through each phase of the lifecycle, showing how MDM systems use specific features.

![figure 1](images/win10-mobile-mdm-fig1.png)

Figure 1. Device management lifecycle

## Device deployment


Device deployment includes the initial registration and configuration of the device, including its enrollment with an MDM system. Sometimes, companies preinstall apps. The major factors in how you deploy devices and which controls you put in place are device ownership and how the user will use the device. This guide covers two scenarios:

1.  Companies allow users to personalize their devices because the users own the devices or because company policy doesn’t require tight controls (defined as *personal devices* in this guide).

2.  Companies don’t allow users to personalize their devices or they limit personalization, usually because the organization owns the devices and security considerations are high (defined as *corporate devices* in this guide).

Often, employees can choose devices from a list of supported models, or companies provide devices that they preconfigure, or bootstrap, with a baseline configuration.

Microsoft recommends Azure AD Join and MDM enrollment and management for corporate devices and Azure AD Registration and MDM enrollment and management for personal devices.

### Deployment scenarios

Most organizations support both personal and corporate device scenarios. The infrastructure for these scenarios is similar, but the deployment process and configuration policies differ. Table 1 describes characteristics of the personal and corporate device scenarios. Activation of a device with an organizational identity is unique to Windows 10 Mobile.

Table 1. Characteristics of personal and corporate device scenarios

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left">Personal devices</td>
<td align="left">Corporate devices</td>
</tr>
<tr class="even">
<td align="left">Ownership</td>
<td align="left">User</td>
<td align="left">Organization</td>
</tr>
<tr class="odd">
<td align="left">Primary use</td>
<td align="left">Personal</td>
<td align="left">Work</td>
</tr>
<tr class="even">
<td align="left">Deployment</td>
<td align="left">The primary identity on the device is a personal identity. A Microsoft account is the default option for Windows 10 Mobile.</td>
<td align="left">The primary identity on the device is an organizational identity. An Azure AD account is the default option for Windows 10 Mobile.</td>
</tr>
</tbody>
</table>

 

### Identity management

People can use only one account to activate a device, so it’s imperative that your organization control which account you enable first. The account you choose will determine who controls the device and influence your management capabilities. The following list describes the impact that users’ identities have on management (Table 2 summarizes these considerations):

-   **Personal identity.** In this scenario, employees use their Microsoft account to activate the device. Then, they use their Azure AD account (organizational identity) to register the device in Azure AD and enroll it with the company’s MDM solution. You can apply policies to help protect and contain corporate apps and data on the devices, designed to prevent intellectual property leaks, but users keep full control over personal activities, such as downloading and installing apps and games.

-   **Organizational identity.** In this scenario, employees use their Azure AD account to register the device to Azure AD and automatically enroll it with the organization’s MDM solution. In this case, companies can block personal use of devices. Using organizational Identities to initialize devices gives organizations complete control over devices and allows them to prevent personalization.

Table 2. Personal vs. organizational identity

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left">Personal identity</td>
<td align="left">Corporate identity</td>
</tr>
<tr class="even">
<td align="left">First account on the device</td>
<td align="left">Microsoft account</td>
<td align="left">Azure AD account</td>
</tr>
<tr class="odd">
<td align="left">Device sign-in</td>
<td align="left">Users cannot sign in to devices with Azure AD credentials, even if they add the credentials after initial activation with a Microsoft account.</td>
<td align="left">Users can unlock devices with an Azure AD account. Organizations can block the addition of a personal identity.</td>
</tr>
<tr class="even">
<td align="left">User settings and data roaming across devices</td>
<td align="left">User and app settings roam across devices activated with the same personal identity over personal OneDrive.</td>
<td align="left">Windows 10 Mobile currently does not support users and app settings roaming over the enterprise cloud. It can block the roaming of personal cloud settings.</td>
</tr>
<tr class="odd">
<td align="left">Ability to block the use of a personal identity on the device</td>
<td align="left">No</td>
<td align="left">Yes</td>
</tr>
<tr class="even">
<td align="left">Level of control</td>
<td align="left"><p>Organization can apply most* restrictive policies to devices, but they cannot remove the Microsoft account from them. Device users can reclaim full control over their devices by un-enrolling them from the organization’s MDM solution.</p>
<div class="alert">
<strong>Note</strong>  
<p>* MDM functionality on personal devices might be limited in the future.</p>
</div>
<div>
 
</div></td>
<td align="left">Organizations are free to apply the restrictive policies to devices that policy standards and compliance regulations require and prevent the user from un-enrolling the device from the enterprise.</td>
</tr>
</tbody>
</table>

 

### Infrastructure requirements

For both device scenarios, the essential infrastructure and tools required to deploy and manage Windows 10 Mobile devices include an Azure AD subscription and an MDM system.

Azure AD is a cloud-based directory service that provides identity and access management. You can integrate it with existing on-premises directories to create a hybrid solution. Azure AD has three editions: Free, Basic, and Premium (see [Azure Active Directory editions](http://go.microsoft.com/fwlink/p/?LinkId=723980)). All editions support Azure AD device registration, but the Premium edition is required to enable MDM auto-enrollment and conditional access based on device state. Organizations that use Microsoft Office 365 or Intune are already using Azure AD.

**Note**  
Most industry-leading MDM vendors already support integration with Azure AD or are working on integration. You can find the MDM vendors that support Azure AD in [Azure Marketplace](http://go.microsoft.com/fwlink/p/?LinkId=723981).

 

Users can enroll Windows 10 Mobile devices in third-party MDM systems without using an Azure AD organizational account. (By default, Intune uses Azure AD and includes a license). If your organization doesn’t use Azure AD, you must use a personal identity to activate devices and enable common scenarios, such as downloading apps from Windows Store.

Multiple MDM systems that support Windows 10 Mobile are available. Most support personal and corporate device deployment scenarios. Microsoft offers [Intune](http://go.microsoft.com/fwlink/p/?LinkId=723983), which is part of the [Enterprise Mobility Suite](http://go.microsoft.com/fwlink/p/?LinkId=723984) and a cloud-based MDM system that manages devices off premises. Like Office 365, Intune uses Azure AD for identity management, so employees use the same credentials to enroll devices in Intune or sign in to Office 365. Intune supports devices that run other operating systems, as well, such as iOS and Android, to provide a complete MDM solution.

You can also integrate Intune with System Center Configuration Manager to gain a single console in which to manage all devices—in the cloud and on premises. For more information, see [Manage Mobile Devices with Configuration Manager and Microsoft Intune](http://go.microsoft.com/fwlink/p/?LinkId=734051). For guidance on choosing between a stand-alone Intune installation and Intune integrated with Configuration Manager, see [Choose between Intune by itself or integrating Intune with System Center Configuration Manager](http://go.microsoft.com/fwlink/p/?LinkId=723985).

In addition to Intune, other MDM providers support Windows 10 Mobile. Currently, the following MDM systems claim to support Windows 10 and Windows 10 Mobile: [AirWatch](http://go.microsoft.com/fwlink/p/?LinkId=723986), [Citrix](http://go.microsoft.com/fwlink/p/?LinkId=723987), [Lightspeed Systems](http://go.microsoft.com/fwlink/p/?LinkId=723988), [Matrix42](http://go.microsoft.com/fwlink/p/?LinkId=723989), [MobileIron](http://go.microsoft.com/fwlink/p/?LinkId=723990), [SAP](http://go.microsoft.com/fwlink/p/?LinkId=723991), [SOTI](http://go.microsoft.com/fwlink/p/?LinkId=723992), and [Symantec](http://go.microsoft.com/fwlink/p/?LinkId=723993).

All MDM vendors have equal access to the [Windows 10 MDM APIs](http://go.microsoft.com/fwlink/p/?LinkId=734050). The extent to which they implement these APIs depends on the vendor. Contact your preferred MDM vendor to determine its level of support.

**Note**  
Although not covered in this guide, you can use Exchange ActiveSync (EAS) to manage mobile devices instead of using a full-featured MDM system. EAS is available in Microsoft Exchange Server 2010 or later and Office 365.

In addition, Microsoft recently added MDM capabilities powered by Intune to Office 365. MDM for Office 365 supports mobile devices only, such as those running Windows 10 Mobile, iOS, and Android. MDM for Office 365 offers a subset of the management capabilities found in Intune, including the ability to remotely wipe a device, block a device from accessing Exchange Server email, and configure device policies (for example, passcode requirements). For more information about MDM for Office 365 capabilities, see [Overview of Mobile Device Management for Office 365](http://go.microsoft.com/fwlink/p/?LinkId=734052).

 

### Provisioning

Provisioning is new to Windows 10 and uses the MDM client in Windows 10 Mobile. You can create a runtime provisioning package to apply settings, profiles, and file assets to a device running Windows 10.

To assist users with MDM system enrollment, use a provisioning package. To do so, use the [Windows Imaging and Configuration Designer](http://go.microsoft.com/fwlink/p/?LinkId=733911) to create a provisioning package, and then install that package on the device.

Users can perform self-service MDM enrollment based on the following deployment scenarios:

-   **Corporate device.** During the out-of-the-box experience (OOBE), you can instruct the user to select **This device is owned by my organization** and join the device to Azure AD and the MDM system.

-   **Personal device.** The user activates the device with a Microsoft account, but you can instruct him or her to register the device with Azure AD and enroll in Intune. To do so in Windows 10 Mobile, the user clicks, **Settings**, clicks **Accounts**, and then clicks **Work access**.

To automate MDM enrollment, use provisioning packages as follows:

-   **Corporate device.** You can create a provisioning package and apply it to a corporate device before delivery to the user, or instruct the user to apply the package during OOBE. After application of the provisioning package, the OOBE process automatically chooses the enterprise path and requires the user to register the device with Azure AD and enroll it in the MDM system.

-   **Personal device.** You can create a provisioning package and make it available to users who want to enroll their personal device in the enterprise. The user enrolls the device in the corporate MDM for further configuration by applying the provisioning package. To do so in Windows 10 Mobile, the user clicks **Settings**, clicks **Accounts**, and then clicks **Provisioning**).

Distribute provisioning packages to devices by publishing them in an easily accessible location (e.g., an email attachment or a web page). You can cryptographically sign or encrypt provisioning packages and require that the user enter a password to apply them.

See [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkId=734054) for more information on creating provisioning packages.

## Device configuration


The following sections describe the device configuration capabilities of the built-in Windows 10 Mobile MDM client. This client exposes the capabilities to any MDM system compatible with Windows 10. Configurable settings include:

-   [Email accounts](#email)

-   [Account restrictions](#restrictions)

-   [Device lock restrictions](#device_lock)

-   [Hardware restrictions](#hardware)

-   [Certificate management](#certificate)

-   [Wi-Fi](#wifi)

-   [Proxy](#proxy)

-   [Virtual private network (VPN)](#vpn)

-   [Access point name (APN) profiles](#apn)

-   [Data leak prevention](#data)

-   [Storage management](#storage)

**Note**  
Although all the MDM settings this section describes are available in Windows 10 Mobile, not all MDM systems may show them in their user interface. In addition, naming may vary among MDM systems. Consult your MDM system’s documentation for more information.

 

### Email accounts

You can use your corporate MDM system to manage corporate email accounts. Define email account profiles in the MDM system, and then deploy them to devices. You would usually deploy these settings immediately after enrollment, regardless of scenario.

This capability extends to email systems that use EAS. Table 3 lists settings that you can configure in EAS email profiles.

Table 3. Windows 10 Mobile settings for EAS email profiles

| Setting                    | Description                                                                                                                                                                                |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Email Address              | The email address associated with the EAS account                                                                                                                                          |
| Domain                     | The domain name of the Exchange Server instance                                                                                                                                            |
| Account Name               | A user-friendly name for the email account on the device                                                                                                                                   |
| Password                   | The password for the email account                                                                                                                                                         |
| Server Name                | The server name that the email account uses                                                                                                                                                |
| User Name                  | The user name for the email account                                                                                                                                                        |
| Calendar Age Filter        | The age of calendar items to be synchronized with the device (for example, synchronizing calendar items within the past 7 days)                                                            |
| Logging                    | The level of diagnostic logging                                                                                                                                                            |
| Mail Body Type             | The email body format type: text, HTML, RTF, or Multipurpose Internet Mail Extensions                                                                                                      |
| Mail HTML Truncation       | The maximum size of an HTML-formatted email message before the message is synchronized to the device (Any HTML-formatted email message that exceeds this size is automatically truncated.) |
| Mail Plain Text Truncation | The maximum size of a text-formatted email message before the message is synchronized to the device (Any text-formatted email message that exceeds this size is automatically truncated.)  |
| Schedule                   | The schedule for synchronizing email between the Exchange Server instance and the device                                                                                                   |
| Use SSL                    | Establishes whether Secure Sockets Layer (SSL) is required when syncing                                                                                                                    |
| Mail Age Filter            | The age of messages to be synchronized with the device (for example, synchronizing messages within the past 7 days)                                                                        |
| Content Types              | The content type that is synchronized (e.g., email, contacts, calendar, task items)                                                                                                        |

 

Table 4 lists settings that you can configure in other email profiles.

Table 4. Windows 10 Mobile settings for other email profiles

| Setting                                   | Description                                                                                                                                          |
|-------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| User logon name                           | The user logon name for the email account                                                                                                            |
| Outgoing authentication required          | Whether the outgoing server requires authentication                                                                                                  |
| Password                                  | The password for the account in the **User logon name** field                                                                                        |
| Domain                                    | The domain name for the account in the **User logon name** field                                                                                     |
| Days to download                          | How much email (measured in days) should be downloaded from the server                                                                               |
| Incoming server                           | The incoming server name and port number, where the value format is *server\_name:port\_number* (The port number is optional.)                       |
| Send and receive schedule                 | The length of time (in minutes) between email send-and-receive updates                                                                               |
| IMAP4 maximum attachment size             | The maximum size for message attachments for Internet Message Access Protocol version 4 (IMAP4) accounts                                             |
| Send mail display name                    | The name of the sender displayed on a sent email                                                                                                     |
| Outgoing server                           | The outgoing server name and port number, where the value format is *server\_name:port\_number* (The port number is optional.)                       |
| Reply address                             | The user’s reply email address                                                                                                                       |
| Email service name                        | The name of the email service                                                                                                                        |
| Email service type                        | The email service type (for example, POP3, IMAP4).                                                                                                   |
| Maximum receive message size              | The maximum size (in bytes) of messages retrieved from the incoming email server (Messages that exceed this size are truncated to the maximum size.) |
| Delete message action                     | How messages are deleted on the server (Messages can either be permanently deleted or sent to the Trash folder.)                                     |
| Use cellular only                         | Whether the account should be used only with cellular connections and not Wi-Fi connections                                                          |
| Content types to synchronize              | The content types supported for synchronization (in other words, mail messages, contacts, calendar items)                                            |
| Content synchronization server            | The name of the content synchronization server, if it’s different from the email server                                                              |
| Calendar synchronization server           | The name of the calendar synchronization server, if it’s different from the email server                                                             |
| Contact server requires SSL               | Whether the contact server requires an SSL connection                                                                                                |
| Calendar server requires SSL              | Whether the calendar server requires an SSL connection                                                                                               |
| Contact items synchronization schedule    | The schedule for syncing contact items                                                                                                               |
| Calendar items synchronization schedule   | The schedule for syncing calendar items                                                                                                              |
| Alternative SMTP email account            | The display name associated with a user’s alternative Simple Mail Transfer Protocol (SMTP) email account                                             |
| Alternate SMTP domain name                | The domain name for the user’s alternative SMTP email account                                                                                        |
| Alternate SMTP account enabled            | Whether the user’s alternative SMTP account is enabled                                                                                               |
| Alternate SMTP password                   | The password for the user’s alternative SMTP account                                                                                                 |
| Incoming and outgoing servers require SSL | A group of properties that specify whether the incoming and outgoing email servers use SSL                                                           |

 

### Account restrictions

On a corporate device registered with Azure AD and enrolled in the MDM system, you can control whether users can use a Microsoft account or add other consumer email accounts. Table 5 lists the settings that you can use to manage accounts on Windows 10 Mobile devices.

Table 5. Windows 10 Mobile account management settings

| Setting                             | Description                                                                                                                                                                                                                                                                                                                                                                                        |
|-------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Allow Microsoft Account             | Specifies whether users are allowed to add a Microsoft account to the device after MDM enrollment and use this account for connection authentication and services, such as purchasing apps in Windows Store, or cloud-based consumer services, such as Xbox or Groove. If a device was activated with a Microsoft account, the MDM system would not be able to block that account from being used. |
| Allow Adding Non Microsoft Accounts | Specifies whether users are allowed to add email accounts other than Microsoft accounts after MDM enrollment. If **Allow Microsoft Account** is applied, user can also not use a Microsoft account.                                                                                                                                                                                                |
| Allow “Your Account”                | Specifies whether users are able to change account configuration in the **Your Email and Accounts** panel in Settings.                                                                                                                                                                                                                                                                             |

 

### Device lock restrictions

It’s common sense to lock a device when it is not in use. Microsoft recommends that you secure Windows 10 Mobile devices and implement a device lock policy. A device password or PIN lock is a best practice for securing apps and data on devices. [Windows Hello](http://go.microsoft.com/fwlink/p/?LinkId=723994) is the name given to the new biometric sign-in option that allows users to use their face, iris, or fingerprints to unlock their compatible device, all of which Windows 10 supports.

**Note**  
In addition to the device lock restrictions discussed in this section, Windows 10 supports Microsoft Passport for Work, which lets you access apps and services without a password. Microsoft Passport for Work is supported only in Windows 10 for desktop and requires Configuration Manager. In addition, the device must be joined to a domain. For more information, see [Enable Microsoft Passport for work in the organization](http://go.microsoft.com/fwlink/p/?LinkId=723995).

 

Table 6 lists the MDM settings in Windows 10 Mobile that you can use to configure device lock restrictions.

Table 6. Windows 10 Mobile device lock restrictions

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Device Password Enabled</td>
<td align="left"><p>Specifies whether users are required to use a device lock password</p>
<div class="alert">
<strong>Note</strong>  
<p></p>
<ul>
<li><p>When a device is registered with Azure AD and automatic MDM enrollment is not configured, the user will automatically be prompted to set a password PIN of at least six digits (simple PINs are not allowed).</p></li>
<li><p>If the device is capable of using biometric authentication, the user will be able to enroll an iris or other biometric gesture (depending on hardware) for device lock purposes. When a user uses a biometric gesture, he or she can still use the PIN as a fallback mechanism (for example, if the iris-recognition camera fails).</p></li>
</ul>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">Allow Simple Device Password</td>
<td align="left">Whether users can use a simple password (for example, 1111 or 1234)</td>
</tr>
<tr class="odd">
<td align="left">Alphanumeric Device Password Required</td>
<td align="left">Whether users need to use an alphanumeric password When configured, Windows prompts the user with a full device keyboard to enter a complex password. When not configured, the user will be able to enter a numeric PIN on the keyboard.</td>
</tr>
<tr class="even">
<td align="left">Min Device Password Complex Characters</td>
<td align="left">The number of password element types (in other words, uppercase letters, lowercase letters, numbers, or punctuation) required to create strong passwords</td>
</tr>
<tr class="odd">
<td align="left">Device Password Expiration</td>
<td align="left">The number of days before a password expires (Biometric data does not expire.)</td>
</tr>
<tr class="even">
<td align="left">Device Password History</td>
<td align="left">The number of passwords Windows 10 Mobile remembers in the password history (Users cannot reuse passwords in the history to create new passwords.)</td>
</tr>
<tr class="odd">
<td align="left">Min Device Password Length</td>
<td align="left">The minimum number of characters required to create new passwords</td>
</tr>
<tr class="even">
<td align="left">Max Inactivity Time Device Lock</td>
<td align="left">The number of minutes of inactivity before devices are locked and require a password to unlock</td>
</tr>
<tr class="odd">
<td align="left">Allow Idle Return Without Password</td>
<td align="left">Whether users are required to re-authenticate when their devices return from a sleep state, before the inactivity time was reached</td>
</tr>
<tr class="even">
<td align="left">Max Device Password Failed Attempts</td>
<td align="left">The number of authentication failures allowed before a device is wiped (A value of zero disables device wipe functionality.)</td>
</tr>
<tr class="odd">
<td align="left">Screen Timeout While Locked</td>
<td align="left">The number of minutes before the lock screen times out (This policy influences the device’s power management.)</td>
</tr>
<tr class="even">
<td align="left">Allow Screen Timeout While Locked User Configuration</td>
<td align="left">Whether users can manually configure screen timeout while the device is on the lock screen (Windows 10 Mobile ignores the <strong>Screen Timeout While Locked</strong> setting if you disable this setting.)</td>
</tr>
</tbody>
</table>

 

### Hardware restrictions

Windows 10 Mobile devices use state-of-the-art technology that includes popular hardware features such as cameras, global positioning system (GPS) sensors, microphones, speakers, near-field communication (NFC) radios, storage card slots, USB interfaces, Bluetooth interfaces, cellular radios, and Wi-Fi. You can also use hardware restrictions to control the availability of these features. Table 7 lists the MDM settings that Windows 10 Mobile supports to configure hardware restrictions.

**Note**  
Some of these hardware restrictions provide connectivity and assist in data protection. Enterprise data protection is currently being tested in select customer evaluation programs.

 

Table 7. Windows 10 Mobile hardware restrictions

| Setting                                    | Description                                                                                                                   |
|--------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| Allow NFC                                  | Whether the NFC radio is enabled                                                                                              |
| Allow USB Connection                       | Whether the USB connection is enabled (this setting doesn’t affect USB charging)                                              |
| Allow Bluetooth                            | Whether users can enable and use the Bluetooth radio on their devices                                                         |
| Allow Bluetooth Advertising                | Whether the device can act as a source for Bluetooth advertisements and be discoverable to other devices                      |
| Allow Bluetooth Discoverable Mode          | Whether the device can discover other devices (for example, headsets)                                                         |
| Bluetooth Services Allowed List            | The list of Bluetooth services and profiles to which the device can connect                                                   |
| Set Bluetooth Local Device Name            | The local Bluetooth device name                                                                                               |
| Allow Wi-Fi                                | Whether the Wi-Fi radio is enabled                                                                                            |
| Allow Auto Connect to Wi-Fi Sense Hotspots | Whether the device can automatically connect to Wi-Fi hotspots and friends’ home networks that are shared through Wi-Fi Sense |
| Allow Manual Wi-Fi Configuration           | Whether users can manually connect to Wi-Fi networks not specified in the MDM system’s list of configured Wi-Fi networks      |
| WLAN Scan Mode                             | How actively the device scans for Wi-Fi networks (This setting is hardware dependent.)                                        |
| Allow Camera                               | Whether the camera is enabled                                                                                                 |
| Allow Storage Card                         | Whether the storage card slot is enabled                                                                                      |
| Allow Voice Recording                      | Whether the user can use the microphone to create voice recordings                                                            |
| Allow Location                             | Whether the device can use the GPS sensor or other methods to determine location so applications can use location information |

 

### Certificate management

Managing certificates can be difficult for users, but certificates are pervasive for a variety of uses, including, account authentication, Wi-Fi authentication, VPN encryption, and SSL encryption of web content. Although users could manage certificates on devices manually, it’s a best practice to use your MDM system to manage those certificates for their entire life cycle, from enrollment through renewal to revocation. You can use the Simple Certificate Enrollment Protocol (SCEP) and Personal Information Exchange (PFX) certificates files to install certificates on Windows 10 Mobile. Certificate management through SCEP and MDM systems is fully transparent to users and requires no user intervention, so it helps improve user productivity and reduce support calls. Your MDM system can automatically deploy these certificates to the devices’ certificate stores after you enroll the device. Table 8 lists the SCEP settings that the MDM client in Windows 10 Mobile provides.

Table 8. Windows 10 Mobile SCEP certificate enrollment settings

| Setting                                              | Description                                                                                                                                                                                                                               |
|------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Certificate enrollment server URLs                   | The certificate enrollment servers (to specify multiple server URLs, separate the URLs with semicolons \[;\])                                                                                                                             |
| SCEP enrollment challenge                            | The Base64-encoded SCEP enrollment challenge                                                                                                                                                                                              |
| Extended key use object identifiers                  | The object identifiers (OIDs) for extended key use                                                                                                                                                                                        |
| Key usage                                            | The key usage bits for the certificate in decimal format                                                                                                                                                                                  |
| Subject name                                         | The certificate subject name                                                                                                                                                                                                              |
| Private key storage                                  | Where to store the private key (in other words, the Trusted Platform Module \[TPM\], a software key storage provider \[KSP\], or the Microsoft Passport KSP)                                                                              |
| Pending retry delay                                  | How long the device will wait to retry when the SCEP server sends a pending status                                                                                                                                                        |
| Pending retry count                                  | The number of times a device will retry when the SCEP server sends a pending status                                                                                                                                                       |
| Template name                                        | The OID of the certificate template name                                                                                                                                                                                                  |
| Private key length                                   | The private key length (in other words, 1024, 2048, or 4096 bits; Microsoft Passport supports only the 2048 key length)                                                                                                                   |
| Certificate hash algorithm                           | The hash algorithm family (in other words, SHA-1, SHA-2, SHA-3; multiple hash algorithm families are separated by plus signs \[+\])                                                                                                       |
| Root CA thumbprint                                   | The root CA thumbprint                                                                                                                                                                                                                    |
| Subject alternative names                            | Subject alternative names for the certificate (Use semicolons to separate multiple subject alternative names.)                                                                                                                            |
| Valid period                                         | The unit of measure for the period of time the certificate is considered valid (in other words, days, months, or years)                                                                                                                   |
| Valid period units                                   | The number of units of time that the certificate is considered valid (Use this setting with the **Valid Period** setting. For example, if this setting is **3** and **Valid Period** is **Years**, the certificate is valid for 3 years.) |
| Custom text to show in Microsoft Passport PIN prompt | The custom text to show on the Microsoft Passport PIN prompt during certificate enrollment                                                                                                                                                |
| Thumbprint                                           | The current certificate thumbprint, if certificate enrollment succeeds                                                                                                                                                                    |

 

In addition to SCEP certificate management, Windows 10 Mobile supports deployment of PFX certificates. Table 9 lists the Windows 10 Mobile PFX certificate deployment settings.

Table 9. Windows 10 Mobile PFX certificate deployment settings

| Setting                           | Description                                                                                                                                                                  |
|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Private key storage               | Where to store the private key (in other words, the TPM, a software KSP, or the Microsoft Passport KSP)                                                                      |
| Microsoft Passport container name | The tenant identifier of the Azure AD tenant from which the Microsoft Passport is derived, required only if you select **Microsoft Passport KSP** in **Private key storage** |
| PFX packet                        | The PFX packet with the exported and encrypted certificates and keys in Binary64 format                                                                                      |
| PFX packet password               | The password that protects the PFX blob specified in **PFX packet**                                                                                                          |
| PFX packet password encryption    | Whether the MDM system encrypts the PFX certificate password with the MDM certificate                                                                                        |
| PFX private key export            | Whether the PFX private key can be exported                                                                                                                                  |
| Thumbprint                        | The thumbprint of the installed PFX certificate                                                                                                                              |

 

Use the **Allow Manual Root Certificate Installation** setting to prevent users from manually installing root and intermediate CA certificates intentionally or accidently.

**Note**  
To diagnose certificate-related issues on Windows 10 Mobile devices, use the free [Certificates app](http://go.microsoft.com/fwlink/p/?LinkId=723996) in Windows Store. This Windows 10 Mobile app can help you:

-   View a summary of all personal certificates.

-   View the details of individual certificates.

-   View the certificates used for VPN, Wi-Fi, and email authentication.

-   Identify which certificates may have expired.

-   Verify the certificate path and confirm that you have the correct intermediate and root CA certificates.

-   View the certificate keys stored in the device TPM.

 

### Wi-Fi

People use Wi-Fi on their mobile devices as much as or more than cellular data. Most corporate Wi-Fi networks require certificates and other complex information to restrict and secure user access. This advanced Wi-Fi information is difficult for typical users to configure, but you can use your MDM system to fully configure Wi-Fi settings without user intervention.

Table 10 lists the Windows 10 Mobile Wi-Fi connection profile settings. Use the information in this table to help you create Wi-Fi connection profiles in your MDM system.

Table 10. Windows 10 Mobile Wi-Fi connection profile settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">SSID</td>
<td align="left">The case-sensitive name of the Wi-Fi network (service set identifier [SSID])</td>
</tr>
<tr class="even">
<td align="left">Security type</td>
<td align="left">The type of security the Wi-Fi network uses; can be one of the following authentication types:
<ul>
<li><p>Open 802.11</p></li>
<li><p>Shared 802.11</p></li>
<li><p>WPA-Enterprise 802.11</p></li>
<li><p>WPA-Personal 802.11</p></li>
<li><p>WPA2-Enterprise 802.11</p></li>
<li><p>WPA2-Personal 802.11</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Authentication encryption</td>
<td align="left">The type of encryption the authentication uses; can be one of the following encryption methods:
<ul>
<li><p>None (no encryption)</p></li>
<li><p>Wired Equivalent Privacy</p></li>
<li><p>Temporal Key Integrity Protocol</p></li>
<li><p>Advanced Encryption Standard (AES)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Extensible Authentication Protocol Transport Layer Security (EAP-TLS)</td>
<td align="left">WPA-Enterprise 802.11 and WPA2-Enterprise 802.11 security types can use EAP-TLS with certificates for authentication</td>
</tr>
<tr class="odd">
<td align="left">Protected Extensible Authentication Protocol with Microsoft Challenge Handshake Authentication Protocol version 2 (PEAP-MSCHAPv2)</td>
<td align="left">WPA-Enterprise 802.11 and WPA2-Enterprise 802.11 security types can use PEAP-MSCHAPv2 with a user name and password for authentication</td>
</tr>
<tr class="even">
<td align="left">Shared key</td>
<td align="left">WPA-Personal 802.11 and WPA2-Personal 802.11 security types can use a shared key for authentication.</td>
</tr>
<tr class="odd">
<td align="left">Proxy</td>
<td align="left">The configuration of any network proxy that the Wi-Fi connection requires (To specify the proxy server, use its fully qualified domain name [FQDN], Internet Protocol version 4 [IPv4] address, IP version 6 [IPv6] address, or IPvFuture address.)</td>
</tr>
<tr class="even">
<td align="left">Disable Internet connectivity checks</td>
<td align="left">Whether the Wi-Fi connection should check for Internet connectivity</td>
</tr>
<tr class="odd">
<td align="left">Proxy auto-configuration URL</td>
<td align="left">A URL that specifies the proxy auto-configuration file</td>
</tr>
<tr class="even">
<td align="left">Enable Web Proxy Auto-Discovery Protocol (WPAD)</td>
<td align="left">Specifies whether WPAD is enabled</td>
</tr>
</tbody>
</table>

 

Table 11 lists the Windows 10 Mobile settings for managing Wi-Fi connectivity.

Table 11. Windows 10 Mobile Wi-Fi connectivity settings

| Setting                                    | Configuration                                                              |
|--------------------------------------------|----------------------------------------------------------------------------|
| Allow Auto Connect To Wi-Fi Sense Hotspots | Whether the device will automatically detect and connect to Wi-Fi networks |
| Allow Manual Wi-Fi Configuration           | Whether the user can manually configure Wi-Fi settings                     |
| Allow Wi-Fi                                | Whether the Wi-Fi hardware is enabled                                      |
| WLAN Scan Mode                             | How actively the device scans for Wi-Fi networks                           |

 

### Proxy

Apps running on Windows 10 Mobile (for example, Microsoft Edge) can use proxy connections to access Internet content, but Wi-Fi connections on the corporate intranet most typically use proxy connections, instead. You can define multiple proxies in Windows 10 Mobile.

**Note**  
Windows 10 Mobile also supports proxy auto-configuration (PAC) files, which can automatically configure proxy settings. The Web Proxy Auto-Discovery Protocol (WPAD) lets apps use Dynamic Host Configuration Protocol and Domain Name System (DNS) lookups to locate the PAC file.

 

Table 12 lists the Windows 10 Mobile settings for proxy connections.

Table 12. Windows 10 Mobile proxy connection settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Settings</th>
<th align="left">Configuration</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Proxy name</td>
<td align="left">The unique name of the proxy connection</td>
</tr>
<tr class="even">
<td align="left">Proxy ID</td>
<td align="left">The unique identifier for the proxy connection</td>
</tr>
<tr class="odd">
<td align="left">Name</td>
<td align="left">The user-friendly name of the proxy connection</td>
</tr>
<tr class="even">
<td align="left">Server address</td>
<td align="left">The address of the proxy server, which can be the server FQDN or IP address</td>
</tr>
<tr class="odd">
<td align="left">IP address type</td>
<td align="left">The IP address type that identifies the proxy server, which can be one of the following values:
<ul>
<li><p><strong>IPV4</strong></p></li>
<li><p><strong>IPV6</strong></p></li>
<li><p><strong>E164</strong></p></li>
<li><p><strong>ALPHA</strong></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Proxy connection type</td>
<td align="left">The proxy connection type, which can be one of the following values:
<ul>
<li><p><strong>ISA</strong></p></li>
<li><p><strong>WAP</strong></p></li>
<li><p><strong>SOCKS</strong></p></li>
<li><p><strong>NULL</strong></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Ports</td>
<td align="left">The port information for the proxy connection; includes the following settings:
<ul>
<li><p><strong>Port Name.</strong> The unique name of a port that the proxy connection uses, such as <strong>PORT0</strong> or <strong>PORT1</strong></p></li>
<li><p><strong>Port Name/Port Nbr.</strong> The proxy connection port number for this port</p></li>
<li><p><strong>Port Name/Services.</strong> The services that use this proxy connection port</p></li>
<li><p><strong>Services/Service Name.</strong> The name of a service that uses the proxy connection</p></li>
<li><p><strong>Services/<em>Service Name</em>/Service Name.</strong> The protocol associated with the parent port connection</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Configuration reference</td>
<td align="left">The connection reference information for the proxy connection. The corporation determines the information in this optional setting.</td>
</tr>
</tbody>
</table>

 

### VPN

In addition to Wi-Fi, users often use a VPN to securely access apps and resources on their company’s intranet behind a firewall. Windows 10 Mobile supports several VPN vendors in addition to native Microsoft VPNs (such as Point to Point Tunneling Protocol \[PPTP\], Layer 2 Tunneling Protocol \[L2TP\], and Internet Key Exchange Protocol version 2 \[IKEv2\]), including:

-   IKEv2

-   IP security

-   SSL VPN connections (which require a downloadable plug-in from the VPN server vendor)

You can configure Windows 10 Mobile to use auto-triggered VPN connections, as well. You define a VPN connection for each app that requires intranet connectivity. When users switch between apps, the operating system automatically establishes the VPN connection for that app. In the event the device drops the VPN connection, Windows 10 Mobile automatically reconnects to the VPN without user intervention.

With always-on VPN, Windows 10 Mobile can automatically start a VPN connection when a user signs-in, as well. The VPN stays connected until the user manually disconnects it.

MDM support for VPN connections in Windows 10 Mobile includes provisioning and updating VPN connection profiles and associating VPN connections with apps. You can create and provision VPN connection profiles, and then deploy them to managed devices that run Windows 10 Mobile. Table 13 lists the Windows 10 Mobile fields for VPN connection profiles.

Table 13. Windows 10 Mobile VPN connection profile settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Native VPN protocol profile</td>
<td align="left"><p>The configuration information when the VPN uses native Windows 10 Mobile VPN protocols (such as IKEv2, PPTP, or L2TP); includes the following settings:</p>
<ul>
<li><p><strong>Servers.</strong> The VPN server for the VPN profile</p></li>
<li><p><strong>Routing policy type.</strong> The type of routing policy the VPN profile uses; can be set to one of the following values:</p>
<ul>
<li><p><strong>Split tunnel.</strong> Only network traffic destined to the intranet goes through the VPN connection.</p></li>
<li><p><strong>Force tunnel.</strong> All traffic goes through the VPN connection.</p></li>
</ul></li>
<li><p><strong>Tunneling protocol type.</strong> The tunneling protocol used for VPN profiles that use native Windows 10 Mobile VPN protocols; can be one the following values:</p>
<ul>
<li><p><strong>PPTP</strong></p></li>
<li><p><strong>L2TP</strong></p></li>
<li><p><strong>IKEv2</strong></p></li>
<li><p><strong>Automatic</strong></p></li>
</ul></li>
<li><p><strong>User authentication method.</strong> The user authentication method for the VPN connection; can have a value of <strong>EAP</strong> or <strong>MSChapv2</strong>. Windows 10 Mobile does not support the value <strong>MSChapv2</strong> for IKEv2-based VPN connections.</p></li>
<li><p><strong>Machine certificate.</strong> The machine certificate used for IKEv2-based VPN connections.</p></li>
<li><p><strong>EAP configuration.</strong> An HTML-encoded XML blob of the EAP configuration. For more information about creating the EAP configuration XML blob, see [EAP configuration](http://go.microsoft.com/fwlink/p/?LinkId=734055). You can use the XML blob these steps create in the MDM system to create the VPN profile.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">VPN plugin profile</td>
<td align="left">Windows Store–based VPN plug-ins for the VPN connection; includes the following settings:
<ul>
<li><p><strong>VPN servers.</strong> A comma-separated list of VPN servers; you can specify the servers with a URL, fully qualified host name, or IP address.</p></li>
<li><p><strong>Custom configuration.</strong> An HTML-encoded XML blob for SSL–VPN plug-in–specific configuration information (e.g., authentication information) that the plug-in provider requires.</p></li>
<li><p><strong>Windows Store VPN plugin family name.</strong> Specifies the Windows Store package family name for the Windows Store–based VPN plug-in.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Always on connection</td>
<td align="left">Whether the VPN connects at user sign-in and stays connected until the user manually disconnects the VPN connection.</td>
</tr>
<tr class="even">
<td align="left">App trigger list</td>
<td align="left">A list of apps that automatically initiate the VPN connection. Each app trigger in the list includes the following settings:
<ul>
<li><p><strong>App ID.</strong> The app identity for the app that automatically initiates the VPN connection Any apps in this list can send data through the VPN connection; set it to one of the following values:</p>
<ul>
<li><p>Unique name of the Windows Store app (<strong>Package Family Name</strong>). The package family name is a unique name for each app. For example, the package family name for the Skype app is <em>Microsoft.SkypeApp_kzf8qxf38zg5c</em>.</p></li>
<li><p>Fully qualified path to the app (such as C:\Windows\System\Notepad.exe).</p></li>
<li><p>Kernel driver name.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">DNS suffixes</td>
<td align="left">A comma-separated list of DNS suffixes for the VPN connection. Any DNS suffixes in this list are automatically added to <strong>Suffix Search List</strong>.</td>
</tr>
<tr class="even">
<td align="left">LockDown VPN profile</td>
<td align="left">Whether this VPN connection is a LockDown profile. A LockDown VPN profile has the following characteristics:
<ul>
<li><p>It is an always-on VPN profile.</p></li>
<li><p>It can never be disconnected.</p></li>
<li><p>If the VPN profile is not connected, the user has no network connectivity.</p></li>
<li><p>No other VPN profiles can be connected or modified.</p></li>
</ul>
<p>You must delete a LockDown VPN profile before you can add, remove, or connect other VPN profiles.</p></td>
</tr>
<tr class="odd">
<td align="left">Name Resolution Policy Table rules</td>
<td align="left">A list of Name Resolution Policy Table rules for the VPN connection. Each rule in the list includes the following settings:
<ul>
<li><p><strong>Domain name.</strong> The namespace for the policy; can be an FQDN or a domain suffix.</p></li>
<li><p><strong>Domain name type.</strong> The type of namespace in <strong>Domain name</strong>; has a value of either <strong>FQDN</strong> or <strong>Suffix</strong>.</p></li>
<li><p>DNS servers. A comma-separated list of DNS server IP addresses to use for the namespace specified in <strong>Domain name</strong>.</p></li>
<li><p><strong>Web proxy servers</strong>. The IP address for the web proxy server (if the intranet redirects traffic through a web proxy server).</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Proxy</td>
<td align="left">Any post connection proxy support required for the VPN connection; includes the following settings:
<ul>
<li><p><strong>Proxy server.</strong> Specifies the fully qualified host name or IP address of the proxy server when a specific proxy server is required.</p></li>
<li><p><strong>Automatic proxy configuration URL.</strong> Specifies the URL for automatically retrieving proxy server settings.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Remember credentials</td>
<td align="left">Whether the VPN connection caches credentials.</td>
</tr>
<tr class="even">
<td align="left">Route list</td>
<td align="left">A list of routes to add to the routing table for the VPN connection. Each route in the list includes the following settings:
<ul>
<li><p><strong>Address.</strong> The destination subnet address in IPv4 or IPv6 format (such as <em>192.168.0.0</em>).</p></li>
<li><p><strong>Prefix size.</strong> The portion of the address used to identify the destination subnet address (such as <em>16</em> to produce the subnet <em>192.168.0.0/16</em>).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Traffic filter list</td>
<td align="left">A list of traffic rules that define the traffic that can be sent through the VPN connection. Each rule in the list includes the following settings:
<ul>
<li><p><strong>App ID.</strong> The app identity for the traffic filter based on a specific app (app-based traffic filter). Any apps in this list can send data through the VPN connection; set to one of the following values:</p>
<ul>
<li><p>Unique name of the Windows Store app (<strong>Package Family Name</strong>). The package family name is a unique name for each app. For example, the package family name for the Skype app is Microsoft.<em>SkypeApp_kzf8qxf38zg5c</em>.</p></li>
<li><p>Fully qualified path to the app (such as C:\Windows\System\Notepad.exe).</p></li>
<li><p>Kernel driver name.</p></li>
</ul></li>
<li><p><strong>Protocol.</strong> The IP protocol to use for the traffic filter rule (for example, TCP = 6, UDP = 17).</p></li>
<li><p><strong>Local port ranges.</strong> Specifies a comma-separated list of local IP port ranges (for example, 100–180, 200, 300–350).</p></li>
<li><p><strong>Remote port ranges.</strong> A comma-separated list of remote IP port ranges (for example, 100–180, 200, 300–350).</p></li>
<li><p><strong>Local address ranges.</strong> A comma-separated list of local IP address ranges that are allowed to use the VPN connection (for example, 192.168.0.1–192.168.0.255, 172.16.10.0–172.16.10.255).</p></li>
<li><p><strong>Remote address ranges.</strong> A comma-separated list of remote IP address ranges that are allowed to use the VPN connection (for example, 192.168.0.1–192.168.0.255, 172.16.10.0–172.16.10.255).</p></li>
<li><p><strong>Routing policy type.</strong> The type of IP tunnel for the VPN connection; set to one of the following:</p>
<ul>
<li><p><strong>Split tunnel.</strong> Only traffic destined for the intranet is sent through the VPN connection.</p></li>
<li><p><strong>Force tunnel.</strong> All traffic is sent through the VPN connection.</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Trusted network detection</td>
<td align="left">A comma-separated list of trusted networks that causes the VPN not to connect when the intranet is directly accessible.</td>
</tr>
</tbody>
</table>

 

Table 14 lists the Windows 10 Mobile settings for managing VPN connections. These settings help you manage VPNs over cellular data connections, which in turn help reduce costs associated with roaming or data plan charges.

Table 14. Windows 10 Mobile VPN management settings

| Setting                              | Description                                                                     |
|--------------------------------------|---------------------------------------------------------------------------------|
| Allow VPN                            | Whether users can change VPN settings                                           |
| Allow VPN Over Cellular              | Whether users can establish VPN connections over cellular networks              |
| Allow VPN Over Cellular when Roaming | Whether users can establish VPN connections over cellular networks when roaming |

 

### APN profiles

An APN defines network paths for cellular data connectivity. Typically, you define just one APN for a device in collaboration with a mobile operator, but you can define multiple APNs if your company uses multiple mobile operators.

An APN provides a private connection to the corporate network that is unavailable to other companies on the mobile operator network. Corporations in Europe and the Asia-Pacific use APNs, but they are not common in the United States.

You can define and deploy APN profiles in MDM systems that configure cellular data connectivity for Windows 10 Mobile. Devices running Windows 10 Mobile can have only one APN profile. Table 15 lists the MDM settings that Windows 10 Mobile supports for APN profiles.

Table 15. Windows 10 Mobile APN profile settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">APN name</td>
<td align="left">The APN name</td>
</tr>
<tr class="even">
<td align="left">IP connection type</td>
<td align="left">The IP connection type; set to one of the following values:
<ul>
<li><p><strong>IPv4 only</strong></p></li>
<li><p><strong>IPv6 only</strong></p></li>
<li><p><strong>IPv4 and IPv6 concurrently</strong></p></li>
<li><p><strong>IPv6 with IPv4 provided by 46xlat</strong></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">LTE attached</td>
<td align="left">Whether the APN should be attached as part of an LTE Attach</td>
</tr>
<tr class="even">
<td align="left">APN class ID</td>
<td align="left">The globally unique identifier that defines the APN class to the modem</td>
</tr>
<tr class="odd">
<td align="left">APN authentication type</td>
<td align="left">The APN authentication type; set to one of the following values:
<ul>
<li><p><strong>None</strong></p></li>
<li><p><strong>Auto</strong></p></li>
<li><p><strong>PAP</strong></p></li>
<li><p><strong>CHAP</strong></p></li>
<li><p><strong>MSCHAPv2</strong></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">User name</td>
<td align="left">The user account when users select Password Authentication Protocol (PAP), CHAP, or MSCHAPv2 authentication in <strong>APN authentication type</strong></td>
</tr>
<tr class="odd">
<td align="left">Password</td>
<td align="left">The password for the user account specified in <strong>User name</strong></td>
</tr>
<tr class="even">
<td align="left">Integrated circuit card ID</td>
<td align="left">The integrated circuit card ID associated with the cellular connection profile</td>
</tr>
</tbody>
</table>

 

### Data leak protection

Some user experiences can risk corporate data stored on corporate devices. For example, allowing users to copy and paste information out of the organization’s LOB app can put data at risk. To mitigate the risk, you can restrict the Windows 10 Mobile user experience to help protect corporate data and prevent data leaks. For example, you can prevent settings synchronization, copy-and-paste operations, and screen captures. Table 16 lists the MDM settings in Windows 10 Mobile that you can use to help prevent data leaks.

Table 16. Windows 10 Mobile data leak protection settings

| Setting                                      | Description                                                                                                                                                                                                              |
|----------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Allow copy and paste                         | Whether users can copy and paste content                                                                                                                                                                                 |
| Allow Cortana                                | Whether users can use Cortana on the device, where available                                                                                                                                                             |
| Allow device discovery                       | Whether the device discovery user experience is available on the lock screen (For example, this setting can control whether a device could discover a projector \[or other devices\] when the lock screen is displayed.) |
| Allow input personalization                  | Whether personally identifiable information can leave the device or be saved locally (for example, Cortana learning, inking, dictation)                                                                                  |
| Allow manual MDM unenrollment                | Whether users are allowed to delete the workplace account (in other words, unenroll the device from the MDM system)                                                                                                      |
| Allow screen capture                         | Whether users are allowed to capture screenshots on the device                                                                                                                                                           |
| Allow SIM error dialog prompt                | Specifies whether to display a dialog prompt when no SIM card is installed                                                                                                                                               |
| Allow sync my settings                       | Whether the user experience settings are synchronized between devices (works with Microsoft accounts only)                                                                                                               |
| Allow toasts notifications above lock screen | Whether users are able to view toast notification on the device lock screen                                                                                                                                              |
| Allow voice recording                        | Whether users are allowed to perform voice recordings.                                                                                                                                                                   |

 

### Storage management

Protecting the apps and data stored on a device is critical to device security. One method for helping protect your apps and data is to encrypt internal device storage by using the device encryption in Windows 10 Mobile. This encryption helps protect corporate data against unauthorized access, even when an unauthorized user has physical possession of the device.

A feature in Windows 10 Mobile is the ability to install apps on a secure digital (SD) card. The operating system stores apps on a partition specifically designated for that purpose. This feature is always on, so you don’t need to set a policy explicitly to enable it.

The SD card is uniquely paired with a device. No other devices can see the apps or data on the encrypted partition, but they can access the data stored on the unencrypted partition of the SD card, such as music or photos.

You can disable the **Allow Storage Card** setting to prevent users from using SD cards altogether, but the primary advantage of the SD card app partition–encryption feature is that organizations can give users the flexibility to use an SD card while still protecting the confidential apps and data on it.

If you don’t encrypt storage, you can help protect your corporate apps and data by using the **Restrict app data to the system volume** and **Restrict apps to the system volume** settings. They help ensure that users cannot copy your apps and data to SD cards.

Table 17 lists the MDM storage-management settings that Windows 10 Mobile provides.

Table 17. Windows 10 Mobile storage management settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Allow Storage Card</td>
<td align="left">Whether users can use storage cards for device storage (This setting does not prevent programmatic access to the storage cards.)</td>
</tr>
<tr class="even">
<td align="left">Require Device Encryption</td>
<td align="left">Whether internal storage is encrypted (When a device is encrypted, you cannot use a policy to turn encryption off.)</td>
</tr>
<tr class="odd">
<td align="left">Encryption method</td>
<td align="left">Specifies the BitLocker drive encryption method and cipher strength; can be one of the following values:
<ul>
<li><p>AES-Cipher Block Chaining (CBC) 128-bit</p></li>
<li><p>AES-CBC 256-bit</p></li>
<li><p>XEX-based tweaked-codebook mode with cipher text stealing (XTS)–AES (XTS-AES) 128-bit (this is the default)</p></li>
<li><p>XTS-AES-256-bit</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Allow Federal Information Processing Standard (FIPS) algorithm policy</td>
<td align="left">Whether the device allows or disallows the FIPS algorithm policy</td>
</tr>
<tr class="odd">
<td align="left">SSL cipher suites</td>
<td align="left">Specifies a list of the allowed cryptographic cipher algorithms for SSL connections</td>
</tr>
<tr class="even">
<td align="left">Restrict app data to the system volume</td>
<td align="left">Specifies whether app data is restricted to the system drive</td>
</tr>
<tr class="odd">
<td align="left">Restrict apps to the system volume</td>
<td align="left">Specifies whether apps are restricted to the system drive</td>
</tr>
</tbody>
</table>

 

##  App management


Apps help improve user productivity on mobile devices. New to Windows 10 is the ability for organizations purchase apps from Windows Store for their employees and deploy those apps from Windows Store or an MDM system. App management is becoming a key capability of MDM systems, helping reduce the effort required to perform common app-related tasks, such as distributing apps, and protecting data through app policies. This section describes the app management features in Windows 10 Mobile and includes the following topics:

-   [Universal Windows Platform (UWP)](#UWP)

-   [Sourcing the right app](#sourcing)

-   [Windows Store for Business](#store)

-   [Mobile application management (MAM) policies](#MAM)

-   [Microsoft Edge](#edge)

### Universal Windows Platform

Windows 10 introduces UWP, converging the application platform for all devices running some edition of Windows 10. UWP apps run without modification on all editions of Windows 10, and Windows Store now has apps that you can license and purchased for all your Windows 10 devices. Windows Phone 8.1 and Windows 8.1 apps still run on Windows 10 devices, but the MAM improvements in Windows 10 work only with UWP apps. See the [Guide to Universal Windows Platform (UWP) apps](http://go.microsoft.com/fwlink/p/?LinkId=734056) for additional information.

### Sourcing the right app

The first step in app management is to obtain the apps your users need, and you can now acquire apps from Windows Store. Developers can also create apps specific to an organization, known as *line-of-business (LOB) apps* (the developers of these apps are *LOB publishers*). An LOB developer (internal or external) can now publish these apps to Windows Store at your request, or you can obtain the app packages offline and distribute them through your MDM system.

To install Windows Store or LOB apps, use the Windows Store cloud service or your MDM system to distribute the app packages. Your MDM system can deploy apps online by redirecting the user to a licensed app in Windows Store or offline by distributing a package that you downloaded from Windows Store (also called *sideloading*) on Windows 10 Mobile devices. You can fully automate the app deployment process so that no user intervention is required.

IT administrators can obtain apps through Store for Business. Most apps can be distributed online, meaning that the user must be logged in to the device with an Azure AD account and have Internet access at the time of installation. To distribute an app offline, the developer must opt in. If the app developer doesn’t allow download of the app from Windows Store, then you must obtain the files directly from the developer or use the online method. See [Windows Store for Business](windows-store-for-business.md) for additional information about apps obtained through Store for Business.

Windows Store apps are automatically trusted. For custom LOB apps developed internally or by a trusted software vendor, ensure that the device trusts the app signing certificate. There are two ways to establish this trust: use a signing certificate from a trusted source, or generate your own signing certificate and add your chain of trust to the trusted certificates on the device. You can install up to 20 self-signed apps on a Windows 10 Mobile device. When you purchase a signing certificate from a public CA, you can install more than 20 apps on a device, although you can install more than 20 self-signed apps per device with [Windows 10 Mobile Enterprise](#mobile_edition).

Users can install apps from Windows Store that the organization purchases through the Store app on their device. If you allow your users to log in with a Microsoft account, the Store app on the device provides a unified method for installing personal and corporate apps.

### Store for Business

[Windows Store for Business](http://go.microsoft.com/fwlink/p/?LinkId=722910) is a web portal that IT pros and purchasers use to find, acquire, manage, and distribute apps to Windows 10 devices. This online portal gives Azure AD authenticated managers access to Store for Business functionality and settings. Store managers can create a private section of Windows Store in which organizations can manage apps specific and private to them. Store for Business allows organizations to make apps available to their users and purchase app licenses for them. They can also integrate their Store for Business subscriptions with their MDM systems, so the MDM system can deploy apps from their free Store for Business subscription.

The process for using Store for Business is as follows:

1.  Create a Store for Business subscription for your organization.

2.  In the Store for Business portal, acquire apps from Windows Store (only free apps are available at this time).

3.  In Store for Business, distribute apps to users, and manage the app licenses for the apps acquired in the previous step.

4.  Integrate your MDM system with your organization’s Store for Business subscription.

5.  Use your MDM system to deploy the apps.

For more information about Store for Business, see [Windows Store for Business](windows-store-for-business.md).

### Mobile application management (MAM) policies

With MDM, you can manage Device Guard on Windows 10 Mobile and create an allow (whitelist) or deny (blacklist) list of apps. This capability extends to built-in apps, as well, such as phone, text messaging, email, and calendar. The ability to allow or deny apps helps to ensure that people use their mobile devices for their intended purposes.

You can also control users’ access to Windows Store and whether the Store service updates apps automatically. You can manage all these capabilities through your MDM system. Table 18 lists the Windows 10 Mobile app management settings.

Table 18. Windows 10 Mobile app management settings

| Setting                                        | Description                                                                                                                                                                          |
|------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Allow All Trusted Apps                         | Whether users can sideload apps on the device                                                                                                                                        |
| Allow App Store Auto Update                    | Whether automatic updates of apps from Windows Store are allowed                                                                                                                     |
| Allow Developer Unlock                         | Whether developer unlock is allowed                                                                                                                                                  |
| Allow Shared User App Data                     | Whether multiple users of the same app can share data                                                                                                                                |
| Allow Store                                    | Whether Windows Store app is allowed to run                                                                                                                                          |
| Allow Windows Bridge For Android App Execution | Whether the Windows Bridge for Android app is allowed to run                                                                                                                         |
| Application Restrictions                       | An XML blob that defines the app restrictions for a device (The XML blob can contain an app allow or deny list. You can allow or deny apps based on their app ID or publisher.)      |
| Require Private Store Only                     | Whether the private store is exclusively available to users (If enabled, only the private store is available. If disabled, the retail catalog and private store are both available.) |
| Restrict App Data To System Volume             | Whether app data is allowed only on the system drive                                                                                                                                 |
| Restrict App To System Volume                  | Whether app installation is allowed only to the system drive                                                                                                                         |
| Start screen layout                            | An XML blob used to configure the Start screen (See [Start layout for Windows 10 Mobile editions](http://go.microsoft.com/fwlink/p/?LinkId=734057) for more information.)            |

 

One potential security issue is that users can register as Windows 10 Mobile app developers and turn on developer features on their device, potentially installing apps from unknown sources and opening the device to malware threats. To prevent users from turning on developer features on their devices, set the **Disable development unlock (side loading)** policy, which you can configure through your MDM system.

### Microsoft Edge

MDM systems give you the ability to manage Microsoft Edge on mobile devices. Table 19 lists the Microsoft Edge settings for Windows 10 Mobile.

Table 19. Microsoft Edge settings for Windows 10 Mobile

| Setting                                         | Description                                                                                           |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| Allow Active Scripting                          | Whether active scripting is allowed                                                                   |
| Allow Autofill                                  | Whether values are automatically filled on websites                                                   |
| Allow Browser                                   | Whether Internet Explorer is allowed on the device                                                    |
| Allow Cookies                                   | Whether cookies are allowed                                                                           |
| Allow Do Not Track headers                      | Whether Do Not Track headers are allowed                                                              |
| Allow InPrivate                                 | Whether users can use InPrivate browsing                                                              |
| Allow Password Manager                          | Whether users can use Password Manager to save and manage passwords locally                           |
| Allow Search Suggestions in Address Bar         | Whether search suggestions are shown in the address bar                                               |
| Allow SmartScreen                               | Whether SmartScreen Filter is enabled                                                                 |
| First Run URL                                   | The URL to open when a user launches Microsoft Edge for the first time                                |
| Include Sites Bypassing Proxy In Intranet Sites | Whether websites that bypass the proxy server are able to use the Intranet security zone              |
| Include UNC Paths In Intranet Sites             | Whether URL paths can represent Universal Naming Convention (UNC) paths in the Intranet security zone |
| Intranet Sites                                  | A list of the websites that are in the Intranet security zone                                         |
| Prevent Smart Screen Prompt Override For Files  | Whether users can override the SmartScreen Filter warnings about downloading unverified files         |

 

## Device operations


In this section, you learn how MDM settings in Windows 10 Mobile enable the following scenarios:

-   [Device update](#device_update)

-   [Device compliance monitoring](#device_comp)

-   [Device inventory](#data_inv)

-   [Remote assistance](#remote_assist)

-   [Cloud services](#cloud_serv)

### Device update

To help protect mobile devices and their data, you must keep those devices updated. Windows Update automatically installs updates and upgrades when they become available.

The device update features described in this section are available only in [Windows 10 Mobile Enterprise](#mobile_edition). You can use your MDM system to postpone system upgrades when you activate an Enterprise license on managed Windows 10 Mobile devices and control how updates and upgrades are applied. For example, you can disable updates altogether, defer updates and upgrades, and schedule the day and time to install updates, as you would with Windows Server Update Services (WSUS) on Windows 10 desktops running the [Current Branch for Business](introduction-to-windows-10-servicing.md). Table 20 lists the Windows 10 Mobile Enterprise settings that you can use to configure updates and upgrades.

Table 20. Windows 10 Mobile Enterprise update management settings

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Allow automatic update</td>
<td align="left">The automatic update behavior for scanning, downloading, and installing updates; the behavior can be one of the following:
<ul>
<li><p>Notify users prior to downloading updates.</p></li>
<li><p>Automatically install updates, and then notify users to schedule a restart (this is the default behavior).</p></li>
<li><p>Automatically install and restart devices with user notification.</p></li>
<li><p>Automatically install and restart devices at a specified time.</p></li>
<li><p>Automatically install and restart devices without user interaction.</p></li>
<li><p>Turn off automatic updates.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Allow non Microsoft signed update</td>
<td align="left">Whether automatic updates will accept updates that entities other than Microsoft have signed</td>
</tr>
<tr class="odd">
<td align="left">Allow update service</td>
<td align="left">Whether devices can obtain updates from Windows Update, WSUS, or Windows Store</td>
</tr>
<tr class="even">
<td align="left">Monthly security updates deferred</td>
<td align="left">Whether monthly updates (for example, security patches) are deferred (You can defer updates up to 4 weeks.)</td>
</tr>
<tr class="odd">
<td align="left">Nonsecurity upgrades deferred</td>
<td align="left">Whether nonsecurity upgrades are deferred (You can defer upgrades up to 8 months.)</td>
</tr>
<tr class="even">
<td align="left">Pause update deferrals</td>
<td align="left">Whether the device should skip an update cycle (This setting is valid only when you configure devices to defer updates or upgrades.)</td>
</tr>
<tr class="odd">
<td align="left">Require update approval</td>
<td align="left">Whether approval is required before updates can be installed on devices (If approval is required, any updates that have an End User License Agreement [EULA] are automatically accepted on the user’s behalf.)</td>
</tr>
<tr class="even">
<td align="left">Schedule install time</td>
<td align="left">The scheduled time at which updates are installed</td>
</tr>
<tr class="odd">
<td align="left">Scheduled install day</td>
<td align="left">The schedule of days on which updates are installed</td>
</tr>
<tr class="even">
<td align="left">Update deferral period</td>
<td align="left">How long updates should be deferred</td>
</tr>
<tr class="odd">
<td align="left">Update service URL</td>
<td align="left">The name of a WSUS server from which to download updates instead of Windows Update</td>
</tr>
<tr class="even">
<td align="left">Upgrade deferral period</td>
<td align="left">How long Windows 10 Mobile upgrades should be deferred</td>
</tr>
</tbody>
</table>

 

In addition to configuring how Windows 10 Mobile Enterprise obtains updates, you can manage individual Windows 10 Mobile updates. Table 21 provides information about approved updates to help you control the rollout of new updates to Windows 10 Mobile Enterprise devices.

Table 21. Windows 10 Mobile Enterprise approved update information

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Approved updates</td>
<td align="left">A list of approved updates. Each update in the list includes the <strong>Approved Time</strong> setting, which specifies the update approval time. Any approved updates automatically accept EULAs on behalf of users.</td>
</tr>
<tr class="even">
<td align="left">Failed updates</td>
<td align="left">A list of updates that failed during installation. Each update in the list includes the following settings:
<ul>
<li><p><strong>H Result.</strong> The update failure code</p></li>
<li><p><strong>Status.</strong> The failed update state (for example, <strong>download</strong>, <strong>install</strong>)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Installed updates</td>
<td align="left">A list of updates that are installed on the device.</td>
</tr>
<tr class="even">
<td align="left">Installable updates</td>
<td align="left">A list of updates that are available for installation. Each update in the list includes the following settings:
<ul>
<li><p><strong>Type.</strong> The type of update available for installation, set to one of the following values:</p>
<ul>
<li><p><strong>0</strong> (no type)</p></li>
<li><p><strong>1</strong> (security)</p></li>
<li><p><strong>2</strong> (critical)</p></li>
</ul></li>
<li><p><strong>Revision Number.</strong> The revision number for the update used to get metadata for the update during synchronization.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Pending reboot updates</td>
<td align="left">A list of updates that require a restart to complete update installation. Each update in the last has the <strong>Installed Time</strong> setting enabled, which specifies installation time for the update.</td>
</tr>
<tr class="even">
<td align="left">Last successful scan time</td>
<td align="left">The last time a successful update scan was completed.</td>
</tr>
<tr class="odd">
<td align="left">Defer upgrade</td>
<td align="left">Whether the upgrade is deferred until the next update cycle.</td>
</tr>
</tbody>
</table>

 

### Device compliance monitoring

You can use your MDM system to monitor compliance. Windows 10 Mobile provides audit information to track issues or perform remedial actions. This information helps you ensure that devices are configured to comply with organizational standards.

You can also assess the health of devices that run Windows 10 Mobile and take enterprise policy actions. The process that the health attestation feature in Windows 10 Mobile uses is as follows:

1.  The health attestation client collects data used to verify device health.

2.  The client forwards the data to the Health Attestation Service (HAS).

3.  The HAS generates a Health Attestation Certificate.

4.  The client forwards the Health Attestation Certificate and related information to the MDM system for verification.

For more information about health attestation in Windows 10 Mobile, see the [Windows 10 Mobile security guide](../keep-secure/windows-10-mobile-security-guide.md).

Depending on the results of the health state validation, an MDM system can take one of the following actions:

-   Allow the device to access resources.

-   Allow the device to access resources but identify the device for further investigation.

-   Prevent the device from accessing resources.

Table 21 lists data points that the HAS collects and evaluates from devices that run Windows 10 Mobile to determine the action to perform. For most of these data points, the MDM system can take one of the following actions:

-   Disallow all access.

-   Disallow access to high-business-impact assets.

-   Allow conditional access based on other data points that are present at evaluation time—for example, other attributes on the health certificate or a device’s past activities and trust history.

-   Take one of the previous actions, and also place the device on a watch list to monitor it more closely for potential risks.

-   Take corrective action, such as informing IT administrators to contact the owner and investigate the issue.

Table 21. Windows 10 Mobile HAS data points

| Data point                                               | Description                                                                                                                                                                                                                    |
|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Attestation Identity Key (AIK) present                   | Indicates that an AIK is present (in other words, the device can be trusted more than a device without an AIK).                                                                                                                |
| Data Execution Prevention (DEP) enabled                  | Whether a DEP policy is enabled for the device, indicating that the device can be trusted more than a device without a DEP policy.                                                                                             |
| BitLocker status                                         | BitLocker helps protect the storage on the device. A device with BitLocker can be trusted more than a device without BitLocker.                                                                                                |
| Secure Boot enabled                                      | Whether Secure Boot is enabled on the device. A device with Secure Boot enabled can be trusted more than a device without Secure Boot. Secure Boot is always enabled on Windows 10 Mobile devices.                             |
| Code integrity enabled                                   | Whether the code integrity of a drive or system file is validated each time it’s loaded into memory. A device with code integrity enabled can be trusted more than a device without code integrity.                            |
| Safe mode                                                | Whether Windows is running in safe mode. A device that is running Windows in safe mode isn’t as trustworthy as a device running in standard mode.                                                                              |
| Running Windows Preinstallation Environment (Windows PE) | Whether the device is running Windows PE. A device running Windows PE isn’t as secure as a device running Windows 10 Mobile.                                                                                                   |
| Boot debug enabled                                       | Whether the device has boot debug enabled. A device that has boot debug enabled is less secure (trusted) than a device without boot debug enabled.                                                                             |
| OS kernel debugging enabled                              | Whether the device has operating system kernel debugging enabled. A device that has operating system kernel debugging enabled is less secure (trusted) than a device with operating system kernel debugging disabled.          |
| Test signing enabled                                     | Whether test signing is disabled. A device that has test signing disabled is more trustworthy than a device that has test signing enabled.                                                                                     |
| Boot Manager Version                                     | The version of the Boot Manager running on the device. The HAS can check this version to determine whether the most current Boot Manager is running, which is more secure (trusted).                                           |
| Code integrity version                                   | Specifies the version of code that is performing integrity checks during the boot sequence. The HAS can check this version to determine whether the most current version of code is running, which is more secure (trusted).   |
| Secure Boot Configuration Policy (SBCP) present          | Whether the hash of the custom SBCP is present. A device with an SBCP hash present is more trustworthy than a device without an SBCP hash.                                                                                     |
| Boot cycle whitelist                                     | The view of the host platform between boot cycles as defined by the manufacturer compared to a published whitelist. A device that complies with the whitelist is more trustworthy (secure) than a device that is noncompliant. |

 

### Device inventory

Device inventory helps organizations better manage devices because it provides in-depth information about those devices. MDM systems collect inventory information remotely, and you can use the system’s reporting capabilities to analyze device resources and information. With this information, you can determine the current hardware and software resources of the device (for example, installed updates).

Table 22 lists examples of the Windows 10 Mobile software and hardware information that a device inventory provides. In addition to this information, the MDM system can read any of the configuration settings described in this guide.

Table 22. Windows 10 Mobile software and hardware inventory examples

| Setting                                                                                            | Description                                                                                                                                                                                                                     |
|----------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Installed enterprise apps                                                                          | List of the enterprise apps installed on the device                                                                                                                                                                             |
| Device name                                                                                        | The device name configured for the device                                                                                                                                                                                       |
| Firmware version                                                                                   | Version of firmware installed on the device                                                                                                                                                                                     |
| Operating system version                                                                           | Version of the operating system installed on the device                                                                                                                                                                         |
| Device local time                                                                                  | Local time on the device                                                                                                                                                                                                        |
| Processor type                                                                                     | Processor type for the device                                                                                                                                                                                                   |
| Device model                                                                                       | Model of the device as defined by the manufacturer                                                                                                                                                                              |
| Device manufacturer                                                                                | Manufacturer of the device                                                                                                                                                                                                      |
| Device processor architecture                                                                      | Processor architecture for the device                                                                                                                                                                                           |
| Device language                                                                                    | Language in use on the device                                                                                                                                                                                                   |
| Phone number                                                                                       | Phone number assigned to the device                                                                                                                                                                                             |
| Roaming status                                                                                     | Indicates whether the device has a roaming cellular connection                                                                                                                                                                  |
| International mobile equipment identity (IMEI) and international mobile subscriber identity (IMSI) | Unique identifiers for the cellular connection for the phone; Global System for Mobile Communications networks identify valid devices by using the IMEI, and all cellular networks use the IMSI to identify the device and user |
| Wi-Fi IP address                                                                                   | IPv4 and IPv6 addresses currently assigned to the Wi-Fi adapter in the device                                                                                                                                                   |
| Wi-Fi media access control (MAC) address                                                           | MAC address assigned to the Wi-Fi adapter in the device                                                                                                                                                                         |
| Wi-Fi DNS suffix and subnet mask                                                                   | DNS suffix and IP subnet mask assigned to the Wi-Fi adapter in the device                                                                                                                                                       |
| Secure Boot state                                                                                  | Indicates whether Secure Boot is enabled                                                                                                                                                                                        |
| Enterprise encryption policy compliance                                                            | Indicates whether the device is encrypted                                                                                                                                                                                       |

 

### Remote assistance

The remote assistance features in Windows 10 Mobile help resolve issues that users might encounter even when the help desk does not have physical access to the device. These features include:

-   **Remote lock.** Support personnel can remotely lock a device. This ability can help when a user loses his or her mobile device and can retrieve it but not immediately (for example, leaving the device at a customer site).

-   **Remote PIN reset.** Support personnel can remotely reset the PIN, which helps when users forget their PIN and are unable to access their device. No corporate or user data is lost, and users are able to gain access to their devices quickly.

-   **Remote ring.** Support personnel can remotely make devices ring. This ability can help users locate misplaced devices and, in conjunction with the Remote Lock feature, help ensure that unauthorized users are unable to access the device if they find it.

-   **Remote find.** Support personnel can remotely locate a device on a map, which helps identify the geographic location of the device. To configure Windows 10 Mobile remote find, use the settings in Table 23. The remote find feature returns the most current latitude, longitude, and altitude of the device.

These remote management features help organizations reduce the IT effort required to manage devices. They also help users quickly regain use of their device should they misplace it or forget the device password.

Table 23. Windows 10 Mobile remote find settings

| Setting                   | Description                                                                                                                     |
|---------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| Desired location accuracy | The desired accuracy as a radius value in meters; has a value between 1 and 1,000 meters                                        |
| Maximum remote find       | Maximum length of time in minutes that the server will accept a successful remote find; has a value between 0 and 1,000 minutes |
| Remote find timeout       | The number of seconds devices should wait for a remote find to finish; has a value between 0 and 1,800 seconds                  |

 

### Cloud services

On mobile devices that run Windows 10 Mobile, users can easily connect to apps and data. As a result, they frequently connect to cloud services that provide user notifications and collect telemetry (usage data). Windows 10 Mobile enables organizations to manage how devices consume these cloud services.

**Manage push notifications**

The Windows Push Notification Services enable software developers to send toast, tile, badge, and raw updates from their cloud services. It provides a mechanism to deliver updates to users in a power-efficient and dependable way.

Push notifications can affect battery life, however, so the battery saver in Windows 10 Mobile limits background activity on the devices to extend battery life. Users can configure battery saver to turn on automatically when the battery drops below a set threshold. When battery saver is on, Windows 10 Mobile disables the receipt of push notifications to save energy.

There is an exception to this behavior, however. In Windows 10 Mobile, the **Always allowed** battery saver settings (found in the Settings app) allow apps to receive push notifications even when battery saver is on. Users can manually configure this list, or you can use the MDM system to configure it—that is, you can use the battery saver settings URI scheme in Windows 10 Mobile (**ms-settings:batterysaver-settings**) to configure these settings.

For more information about push notifications, see [Windows Push Notification Services (WNS) overview](http://go.microsoft.com/fwlink/p/?LinkId=734060).

**Manage telemetry**

As people use Windows 10 Mobile, it can collect performance and usage telemetry that helps Microsoft identify and troubleshoot problems as well as improve its products and services. Microsoft recommends that you select **Full** for this setting.

Microsoft employees, contractors, vendors, and partners might have access to relevant portions of the information that Windows 10 Mobile collects, but they are permitted to use the information only to repair or improve Microsoft products and services or third-party software and hardware designed for use with Microsoft products and services.

You can control the level of data that MDM systems collect. Table 24 lists the data levels that Windows 10 Mobile collects and provides a brief description of each. To configure devices, specify one of these levels in the **Allow Telemetry** setting.

Table 24. Windows 10 Mobile data collection levels

| Level of data | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Security      | Collects only the information required to keep Windows 10 Mobile enterprise-grade secure, including information about telemetry client settings, the Malicious Software Removal Tool, and Windows Defender. This level is available only on Windows 10 Enterprise, Windows 10 Education, and Windows 10 IoT Core. For Windows 10 Mobile, this setting disables Windows 10 Mobile telemetry.                                                                                                                    |
| Basic         | Provides only the data vital to the operation of Windows 10 Mobile. This data level helps keep Windows 10 Mobile and apps running properly by letting Microsoft know the device’s capabilities, what’s installed, and whether Windows is operating correctly. This option also turns on basic error reporting back to Microsoft. By selecting this option, you allow Microsoft to provide updates through Windows Update, including malicious software protection through the Malicious Software Removal Tool. |
| Enhanced      | Includes all Basic data plus data about how users use Windows 10 Mobile, such as how frequently or how long they use certain features or apps and which apps they use most often. This option also lets operating system collect enhanced diagnostic information, such as the memory state of a device when a system or app crash occurs, and measure reliability of devices, the operating system, and apps.                                                                                                  |
| Full          | Includes all Basic and Enhanced data and also turns on advanced diagnostic features that collect additional data from devices, such as system files or memory snapshots, which may unintentionally include parts of documents user are working on when a problem occurred. This information helps Microsoft further troubleshoot and fix problems. If an error report contains personal data, Microsoft does not use that information to identify, contact, or target advertising to users.                    |

 

## Device retirement


Device retirement (unenrollment) is the last phase of the device life cycle. Historically, mobile device retirement has been a complex and difficult process for organizations. When the organization no longer needs devices, it must remove (wipe) corporate data from them. BYOD scenarios make retirement even more complex because users expect their personal apps and data to remain untouched. Therefore, organizations must remove their data without affecting users’ data.

You can remotely remove all corporate data from devices that run Windows 10 Mobile without affecting existing user data (partial or enterprise wipe). The help desk or the devices’ users can initiate device retirement. When retirement is complete, Windows 10 Mobile returns the devices to a consumer state, as they were before enrollment. The following list summarizes the corporate data removed from a device when it’s retired:

-   Email accounts

-   Enterprise-issued certificates

-   Network profiles

-   Enterprise-deployed apps

-   Any data associated with the enterprise-deployed apps

**Note**  
All these features are in addition to the device’s software and hardware factory reset features, which users can use to restore devices to their factory configuration.

 

To specify whether users can delete the workplace account in Control Panel and unenroll from the MDM system, enable the **Allow Manual MDM Unenrollment** setting. Table 25 lists additional Windows 10 remote wipe settings that you can use the MDM system to configure.

Table 25. Windows 10 Mobile remote wipe settings

| Setting                       | Description                                                                                                          |
|-------------------------------|----------------------------------------------------------------------------------------------------------------------|
| Wipe                          | Specifies that a remote wipe of the device should be performed                                                       |
| Allow manual MDM unenrollment | Whether users are allowed to delete the workplace account (in other words, unenroll the device from the MDM system)  |
| Allow user to reset phone     | Whether users are allowed to use Control Panel or hardware key combinations to return the device to factory defaults |

 

## Related topics


[Mobile device management](http://go.microsoft.com/fwlink/p/?LinkId=734050)

[Enterprise Mobility Suite](http://go.microsoft.com/fwlink/p/?LinkId=723984)

[Overview of Mobile Device Management for Office 365](http://go.microsoft.com/fwlink/p/?LinkId=734052)

[Windows Store for Business](http://go.microsoft.com/fwlink/p/?LinkId=722910)

 

 





