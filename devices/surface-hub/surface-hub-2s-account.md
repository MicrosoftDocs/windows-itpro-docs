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

Creating a Surface Hub device account (also known as a Room mailbox) allows Surface Hub 2S to receive, approve, or decline meeting requests as well as join meetings using Microsoft Teams or Skype for Business. You create the device account when you first start Surface Hub 2S during OOBE setup.

Unlike standard Room mailboxes that remain disabled by default, you will need to enable the Surface Hub 2S device account to sign in to Microsoft Teams and Skype for Business. Surface Hub 2S relies on Exchange ActiveSync, which requires an ActiveSync mailbox policy on the device account. Apply the default ActiveSync mailbox policy that comes with Exchange Online.

Complete advanced configuration tasks using Windows PowerShell. For example:

- If the default ActiveSync mailbox policy has already been modified by someone else or another process, you will likely have to create and assign a new ActiveSync mailbox policy using Exchange Online PowerShell.
- You will need to configure calendar processing for every Surface Hub device account using PowerShell.
- If you want Surface Hub 2S to send a custom auto reply in response to scheduling requests, you’ll need to configure that using Exchange Online PowerShell.

For more information, see [Configure Surface Hub 2S accounts with PowerShell](surface-hub-2s-configure-with-powershell).

## Create account using Office 365 portal

1. In the Microsoft 365 Admin Center, go to Resources and choose Rooms & Equipment and then click +Room.

2. Provide a name and email address for the device account. Leave remaining settings unchanged in the default state.

![Provide a name and email address](images/sh2-account2.png)

![Leave remaining settings unchanged in the default state](images/sh2-account3.png)

3. Set the password for the device account. Ensure you **do not** select the option **Make this user change their password when they first sign in.**

![Set the password for the device account](images/sh2-account4.png)

4. Assign the room with an Office 365 license. It’s recommended to assign the Office 365 **Meeting Room** license, a new option that automatically enables the account for Skype for Business Online and Microsoft Teams.
![Assign Office 365 license](images/sh2-account5.png)

## Finalize setup via PowerShell

- **Skype for Business:** If you did not choose an Office 365 Meeting Room license, you can enable the Skype for Business object by running *Enable-CsMeetingRoom*.
- **Calling features:** Regardless of your Office 365 licensing configuration, run *Enable-CsMeetingRoom* to enable features such as **Meeting room prompt for audio** and **Lobby hold**.
- **Calendar:** Set **Calendar Auto processing** for this account.

For more information, see [Configure Surface Hub 2S accounts via PowerShell.](devices\surface-hub\surface-hub-2s-configure-using-o365.md)

## Room account password rotation  

You can configure Surface Hub 2S to automatically change a device account password without requiring you to manually update the device account information.

If you turn on Password Rotation, Surface Hub 2S changes the password every 7 days. The automatically generated passwords contain 15-32 characters including  a combination of uppercase and lowercase letters, numbers, and special characters.

Passwords do not change during a meeting. If Surface Hub 2S is turned off, it attempts to change the password immediately when turned on or every 10 minutes until successful.
