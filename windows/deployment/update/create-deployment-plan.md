---
title: Create a deployment plan
description: Devise the number of deployment rings you need and how you want to populate them
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.collection: m365initiative-coredeploy
manager: laurawi
ms.topic: article
---

# Create a deployment plan

A "service management" mindset means that the devices in your organization fall into a continuum, with the software update process being constantly planned, deployed, monitored, and optimized. And once you use this process for feature updates, quality updates become a lightweight procedure that is simple and fast to execute, ultimately increasing velocity.

When you move to a service management model, you need effective ways of rolling out updates to representative groups of devices. We’ve found that a ring-based deployment works well for us at Microsoft and many other organizations across the globe. Deployment rings in Windows 10 are similar to the deployment groups most organizations constructed for previous major revision upgrades. They are simply a method to separate devices into a deployment timeline.

At the highest level, each “ring” comprises a group of users or devices that receive a particular update concurrently. For each ring, IT administrators set criteria to control deferral time or adoption (completion) that should be met before deployment to the next broader ring of devices or users can occur.

A common ring structure uses three deployment groups:

- Preview: Planning and development
- Limited: Pilot and validation
- Broad: Wide deployment

> [!NOTE]
> Organizations often use different names for their “rings," for example:
> - First > Fast > Broad
> - Canaries > Early Adopters > Users
> - Preview > Broad > Critical


## How many rings should I have?

There are no definite rules for exactly how many rings to have for your deployments. As mentioned previously, you might want to ensure zero downtime for mission-critical devices by putting them in their own ring. If you have a large organization, you might want to consider assigning devices to rings based on geographic location or the size of rings so that helpdesk resources are more available. Consider the needs of your business and introduce rings that make sense for your organization.

## Advancing between rings

There are basically two strategies for moving deployments from one ring to the next. One is service-based, the other project based.

- "Red button" (service based): Assumes that content is good until proven bad. Content flows until an issue is discovered, at which point the IT administrator presses the “red button” to stop further distribution.
- Green button (project based): Assumes that content is bad until proven good. Once all validation has passed, the IT administrator presses the “green button” to push the content to the next ring.

When it comes to deployments, having manual steps in the process usually impedes update velocity. A "red button" strategy is better when that is your goal. 

## Preview ring

The purpose of the Preview ring is to evaluate the new features of the update. It's *not* for broad parts of the organization but is limited to the people who are responsible for knowing what is coming next, generally IT administrators. Ultimately, this phase is the time the design and planning work happens so that when the public update is shipped, you can have greater confidence in the update.

