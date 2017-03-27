---
title: Quick guide to Windows as a service (Windows 10)
description: In Windows 10, Microsoft has streamlined servicing to make operating system updates simpler to test, manage, and deploy.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: DaniHalfin
localizationpriority: high
---

# Quick guide to Windows as a service


**Applies to**

- Windows 10
- Windows 10 Mobile
- Windows 10 IoT Mobile

Windows as a service is a new concept, introduced with the release of Windows 10.  While [an extensive set of documentation](index.md) is available explaining all the specifics and nuances, here is a quick guide to the most important concepts.

## Definitions

Some new terms have been introduced as part of Windows as a service, so you should know what these terms mean.
- **Feature updates** will be released two to three times per year.  As the name suggests, these will add new features to Windows 10, delivered in bite-sized chunks compared to the previous practice of Windows releases every 3-5 years.
- **Quality updates** are released monthly, delivering both security and non-security fixes.  These are cumulative, so installing the latest quality update is sufficient to get all the available fixes for a specific Windows 10 feature update.
- **Insider Preview** builds are made available during the development of the features that will be shipped in the next feature update, enabling organizations to validate new features as well as compatibility with existing apps and infrastructure, providing feedback to Microsoft on any issues encountered.
- **Servicing branches** allow organizations to choose when to deploy new features.  Current Branch (CB) deploys the fastest, soon after a feature update is released.  Current Branch for Business (CBB) defers the installation of the same feature update by about four months, until that feature update is considered ready for broad deployment. Long Term Servicing Branch (LTSB) is different, used only for specialized devices (which typically don’t run Office) such as those that control medical equipment or ATM machines that need to be kept stable and secure.
- **Deployment rings** are groups of devices used to initially pilot, and then to broadly deploy, each feature update in an organization.  

See [Overview of Windows as a service](waas-overview.md) for more information.

## Key Concepts

New feature update releases are initially considered **Current Branch (CB) releases**; organizations will use these for pilot deployments to ensure compatibility with existing apps and infrastructure.  After about four months, the feature update will be declared as **Current Branch for Business (CBB)**, indicating that it is ready for broad deployment.

Each Windows 10 feature update (which initially begins as CB and then is declared as CBB) will be serviced with quality updates for a minimum of 18 months after it is released.  The total length of time can be longer, as there will be two CBB releases serviced at all times.  There will be a minimum of 60 days advanced notice (a grace period) after a CBB declaration occurs before an older feature update is no longer serviced. 

Windows 10 Enterprise LTSB is a separate **Long Term Servicing Branch (LTSB)** version.  Each release is supported for a total of 10 years (five years standard support, five years extended support).  New releases are expected about every three years.

See [Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md) for more information.

## Staying up to date

The process for keeping Windows 10 up to date involves deploying a feature update, at an appropriate time after its release.  A variety of tools management and patching tools such as Windows Update, Windows Update for Business, Windows Server Update Services, System Center Configuration Manager, and third-party products) can be used to help with this process.  [Windows Upgrade Analytics](https://www.microsoft.com/en-us/WindowsForBusiness/upgrade-analytics), a free tool to streamline Windows upgrade projects, is another important tool to help.

Because app compatibility, both for desktop apps and web apps, is outstanding with Windows 10, extensive advanced testing isn’t required.  Instead, only business-critical apps need to be tested, with the remaining apps validated through a series of pilot deployment rings.  Once these pilot deployments have validated most apps and CBB has been declared, broad deployment can begin.

This process repeats with each new feature update, two to three times per year.  These are small deployment projects, compared to the big projects that were necessary with the old three-to-five-year Windows release cycles.

Additional technologies such as BranchCache and Delivery Optimization, both peer-to-peer distribution tools, can help with the distribution of the feature update installation files.

See [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) and [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md) for more information.

## Video: An overview of Windows as a service

<iframe width="560" height="315" src="https://www.youtube.com/embed/MLc4-Suv0LU" frameborder="0" allowfullscreen></iframe> 
 
## Learn more

[Adopting Windows as a service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft)


## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage device restarts after updates](waas-restart.md)








