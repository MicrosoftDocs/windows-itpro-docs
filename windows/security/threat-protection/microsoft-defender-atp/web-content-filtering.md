---
title: Web content filtering
description: Use web content filtering in Microsoft Defender ATP to track and regulate access to websites based on their content categories.
keywords: web protection, web threat protection, web browsing, monitoring, reports, cards, domain list, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Web content filtering

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web content filtering is part of [Web protection](web-protection-overview.md) capabilities in Microsoft Defender ATP. It enables your organization to track and regulate access to websites based on their content categories. Many of these websites, while not malicious, might be problematic due to compliance regulations, bandwidth usage, or other concerns.

You can configure policies across your device groups to block certain categories, effectively preventing users within specified device groups from accessing URLs that are associated with the category. For any category that's not blocked, they are automatically audited i.e. your users will be able to access the URLs without disruption and you will continue to gather access statistics to help create a more custom policy decision. If an element on the page you’re viewing is making calls to a resource which is blocked, your users will see a block notification.

Web content filtering is available on the major web browsers, with blocks performed by SmartScreen (Edge) and Network Protection (Chrome and Firefox). See the prerequisites section for more information about browser support.

To summarize the benefits:

- Users are prevented from accessing websites in blocked categories, whether they are browsing on-premises or away
- You can conveniently deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender ATP role-based access control settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)
- You can access web reports in the same central location, with visibility over actual blocks and web usage

## User experience

The blocking experience for Chrome/Firefox is provided by Network Protection, which provides a system-level toast notifying the user of a blocked connection. 

For a more user-friendly in-browser experience, consider using Edge.

## Prerequisites

Before trying out this feature, make sure you have the following:

- Windows 10 Enterprise E5 license
- Access to Microsoft Defender Security Center portal
- Devices running Windows 10 Anniversary Update (version 1607) or later with the latest MoCAMP update. 
Note that if SmartScreen is not turned on, Network Protection will take over the blocking. This requires enabling Network Protection [on the device](enable-network-protection.md).

## Data handling

For this feature, we will follow whichever region you have elected to use as part of your [Microsoft Defender ATP data handling settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). Your data will not leave the data center in that region. In addition, your data will not be shared with any third-parties, including our data providers. However, we may send them aggregate data (across users and organizations) to help them improve their feeds.


## Turn on web content filtering

From the left-hand navigation menu, select **Settings > General > Advanced Features**. Scroll down until you see the entry for **Web content filtering**. Switch the toggle to **On** and **Save preferences**.

### Configure web content filtering policies

Web content filtering policies specify which site categories are blocked on which device groups. To manage the policies, go to **Settings > Rules > Web content filtering**.

Use the filter to locate policies that contain certain blocked categories or are applied to specific device groups.

### Create a policy

To add a new policy:

1. Select **Add policy** on the **Web content filtering** page in **Settings**.
2. Specify a name.
3. Select the categories to block. Use the expand icon to fully expand each parent category and select specific web content categories.
4. Specify the policy scope. Select the device groups to specify where to apply the policy. Only devices in the selected device groups will be prevented from accessing websites in the selected categories.
5. Review the summary and save the policy. The policy may take up to 15 minutes to apply to your selected devices.

>[!NOTE]
>If you are removing a policy or changing device groups at the same time, this might cause a delay in policy deployment.

>ProTip: You can deploy a policy without selecting any category on a device group. This action will create an audit only policy, to help you understand user behavior before creating a block policy. 

## Web content filtering cards and details

Select **Reports > Web protection** to view cards with information about web content filtering and web threat protection. The following cards provide summary information about web content filtering.

### Web activity by category

This card lists the parent web content categories with the largest percentage change in the number of access attempts, whether they have increased or decreased. You can use this card to understand drastic changes in web activity patterns in your organization from last 30 days, 3 months, or 6 months. Select a category name to view more information about that particular category.

In the first 30 days of using this feature, your organization might not have sufficient data to display in this card.

![Image of web activity by category card](images/web-activity-by-category600.png)

### Web content filtering summary card

This card displays the distribution of blocked access attempts across the different parent web content categories. Select one of the colored bars to view more information about a specific parent web category.

![Image of web content filtering summary card](images/web-content-filtering-summary.png)

### Web activity summary card

This card displays the total number of requests for web content in all URLs.

![Image of web activity summary card](images/web-activity-summary.png)

### View card details

You can access the **Report details** for each card by selecting a table row or colored bar from the chart in the card. The report details page for each card contains extensive statistical data about web content categories, website domains, and device groups.

![Image of web protection report details](images/web-protection-report-details.png)

- **Web categories**: Lists the web content categories that have had access attempts in your organization. Select a specific category to open a summary flyout.

- **Domains**: Lists the web domains that have been accessed or blocked in your organization. Select a specific domain to view detailed information about that domain.

- **Device groups**: Lists all the device groups that have generated web activity in your organization

Use the time range filter at the top left of the page to select a time period. You can also filter the information or customize the columns. Select a row to open a flyout pane with even more information about the selected item.


## Errors and issues

### Limitations and known issues in this preview
- Only Edge is supported if your device's OS configuraiton is Server (cmd > Systeminfo > OS Configuration). This is because Network Protection is only supported in Inspect mode on Server devices which is responsible for securing traffic across Chrome/Firefox.

- Unassigned devices will have incorrect data shown within the report. In the Report details > Device groups pivot, you may see a row with a blank Device Group field. This group contains your unassigned devices in the interim before they get put into your specified group. The report for this row may not contain an accurate count of devices or access counts.

## Related topics

- [Web protection overview](web-protection-overview.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
- [Respond to web threats](web-protection-response.md)
