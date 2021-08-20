---
title: Configure Cortana in Windows 10 and Windows 11
ms.reviewer: 
manager: dansimp
description: Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
---

# Configure Cortana in Windows 10 and Windows 11

## Who is Cortana?

Cortana is a personal productivity assistant in Microsoft 365, helping your users achieve more with less effort and focus on what matters. The Cortana app in Windows 10 and Windows 11 helps users quickly get information across Microsoft 365, using typed or spoken queries to connect with people, check calendars, set reminders, add tasks, and more.

:::image type="content" source="../screenshot1.png" alt-text="Screenshot: Cortana home page example":::

## Where is Cortana available for use in my organization?

Your employees can use Cortana in the languages listed [here](https://support.microsoft.com/help/4026948/cortanas-regions-and-languages). However, most productivity skills are currently only enabled for English (United States), for users with mailboxes in the United States.

The Cortana app in Windows 10, version 2004 requires the latest Microsoft Store update to support languages other than English (United States).

## Required hardware and software

Cortana requires a PC running Windows 10, version 1703 or later, as well as the following software to successfully run the included scenario in your organization.

>[!NOTE]
>A microphone isn't required to use Cortana.

| Software | Minimum version |
|---------|---------|
|Client operating system     |     Desktop: <br> - Windows 10, version 2004 (recommended)  <br> <br> - Windows 10, version 1703 (legacy version of Cortana) <br> <br> Mobile: Windows 10 mobile, version 1703 (legacy version of Cortana) <br> <br> For more information on the differences between Cortana in Windows 10, version 2004 and earlier versions, see [**How is my data processed by Cortana**](#how-is-my-data-processed-by-cortana) below. |
|Azure Active Directory (Azure AD)    | While all employees signing into Cortana need an Azure AD account, an Azure AD premium tenant isn't required.        |
|Additional policies (Group Policy and Mobile Device Management (MDM))     |There is a rich set of policies that can be used to manage various aspects of Cortana. Most of these policies will limit the abilities of Cortana but won't turn Cortana off. For example, if you turn **Speech** off, your employees won't be able to use the wake word ("Cortana") for hands-free activation or voice commands to easily ask for help.  |

>[!NOTE]
>For Windows 11, Cortana is no longer pinned to the taskbar by default. You can still pin the Cortana app to the taskbar as you would any other app. In addition, the keyboard shortcut that launched Cortana (Win+C) no longer opens Cortana.

## Signing in using Azure AD

Your organization must have an Azure AD tenant and your employees&#39; devices must all be Azure AD-joined for the best Cortana experience. (Users may also sign into Cortana with a Microsoft account, but will not be able to use their enterprise email or calendar.) For info about what an Azure AD tenant is, how to get your devices joined, and other Azure AD maintenance info, see [Azure Active Directory documentation.](/azure/active-directory/)

## How is my data processed by Cortana?

Cortana's approach to integration with Microsoft 365 has changed with Windows 10, version 2004 and later.

### Cortana in Windows 10, version 2004 and later, or Windows 11

Cortana enterprise services that can be accessed using Azure AD through Cortana in Windows 10, version 2004 and later, or Windows 11, meet the same enterprise-level privacy, security, and compliance promises as reflected in the [Online Services Terms (OST)](https://www.microsoft.com/en-us/licensing/product-licensing/products). To learn more, see [Cortana in Microsoft 365](/microsoft-365/admin/misc/cortana-integration?view=o365-worldwide#what-data-is-processed-by-cortana-in-office-365).

#### How does Microsoft store, retain, process, and use Customer Data in Cortana?

The table below describes the data handling for Cortana enterprise services.


| Name | Description |
|---------|---------|
|**Storage**     |Customer Data is stored on Microsoft servers inside the Office 365 cloud. Your data is part of your tenant. Speech audio is not retained.         |
|**Stays in Geo**     |Customer Data is stored on Microsoft servers inside the Office 365 cloud in Geo. Your data is part of your tenant.         |
|**Retention**     |Customer Data is deleted when the account is closed by the tenant administrator or when a GDPR Data Subject Rights deletion request is made. Speech audio is not retained.         |
|**Processing and confidentiality**     |Personnel engaged in the processing of Customer Data and personal data (i) will process such data only on instructions from Customer, and (ii) will be obligated to maintain the confidentiality and security of such data even after their engagement ends.         |
|**Usage**     |Microsoft uses Customer Data only to provide the services agreed upon, and for purposes that are compatible with those services. Machine learning to develop and improve models is one of those purposes. Machine learning is done inside the Office 365 cloud consistent with the Online Services Terms. Your data is not used to target advertising.  |

#### How does the wake word (Cortana) work? If I enable it, is Cortana always listening?

>[!NOTE]
>The wake word has been re-enabled in the latest version of Cortana in Windows. If you're on Windows 10, version 2004, be sure that you've updated to build 19041.329 or later to use the wake word with Cortana. For earlier builds, you can still click on the microphone button to use your voice with Cortana.

Cortana only begins listening for commands or queries when the wake word is detected, or the microphone button has been selected.

First, the user must enable the wake word from within Cortana settings. Once it has been enabled, a component of Windows called the [Windows Multiple Voice Assistant platform](/windows-hardware/drivers/audio/voice-activation-mva#voice-activation) will start listening for the wake word. No audio is processed by speech recognition unless two local wake word detectors and a server-side one agree with high confidence that the wake word was heard.

The first decision is made by the Windows Multiple Voice Assistant platform leveraging hardware optionally included in the user&#39;s PC for power savings. If the wake word is detected, Windows will show a microphone icon in the system tray indicating an assistant app is listening.

:::image type="content" source="../screenshot2.png" alt-text="Screenshot: Microphone icon in the system tray indicating an assistant app is listening":::

At that point, the Cortana app will receive the audio, run a second, more accurate wake word detector, and optionally send it to a Microsoft cloud service where a third wake word detector will confirm. If the service does not confirm that the activation was valid, the audio will be discarded and deleted from any further processing or server logs. On the user&#39;s PC, the Cortana app will be silently dismissed, and no query will be shown in conversation history because the query was discarded.

If all three wake word detectors agree, the Cortana canvas will show what speech has been recognized.

### Cortana in Windows 10, versions 1909 and earlier

Cortana in Windows 10, versions 1909 and earlier, isn't a service covered by the Office 365 Trust Center. [Learn more about how Cortana in Windows 10, version 1909 and earlier, treats your data](https://go.microsoft.com/fwlink/p/?LinkId=536419).

Cortana is covered under the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement).

## See also

- [What is Cortana?](https://go.microsoft.com/fwlink/p/?LinkId=746818)