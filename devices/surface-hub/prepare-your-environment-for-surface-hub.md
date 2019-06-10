---
title: Prepare your environment for Microsoft Surface Hub
description: This section contains an overview of the steps required to prepare your environment so that you can use all of the features of Microsoft Surface Hub.
ms.assetid: 336A206C-5893-413E-A270-61BFF3DF7DA9
ms.reviewer: 
manager: dansimp
keywords: prepare environment, features of Surface Hub, create and test device account, check network availability
ms.prod: surface-hub
ms.sitesec: library
author: levinec
ms.author: ellevin
ms.topic: article
ms.date: 12/04/2017
ms.localizationpriority: medium
---

# Prepare your environment for Microsoft Surface Hub


This section contains an overview of setup dependencies and the setup process. Review the info in this section to help you prepare your environment and gather information needed to set up your Surface Hub.


## Review infrastructure dependencies
Review these dependencies to make sure Surface Hub features will work in your IT infrastructure.

| Dependency        | Purpose           |
|-------------|------------------|
| Active Directory or Azure Active Directory (Azure AD) | <p>The Surface Hub's uses an Active Directory or Azure AD account (called a **device account**) to access Exchange and Skype for Business services. The Surface Hub must be able to connect to your Active Directory domain controller or to your Azure AD tenant in order to validate the device account’s credentials, as well as to access information like the device account’s display name, alias, Exchange server, and Session Initiation Protocol (SIP) address.</p>You can also domain join or Azure AD join your Surface Hub to allow a group of authorized users to configure settings on the Surface Hub. |
| Exchange (Exchange 2013 or later, or Exchange Online) and Exchange ActiveSync | <p>Exchange is used for enabling mail and calendar features, and also lets people who use the device send meeting requests to the Surface Hub, enabling one-touch meeting join.</p>ActiveSync is used to sync the device account’s calendar and mail to the Surface Hub. If the device cannot use ActiveSync, it will not show meetings on the welcome screen, and joining meetings and emailing whiteboards will not be enabled. |
| Skype for Business (Lync Server 2013 or later, or Skype for Business Online)  | Skype for Business is used for various conferencing features, like video calls, instant messaging, and screen sharing.|
| Mobile device management (MDM) solution (Microsoft Intune, System Center Configuration Manager, or supported third-party MDM provider) | If you want to apply settings and install apps remotely, and to multiple devices at a time, you must set up a MDM solution and enroll the device to that solution. See [Manage settings with an MDM provider](manage-settings-with-mdm-for-surface-hub.md) for details. |
| Microsoft Operations Managmement Suite (OMS)   | OMS is used to monitor the health of Surface Hub devices. See [Monitor your Surface Hub](monitor-surface-hub.md) for details. |
| Network and Internet access   | In order to function properly, the Surface Hub should have access to a wired or wireless network. Overall, a wired connection is preferred. 802.1X Authentication is supported for both wired and wireless connections.</br></br></br>**802.1X authentication:** In Windows 10, version 1703, 802.1X authentication for wired and wireless connections is enabled by default in Surface Hub. If your organization doesn't use 802.1X authentication, there is no configuration required and Surface Hub will continue to function as normal. If you use 802.1X authentication, you must ensure that the authentication certification is installed on Surface Hub. You can deliver the certificate to Surface Hub using the [ClientCertificateInstall CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/clientcertificateinstall-csp) in MDM, or you can [create a provisioning package](provisioning-packages-for-surface-hub.md) and install it during first run or through the Settings app. After the certificate is applied to Surface Hub, 802.1X authentication will start working automatically.</br>**Note:** For more information on enabling 802.1X wired authentication on Surface Hub, see [Enable 802.1x wired authentication](enable-8021x-wired-authentication.md).</br></br>**Dynamic IP:** The Surface Hub cannot be configured to use a static IP. It must use DHCP to assign an IP address.</br></br>**Proxy servers:** If your topology requires a connection to a proxy server to reach Internet services, then you can configure it during first run, or in Settings. Proxy credentials are stored across Surface Hub sessions and only need to be set once. |

Additionally, note that Surface Hub requires the following open ports:
- HTTPS: 443
- HTTP: 80
- NTP: 123

