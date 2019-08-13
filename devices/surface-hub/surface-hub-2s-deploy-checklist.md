---
title: "Surface Hub 2S deployment checklists"
description: "Verify your deployment of Surface Hub 2S using pre- and post-deployment checklists."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: Medium
---

# Surface Hub 2S deployment checklists

## Surface Hub 2S pre-deployment checklist

|**Item**|**Response**|
|:------ |:------ |
|**Device account name**| |
|**Device account UPN**| |
|**ActiveSync Policy**| |
|**Calendar processing configuration completed**| ☐ Yes <br>  ☐ No |
|**Device-friendly name**| |
|**Device host name**| |
|**Affiliation**| ☐ None <br> ☐ Active Directory affiliation <br> ☐ Azure Active Directory |
|**Microsoft Teams Mode**| ☐ Mode 0 <br> ☐ Mode 1 <br> ☐ Mode 2 |
|**Device Management**| ☐ Yes, Microsoft Intune <br> ☐ Yes, other mobile device manager [MDM] <br> ☐ None |  
|**Proxy**| ☐ Automatic configuration <br> ☐ Proxy server <br> ☐ Proxy auto-config (PAC) file |
|**Proxy authentication**| ☐ Device account credentials <br> ☐ Prompt for credentials |
|**Password rotation**| ☐ On <br> ☐ Off |
|**Skype for Business additional domain names (on-premises only)**| |
|**Session timeout time**| |
|**Session timeout action**| ☐ End session <br> ☐ Allow resume |
|**My meetings and files**| ☐ Enabled <br> ☐ Disabled |
|**Lock screen timeout**| |
|**Sleep idle timeout**| |
|**Bluetooth**| ☐ On <br> ☐ Off |
|**Use only BitLocker USB drives**| ☐ On <br> ☐ Off |
|**Install additional certificates (on-premises only)**| |
|**Windows update**| ☐ Windows Update for Business <br> ☐ Windows Server Update Services [WSUS] |
|**Surface app speaker setting**| ☐ Rolling stand <br> ☐ Wall-mounted |
|**IP Address**| ☐ Wired — DHCP <br> ☐ Wired — DHCP reservation <br> ☐ Wireless — DHCP <br> ☐ Wireless — DHCP reservation |

## Surface Hub 2S post-deployment checklist

|**Check**|**Response**|
|:------|:---------|
|**Device account syncing**| ☐ Yes <br> ☐ No |
|**Bitlocker key**| ☐ Saved to file (no affiliation) <br> ☐ Saved in Active Directory (AD affiliation) <br>☐ Saved in Azure AD (Azure AD affiliation) |
|**Device OS updates**| ☐ Completed |
|**Windows Store updates**| ☐ Automatic <br> ☐ Manual |
|**Microsoft Teams scheduled meeting**| ☐ Confirmation email received <br> ☐ Meeting appears on start screen <br>  ☐ One-touch join functions <br> ☐ Able to join audio <br> ☐ Able to join video <br> ☐ Able to share screen ||
|**Skype for Business scheduled meeting**| ☐ Confirmation email received <br> ☐ Meeting appears on start screen <br> ☐ One-touch join functions correctly <br> ☐ Able to join audio <br> ☐ Able to join video <br> ☐ Able to share screen <br> ☐ Able to send/receive IM |
|**Scheduled meeting when already invited**| ☐ Meeting declined |
|**Microsoft Teams ad-hoc meeting**| ☐ Invite other users work <br> ☐ Able to join audio <br> ☐ Able to join video <br> ☐ Able to share screen |
|**Skype for Business scheduled meeting**| ☐ Invite other users work <br> ☐ Able to join audio <br> ☐ Able to join video <br> ☐ Able to share screen <br> ☐ Able to send/receive IM |
|**Microsoft Whiteboard**| ☐ Launch from Welcome / Start screen <br> ☐ Launch from Microsoft Teams | 
|**Incoming Skype/Teams call**| ☐ Able to join audio<br>☐ Able to join video <br> ☐ Able to share screen <br> ☐ Able to send/receive IM (Skype for Business only) |
|**Incoming live video streams**| ☐ Maximum 2 (Skype for Business) <br> ☐ Maximum 4 (Microsoft Teams) |
|**Microsoft Teams Mode 0 behavior**| ☐ Skype for Business tile on Welcome/Start screen <br> ☐ Can join scheduled Skype for Business meetings (Skype UI) <br> ☐ Can join scheduled Teams meetings (Teams UI) |
|**Microsoft Teams Mode 1 behavior**| ☐ Teams tile on Welcome/Start screen <br> ☐ Can join scheduled Skype for Business meetings (Skype UI) <br> ☐ Can join scheduled Teams meetings (Teams UI) |
|**Microsoft Teams Mode 2 behavior**| ☐ Teams tile on Welcome / Start screen <br> ☐ Can join scheduled Teams meetings <br> ☐ Fail to join Skype for Business meetings |
