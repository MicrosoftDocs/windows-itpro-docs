---
title: Cortana integration in your business or enterprise (Windows 10)
ms.reviewer: 
manager: dansimp
description: Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
---

# Cortana integration in your business or enterprise
**Applies to:**

-   Windows 10, version 1703
-   Windows 10 Mobile, version 1703

## Who is Cortana?

Cortana is a personal productivity assistant in Microsoft 365, helping your users achieve more with less effort and focus on what matters. The Cortana app in Windows 10 helps users quickly get information across Microsoft 365, using typed or spoken queries to connect with people, check calendars, set reminders, add tasks, and more.

[INSERT SCREENSHOT 1]

##

## Where is Cortana available for use in my organization?

Your employees can use Cortana in the languages listed [here](https://support.microsoft.com/en-us/help/4026948/cortanas-regions-and-languages). However, most productivity skills are currently only enabled for English (United States), for users with mailboxes in the United States.

The Cortana app in Windows 10, version 2004 requires the latest Microsoft Store update to support languages other than English (United States).

##

## Required hardware and software

Cortana requires a PC running Windows 10, version 1703 or later, as well as the following software to successfully run the included scenario in your organization.

**Note** : A microphone is not required to use Cortana.

Table 1

| **Software** | **Minimum version** |
| --- | --- |
| Client operating system | **Desktop:**
- Windows 10, version 2004 (recommended)
- Windows 10, version 1703 (legacy version of Cortana)
- Mobile: Windows 10 mobile, version 1703 (legacy version of Cortana)

For more information on the differences between Cortana in Windows 10, version 2004 and earlier versions, please see &quot;How is my data processed by Cortana?&quot; below.
**Mobile:** Windows 10 Mobile, version 1703 (legacy version of Cortana) |
| Azure Active Directory (Azure AD) | While all employees signing into Cortana need an Azure AD account, an Azure AD premium tenant isn&#39;t required. |
| Additional policies (Group Policy and Mobile Device Management (MDM)) | There is a rich set of policies that can be used to manage various aspects of Cortana. Most of these policies will limit the abilities of Cortana but won&#39;t turn Cortana off.
For example, if you turn **Speech** off, your employees won&#39;t be able to use the wake word (&quot;Cortana&quot;) for hands-free activation or voice commands to easily ask for help. |

## Signing in using Azure AD

Your organization must have an Azure AD tenant and your employees&#39; devices must all be Azure AD-joined for the best Cortana experience. (Users may also sign into Cortana with a Microsoft account, but will not be able to use their enterprise email or calendar.) For info about what an Azure AD tenant is, how to get your devices joined, and other Azure AD maintenance info, see [Azure Active Directory documentation.](https://docs.microsoft.com/en-us/azure/active-directory/)

## How is my data processed by Cortana?

Cortana&#39;s approach to integration with Microsoft 365 has changed in with Windows 10, version 2004 and later.

### **Cortana in Windows 10, version 2004 and later**

Cortana in Windows 10, version 2004 and later, meets the same enterprise-level privacy, security, and compliance promises for Cortana enterprise services, as reflected in the [Online Services Terms (OST)](https://www.microsoft.com/en-us/licensing/product-licensing/products). For more information, see [Cortana in Microsoft 365](https://docs.microsoft.com/en-us/microsoft-365/admin/misc/cortana-integration?view=o365-worldwide#what-data-is-processed-by-cortana-in-office-365).

#### How does Microsoft store, retain, process, and use Customer Data in Cortana?

The table below describes the data handling for Cortana enterprise services.

| **Name** | **Description** |
| --- | --- |
| **Storage**

 | Customer Data is stored on Microsoft servers inside the Office 365 cloud. Your data is part of your tenant. Speech audio is not retained.

 |
| **Stays in Geo**

 | Customer Data is stored on Microsoft servers inside the Office 365 cloud in Geo. Your data is part of your tenant.

 |
| **Retention**

 | Customer Data is deleted when the account is closed by the tenant administrator or when a GDPR Data Subject Rights deletion request is made.
Speech audio is not retained.

 |
| **Processing and Confidentiality**

 | Personnel engaged in the processing of Customer Data and personal data (i) will process such data only on instructions from Customer, and (ii) will be obligated to maintain the confidentiality and security of such data even after their engagement ends.

 |
| **Usage**

 | Microsoft uses Customer Data only to provide the services agreed upon, and for purposes that are compatible with those services. Machine learning to develop and improve models is one of those purposes. Machine learning is done inside the Office 365 cloud consistent with the Online Services Terms.
Your data is not used to target advertising. |

#### How does the wake word (&quot;Cortana&quot;) work? If I enable it, is Cortana always listening?

Cortana only begins listening for commands or queries when the wake word is detected, or the microphone button has been selected.

First, the user must enable the wake word from within Cortana settings. Once it has been enabled, a component of Windows called the [Windows Multiple Voice Assistant platform](https://docs.microsoft.com/en-us/windows-hardware/drivers/audio/voice-activation-mva#voice-activation) will start listening for the wake word. No audio is processed by speech recognition unless two local wake word detectors and a server-side one agree with high confidence that the wake word was heard.

The first decision is made by the Windows Multiple Voice Assistant platformleveraging hardware optionally included in the user&#39;s PC for power savings. If the wake word is detected, Windows will show a microphone icon in the system tray indicating an assistant app is listening.

[INSERT SCREENSHOT 2]

At that point, the Cortana app will receive the audio, run a second, more accurate wake word detector, and optionally send it to a Microsoft cloud service where a third wake word detector will confirm. If the service does not confirm that the activation was valid, the audio will be discarded and deleted from any further processing or server logs. On the user&#39;s PC, the Cortana app will be silently dismissed, and no query will be shown in conversation history because the query was discarded.

If all three wake word detectors agree, the Cortana canvas will show what speech has been recognized.

### **Cortana in Windows 10, versions 1909 and earlier**

Cortana in Windows 10, versions 1909 and earlier, isn&#39;t a service covered by the Office 365 Trust Center. [Learn more about how Cortana in Windows 10, version 1909 and earlier, treats your data](https://go.microsoft.com/fwlink/p/?LinkId=536419).

Cortana is covered under the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement).

## **See also**

- [What is Cortana?](https://go.microsoft.com/fwlink/p/?LinkId=746818)

***************************************************************

## Who is Cortana?
Cortana is Microsoft’s personal digital assistant, who helps busy people get things done, even while at work.
Cortana has powerful configuration options, specifically optimized for your business. By signing in with an Azure Active Directory (Azure AD) account, your employees can give Cortana access to their enterprise/work identity, while getting all the functionality Cortana provides to them outside of work.

Using Azure AD also means that you can remove an employee’s profile (for example, when an employee leaves your organization) while respecting Windows Information Protection (WIP) policies and ignoring enterprise content, such as emails, calendar items, and people lists that are marked as enterprise data.

![Cortana at work, showing the About me screen](../images/cortana-about-me.png)

## Where is Cortana available for use in my organization?
You can use Cortana at work in all countries/regions where Cortana is supported for consumers. This includes the United States, United Kingdom, Canada, France, Italy, Germany, Spain, China, Japan, India, and Australia. As Cortana comes to more countries, she will also become available to enterprise customers.

Cortana is available on Windows 10, version 1703 and with limited functionality on Windows 10 Mobile, version 1703.

## Required hardware and software
Cortana requires the following hardware and software to successfully run the included scenario in your organization.

|Hardware |Description |
|---------|------------|
|Microphone |For speech interaction with Cortana. If you don't have a microphone, you can still interact with Cortana by typing in the Cortana Search Box in the taskbar. |
|Windows Phone |For location-specific reminders. You can also use a desktop device to run through this scenario, but location accuracy is usually better on phones. |
|Desktop devices |For non-phone-related scenarios. |


|Software |Minimum version |
|---------|------------|
|Client operating system |<ul><li>**Desktop:** Windows 10, version 1703</li><li>**Mobile:** Windows 10 Mobile, version 1703 (with limited functionality)</li> |
|Azure Active Directory (Azure AD) |While all employees signing into Cortana need an Azure AD account; an Azure AD premium tenant isn’t required. |
|Additional policies (Group Policy and Mobile Device Management (MDM)) |There is a rich set of policies that can be used to manage various aspects of Cortana. Most of these policies will limit the abilities of Cortana, but won't turn Cortana off.<p>For example:<p>If you turn **Location** off, Cortana won't be able to provide location-based reminders, such as reminding you to visit the mail room when you get to work.<p>If you turn **Speech** off, your employees won't be able to use “Hello Cortana” for hands free usage or voice commands to easily ask for help. |
|Windows Information Protection (WIP) (optional) |If you want to secure the calendar, email, and contact info provided to Cortana on a device, you can use WIP. For more info about WIP, see [Protect your enterprise data using Windows Information Protection (WIP)](/windows/threat-protection/windows-information-protection/protect-enterprise-data-using-wip)<p>If you decide to use WIP, you must also have a management solution. This can be Microsoft Intune, Microsoft Endpoint Configuration Manager (version 1606 or later), or your current company-wide 3rd party mobile device management (MDM) solution.|

## Signing in using Azure AD
Your organization must have an Azure AD tenant and your employees’ devices must all be Azure AD-joined for Cortana to work properly. For info about what an Azure AD tenant is, how to get your devices joined, and other Azure AD maintenance info, see [What is an Azure AD directory?](https://msdn.microsoft.com/library/azure/jj573650.aspx)

## Cortana and privacy
We understand that there are some questions about Cortana and your organization’s privacy, including concerns about what info is collected by Cortana, where the info is saved, how to manage what data is collected, how to turn Cortana off, how to opt completely out of data collection, and what info is shared with other Microsoft apps and services. For more details about these concerns, see the [Cortana, Search, and privacy: FAQ](https://windows.microsoft.com/windows-10/cortana-privacy-faq) topic.

Cortana is covered under the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement) and [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement).

## See also
- [What is Cortana?](https://go.microsoft.com/fwlink/p/?LinkId=746818)

- [Known issues for Windows Desktop Search and Cortana in Windows 10](https://support.microsoft.com/help/3206883/known-issues-for-windows-desktop-search-and-cortana-in-windows-10)

- [Cortana for developers](https://go.microsoft.com/fwlink/?LinkId=717385)