If you are using Surface Hub with Skype for Business, you will need to open additional ports. Please follow the guidance below:
- If you use Skype for Business Online, see [Office 365 IP URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US).
- If you use Skype for Business Server, see [Skype for Business Server: Ports and protocols for internal servers](https://docs.microsoft.com/SkypeForBusiness/plan-your-deployment/network-requirements/ports-and-protocols). 
- If you use a hybrid of Skype for Business Online and Skype for Business Server, you need to open all documented ports from [Office 365 IP URLs and IP address ranges](https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2?ui=en-US&rs=en-US&ad=US) and [Skype for Business Server: Ports and protocols for internal servers](https://docs.microsoft.com/SkypeForBusiness/plan-your-deployment/network-requirements/ports-and-protocols?toc=/SkypeForBusiness/toc.json&bc=/SkypeForBusiness/breadcrumb/toc.json).

Microsoft collects diagnostic data to help improve your Surface Hub experience. Add these sites to your allow list:
- Diagnostic data client endpoint: `https://vortex.data.microsoft.com/`
- Diagnostic data settings endpoint: `https://settings.data.microsoft.com/`

### Proxy configuration

If your organization restricts computers on your network from connecting to the Internet, there is a set of URLs that need to be available for devices to use Microsoft Store for Business. Some of the Store for Business features use Microsoft Store app and Microsoft Store services. Devices using Store for Business – either to acquire, install, or update apps – will need access to these URLs. If you use a proxy server to block traffic, your configuration needs to allow these URLs:

- login.live.com
- login.windows.net
- account.live.com
- clientconfig.passport.net
- windowsphone.com
- *.wns.windows.com
- *.microsoft.com
- www.msftncsi.com (prior to Windows 10, version 1607)
- www.msftconnecttest.com/connecttest.txt (replaces www.msftncsi.com starting with Windows 10, version 1607)


## Work with other admins

Surface Hub interacts with a few different products and services. Depending on the size of your organization, there could be multiple people supporting different products in your environment. You'll want to include people who manage Exchange, Active Directory (or Azure Active Directory), mobile device management (MDM), and network resources in your planning and prep for Surface Hub deployments. 


## Create and verify device account

A device account is an Exchange resource account that Surface Hub uses to display its meeting calendar, join Skype for Business calls, send email, and (optionally) to authenticate to Exchange. See [Create and test a device account](create-and-test-a-device-account-surface-hub.md) for details.

After you've created your device account, to verify that it's setup correctly, run Surface Hub device account validation PowerShell scripts. For more information, see [PowerShell scripts for Surface Hub](appendix-a-powershell-scripts-for-surface-hub.md) later in this guide. 

 

## Prepare for first-run program 
There are a few more item to consider before you start the [first-run program](first-run-program-surface-hub.md).  

### Create provisioning packages (optional)
You can use provisioning packages to add certificates, customize settings and install apps. See [Create provisioning packages](provisioning-packages-for-certificates-surface-hub.md) for details. You can [install provisioning packages at first-run](first-run-program-surface-hub.md#first-page).

### Set up admin groups
Every Surface Hub can be configured locally using the Settings app on the device. To prevent unauthorized users from changing settings, the Settings app requires admin credentials to open the app. See [Admin group management](admin-group-management-for-surface-hub.md) for details on how admin groups are set up and managed. You will [set up admins for the device at first run](first-run-program-surface-hub.md#setup-admins).

### Review and complete Surface Hub setup worksheet (optional)
When you go through the first-run program for your Surface Hub, there's some information that you'll need to supply. The setup worksheet summarizes that info, and provides lists of environment-specific info that you'll need when you go through the first-run program. For more information, see [Setup worksheet](setup-worksheet-surface-hub.md).


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
<td align="left"><p><a href="create-and-test-a-device-account-surface-hub.md" data-raw-source="[Create and test a device account](create-and-test-a-device-account-surface-hub.md)">Create and test a device account</a></p></td>
<td align="left"><p>This topic introduces how to create and test the device account that Surface Hub uses to communicate with and Skype.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="provisioning-packages-for-certificates-surface-hub.md" data-raw-source="[Create provisioning packages](provisioning-packages-for-certificates-surface-hub.md)">Create provisioning packages</a></p></td>
<td align="left"><p>For Windows 10, settings that use the registry or a content services platform (CSP) can be configured using provisioning packages. You can also add certificates during first run using provisioning.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="admin-group-management-for-surface-hub.md" data-raw-source="[Admin group management](admin-group-management-for-surface-hub.md)">Admin group management</a></p></td>
<td align="left"><p>Every Surface Hub can be configured individually by opening the Settings app on the device. However, to prevent people who are not administrators from changing the settings, the Settings app requires administrator credentials to open the app and change settings.</p>
<p>The Settings app requires local administrator credentials to open the app.</p></td>
</tr>
</tbody>
</table>

## More information

- [Blog post: Surface Hub and the Skype for Business Trusted Domain List](https://blogs.technet.microsoft.com/y0av/2017/10/25/95/)
- [Blog post: Surface Hub in a Multi-Domain Environment](https://blogs.technet.microsoft.com/y0av/2017/11/08/11/)
- [Blog post: Configuring a proxy for your Surface Hub](https://blogs.technet.microsoft.com/y0av/2017/12/03/7/)

 

 





