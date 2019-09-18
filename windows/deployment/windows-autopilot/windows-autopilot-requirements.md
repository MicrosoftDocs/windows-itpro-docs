---
title: Windows Autopilot requirements
ms.reviewer: 
manager: laurawi
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot requirements

**Applies to: Windows 10**

Windows Autopilot depends on specific capabilities available in Windows 10, Azure Active Directory, and MDM services such as Microsoft Intune.  In order to use Windows Autopilot and leverage these capabilities, some requirements must be met.

**Note**: For a list of OEMs that currently support Windows Autopilot, see the Participant device manufacturers section at [Windows Autopilot](https://aka.ms/windowsautopilot).

## Software requirements

- Windows 10 version 1703 (semi-annual channel) or higher is required. 
- The following editions are supported:
  - Windows 10 Pro
  - Windows 10 Pro Education
  - Windows 10 Pro for Workstations
  - Windows 10 Enterprise
  - Windows 10 Education
  - Windows 10 Enterprise 2019 LTSC

## Networking requirements

Windows Autopilot depends on a variety of internet-based services. Access to these services must be provided for Autopilot to function properly. In the simplest case, enabling proper functionality can be achieved by ensuring the following:

- Ensure DNS name resolution for internet DNS names
- Allow access to all hosts via port 80 (HTTP), 443 (HTTPS), and 123 (UDP/NTP)

In environments that have more restrictive Internet access, or for those that require authentication before internet access can be obtained, additional configuration may be required to whitelist access to the required services. For additional details about each of these services and their specific requirements, review the following details:

<table><th>Service<th>Information
<tr><td><b>Windows Autopilot Deployment Service<b><td>After a network connection is in place, each Windows 10 device will contact the Windows Autopilot Deployment Service.  With Windows 10 version 1903 and above, the following URLs are used: https://ztd.dds.microsoft.com, https://cs.dds.microsoft.com. <br>

<tr><td><b>Windows Activation<b><td>Windows Autopilot also requires Windows Activation services. See <a href="https://support.microsoft.com/help/921471/windows-activation-or-validation-fails-with-error-code-0x8004fe33">Windows activation or validation fails with error code 0x8004FE33</a> for details about the URLs that need to be accessible for the activation services.<br>

<tr><td><b>Azure Active Directory<b><td>User credentials are validated by Azure Active Directory, and the device can also be joined to Azure Active Directory. See <a href="https://docs.microsoft.com/office365/enterprise/office-365-ip-web-service">Office 365 IP Address and URL Web service</a> for more information.
<tr><td><b>Intune<b><td>Once authenticated, Azure Active Directory will trigger enrollment of the device into the Intune MDM service. See the following link for details about network communication requirements: <a href="https://docs.microsoft.com/intune/network-bandwidth-use#network-communication-requirements">Intune network configuration requirements and bandwidth</a>.
<tr><td><b>Windows Update<b><td>During the OOBE process, as well as after the Windows 10 OS is fully configured, the Windows Update service is leveraged to retrieve needed updates. If there are problems connecting to Windows Update, see <a href="https://support.microsoft.com/help/818018/how-to-solve-connection-problems-concerning-windows-update-or-microsof">How to solve connection problems concerning Windows Update or Microsoft Update</a>.<br>

If Windows Update is inaccessible, the AutoPilot process will still continue but critical updates will not be available.

<tr><td><b>Delivery Optimization<b><td>When downloading Windows Updates, Microsoft Store apps and app updates, Office Updates and Intune Win32 Apps, the <a href="https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization">Delivery Optimization</a> service is contacted to enable peer-to-peer sharing of content so that only a few devices need to download it from the internet.<br>

If the Delivery Optimization Service is inaccessible, the AutoPilot process will still continue with Delivery Optimization downloads from the cloud (without peer-to-peer).

<tr><td><b>Network Time Protocol (NTP) Sync<b><td>When a Windows device starts up, it will talk to a network time server to ensure that the time on the device is accurate. Ensure that UDP port 123 to time.windows.com is accessible.
<tr><td><b>Domain Name Services (DNS)<b><td>To resolve DNS names for all services, the device communicates with a DNS server, typically provided via DHCP.  This DNS server must be able to resolve internet names.
<tr><td><b>Diagnostics data<b><td>Starting in Windows 10, 1903, diagnostic data collection will be enabled by default. To disable Windows Analytics and related diagnostics capabilities, see <a href="https://docs.microsoft.com/windows/privacy/configure-windows-diagnostic-data-in-your-organization#manage-enterprise-diagnostic-data-level">Manage enterprise diagnostic data level</a>.<br>

If diagnostic data cannot be sent, the Autopilot process will still continue, but services that depend on diagnostic data, such as Windows Analytics, will not work.
<tr><td><b>Network Connection Status Indicator (NCSI)<b><td>Windows must be able to tell that the device is able to access the internet. For more information, see <a href="https://docs.microsoft.com/windows/privacy/manage-windows-1709-endpoints#network-connection-status-indicator-ncsi">Network Connection Status Indicator (NCSI)</a>.

<a href="http://www.msftconnecttest.com">www.msftconnecttest.com</a> must be resolvable via DNS and accessible via HTTP.
<tr><td><b>Windows Notification Services (WNS)<b><td>This service is used to enable Windows to receive notifications from apps and services. See <a href="https://docs.microsoft.com/windows/privacy/manage-windows-1809-endpoints#microsoft-store">Microsoft Store</a> for more information.<br>

If the WNS services are not available, the Autopilot process will still continue without notifications.
<tr><td><b>Microsoft Store, Microsoft Store for Business<b><td>Apps in the Microsoft Store can be pushed to the device, triggered via Intune (MDM).  App updates and additional apps may also be needed when the user first logs in. For more information, see <a href="https://docs.microsoft.com/microsoft-store/prerequisites-microsoft-store-for-business">Prerequisites for Microsoft Store for Business and Education</a> (also includes Azure AD and Windows Notification Services).<br>

If the Microsoft Store is not accessible, the AutoPilot process will still continue without Microsoft Store apps.

<tr><td><b>Office 365<b><td>As part of the Intune device configuration, installation of Office 365 ProPlus may be required. For more information, see <a href="https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2">Office 365 URLs and IP address ranges</a> (includes all Office services, DNS names, IP addresses; includes Azure AD and other services that may overlap with those listed above).
<tr><td><b>Certificate revocation lists (CRLs)<b><td>Some of these services will also need to check certificate revocation lists (CRLs) for certificates used in the services.  A full list of these is documented at <a href="https://support.office.com/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2#bkmk_crl">Office 365 URLs and IP address ranges</a> and <a href="https://aka.ms/o365chains">Office 365 Certificate Chains</a>.
<tr><td><b>Hybrid AAD join<b><td>The device can be hybrid AAD joined. The computer should be on corporate network for hybrid AAD join to work. See details at <a href="https://docs.microsoft.com/windows/deployment/windows-autopilot/user-driven-hybrid">Windows Autopilot user-driven mode</a>
</table>

## Licensing requirements

Windows Autopilot depends on specific capabilities available in Windows 10 and Azure Active Directory. It also requires an MDM service such as Microsoft Intune. These capabilities can be obtained through various editions and subscription programs:

To provide needed Azure Active Directory (automatic MDM enrollment and company branding features) and MDM functionality, one of the following is required:
- [Microsoft 365 Business subscriptions](https://www.microsoft.com/microsoft-365/business)
- [Microsoft 365 F1 subscriptions](https://www.microsoft.com/microsoft-365/enterprise/firstline)
- [Microsoft 365 Academic A1, A3, or A5 subscriptions](https://www.microsoft.com/education/buy-license/microsoft365/default.aspx)
- [Microsoft 365 Enterprise E3 or E5 subscriptions](https://www.microsoft.com/microsoft-365/enterprise), which include all Windows 10, Office 365, and EM+S features (Azure AD and Intune).
- [Enterprise Mobility + Security E3 or E5 subscriptions](https://www.microsoft.com/cloud-platform/enterprise-mobility-security), which include all needed Azure AD and Intune features.
- [Intune for Education subscriptions](https://docs.microsoft.com/intune-education/what-is-intune-for-education), which include all needed Azure AD and Intune features.
- [Azure Active Directory Premium P1 or P2](https://azure.microsoft.com/services/active-directory/) and [Microsoft Intune subscriptions](https://www.microsoft.com/cloud-platform/microsoft-intune) (or an alternative MDM service).

Additionally, the following are also recommended (but not required):
- [Office 365 ProPlus](https://www.microsoft.com/p/office-365-proplus/CFQ7TTC0K8R0), which can be deployed easily via Intune (or other MDM services).
- [Windows Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation), to automatically step up devices from Windows 10 Pro to Windows 10 Enterprise.

## Configuration requirements

Before Windows Autopilot can be used, some configuration tasks are required to support the common Autopilot scenarios.  

- Configure Azure Active Directory automatic enrollment.  For Microsoft Intune, see [Enable Windows 10 automatic enrollment](https://docs.microsoft.com/intune/windows-enroll#enable-windows-10-automatic-enrollment) for details.  If using a different MDM service, contact the vendor for the specific URLs or configuration needed for those services.
- Configure Azure Active Directory custom branding.  In order to display an organization-specific logon page during the Autopilot process, Azure Active Directory needs to be configured with the images and text that should be displayed.  See [Quickstart: Add company branding to your sign-in page in Azure AD](https://docs.microsoft.com/azure/active-directory/fundamentals/customize-branding) for more details.  Note that the "square logo" and "sign-in page text" are the key elements for Autopilot, as well as the Azure Active Directory tenant name (configured separately in the Azure AD tenant properties).
- Enable [Windows Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation) if desired, in order to automatically step up from Windows 10 Pro to Windows 10 Enterprise.

Specific scenarios will then have additional requirements.  Generally, there are two specific tasks:

- Device registration.  Devices need to be added to Windows Autopilot to support most Windows Autopilot scenarios.  See [Adding devices to Windows Autopilot](add-devices.md) for more details.
- Profile configuration.  Once devices have been added to Windows Autopilot, a profile of settings needs to be applied to each device.  See [Configure Autopilot profiles](profiles.md) for details.  Note that Microsoft Intune can automate this profile assignment; see [Create an AutoPilot device group](https://docs.microsoft.com/intune/enrollment-autopilot#create-an-autopilot-device-group) and [Assign an AutoPilot deployment profile to a device group](https://docs.microsoft.com/intune/enrollment-autopilot#assign-an-autopilot-deployment-profile-to-a-device-group) for more information.

See [Windows Autopilot Scenarios](windows-autopilot-scenarios.md) for additional details.

For a walkthrough for some of these and related steps, see this video:
<br>&nbsp;<br>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/KYVptkpsOqs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> 

There are no additional hardware requirements to use Windows 10 Autopilot, beyond the [requirements to run Windows 10](https://www.microsoft.com/windows/windows-10-specifications).

## Related topics

[Configure Autopilot deployment](configure-autopilot.md)
