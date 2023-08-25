---
title: Prepare a servicing strategy for Windows client updates
description: A strong Windows client deployment strategy begins with establishing a simple, repeatable process for testing and deploying each feature update.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 12/31/2017
---

# Prepare a servicing strategy for Windows client updates

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Here's an example of what this process might look like:

- **Configure test devices.** Configure test devices in the Windows Insider Program so that Insiders can test feature updates before they're available to the General Availability Channel. Typically, this population would be a few test devices that IT staff members use to evaluate prerelease builds of Windows. Microsoft provides current development builds to Windows Insider members approximately every week so that interested users can see the functionality Microsoft is adding. See the section Windows Insider for details on how to enroll in the Windows Insider Program for Business.
- **Identify excluded devices.** For some organizations, special-purpose devices, like devices that control factory or medical equipment or run ATMs, require a stricter, less frequent feature update cycle than the General Availability Channel can offer. For those devices, install the Enterprise LTSC edition to avoid feature updates for up to 10 years. Identify these devices, and separate them from the phased deployment and servicing cycles to help remove confusion for your administrators and ensure that devices are handled correctly. 
- **Recruit volunteers.** The purpose of testing a deployment is to receive feedback. One effective way to recruit pilot users is to request volunteers. When doing so, clearly state that you're looking for feedback rather than people to just "try it out" and that there could be occasional issues involved with accepting feature updates right away. With Windows as a service, the expectation is that there should be few issues, but if an issue does arise, you want testers to let you know as soon as possible. When considering whom to recruit for pilot groups, be sure to include members who provide the broadest set of applications and devices to validate the largest number of apps and devices possible.
- **Update Group Policy.** Each feature update includes new group policies to manage new features. If you use Group Policy to manage devices, the Group Policy Admin for the Active Directory domain needs to download an .admx package and copy it to their [Central Store](/troubleshoot/windows-server/group-policy/create-central-store-domain-controller) (or to the [PolicyDefinitions](/previous-versions/dotnet/articles/bb530196(v=msdn.10)) directory in the SYSVOL folder of a domain controller if not using a Central Store). You can manage new group policies from the latest release of Windows by using Remote Server Administration Tools. The ADMX download package is created at the end of each development cycle and then posted for download. To find the ADMX download package for a given Windows build, search for "ADMX download for Windows build xxxx". For details about Group Policy management, see [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store)
- **Choose a servicing tool.** Decide which product you'll use to manage the Windows updates in your environment. If you're currently using Windows Server Update Services (WSUS) or Microsoft Configuration Manager to manage your Windows updates, you can continue using those products to manage Windows 10 or Windows 11 updates. Alternatively, you can use Windows Update for Business. In addition to which product you'll use, consider how you'll deliver the updates. Multiple peer-to-peer options are available to make update distribution faster. For a comparison of tools, see [Servicing tools](waas-overview.md#servicing-tools).
- **Prioritize applications.** First, create an application portfolio. This list should include everything installed in your organization and any webpages your organization hosts. Next, prioritize this list to identify those apps that are the most business critical. Because the expectation is that application compatibility with new versions of Windows will be high, only the most business-critical applications should be tested before the pilot phase; everything else can be tested afterwards. For more information about identifying compatibility issues withe applications, see [Manage Windows upgrades with Upgrade Analytics](/mem/configmgr/desktop-analytics/overview). 


Each time Microsoft releases a feature update, the IT department should use the following high-level process to help ensure that the broad deployment is successful:

1. **Validate compatibility of business critical apps.** Test your most important business-critical applications for compatibility with the new Windows 10 feature update running on your Windows Insider machines identified in the earlier "Configure test devices" step of the previous section. The list of applications involved in this validation process should be small because most applications can be tested during the pilot phase.
2. **Target and react to feedback.** Microsoft expects application and device compatibility to be high, but it's still important to have targeted groups within both the IT department and business units to verify application compatibility for the remaining applications in your application portfolio. Because only the most business-critical applications are tested beforehand, this activity represents most of the application compatibility testing in your environment. It shouldn't necessarily be a formal process but rather user validation by using a particular application. So, the next step is to deploy the feature update to early-adopting IT users and your targeted groups running in the General Availability Channel that you identified in the "Recruit volunteers" step of the previous section. Be sure to communicate clearly that you're looking for feedback as soon as possible, and state exactly how users can submit feedback to you. Should an issue arise, have a remediation plan to address it. 
3. **Deploy broadly.** Finally, focus on the large-scale deployment using deployment rings. Build deployment rings that target groups of computers in your selected update-management product. To reduce risk as much as possible, construct your deployment rings in a way that splits individual departments into multiple rings. This way, if you were to encounter an issue, you don't prevent any critical business from continuing. By using this method, each deployment ring reduces risk as more people have been updated in any particular department. 


