---
title: Monitoring web browsing security in Microsoft Defender ATP
description: Use web threat protection in Microsoft Defender ATP to monitor web browsing security
keywords: web threat protection, web browsing, monitoring, reports, cards, domain list, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 08/30/2019
---

# Monitor web browsing security

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Web threat protection lets you monitor your organization’s web browsing security through reports under **Reports > Web protection** in the Microsoft Defender Security Center. The report contains the following cards that provide blocking statistics from web threat protection:

- **Web threat protection blocks over time** — this trending card displays the number of web threats blocked by type during the selected time period (Last 30 days, Last 3 months, Last 6 months)
 
    ![Image of the card showing web threats protection blocks over time](images/wtp-blocks-over-time.png)

- **Web threat protection summary** — this card displays total blocks in the past 30 days, showing distribution across the different types of web threats. Clicking a slice opens the list of the domains of the URLs that were blocked.

    ![Image of the card showing web threats protection summary](images/wtp-summary.png)

>[!Note]
>It can take up to 12 hours before a block is reflected in the cards or the domain list.

## Types of web threats
Web threat protection categorizes malicious and unwanted websites as:
- Phishing — websites that contain spoofed web forms and other phishing mechanisms designed to trick users into divulging their credentials
- Malicious — websites in that host malware and exploit code
- Custom indicator — websites, represented by URLs or domains, that you have added to your indicator list for blocking

## View the domain list
Clicking on specific web threat category in the **Web threat protection summary** card opens the **Domains** page with a list of the blocked domains prefiltered under that threat category. 
The page provides an aggregated domain-level view along with the following information for each domain:
- **Access count** — number of requests for pages in the domain
- **Blocks** — number of times requests are blocked
- **Access trend** — change in number of access attempts
- **Threat category** — type of web threat
- **Machines** — number of machines with access attempts
Selecting a domain opens a flyout that shows the list of URLs in that domain and the list machines with access attempts.

## Related topics
- [Web threat protection overview](web-threat-protection-overview.md)
- [Respond to web threats](web-threat-protection-response.md)