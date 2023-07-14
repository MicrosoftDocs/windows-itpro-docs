---
title: Quick guide to Windows as a service (Windows 10)
description: In Windows 10, Microsoft has streamlined servicing to make operating system updates simpler to test, manage, and deploy.
ms.prod: windows-client
author: mestew
ms.localizationpriority: high
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 12/31/2017
---

# Quick guide to Windows as a service


**Applies to**

- Windows 10
- Windows 11

Here is a quick guide to the most important concepts in Windows as a service. For more information, see the [extensive set of documentation](index.md).

## Definitions

Some new terms have been introduced as part of Windows as a service, so you should know what these terms mean.

- **Feature updates** are released annually. As the name suggests, these updates add new features, delivered in bite-sized chunks compared to the previous practice of Windows releases every 3-5 years.
- **Quality updates** deliver both security and non-security fixes. They are typically released on the second Tuesday of each month, though they can be released at any time. Quality updates include security updates, critical updates, servicing stack updates, and driver updates. Quality updates are cumulative, so installing the latest quality update is sufficient to get all the available fixes for a specific Windows 10 feature update. The "servicing stack" is the code that installs other updates, so they are important to keep current. For more information, see [Servicing stack updates](servicing-stack-updates.md).
- **Insider Preview** builds are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features and confirm compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered.
- **Servicing channels** allow organizations to choose when to deploy new features. 
  - The **General Availability Channel** receives feature updates annually.
  - The **Long-Term Servicing Channel**, which is meant only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATMs, receives new feature releases every two to three years.
- **Deployment rings** are groups of devices used to initially pilot, and then to broadly deploy, each feature update in an organization. 

See [Overview of Windows as a service](waas-overview.md) for more information.

For some interesting in-depth information about how cumulative updates work, see [Windows Updates using forward and reverse differentials](PSFxWhitepaper.md).

## Key concepts

With each release in the General Availability Channel, we recommend beginning deployment right away to devices selected for early adoption (targeted validation) and ramp up to full deployment at your discretion. 

Windows 10 Enterprise LTSC are separate **Long-Term Servicing Channel** versions. Each release is supported for a total of 10 years (five years standard support, five years extended support). New releases are expected about every three years.

For more information, see [Assign devices to servicing channels for Windows client updates](waas-servicing-channels-windows-10-updates.md).

## Staying up to date

To stay up to date, deploy feature updates at an appropriate time after their release. You can use various management and update tools such as Windows Update, Windows Update for Business, Windows Server Update Services, Microsoft Configuration Manager, and non-Microsoft products) to help with this process. [Upgrade Readiness](/windows/deployment/upgrade/upgrade-readiness-get-started), a free tool to streamline Windows upgrade projects, is another important tool to help.

Extensive advanced testing isn’t required. Instead, only business-critical apps need to be tested, with the remaining apps validated through a series of pilot deployment rings. Once these pilot deployments have validated most apps, broad deployment can begin.

This process repeats with each new feature update. These are small deployment projects, compared to the large projects that were necessary with the old three-to-five-year Windows release cycles.

Other technologies such as BranchCache and Delivery Optimization, both peer-to-peer distribution tools, can help with the distribution of the feature update installation files.
