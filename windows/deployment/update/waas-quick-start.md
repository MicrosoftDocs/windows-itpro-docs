---
title: Quick guide to Windows as a service (Windows 10)
description: In Windows 10, Microsoft has streamlined servicing to make operating system updates simpler to test, manage, and deploy.
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Quick guide to Windows as a service


**Applies to**

- Windows 10

Windows as a service is a new concept, introduced with the release of Windows 10. While [an extensive set of documentation](index.md) is available explaining all the specifics and nuances, here is a quick guide to the most important concepts.

## Definitions

Some new terms have been introduced as part of Windows as a service, so you should know what these terms mean.
- **Feature updates** are released twice per year, around March and September. As the name suggests, these updates add new features to Windows 10, delivered in bite-sized chunks compared to the previous practice of Windows releases every 3-5 years.
- **Quality updates** deliver both security and non-security fixes. They are typically released on the second Tuesday of each month, though they can be released at any time. Quality updates include security updates, critical updates, servicing stack updates, and driver updates. Quality updates are cumulative, so installing the latest quality update is sufficient to get all the available fixes for a specific Windows 10 feature update. The "servicing stack" is the code that installs other updates, so they are important to keep current. For more information, see [Servicing stack updates](servicing-stack-updates.md).
- **Insider Preview** builds are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features and confirm compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered.
- **Servicing channels** allow organizations to choose when to deploy new features. 
    - The **Semi-Annual Channel** receives feature updates twice per year. 
    - The **Long-Term Servicing Channel**, which meant only for specialized devices (which typically don't run Office) such as those that control medical equipment or ATM machines, receives new feature releases every two to three years.
- **Deployment rings** are groups of devices used to initially pilot, and then to broadly deploy, each feature update in an organization. 

See [Overview of Windows as a service](waas-overview.md) for more information.

For some interesting in-depth information about how cumulative updates work, see [Windows Updates using forward and reverse differentials](PSFxWhitepaper.md).

## Key Concepts

Windows 10 gains new functionality with twice-per-year feature update releases. Initially, organizations will use these feature update releases for pilot deployments to ensure compatibility with existing apps and infrastructure. With each Semi-Annual Channel release, we recommend beginning deployment right away to devices selected for early adoption (targeted validation) and ramp up to full deployment at your discretion. 

All releases of Windows 10 have 18 months of servicing for all editions--these updates provide security and feature updates for the release. Customers running Enterprise and Education editions have an additional 12 months of servicing for specific Windows 10 releases, for a total of 30 months from initial release. These versions include Enterprise and Education editions for Windows 10, versions 1607 and later. Starting in October 2018, all Semi-Annual Channel releases in the September/October timeframe will also have the additional 12 months of servicing for a total of 30 months from the initial release. The Semi-Annual Channel versions released in March/April timeframe will continue to have an 18-month lifecycle.

Windows 10 Enterprise LTSB is a separate **Long-Term Servicing Channel** version. Each release is supported for a total of 10 years (five years standard support, five years extended support). New releases are expected about every three years.

For more information, see [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md).

## Staying up to date

The process for keeping Windows 10 up to date involves deploying a feature update, at an appropriate time after its release. You can use various management and update tools such as Windows Update, Windows Update for Business, Windows Server Update Services, Microsoft Endpoint Configuration Manager, and non-Microsoft products) to help with this process. [Upgrade Readiness](https://docs.microsoft.com/windows/deployment/upgrade/upgrade-readiness-get-started), a free tool to streamline Windows upgrade projects, is another important tool to help.

Because app compatibility, both for desktop apps and web apps, is outstanding with Windows 10, extensive advanced testing isn’t required. Instead, only business-critical apps need to be tested, with the remaining apps validated through a series of pilot deployment rings. Once these pilot deployments have validated most apps, broad deployment can begin.

This process repeats with each new feature update, twice per year. These are small deployment projects, compared to the large projects that were necessary with the old three-to-five-year Windows release cycles.

Other technologies such as BranchCache and Delivery Optimization, both peer-to-peer distribution tools, can help with the distribution of the feature update installation files.

See [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) and [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) for more information.


 
## Learn more

- [Adopting Windows as a service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft)
- [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet)

## Related topics

- [Update Windows 10 in the enterprise](index.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Manage device restarts after updates](waas-restart.md)








