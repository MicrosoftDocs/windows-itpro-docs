---
title: Plan to deploy Windows Sun Valley
description: Windows Sun Valley deployment planning, IT Pro content.
keywords: ["get started", "windows sun valley", "plan"]
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.date: 06/24/2021
ms.reviewer: 
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# Planning for Windows Sun Valley

**Applies to**

-   Windows Sun Valley

## Deployment planning

Planning for Sun Valley

Sun Valley has the same underlying technology used today in Windows 10. IT Professionals can use familiar existing toolsets to plan, prepare  , deploy, manage, and updateand manage both Sun Valley and Windows 10 updates alike. Because we anticipate customers organizations will be using a mix of Windows 10 devices side-by-side as they integrate Sun Valley into their environments, there are some unique yet largely familiar considerations for this new operating system to help aid in planning for upcoming deployments.

Determining eligibility
We know one of the first questions that you will have is "Do the current PC(s) in my environment meet the Sun Valley hardware requirements bar? To assess if your device(s) meet these hardware criteria, IT Professionals can continue to use the first party analytics tools they are familiar with, including   Update Compliance. In addition, Microsoft is   sharing necessary information to 3rd party ISVs to enable their tools to support analytics for Sun Valley.

Consumers can determine whether their device is eligible for Sun Valley by using the PC Health Check application to assess if a device meets the minimum hardware specifications [place forthcoming ink here]. In addition, detailed minimum requirements can be found at aka.ms/minspec [link forthcoming here].      


Sun Valley rollouts
In this section, we’ll share more on the rollout experience for home users benefiting from    the role of intelligent rollout and for IT admin managed devices who will note some changes to management controls.
Home user, consumer devices
W indows 10 devices purchased after June 2021 that meet or exceed the minimum hardware requirements for Sun Valley will be offered Sun Valley in   October of 2021. Though the message will vary by PC manufacturer, customers will see labels such as ‘this PC will upgrade to Sun Valley once available’ on products for purchase. Note, devices purchased beginning in October will see the Sun Valley offer during the out of box experience or already be imaged with Sun Valley.    

Sun Valley will be made available to current Windows 10 devices who are eligible after General Availability (GA) through the familiar Windows Update experience, first to seekers, then as part of our intelligent rollout process. The Windows Update Settings page will confirm when a device is eligible, and users can choose to upgrade or not.    

    
As with Windows 10, the machine learning based intelligent rollout will be leveraged when rolling out upgrades. Our ML uses a combination of testing, close partner engagement, feedback, diagnostic data, and real-life insights to manage quality. This improves the update experience, ensuring that devices first nominated for updates are those likely to have a seamless experience, and that devices which may be problematic get the benefit of resolving potential compatibility issues before being offered an upgrade to Sun Valley.  
      
Managed devices

While we are excited about the innovations and end user productivity improvements in Sun Valley, we recognize that the "right time" to move will be different for each organization. As always, for devices that you manage as an organization, you can choose between Sun Valley and Windows 10, and when the right time is for your organization to make the migration.

Commercial customers will be able to deploy the Sun Valley update using their typical management tools to eligible devices in their organization beginning at GA. Customers upgrading from Windows Update using WUfB will have the additional benefit of two safety nets: offering blocks on non-eligible devices who do not meet the hardware requirements to upgrade to Sun Valley and Safeguard holds. Safeguard holds will function for Sun Valley devices just as they do  for Windows 10. IT Professionals will have access to information   on which safeguard holds are preventing individual devices from taking the upgrade to Sun Valley  .  

It is worth noting that if you use Windows Update for Business to manage feature update deployments today you will need to leverage the “Target Version” policy rather than Feature Update deferrals to move from Windows 10 to Sun Valley. Deferrals are great for quality updates or to move to newer versions of the same product (e.g. Windows 10 21H1 to Windows 10 21H2), but they can not move you between products (e.g. Windows 10 to Windows Sun Valley). 

Additionally, please note that Sun Valley has a new end user license agreement. By nature of deploying with WUfB Target Version or with WSUS you are accepting this new end user license agreement on behalf of the end users within your organization. 

Finally, please note that while Windows 10 Pro or higher can upgrade for free using their existing management tools, those using S mode will need to first switch out of S mode (as S mode is currently not supported on Sun Valley). 

What about customizations that customers have in place necessary to support their deployments today? Will those continue to work for Sun Valley?

Availability and upgrade path
The Sun Valley upgrade offer will begin for eligible devices at Sun Valley GA in October of this year (2021). This is true for eligible devices already running updated Windows 10 as well as for brand new devices  . 

