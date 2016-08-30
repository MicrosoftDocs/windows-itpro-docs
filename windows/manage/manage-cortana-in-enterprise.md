---
title: Cortana integration in your business or enterprise (Windows 10)
description: The world’s first personal digital assistant helps users get things done, even at work. Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.
ms.assetid: db7b05da-186f-4628-806a-f8b134e2af2c
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: eross-msft
localizationpriority: high
---

# Cortana integration in your business or enterprise
**Applies to:**

-   Windows 10
-   Windows 10 Mobile

The world’s first personal digital assistant helps users get things done, even at work. Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.

## Cortana integration with Office 365
Cortana in Windows 10 is already great at letting your employees quickly see what the day is going to look like, see where and when their meetings are going to be, get a sense of travel times to and from work, and even get updates from a calendar for upcoming trips.

But Cortana works even harder when she connects to Office 365, helping employees prepare for meetings, learn about co-workers, and receive reminders about where they need to be so they won’t be late.

**More info:**

-   For specific info about what you need to know as a company administrator, including how to turn off Cortana with Office 365, see the [Cortana integration with Office 365](https://go.microsoft.com/fwlink/p/?LinkId=717378) support topic.

-   For a quick review of the frequently asked questions about Cortana and Office 365 integration, see the blog post, [An early look at Cortana integration with Office 365](https://go.microsoft.com/fwlink/p/?LinkId=717379).

## Cortana and Power BI
Integration between Cortana and Power BI shows how Cortana can work with custom business analytics solutions to enable you to get answers directly from your key business data, including introducing new features that let you create custom Cortana answers using the full capabilities of Power BI Desktop.

**More info:**

-   For specific info about how to start using Power BI and Cortana integration, how to customize your data results, and how to use the “Hey Cortana” functionality, see the [Power BI: Announcing Power BI integration with Cortana and new ways to quickly find insights in your data](https://go.microsoft.com/fwlink/p/?LinkId=717382) blog.

## Cortana and Microsoft Dynamics CRM
Cortana integration is a Preview feature that's available for your test or dev environment, starting with the CRM Online 2016 Update. If you decide to use this Preview feature, you'll need to turn in on and accept the license terms. After that, salespeople will get proactive insights from Cortana on important CRM activities, including sales leads, accounts, and opportunities; presenting the most relevant info at any given time.

**More info:**
-   For more info about Preview features, see [What are Preview features and how do I enable them?](https://go.microsoft.com/fwlink/p/?LinkId=746817).
-   For more info about Cortana, see [What is Cortana?](https://go.microsoft.com/fwlink/p/?LinkId=746818).
-   For more info about CRM integration, how to turn on Cortana, and how to provide feedback, see [Preview feature: Set up Cortana integration](https://go.microsoft.com/fwlink/p/?LinkId=746819).

## Cortana and privacy
We understand that there are concerns about Cortana and enterprise privacy, so we’ve put together the [Cortana, Search, and privacy: FAQ](https://go.microsoft.com/fwlink/p/?LinkId=717383) topic that covers many of the frequently asked questions. These questions include things such as what info is collected by Cortana, where the info is saved, how to manage what data is collected, how to turn Cortana off, how to opt completely out of data collection, and what info is shared with other Microsoft apps and services.

## Set up Cortana using Group Policy and MDM policies
Set up and manage Cortana by using the following Group Policy and mobile device management (MDM) policies.

|Group policy |MDM policy |Description |
|-------------|-----------|------------|
|Computer Configuration\Administrative Templates\Windows Components\Search\AllowCortanaAboveLock |AboveLock/AllowCortanaAboveLock |Specifies whether an employee can interact with Cortana using voice commands when the system is locked.<p>**Note**<br>This setting only applies to Windows 10 for desktop devices. |
|Computer Configuration\Administrative Templates\Control Panel\Regional and Language Options\Allow input personalization |Privacy/AllowInputPersonalization |Specifies whether an employee can use voice commands with Cortana in the enterprise.<p>**In Windows 10, version 1511**<br>Cortana won’t work if this setting is turned off (disabled).<p>**In Windows 10, version 1607 and later**<br>Cortana still works if this setting is turned off (disabled). |
|None |System/AllowLocation |Specifies whether to allow app access to the Location service.<p>**In Windows 10, version 1511**<br>Cortana won’t work if this setting is turned off (disabled).<p>**In Windows 10, version 1607 and later**<br>Cortana still works if this setting is turned off (disabled). |
|None |Accounts/AllowMicrosoftAccountConnection |Specifies whether to allow employees to sign in using a Microsoft account (MSA) from Windows apps.<p>Use this setting if you only want to support Azure AD in your organization. |
|Computer Configuration\Administrative Templates\Windows Components\Search\Allow search and Cortana to use location |Search/AllowSearchToUseLocation |Specifies whether Cortana can use your current location during searches and for location reminders. |
|Computer Configuration\Administrative Templates\Windows Components\Search\Set the SafeSearch setting for Search |Search/SafeSearchPermissions |Specifies what level of safe search (filtering adult content) is required.<p>**Note**<br>This setting only applies to Windows 10 Mobile. |
|User Configuration\Administrative Templates\Windows Components\File Explorer\Turn off display of recent search entries in the File Explorer search box |None |Specifies whether the search box can suggest recent queries and prevent entries from being stored in the registry for future reference. |
|Computer Configuration\Administrative Templates\Windows Components\Search\Don't search the web or display web results |None |Specifies whether search can perform queries on the web and if the web results are displayed in search.<p>**In Windows 10 Pro edition**<br>This setting can’t be managed.<p>**In Windows 10 Enterprise edition**<br>Cortana won't work if this setting is turned off (disabled). |
|Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana |Experience/AllowCortana |Specifies whether employees can use Cortana.<p>**Important**<br>Cortana won’t work if this setting is turned off (disabled). However, employees can still perform local searches even with Cortana turned off. |

**More info:**
-   For specific info about how to set, manage, and use each of these MDM policies to configure Cortana in your enterprise, see the [Policy CSP](https://go.microsoft.com/fwlink/p/?LinkId=717380) topic, located in the configuration service provider reference topics. For specific info about how to set, manage, and use each of these Group Policies to configure Cortana in your enterprise, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=717381).

## Related topics
- [Cortana and Windows](https://go.microsoft.com/fwlink/p/?LinkId=717384)
- [Cortana for developers](https://go.microsoft.com/fwlink/p/?LinkId=717385)

 

 





