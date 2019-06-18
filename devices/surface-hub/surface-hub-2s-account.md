---
title: "Create Surface Hub 2S device account"
description: "This page describes the procedure for creating the Surface Hub 2S device account."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Create Surface Hub 2S device account

Creating a Surface Hub device account (also known as a Room mailbox) allows Surface Hub 2S to receive, approve, or decline meeting requests and join meetings using Microsoft Teams or Skype for Business. Configure the device account during OOBE setup. If needed you can change it later (without going through OOBE setup).

Unlike standard Room mailboxes that remain disabled by default, you need to enable the Surface Hub 2S device account to sign on to Microsoft Teams and Skype for Business. Surface Hub 2S relies on Exchange ActiveSync, which requires an ActiveSync mailbox policy on the device account. Apply the default ActiveSync mailbox policy that comes with Exchange Online.

Complete advanced configuration tasks using Windows PowerShell. For example:

- If the default ActiveSync mailbox policy has already been modified by someone else or another process, you will likely have to create and assign a new ActiveSync mailbox policy using Exchange Online PowerShell.
- You need to configure calendar processing for every Surface Hub device account using PowerShell.
- If you want Surface Hub 2S to send a custom auto reply in response to scheduling requests, you need to configure that using Exchange Online PowerShell.

For more information, see [Configure Surface Hub 2S accounts with PowerShell](surface-hub-2s-configure-with-powershell.md).

## Create account using Office 365 portal

1. In the Microsoft 365 Admin Center, go to Resources and choose Rooms & Equipment and then click +Room.

2. Provide a name and email address for the device account. Leave remaining settings unchanged in the default state.

![Provide a name and email address](images/sh2-account2.png)

![Leave remaining settings unchanged in the default state](images/sh2-account3.png)

3. Set the password for the device account. Ensure that you **do not** select the option **Make this user change their password when they first sign in.**

![Set the password for the device account](images/sh2-account4.png)

4. Assign the room with an Office 365 license. It’s recommended to assign the Office 365 **Meeting Room** license, a new option that automatically enables the account for Skype for Business Online and Microsoft Teams.

![Assign Office 365 license](images/sh2-account5.png)

## Finalize setup via PowerShell

- **Skype for Business:** For Skype for Business only (on-premises or online), you can enable the Skype for Business object by running **Enable-CsMeetingRoom** to enable features such as Meeting room prompt for audio and Lobby hold.
- **Calling features:** Regardless of your Office 365 licensing configuration, run *Enable-CsMeetingRoom* to enable features such as **Meeting room prompt for audio** and **Lobby hold**.
- **Calendar:** Set **Calendar Auto processing** for this account.
