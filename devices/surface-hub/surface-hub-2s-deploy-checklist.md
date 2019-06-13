---
title: "Surface Hub 2S deployment checklist"
description: "Verify your deployment of Surface Hub 2S using pre- and post-deployment checklists."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Surface Hub 2S deployment checklist

## Surface Hub 2S pre-deployment checklist

**Check**|**Item**|**Response**| **Learn more**|
|:------ |:------ |:----- |:------ |
|☐  <br/> |**Device account name**|   |  |
|☐  <br/> |**Device account UPN**| | |
|☐  <br/> |**ActiveSync Policy**|  |  |
|☐  <br/> |**Calendar processing configuration completed**| - Yes <br> - No |  |
|☐  <br/> |**Device friendly name**| |  |
|☐  <br/> |**Device host name**| | |
|☐  <br/> |**Affiliation**| - None <br> - Active Directory affiliation <br> - Azure Active Directory | |
|☐  <br/> |**Microsoft Teams Mode**| - Mode 0 <br> - Mode 1 <br> - Mode 2 | |
|☐  <br/> |**Device Management**| - Yes, Microsoft Intune <br> - Yes, other mobile device manager [MDM] <br> - None |  |
|☐  <br/> |**Proxy**| - Automatic configuration <br> - Proxy server <br> - Proxy auto-config (PAC) file  |  |
|☐  <br/> |**Proxy authentication**| - Device account credentials <br> - Prompt for credentials | |
|☐  <br/> |**Password rotation**| - On <br> - Off | |
|☐  <br/> |**Skype for Business additional domain names (on-premises only)**|  |  |
|☐  <br/> |**Session timeout time**|  |  |
|☐  <br/> |**Session timeout action**| - End session <br> - Allow resume  |  |
|☐  <br/> |**My meetings and files**| - Enabled <br> - Disabled |  |
|☐  <br/> |**Lock screen timeout**| |  |
|☐  <br/> |**Sleep idle timeout**|  |  |
|☐  <br/> |**Bluetooth**| - On <br> - Off |  |
|☐  <br/> |**Use only BitLocker USB drives**| - On <br> - Off | |
|☐  <br/> |**Install additional certificates (on-premises only)**| | [Using certificates for AADJ on-premises single-sign on](https://docs.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/hello-hybrid-aadj-sso-cert) |
|☐  <br/> |**Windows update**| - Windows Update for Business <br> - Windows Server Update Services [WSUS] | [Deploy updates using Windows Update for Business](https://docs.microsoft.com/en-us/windows/deployment/update/waas-manage-updates-wufb) <br> [Get Started with Windows Server Update Services (WSUS)](https://docs.microsoft.com/en-us/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus) |
|☐  <br/> |**Surface app speaker setting**| - Rolling stand <br> - Wall-mounted | |
|☐  <br/> |**IP Address**| - Wired - DHCP <br> - Wired - DHCP reservation <br> - Wireless – DHCP <br> - Wireless – DHCP reservation | |

## Surface Hub 2S post-deployment checklist

**Check**|**Item**|**Response**|**Learn more**|
|:------|:-------|:---------|:----------|
|☐  <br/> |**Device account syncing**| - Yes <br> - No |  |
|☐  <br/> |**Bitlocker key**| - Saved to file (no affiliation) <br> - Saved in Active Directory (AD affiliation) <br>- Saved in Azure AD ( Azure AD affiliation) |  |
|☐  <br/> |**Device OS updates**| - Completed | |
|☐  <br/> |**Windows Store updates**| - Automatic <br> - Manual | |
|☐  <br/> |**Microsoft Teams scheduled meeting**| - Confirmation email received <br> - Meeting appears on start screen <br> - One-touch join functions <br> - Able to join audio <br> - Able to join video <br> - Able to share screen | |
|☐  <br/> |**Skype for Business scheduled meeting**| - Confirmation email received <br> - Meeting appears on start screen <br> - One-touch join functions correctly <br> - Able to join audio <br> - Able to join video <br> - Able to share screen <br> - Able to send/receive IM | |
|☐  <br/> |**Scheduled meeting when already invited**| - Meeting declined |  |
|☐  <br/> |**Microsoft Teams ad-hoc meeting**| - Invite other users work <br> - Able to join audio <br> - Able to join Video <br> - Able to share screen |  |
|☐  <br/> |**Skype for Business scheduled meeting**| - Invite other users work <br> - Able to join audio <br> - Able to join video <br> - Able to share screen <br> - Able to send/receive IM | |
|☐  <br/> |**Microsoft Whiteboard**| - Launch from start / welcome screen <br> - Launch from Microsoft Teams | [Microsoft Whiteboard](https://whiteboard.microsoft.com/) |
|☐  <br/> |**Incoming Skype/Teams call**| - Able to join audio<br>- Able to join video <br> - Able to share screen <br> - Able to send/receive IM (Skype for Business only) |                                                           |
|☐  <br/> |**Incoming live video streams**| - Maximum 2 (Skype for Business) <br> - Maximum 4 (Microsoft Teams) | |
|☐  <br/> |**Microsoft Teams Mode 0 behavior**| - Skype for Business tile on Welcome/Start screen <br> - Can join scheduled Skype for Business meetings (Skype UI) <br> - Can join scheduled Teams meetings (Teams UI) |  |
|☐  <br/> |**Microsoft Teams Mode 1 behavior**| - Teams tile on Welcome/Start screen <br> - Can join scheduled Skype for Business meetings (Skype UI) <br> - Can join scheduled Teams meetings (Teams UI) | |
|☐  <br/> |**Microsoft Teams Mode 2 behavior**| - Teams tile on welcome / start screen <br> - Can join scheduled Teams meetings <br> - Fail to join Skype for Business meetings | |
