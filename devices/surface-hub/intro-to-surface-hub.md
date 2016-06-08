---
title: Intro to Microsoft Surface Hub
description: Microsoft Surface Hub is an all-in-one productivity device that is intended for brainstorming, collaboration, and presentations.
ms.assetid: 5DAD4489-81CF-47ED-9567-A798B90C7E76
keywords: Surface Hub, productivity, collaboration, presentations, setup
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
---

# Intro to Microsoft Surface Hub


Microsoft Surface Hub is an all-in-one productivity device that is intended for brainstorming, collaboration, and presentations. In order to get the maximum benefit from Surface Hub, your organization’s infrastructure and the Surface Hub itself must be properly set up and integrated. This guide describes what needs to be done both before and during setup in order to help you optimize your use of the device.

### <a href="" id="surface-hub-features-and-interactions"></a>Surface Hub features and interactions with other services

The capabilities of your Surface Hub will depend on what other Microsoft products and technologies are available to it in your infrastructure. The products listed in the following table each support specific features in Surface Hub.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>One-touch meeting join, meetings calendar, and email (for example, sending whiteboards)</p></td>
<td align="left"><p>Device account with Microsoft Exchange 2010 or later, or Exchange Online and a network connection to where the account is hosted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Meetings using Skype for Business</p></td>
<td align="left"><p>Device account with Skype for Business (Lync 2010 or later) or Skype for Business Online, and a network connection so the account can be accessed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web browsing through Microsoft Edge</p></td>
<td align="left"><p>Internet connectivity.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Cortana meeting room assistant (voice commands, search)</p></td>
<td align="left"><p>Internet connectivity needed to process questions and do searches.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Remote and multi-device management</p></td>
<td align="left"><p>Supported mobile device management (MDM) solutions (Microsoft Intune, System Center 2012 R2 Configuration Manager, or supported third-party solution).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Group-based local management (directory of employees who can manage a device)</p></td>
<td align="left"><p>Active Directory or Azure Active Directory (Azure AD).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Universal Windows app installation</p></td>
<td align="left"><p>Windows Imaging and Configuration Designer (ICD) or supported MDM solutions (Intune, Configuration Manager, or supported third-party solution).</p></td>
</tr>
<tr class="even">
<td align="left"><p>OS updates</p></td>
<td align="left"><p>Internet connectivity or Windows Server Update Services (WSUS).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device monitoring and health</p></td>
<td align="left"><p>Microsoft Operations Management Suite (OMS).</p></td>
</tr>
</tbody>
</table>

 

You’ll need to understand how each of these services interacts with Surface Hub. See [Prepare your environment for Surface Hub](prepare-your-environment-for-surface-hub.md) for details.

### <a href="" id="setup-dependencies"></a>Surface Hub Setup dependencies

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

 

### Surface Hub setup process

In some ways, adding your new Surface Hub is just like adding any other Microsoft Windows-based device to your network. However, in order to get your Surface Hub up and running at its full capacity, there are some very specific requirements. Read through all the info before you start. Here’s the general order of things you’ll need to do:

1.  [Prepare your environment for Surface Hub](prepare-your-environment-for-surface-hub.md)
2.  [Physically install your Surface Hub device](physically-install-your-surface-hub-device.md)
3.  [Run the Surface Hub first-run setup program (OOBE)](first-run-program-surface-hub.md)

After you have your Surface Hub running in your organization, you’ll need info about:

-   [Device maintenance and management](manage-surface-hub.md)

In the unlikely event that you run into problems, see [Troubleshoot Surface Hub](troubleshoot-surface-hub.md).

 

 





