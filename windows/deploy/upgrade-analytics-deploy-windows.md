---
title: Upgrade Analytics - Get a list of computers that are upgrade-ready (Windows 10)
description: Describes how to get a list of computers that are ready to be upgraded in Upgrade Analytics.
ms.prod: w10
author: greg-lindsay
---

# Step 3: Deploy

All of your work up to now involved reviewing and resolving application and driver issues. Along the way, as you’ve resolved issues and decided which applications and drivers are ready to upgrade, you’ve been building a list of computers that are upgrade ready.

The blades in the **Deploy** section are:

## Deploy eligible computers

Computers grouped by deployment decision are listed.

<!-- PRESERVING ORIGINAL IMAGE CODING JUST IN CASE
<img src="media/image9.png" width="195" height="316" />
-->

![Deploy eligible computers](images/upgrade-analytics-deploy-eligible.png)

Select **Export computers** for more details, including computer name, manufacturer and model, and Windows edition currently running on the computer. Sort or further query the data and then select **Export** to generate and save a comma-separated value (csv) list of upgrade-ready computers.

>**Important**<br> When viewing inventory items in table view, the maximum number of rows that can be viewed and exported is limited to 5,000. If you need to view or export more than 5,000 items, reduce the scope of the query so you can export fewer items at a time.

## Computer groups

Computer groups allow you to segment your environment by creating device groups based on OMS log search results, or by importing groups from Active Directory, WSUS or System Center Configuration Manager. Computer groups are an OMS feature. For more information, see [Computer groups in OMS](https://blogs.technet.microsoft.com/msoms/2016/04/04/computer-groups-in-oms/).

Query based computer groups are recommended in the initial release of this feature. A feature known as **Configuration Manager Upgrade Analytics Connector** is anticipated in a future release that will enable synchronization of **ConfigMgr Collections** with computer groups in OMS.

### Getting started with Computer Groups

When you sign in to OMS, you will see a new blade entitled **Computer Groups**. See the following example:

![Computer groups](images/ua-cg-01.png)

To create a computer group, open **Log Search** and create a query based on **Type=UAComputer**, for example:

```
Type=UAComputer Manufacturer=DELL
```

![Computer groups](images/ua-cg-02.png)

When you are satisfied that the query is returning the intended results, add the following text to your search:

```
| measure count() by Computer
```

This will ensure every computer only shows up once. Then, save your group by clicking **Save** and **Yes**. See the following example:

![Computer groups](images/ua-cg-03.png)

Your new computer group will now be available in Upgrade Analytics. See the following example:

![Computer groups](images/ua-cg-04.png)

### Using Computer Groups

When you drill into a computer group, you will see that computers are categorized by **UpgradeDecision**. For computers with the status **Review in progress** or **Won’t upgrade** you can drill down to view issues that cause a computer to be in each category, or you can simply display a list of the computers in the category. For computers that are designated **Ready to upgrade**, you can go directly to the list of computers that are ready.

![Computer groups](images/ua-cg-05.png)

Viewing a list of computers in a certain status is self-explanatory, Let’s look at what happens when you click the details link on **Review in progress**:

![Computer groups](images/ua-cg-06.png)

Next, select if you want to see application issues (**UAApp**) or driver issues (**UADriver**). See the following example of selecting **UAApp**:

![Computer groups](images/ua-cg-07.png)

A list of apps that require review so that Dell Computers are ready for upgrade to Windows 10 is displayed.