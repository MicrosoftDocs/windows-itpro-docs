---
title: Prepare your environment for Microsoft Surface Hub
description: This section contains an overview of the steps required to prepare your environment so that you can use all of the features of Microsoft Surface Hub.
ms.assetid: 336A206C-5893-413E-A270-61BFF3DF7DA9
keywords: prepare environment, features of Surface Hub, create and test device account, check network availability
ms.prod: w10
ms.mktglfcycl: plan
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Prepare your environment for Microsoft Surface Hub


This section contains an overview of setup dependencies and the setup process.  

See [Intro to Surface Hub](intro-to-surface-hub.md) for a description of how the device and its features interact with your IT environment. 

## Surface Hub setup dependencies

Review these dependencies to make sure Surface Hub features will work in your environment.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Dependency</th>
<th align="left">Purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Active Directory (if using an on-premises deployment)</p></td>
<td align="left"><p>The Surface Hub must be able to connect to the domain controller in order to validate the device account’s credentials, as well as to access information like the device account’s display name, alias, Exchange server, and Session Initiation Protocol (SIP) address.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Office 365 (if using an online deployment)</p></td>
<td align="left"><p>The Surface Hub must have Internet access in order to reach your Office 365 tenant. The device will connect to the Office 365 in order to validate the device account’s credentials, as well as to access information like the device account’s display name, alias, Exchange server, and SIP address.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device account</p></td>
<td align="left"><p>The device account is an Active Directory and/or Azure AD account that enables several key features for the Surface Hub. Learn more about device accounts in [Create and test a device account](create-and-test-a-device-account-surface-hub.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exchange and Exchange ActiveSync</p></td>
<td align="left"><p>The Surface Hub must be able to reach the device account’s Exchange servers. Exchange is used for enabling mail and calendar features, and also lets people who use the device send meeting requests to the Surface Hub, enabling one-touch meeting join.</p>
<p>ActiveSync is used to sync the device account’s calendar and mail to the Surface Hub. If the device cannot use ActiveSync, it will not show meetings on the welcome screen, and joining meetings and emailing whiteboards will not be enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Skype for Business</p></td>
<td align="left"><p>The Surface Hub must be able to reach the device account’s Skype for Business servers. Skype for Business is used for various conferencing features, like video calls, IM, and screen sharing.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Certificate-based authentication</p></td>
<td align="left"><p>If certificate-based authentication is required to establish a connection with Exchange ActiveSync or Skype for Business, those certificates must be deployed to each Surface Hub.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Dynamic IP</p></td>
<td align="left"><p>The Surface Hub cannot be configured to use a static IP. It must use DHCP to assign an IP address. Network or Internet access is required, depending on the configuration of your topology (on-premises or online respectively) in order to validate the device account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Proxy servers</p></td>
<td align="left"><p>If your topology requires a connection to a proxy server to reach Active Directory, Microsoft Online Services, or your Exchange or Skype for Business servers, then you can configure it during first run, or in Settings.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Mobile device management (MDM) solution provider</p></td>
<td align="left"><p>If you want to manage devices remotely and by groups (apply settings or policies to multiple devices at a time), you must set up a MDM solution and enroll the device to that solution.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Operations Management Suite (OMS)</p></td>
<td align="left"><p>OMS is used to monitor Surface Hub devices.</p></td>
</tr>
</tbody>
</table>

## Prep for Surface Hub set up
Review the info in this section to help you prepare your environment and gather information needed to set up your Surface Hub.  

### Work with other admins

Surface Hub interacts with a few different products and services. Depending on the size of your organization, there could be multiple people supporting different products in your environment. You'll want to include people who manage Exchange, Active Directory, Azure Actice Directory, mobile device maanagement (MDM), and network resources in your planning and prep for Surface Hub deployments. 

### Create and verify device account

A device account is an account that Surface Hub uses in order to access features from Exchange, like email and calendar, and to enable Skype for Business. See [Create and test a device account](create-and-test-a-device-account-surface-hub.md) for details.

After you've created your device account, there are a couple of ways to verify that the account. 
- Run Surface Hub device account validation PowerShell scripts. For more information, see [Surface Hub device account scripts](https://gallery.technet.microsoft.com/scriptcenter/Surface-Hub-device-account-6db77696) in Script Center, or [PowerShell scripts for Surface Hub](appendix-a-powershell-scipts-for-surface-hub.md) later in this guide. 
- Run the Lync Windows app from Windows Store. If Lync runs successfully, then Skype for Business will most likely run.

### Check network resources

In order to function properly, the Surface Hub must have access to a wired or wireless network that meets the same requirements as every other Skype for Business endpoint in your environment. Overall, a wired connection is preferred:

- Access to your Active Directory or Azure Active Directory (Azure AD) instance, as well as your Microsoft Exchange and Skype for Business servers.
- Can receive an IP address using DHCP
- Open ports:
    - HTTPS: 443
    - HTTP: 80
- Access to additional ports are needed, depending on your environment:
    - For online envionments, see [Office 365 IP URLs and IP address ranges](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US).
    - For on-premises istallations, see [Skype for Business Server: Ports and protocols for internal servers](https://technet.microsoft.com/library/gg398833.aspx). 

In order to improve your experience, we collect data. To collect data, we need these sites whitelisted:
- Telemetry client endpoint: https://vortex.data.microsoft.com/
- Telemetry settings endpoint: https://settings.data.microsoft.com/

### Prepare for first-run program
There are a few more item to consider before you start the [first-run program](first-run-program-surface-hub.md).  

**Create provisioning packages** (optional) - Your Surface Hub may require certificates for ActiveSync, Skype for Business, network usage, or other authentication. To install certificates, you can either create a provisioning package (in order to install at first run, or after first run in Settings), or deploy them through a mobile device management (MDM) solution (after first run only). 

Currently, Surface Hub can use provisioning packages only to install certificates and to install Universal Windows Platform (UWP) apps. See [Create provisioning packages](provisioning-packages-for-certificates-surface-hub.md) for details.  To install them using MDM, see the documentation for your MDM provider. You can also use provisioning to sideload apps that don't come from the Windows Store or Windows Store for Business.

**Manage admin groups** - Every Surface Hub can be configured individually by opening the Settings app on the device. To prevent people who are not administrators from changing settings, the Settings app requires local administrator credentials to open the app and change settings. See [Admin group management](admin-group-management-for-surface-hub.md) for details on how admin groups are set up and managed.

During first run, you will [set up admins for the device](first-run-program-surface-hub.md#setup-admins)). 

**Review and complete Surface Hub setup worksheet** (optional)
When you complete the first-run program for your Surface Hub, there is some information that you'll need to supply. The setup worksheet summarizes that info, and provides lists of environment-specific info that you'll need when you complete the first-run program. For more information, see [Setup worksheet](setup-worksheet-surface-hub.md).

## In this section

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Create and test a device account](create-and-test-a-device-account-surface-hub.md)</p></td>
<td align="left"><p>This topic introduces how to create and test the device account that Surface Hub uses to communicate with and Skype.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Create provisioning packages](provisioning-packages-for-certificates-surface-hub.md)</p></td>
<td align="left"><p>For Windows 10, settings that use the registry or a content services platform (CSP) can be configured using provisioning packages. You can also add certificates during first run using provisioning.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Admin group management](admin-group-management-for-surface-hub.md)</p></td>
<td align="left"><p>Every Surface Hub can be configured individually by opening the Settings app on the device. However, to prevent people who are not administrators from changing the settings, the Settings app requires administrator credentials to open the app and change settings.</p>
<p>The Settings app requires local administrator credentials to open the app.</p></td>
</tr>
</tbody>
</table>

 

 

 





