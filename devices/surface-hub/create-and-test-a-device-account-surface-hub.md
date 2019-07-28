---
title: Create and test a device account (Surface Hub)
description: This topic introduces how to create and test the device account that Microsoft Surface Hub uses to communicate with Microsoft Exchange and Skype.
ms.assetid: C8605B5F-2178-4C3A-B4E0-CE32C70ECF67
ms.reviewer: 
manager: dansimp
keywords: create and test device account, device account, Surface Hub and Microsoft Exchange, Surface Hub and Skype
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 03/06/2018
ms.localizationpriority: medium
---

# Create and test a device account (Surface Hub)


This topic introduces how to create and test the device account that Microsoft Surface Hub uses to communicate with Microsoft Exchange and Skype.

A **device account** is an Exchange resource account that Surface Hub uses to:

-   Display its meeting calendar
-   Join Skype for Business calls
-   Send email (for example, email whiteboard content from a meeting)

Once the device account is provisioned to a Surface Hub, people can add this account to a meeting invitation the same way that they would invite a meeting room. 

## Configuration overview

This table explains the main steps and configuration decisions when you create a device account. 
 
| Step | Description                     |  Purpose                             |
|------|---------------------------------|--------------------------------------|
| 1    | Created a logon-enabled Exchange resource mailbox (Exchange 2013 or later, or Exchange Online) | This resource mailbox allows the device to maintain a meeting calendar, receive meeting requests, and send mail. It must be logon-enabled to be provisioned to a Surface Hub. |
| 2    | Configure mailbox properties | The mailbox must be configured with the correct properties to enable the best meeting experience on Surface Hub. For more information on mailbox properties, see [Mailbox properties](exchange-properties-for-surface-hub-device-accounts.md). |
| 3    | Apply a compatible mobile device mailbox policy to the mailbox | Surface Hub is managed using mobile device management (MDM) rather than through mobile device mailbox policies. For compatibility, the device account must have a mobile device mailbox policy where the **PasswordEnabled** setting is set to False. Otherwise, Surface Hub can't sync mail and calendar info. |
| 4    | Enable mailbox with Skype for Business (Lync Server 2013 or later, or Skype for Business Online) | Skype for Business must be enabled to use conferencing features like video calls, IM, and screen sharing.  |
| 5    | (Optional) Whitelist ActiveSync Device ID | Your organization may have a global policy that prevents device accounts from syncing mail and calendar info. If so, you need to whitelist the ActiveSync Device ID of your Surface Hub. |
| 6    | (Optional) Disable password expiration | To simplify management, you can turn off password expiration for the device account and allow Surface Hub to automatically rotate the device account password. For more information about password management, see [Password management](password-management-for-surface-hub-device-accounts.md).  |

## Detailed configuration steps 

We recommend setting up your device accounts using remote PowerShell. There are PowerShell scripts available to help create and validate device accounts For more information on PowerShell scripts and instructions, see [Appendix A: PowerShell](appendix-a-powershell-scripts-for-surface-hub.md). 

For detailed steps using PowerShell to provision a device account, choose an option from the table, based on your organization deployment. 

| Organization deployment             |  Description                  |
|---------------------------------|--------------------------------------|
| [Online deployment (Office 365)](online-deployment-surface-hub-device-accounts.md) | Your organization's environment is deployed entirely on Office 365. |
| [On-premises deployment (single-forest)](on-premises-deployment-surface-hub-device-accounts.md) | Your organization has servers that it controls and uses to host Active Directory, Exchange, and Skype for Business (or Lync) in a single-forest environment. |
| [On-premises deployment (multiple forests)](on-premises-deployment-surface-hub-multi-forest.md) | Your organization has servers that it controls and uses to host Active Directory, Exchange, and Skype for Business (or Lync) in a multi-forest environment. |
| [Hybrid deployment](hybrid-deployment-surface-hub-device-accounts.md) | Your organization has a mix of services, with some hosted on-premises and some hosted online through Office 365. |
| [Online or hybrid deployment using Skype Hybrid Voice environment](skype-hybrid-voice.md) | Your organization has Skype for Business home pools and Exchange servers in the cloud, and uses an on-premises pool of Skype for Business 2015 or Cloud Connector edition connected via Public Switched Telephone Network (PSTN). |


If you prefer to use a graphical user interface (UI), some steps can be done using UI instead of PowerShell. 
For more information, see [Creating a device account using UI](create-a-device-account-using-office-365.md).

## Account verification and testing

There are two methods available that you can use to validate and test a Surface Hub device account: [account verifications scripts](appendix-a-powershell-scripts-for-surface-hub.md#acct-verification-ps-scripts) and the [Surface Hub Hardware Diagnostic app](https://www.microsoft.com/store/apps/9nblggh51f2g). The account verification script will validate a previously-created device account using PowerShell from your desktop. The Surface Hub Hardware Diagnostic app is installed on your Surface Hub and provides detailed feedback about signin and communication failures. Both are valuable tools to test newly created device accounts and should be used to ensure optimal account availability.

 

 

 





