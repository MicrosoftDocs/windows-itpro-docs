---
title: Quick guide to Windows as a service
description: In Windows 10, Microsoft has streamlined servicing to make operating system updates simpler to test, manage, and deploy.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: high
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 12/31/2017
---

# Quick guide to Windows as a service

Here's a quick guide to the most important concepts in Windows as a service.

## Definitions

Some new terms have been introduced as part of Windows as a service, so you should know what these terms mean.

- **Feature updates** are released annually. As the name suggests, these updates add new features, delivered in bite-sized chunks compared to the previous practice of Windows releases every 3-5 years.
- **Quality updates** deliver both security and nonsecurity fixes. They're typically released on the second Tuesday of each month, though they can be released at any time. Quality updates include security updates, critical updates, servicing stack updates, and driver updates. Quality updates are cumulative, so installing the latest quality update is sufficient to get all the available fixes for a specific Windows 10 feature update. The "servicing stack" is the code that installs other updates, so they're important to keep current. For more information, see [Servicing stack updates](servicing-stack-updates.md).
- **Insider Preview** builds are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features and confirm compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered.
- **Servicing channels** allow organizations to choose when to deploy new features.
  - The **General Availability Channel** receives feature updates annually.
  - The **Long-Term Servicing Channel**, which is meant only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATMs, receives new feature releases every two to three years.
- **Deployment rings** are groups of devices used to initially pilot, and then to broadly deploy, each feature update in an organization.

For more information, see [Overview of Windows as a service](waas-overview.md).

For some interesting in-depth information about how cumulative updates work, see [Windows Updates using forward and reverse differentials](PSFxWhitepaper.md).

## Key concepts

With each release in the General Availability Channel, we recommend beginning deployment right away to devices selected for early adoption (targeted validation) and ramp up to full deployment at your discretion.

Windows Enterprise LTSC versions are separate **Long-Term Servicing Channel** versions. Each release is supported for a total of 10 years (five years standard support, five years extended support). New releases are expected about every three years.

For more information, see [Assign devices to servicing channels for Windows client updates](waas-servicing-channels-windows-10-updates.md).

## Staying up to date

To stay up to date, deploy feature updates at an appropriate time after their release. You can use various management and update tools such as Windows Update, Windows Update for Business, Windows Server Update Services, Microsoft Configuration Manager, and non-Microsoft products to help with this process.

Extensive advanced testing isn't required. Instead, only business-critical apps need to be tested, with the remaining apps validated through a series of pilot deployment rings. Once these pilot deployments have validated most apps, broad deployment can begin.

This process repeats with each new feature update. These are small deployment projects, compared to the large projects that were necessary with the old three-to-five-year Windows release cycles.

Other technologies such as [BranchCache](waas-branchcache.md) and [Delivery Optimization](../do/delivery-optimization-configure.md), both peer-to-peer distribution tools, can help with the distribution of the feature update installation files.
