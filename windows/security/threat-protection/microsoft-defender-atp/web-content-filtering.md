---
title: Monitoring web browsing security in Microsoft Defender ATP
description: Use web protection in Microsoft Defender ATP to monitor web browsing security
keywords: web protection, web threat protection, web browsing, monitoring, reports, cards, domain list, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
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

# Web content filtering configuration & reporting

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web content filtering enables you to track and regulate access to websites based on their content categories. Many of these websites, while not malicious, might be problematic due to compliance regulations, bandwidth usage, or other concerns.

You can configure policies across your machine groups to block certain categories, effectively preventing users within specified machine groups from accessing URLs within that category. If a category is not blocked, all your users will be able to access the URLs without disruption, but web content filtering will continue to gather access statistics that you can use to understand web usage and inform future policy decisions.

Web content filtering is available on most major web browsers, with blocks performed by SmartScreen (Edge) and Network Protection (Internet Explorer, Chrome, Firefox, and all other browsers). See the prerequisites section for more information about browser support.

To summarize the benefits:

- Users are prevented from accessing websites in blocked categories, whether they are browsing on-premises or away
- You can conveniently deploy varied policies to various sets of users using the machine groups defined in the Microsoft Defender ATP role-based access control settings
- You can access web reports in the same central location, with visibility over actual blocks and web usage

## Prerequisites

Before trying out this feature, make sure you have the following:
•	Windows E5 license
•	Access to Microsoft Defender Security Center portal
•	 Machines running Windows 10 Anniversary Update (version 1607) or later with the latest MoCAMP update (for Network Protection on Internet Explorer, Edge, Chrome, or Firefox)
•	Machines running Windows 10 May 2019 Update (version 1903) or later (for a better user experience from SmartScreen on Edge). Note that if SmartScreen is not turned on, Network Protection will take over the blocking.
•	A valid license with a partner data provider. For details on how to acquire a license, please read the section below.
Partner licensing
In order to give customers access to various sources of web content categorization data, we are very excited to partner with data providers for this feature. We’ve chosen Cyren as our first partner, who we’ve worked with closely to build an integrated solution. Here’s a brief description of what they do:
 
About Cyren 
More than 1.3 billion users around the world rely on Cyren's 100% cloud security solutions to protect them against cyberattacks and data loss every day. Powered by the world's largest security cloud, Cyren (NASDAQ: CYRN) delivers fast time-to-protection with award-winning email security, cloud sandboxing and DNS filtering services for business, and threat intelligence solutions for service providers and security vendors like Microsoft, Google and Check Point. 
About Cyren and Threat Intelligence Service for Microsoft Defender ATP
CYREN’S URL FILTERING (URLF) INCLUDES 70 CATEGORIES, PROVIDING PARTNERS WITH THE ABILITY TO BUILD POWERFUL AND ADVANCED WEB SECURITY APPLICATIONS.
The broad range of categories enables numerous applications: Protecting users browsing the web from threats such as malware and phishing sites; Ensuring employee productivity; Consumer services such as parental control. Cyren’s comprehensive categories provide the necessary flexibility for any implementation requirement.
Cyren's web content classification technology is integrated by design into Microsoft Defender ATP to enable web filtering and auditing capabilities.
Learn more at https://www.cyren.com/oem


Signing up for a Cyren License
Cyren is offering a 60-day free trial for all MDATP customers. To sign up, please follow the steps below from the portal.
1.	Go to Reports > Web protection from the side nav
 
2. Click the "connect to a partner" button below
  
3.Go through the flow from the flyout to register and connect your Cyren account. Note: a user with AAD app admin/global admin permissions is required to complete these steps


Data handling
For this feature, we will follow whichever region you have elected to use as part of your Microsoft Defender ATP data handling settings. Your data will not leave the data center in that region. In addition, your data will not be shared with any third-parties, including our data providers. However, we may send them aggregate data (across users and organizations) to help them improve their feeds.
 
Turn on web content filtering
From the left-hand navigation menu, select Settings. Under the section General, choose Advanced Features. Scroll down until you see the entry for Web content filtering. Switch the toggle to On, then hit the Save preferences button.
 
 Configure web content filtering policies
Web content filtering policies specify which site categories are blocked on which machine groups. To manage the policies, go to Settings > Rules > Web content filtering.
 