Enterprise customers who have a volume licensing agreement with Software Assurance or Windows Enterprise E3 subscription will be able to upgrade existing devices to Sun Valley after GA.   

To get a jump start on Sun Valley, we recommend that IT professionals  join the Windows Insider Program (WIP) to deploy and validate it in their environments. 

If you're an IT administrator who's interested in exploring new features as they're being created, we recommend using the Beta Channel (available summer 2021)

As an IT administrator, if you who would like to validate the Sun Valley release (and Windows 10 releases) before broadly deploying in your organization, we recommend you join our Windows Insider Program  Release Preview Channel (available in summer 2021).

Commercial customers can begin validating and exploring Sun Valley prior to GA. Sun Valley will be available for commercial customers to deploy beginning in the summer of 2021 via the Windows Insider Program for Business. Customers can deploy bits from the Windows Insider Pre-release category in WSUS, by configuring Manage Preview Builds to “Release Preview” with WUfB, by leveraging Windows Virtual Devices or Cloud PC*(will this be announced when this paper goes out?) and Azure Marketplace images, or even through simply downloading and deploying ISOs from our Windows Insider Program ISO Download page. Note – regardless of which way you choose to deploy, commercial customers have the benefit of free Microsoft support when validating pre-release, simply submit your support cases here.

To learn more about the Windows Insider Program for Business, click here.   



Like Windows 10, Sun Valley devices will receive regular monthly quality updates to provide security updates and bug fixes, and at times, new functionality when deemed appropriate. Unlike Windows 10, however, Sun Valley devices will receive a single feature update annually. Knowing this will help you define your servicing strategy.

For devices on in-service versions of Windows 10 that do not meet Sun Valley hardware requirements, they will continue to receive monthly Windows 10 security updates. 
Servicing Duration: Sun Valley vs. Windows 10
The duration of support changes slightly. Today, Windows 10 feature updates are released twice yearly, around March and September, via the Semi-Annual Channel. They are serviced with monthly quality updates for 18 or 30 months from the date of the release, depending on the lifecycle policy. For Sun Valley, we will support each annual release for 24 months for Home and Pro editions, and 36 months for Enterprise and Education editions, beginning at GA in October 2021. 
 
Windows 10 will continue to receive twice yearly feature updates . We have committed to supporting Windows 10 through October 14, 2025. 

For more information, see the Windows Release Information Page, which includes information for Windows 10 semi-annual channel and LTSC releases, as well as Sun Valley.    

Potential section from Michael Raschko (pending as of 5/31): Windows 10 currently runs on more than 1 billion devices around the world, representing considerable time and investment from consumers and organizations alike. While we expect the migration to Windows “Sun Valley” will have less overhead than previous legacy Windows versions to Windows 10, we understand that organizations will need time to complete their move to Sun Valley based on their individual situations. Further, they will want to maintain and grow the value of their Windows 10 investment in the interim.   

For organizations who cannot move to Sun Valley immediately, Microsoft’s guidance is to standardize their devices on Windows 10 version to 21H2. Windows 10, version 21H2 will be the last feature update to Windows 10  but will receive specific feature enhancements to ease any growing pains there may be in migrating to Sun Valley. These features aim to provide compatibility with Microsoft existing and future products and services. 

It’s important that organizations remain in control and have adequate time to plan for feature enhancements which could affect the experience of end users. To facilitate this, feature enhancements will be provided on a quarterly cadence and will be provided with management policies to enable or disable those features. [some of this, once we get it locked in, will belong in the Feature update section below]

Alternative sentence coming from Ellie’s deck:  We will release Windows 10, version 21H2 in the second half of 2021 to keep your users productive and secure while you chart your path to Sun Valley.  this is ‘we have your back’ language, and would be great to include it
Application compatibility & readiness 

Application Compatibility
Understanding that applications will work following an OS rollout is critical in the planning stage. Since Sun Valley has been built with compatibility in mind, it’s undergoing and passing the same application compatibility testing requirements that we have in place for Windows 10 feature and quality update releases.

Microsoft is committed to ensuring applications work on the latest versions of our software. Our promise states that applications that worked on Windows 7/8.1/10 will      work on Sun Valley. [This is where app compat info goes, as Test Base and AppAssure go into the Prepare section] 
















Consider using the following process to deploy Windows Sun Valley to existing devices:
1. Preview Windows Sun Valley and create a deployment plan. 
2. Test critical applications and management policies.
3. Update devices to the latest release of Windows 10.
4. Verify that devices meet the minimum hardware requirements for Windows Sun Valley.
5. Update deployment tools and infrastructure.
6. Update qualifying devices to Windows Sun Valley.


## See also

[Get ready for Windows Sun Valley](windows-sv-prepare.md)