> [!NOTE]
> Being part of the [Windows Insider Program](https://insider.windows.com/for-business/) gives you early access to Windows releases so that you can use Insider Preview builds in your Preview ring to validate your apps and infrastructure, preparing you for public Windows releases. 


### Who goes in the Preview ring?

The Preview ring users are the most tech savvy and resilient people, who will not lose productivity if something goes wrong. In general, these users are IT pros, and perhaps a few people in the business organization.

During your plan and prepare phases, you should focus on the following activities:

- Work with Windows Insider Preview builds.
- Identify the features and functionality your organization can or wants to use.
- Establish who will use the features and how they will benefit.
- Understand why you are putting out the update.
- Plan for usage feedback.

Remember, you are working with pre-release software in the Preview ring and you will be evaluating features and testing the update for a targeted release.

> [!IMPORTANT]
> If you are using Windows Insider (pre-release) releases for your preview ring and you are using WSUS or Windows Update for Business, be sure to set the following policies to allow for Preview builds:
> - **Manage Preview Builds: 2 - Enable preview builds**
> • Under **Branch Readiness Level**, select **When Preview Builds and Feature Updates are Received: 4--Windows Insider Program Slow**

## Limited ring

The purpose of the Limited ring is to validate the update on representative devices across the network. During this period, data, and feedback are generated to enable the decision to move forward to broader deployment. Desktop
Analytics can help with defining a good Limited ring of representative devices and assist in monitoring the deployment.

### Who goes in the Limited ring?

The most important part of this phase is finding a representative sample of devices and applications across your network. If possible, all hardware and all applications should be represented, and it's important that the people selected for this ring are using their devices regularly in order to generate the data you will need to make a decision for broader deployment across your organization. The IT department, lab devices, and users with the most cutting-edge hardware usually don’t have the applications or device drivers that are truly a representative sample of your network.


During your pilot and validate phases, you should focus on the following activities:

- Deploy new innovations.
- Assess and act if issues are encountered.
- Move forward unless blocked.

When you deploy to the Limited ring, you’ll be able to gather data and react to incidents happening in the environment, quickly addressing any issues that might arise. Ensure you monitor for sufficient adoption within this ring, because your Limited ring represents your organization across the board, and when you achieve sufficient adoption, you can have confidence that your broader deployment will run more smoothly.

## Broad deployment

Once the devices in the Limited ring have had a sufficient stabilization period, it’s time for broad deployment across the network.

### Who goes in the Broad deployment ring?

In most businesses, the Broad ring includes the rest of your organization. Because of the work in the previous ring to vet stability and minimize disruption (with diagnostic data to support your decision) broad deployment can occur relatively quickly.

> [!NOTE]
> In some instances, you might hold back on mission critical devices (such as medical devices) until deployment in the Broad ring is complete. Get best practices and recommendations for deploying Windows 10 feature
> updates to mission critical devices.

During the broad deployment phase, you should focus on the following activities:

- Deploy to all devices in the organization.
- Work through any final unusual issues that were not detected in your Limited ring.


## Ring deployment planning

Previously, we have provided methods for analyzing your deployments, but these have been standalone tools to assess, manage and execute deployments. In other words, you would generate an analysis, make a deployment strategy, and then move to your console for implementation, repeating these steps for each deployment. We have combined many of these tasks, and more, into a single interface with Desktop Analytics.


[Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/overview) is a cloud-based service and a key tool in [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/configmgr/core/understand/microsoft-endpoint-manager-faq). Using artificial intelligence and machine learning, Desktop Analytics is a powerful tool to give you insights and intelligence to
make informed decisions about the readiness of your Windows devices.

In Windows 10 deployments, we have seen compatibility issues on < 0.5% of apps when using Desktop Analytics. Using Desktop Analytics with Microsoft Endpoint Manager can help you assess app compatibility with the latest
feature update and create groups that represent the broadest number of hardware and software configurations on the smallest set of devices across your organization. In addition, Desktop Analytics can provide you with a device and software inventory and identify issues, giving you data that equate to actionable decisions.

> [!IMPORTANT]
> Desktop Analytics does not support preview (Windows Insider) builds; use Configuration Manager to deploy to your Preview ring. As noted previously, the Preview ring is a small group of devices represents your ecosystem very well in terms of app, driver, and hardware diversity.

### Deployment plan options

There are two ways to implement a ring deployment plan, depending on how you manage your devices:

- If you are using Configuration Manager: Desktop Analytics provides end-to-end deployment plan integration so that you can also kick off phased deployments within a ring. Learn more about [deployment plans in Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/about-deployment-plans).
- If you are using Microsoft Intune, see [Create deployment plans directly in Intune](https://docs.microsoft.com/mem/intune/fundamentals/planning-guide).

For more about Desktop Analytics, see these articles:

- [How to set up Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/set-up)
- [Tutorial: Deploy Windows 10 to Pilot](https://docs.microsoft.com/mem/configmgr/desktop-analytics/tutorial-windows10)
- [Desktop Analytics documentation](https://docs.microsoft.com/mem/configmgr/desktop-analytics/overview)
- [Intune deployment planning, design, and implementation guide](https://docs.microsoft.com/mem/intune/fundamentals/planning-guide)