Web content filtering settings page
Use the filter to locate policies that contain certain blocked categories or are applied to specific machine groups. For more information on categories, see the appendix.
Create a policy
To add a new policy:
1.	Click Add policy on the Web content filtering page in Settings.
2.	Specify a name. 
3.	Select the categories to block. Use the expand icon to fully expand each parent category and select specific web content categories.
 
Selecting blocked categories during policy creation
4.	Specify the policy scope. Select the machine groups to specify where to apply the policy. Only machines in the selected machine groups will be prevented from accessing websites in the selected categories.
5.	Review the summary and save the policy. The policy may take up to 15 minutes to apply to your selected machines. 

Note: If you are removing a policy or changing machine groups at the same time, this might cause a delay in policy deployment.
Information worker UX
The standard blocking experience is provided by Network Protection, which provides a system-level toast notifying the user of a blocked connection.
For a more user-friendly experience, consider user SmartScreen on Edge, which will show the following page when blocked:
View summary cards and reports
 
Select Reports > Web protection to view the web protection reports page. The following cards provide summary information about web content filtering:
•	Web activity by category
•	Web content filtering summary
For the Web activity by category card, you can view data from the following periods:
•	Last 30 days
•	Last 3 months
•	Last 6 months
Web activity by category card
This card lists the parent web content categories with the largest percentage change in the number of access attempts, whether they have increased or decreased. You can use this card to understand drastic changes in web activity patterns in your organization.  
Click a category name to view more information about that particular category.
Note: In the first 30 days of using this feature, your organization might not have sufficient data to display in this card.
Web content filtering summary card
This card displays the distribution of blocked access attempts across the different parent web content categories. Click a colored slice to view more information about a specific parent web category.
View report details
The Report details page contains reports in separate tabs providing extensive statistical data about web content categories, website domains, and machine groups.
 
Report details page
Use the time range filter at the top left of the page to select a time period:
•	1 day
•	1 week
•	30 days
•	3 months
•	6 months
You can also use the filters on the right to filter for specific machine groups or content categories. 
Select a row to open a flyout pane with even more information about the selected item.
Web categories
This report lists the web content categories that have had access attempts in your organization. 
 
List of accessed web categories
You can filter on the following:
•	Parent category
•	Machine group
•	Whether the access attempt was allowed or blocked
Clicking on a specific category will open a summary flyout. In the flyout, you will see:
•	A graph showing the change in access attempts over your chosen time period
•	Top ten domains in that category in terms of total access attempts. Click a domain to view more information about that domain.
•	Top ten machines in terms of total access attempts to websites in that category. Click a machine to view more information about that machine.
•	Policies that block websites in that category. Click Manage to view and edit the details of a policy.
 
Domains
This report lists the web domains that have been accessed or blocked in your organization.
 
List of accessed website domains
You can filter on the following:
•	Parent category
•	Machine group the event occurred on
•	Whether the access attempt was allowed or blocked
Click a specific domain to view detailed information about that domain.
Machine groups
This report lists all the machine groups that have generated web activity in your organization.
 
Clicking on a specific machine group will open a summary flyout. In the flyout, you will see:
•	A graph showing the change in access attempts over your chosen time period
•	Top ten domains accessed by the selected machine group. Click a domain to view more information about that domain.
•	Top ten machines in that machine group in terms of total access attempts. Click a machine to view more information about that machine.
•	Top ten web content categories accessed by machines in the selected group.
FAQ
Q: Why am I seeing the following error when trying to connect to Cyren?
 
A: You need to be logged in to an AAD account with either App administrator or Global Administrator privileges. Your IT admin would most likely either have these permissions and/or be able to grant them to you.
Q: What exactly are the permissions the app is asking for?
 
