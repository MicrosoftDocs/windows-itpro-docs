---
title: Cortana integration in your business or enterprise (Windows 10)
description: The world’s first personal digital assistant helps users get things done, even at work. Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.
ms.assetid: DB7B05DA-186F-4628-806A-F8B134E2AF2C
author: eross-msft
---

# Cortana integration in your business or enterprise


**Applies to:**

-   Windows 10
-   Windows 10 Mobile

The world’s first personal digital assistant helps users get things done, even at work. Cortana includes powerful configuration options specifically to optimize for unique small to medium-sized business and enterprise environments.

## <a href="" id="cortana-integration-with-o365"></a>Cortana integration with Office 365


Cortana in Windows 10 is already great at letting your employees quickly see what the day is going to look like, see where and when their meetings are going to be, get a sense of travel times to and from work, and even get updates from a calendar for upcoming trips.

But Cortana works even harder when she connects to Office 365, helping employees prepare for meetings, learn about co-workers, and receive reminders about where they need to be so they won’t be late.

**More info:**

-   For specific info about what you need to know as a company administrator, including how to turn off Cortana with Office 365, see the [Cortana integration with Office 365](http://go.microsoft.com/fwlink/p/?LinkId=717378) support topic.

-   For a quick review of the frequently asked questions about Cortana and Office 365 integration, see the blog post, [An early look at Cortana integration with Office 365](http://go.microsoft.com/fwlink/p/?LinkId=717379).

## <a href="" id="cortana-and-bi-power"></a>Cortana and Power BI


Integration between Cortana and Power BI shows how Cortana can work with custom business analytics solutions to enable you to get answers directly from your key business data, including introducing new features that let you create custom Cortana answers using the full capabilities of Power BI Desktop.

**More info:**

-   For specific info about how to start using Power BI and Cortana integration, how to customize your data results, and how to use the “Hey Cortana” functionality, see the [Power BI: Announcing Power BI integration with Cortana and new ways to quickly find insights in your data](http://go.microsoft.com/fwlink/p/?LinkId=717382) blog.

## Cortana and Microsoft Dynamics CRM


Cortana integration is a Preview feature that's available for your test or dev environment, starting with the CRM Online 2016 Update. If you decide to use this Preview feature, you'll need to turn in on and accept the license terms. After that, salespeople will get proactive insights from Cortana on important CRM activities, including sales leads, accounts, and opportunities; presenting the most relevant info at any given time.

**More info:**

-   For more info about Preview features, see [What are Preview features and how do I enable them?](http://go.microsoft.com/fwlink/p/?LinkId=746817).

-   For more info about Cortana, see [What is Cortana?](http://go.microsoft.com/fwlink/p/?LinkId=746818).

-   For more info about CRM integration, how to turn on Cortana, and how to provide feedback, see [Preview feature: Set up Cortana integration](http://go.microsoft.com/fwlink/?LinkId=746819).

## Cortana and privacy


We understand that there are concerns about Cortana and enterprise privacy, so we’ve put together the [Cortana, Search, and privacy: FAQ](http://go.microsoft.com/fwlink/p/?LinkId=717383) topic that covers many of the frequently asked questions. These questions include things such as what info is collected by Cortana, where the info is saved, how to manage what data is collected, how to turn Cortana off, how to opt completely out of data collection, and what info is shared with other Microsoft apps and services.

## <a href="" id="set-up-cortana-using-gp-and-mdm"></a>Set up Cortana using Group Policy and MDM policies


Set up and manage Cortana by using the following Group Policy and mobile device management (MDM) policies.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy</th>
<th align="left">MDM policy</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Computer Configuration\Administrative Templates\Windows Components\Search\Allow Cortana</p></td>
<td align="left"><p>Experience/AllowCortana</p></td>
<td align="left"><p>Specifies whether employees can use Cortana.</p>
<div class="alert">
<strong>Note</strong>  
<p>Employees can still perform searches even with Cortana turned off.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Computer Configuration\Administrative Templates\Control Panel\Regional and Language Options\Allow input personalization</p></td>
<td align="left"><p>Privacy/AllowInput Personalization</p></td>
<td align="left"><p>Specifies whether to turn on automatic learning, which allows the collection of speech and handwriting patterns, typing history, contacts, and recent calendar information. It is required for the use of Cortana.</p>
<div class="alert">
<strong>Important</strong>  
<p>Cortana won’t work if this setting is turned off (disabled).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>None</p></td>
<td align="left"><p>System/AllowLocation</p></td>
<td align="left"><p>Specifies whether to allow app access to the Location service.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Computer Configuration\Administrative Templates\Windows Components\Search\Don't search the web or display web results</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Specifies whether search can perform queries on the web and if the web results are displayed in search.</p>
<div class="alert">
<strong>Important</strong>  
<p>Cortana won’t work if this setting is turned off (disabled).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Computer Configuration\Administrative Templates\Windows Components\Search\Allow search and Cortana to use location</p></td>
<td align="left"><p>Search/AllowSearchToUse Location</p></td>
<td align="left"><p>Specifies whether search and Cortana can provide location aware search and Cortana results.</p>
<div class="alert">
<strong>Important</strong>  
<p>Cortana won’t work if this setting is turned off (disabled).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Computer Configuration\Administrative Templates\Windows Components\Search\Set the SafeSearch setting for Search</p></td>
<td align="left"><p>Search/SafeSearch Permissions</p></td>
<td align="left"><p>Specifies what level of safe search (filtering adult content) is required.</p>
<div class="alert">
<strong>Note</strong>  
<p>This setting only applies to Windows 10 Mobile.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>User Configuration\Administrative Templates\Windows Components\File Explorer\Turn off display of recent search entries in the File Explorer search box</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Specifies whether the search box can suggest recent queries and prevent entries from being stored in the registry for future reference.</p>
<div class="alert">
<strong>Important</strong>  
<p>Cortana won’t work if this setting is turned off (disabled).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>User Configuration\Administrative Templates\Start Menu and Taskbar\Do not search communications</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Specifies whether the Start menu search box searches communications.</p>
<div class="alert">
<strong>Important</strong>  
<p>Cortana won’t work if this setting is turned off (disabled).</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

**More info:**

-   For specific info about how to set, manage, and use each of these MDM policies to configure Cortana in your enterprise, see the [Policy CSP](http://go.microsoft.com/fwlink/p/?LinkId=717380) topic, located in the configuration service provider reference topics. For specific info about how to set, manage, and use each of these Group Policies to configure Cortana in your enterprise, see the [Group Policy TechCenter](http://go.microsoft.com/fwlink/p/?LinkId=717381).

## Related topics


[Cortana and Windows](http://go.microsoft.com/fwlink/p/?LinkId=717384)

[Cortana for developers](http://go.microsoft.com/fwlink/p/?LinkId=717385)

 

 