A:           i) ‘Sign in and read user profile’ allows Cyren to read your tenant info from your MDATP account, such as your tenant ID, which will be tied to your Cyren license.
ii) ‘Read and Write Integration settings’ exists under the WindowsDefenderATP scope within permissions. This line allows Cyren to add/modify/revoke Cyren license status on the MDATP portal.
Appendix
Categories
We have grouped individual web content categories from the data provider into parent categories, making it easier for you to block and monitor closely related categories. Below is a list of categories we currently support, with their descriptions provided by Cyren.
Adult content
•	Cults - Sites relating to non-traditional religious practice typically known as "cults," that is, considered to be false, unorthodox, extremist, or coercive, with members often living under the direction of a charismatic leader. 
•	Gambling - Sites that offer or are related to online gambling, lottery, casinos and betting agencies involving chance.
•	Nudity - Sites that contain full or partial nudity that are not necessarily overtly sexual in intent. Includes sites that advertise or sell lingerie, intimate apparel, or swimwear.
•	Pornography/Sexually Explicit - Sites that contain explicit sexual content. Includes adult products such as sex toys, CD-ROMs, and videos, adult services such as videoconferencing, escort services, and strip clubs, erotic stories and textual descriptions of sexual acts.
•	Sex Education - Sites relating to sex education, including subjects such as respect for partner, abortion, gay and lesbian lifestyle, contraceptives, sexually transmitted diseases, and pregnancy. 
•	Tasteless - Sites with offensive or tasteless content, including profanity.
•	Violence - Sites that contain images or text depicting or advocating physical assault against humans, animals, or institutions. Sites of a particularly gruesome nature. Sites that contain profanity. 
High bandwidth
•	Download Sites - Sites that contain downloadable software, whether shareware, freeware, or for a charge. Includes some peer-to-peer sites.
•	Image Sharing - Sites that host digital photographs and images, online photo albums and digital photo exchanges.
•	Peer-to-Peer - Sites that enable direct exchange of files between users without dependence on a central server. 
•	Streaming Media & Downloads - Sites that deliver streaming content, such as Internet radio, Internet TV or MP3 and live or archived media download sites. Includes fan sites, or official sites run by musicians, bands, or record labels. 
Legal liability
•	Child Abuse Images - Sites that portray or discuss children in sexual or other abusive acts.
•	Criminal Activity - Sites that offer advice on how to commit illegal or criminal activities, or to avoid detection. These can include how to commit murder, build bombs, pick locks, etc. Also includes sites with information about illegal manipulation of electronic devices, hacking, fraud and illegal distribution of software. 
•	Hacking - Sites that promote or give advice about how to gain unauthorized access to proprietary computer systems, for the purpose of stealing information, perpetrating fraud, creating viruses, or committing other illegal activity related to theft of digital inform.
•	Hate & Intolerance - Sites that promote a supremacist political agenda, encouraging oppression of people or groups of people based on their race, religion, gender, age, disability, sexual orientation or nationality. 
•	Illegal Drugs - Sites with information on the purchase, manufacture, and use of illegal or recreational drugs and their paraphernalia, and misuse of prescription drugs and other compounds.
•	Illegal Software - Sites that illegally distribute software or copyrighted materials such as movies or music, software cracks, illicit serial numbers, illegal license key generators. 
•	School Cheating - Sites that promote unethical practices such as cheating or plagiarism by providing test answers, written essays, research papers, or term papers. 
•	Self-Harm – Sites that promote actions that are relating to harming oneself, such as suicide, anorexia, bulimia, etc.
•	Weapons - Sites that depict, sell, review or describe guns and weapons, including for sport.
Leisure
•	Chat - Sites that enable web-based exchange of real-time messages through chat services or chat rooms. 
•	Games - Sites relating to computer or other games, information about game producers, or how to obtain cheat codes. Game-related publication sites. 
•	Instant Messaging - Sites that enable logging in to instant messaging services such as ICQ, AOL Instant Messenger, IRC, MSN, Jabber, Yahoo Messenger, and the like. 
•	Professional Networking - Sites that enable professional networking for online communities.
•	Social Networking - Sites that enable social networking for online communities of various topics, for friendship, or/and dating. 
•	Web-based Email - Sites that enables users to send and receive email through a web-accessible email account.
Uncategorized
•	Unknown – Sites that are not yet assigned a category
Limitations and known issues in this preview
1.	Unassigned machines will have incorrect data shown within the report
In the Report details > Machine groups pivot, you may see a row with a blank Machine Group field. This group contains your unassigned machines in the interim before they get put into your specified group. The report for this row may not contain an accurate count of machines or access counts.

2.	The data in our reports may not be congruent with other data on the site
We currently do not support real-time data processing for this feature, so you may see inconsistencies between the data in our reports and the URL entity page.



## Related topics
- [Web protection overview](web-protection-overview.md)
- [Respond to web threats](web-protection-response.md)
