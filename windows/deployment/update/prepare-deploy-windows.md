---
title: Prepare to deploy Windows
description:
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

# Prepare to deploy Windows

Having worked through the activities in the planning phase, you should be in a good position to prepare your environment and process to deploy Windows 10. The planning phase will have left you with these useful items:

- A clear understanding of necessary personnel and their roles and criteria for [rating app readiness](plan-define-readiness.md)
- A plan for [testing and validating](plan-determine-app-readiness.md) apps
- An assessment of your [deployment infrastructure](eval-infra-tools.md) and definitions for operational readiness
- A [deployment plan](create-deployment-plan.md) that defines the rings you want to use 

Now you're ready to actually start making changes in your environment to get ready to deploy.

## Prepare infrastructure and environment

- Deploy site server updates for Configuration Manager.
- Update non-Microsoft security tools like security agents or servers.
- Update non-Microsoft management tools like data loss prevention agents.

Your infrastructure probably includes many different components and tools. You’ll need to ensure your environment isn’t affected by issues due to the changes you make to the various parts of the infrastructure. Follow these steps:

1.	Review all of the infrastructure changes that you’ve identified in your plan. It’s important to understand the changes that need to be made and to detail how to implement them. This prevents problems later on.
2.	Validate your changes. You’ll validate the changes for your infrastructure’s components and tools, to help you understand how your changes could affect your production environment. 
3.	Implement the changes. Once the changes have been validated, you can implement the changes across the wider infrastructure.


You should also look at your organization’s environment’s configuration and outline how you’ll implement any necessary changes previously identified in the plan phase to support the update. Consider what you’ll need to do for the various settings and policies that currently underpin the environment. For example:

- Implement new draft security guidance. New versions of Windows can include new features that improve your environment’s security. Your security teams will want to make appropriate changes to security related configurations.
- Update security baselines. Security teams understand the relevant security baselines and will have to work to make sure all baselines fit into whatever guidance they have to adhere to.
However, your configuration will consist of many different settings and policies. It’s important to only apply changes where they are necessary, and where you gain a clear improvement. Otherwise, your environment might face issues that will slow down the update process. You want to ensure your environment isn’t affected adversely because of changes you make. For example:

1.	Review new security settings. Your security team will review the new security settings, to understand how they can best be set to facilitate the update, and to also investigate the potential effects they might have on your environment.
2.	Review security baselines for changes. Security teams will also review all the necessary security baselines, to ensure the changes can be implemented, and ensure your environment remains compliant.
3.	Implement and validate security settings and baseline changes. Your security teams will then implement all of the security settings and baselines, having addressed any potential outstanding issues.


## Prepare applications and devices

You've previously decided on which validation methods you want to use to validate apps. Now is the time to identify users and devices you want to participate in app validation and get them ready.

### Identify users

Since your organization no doubt has a wide variety of users, each with different background and regular tasks, you'll have to choose which users are best suited for validation testing. Some factors to consider include:

- **Location**: If users are in different physical locations, can you support them and get validation feedback from the region they're in?
- **Application knowledge**: Do the users have appropriate knowledge of how the app is supposed to work?
- **Technical ability**: Do the users have enough technical competence to provide useful feedback from various test scenarios?

You could seek volunteers who enjoy working with new features and include them in the pilot deployment. You might want to avoid using core users like department heads or project managers. Current application owners, operations personnel, and developers can help you identify the most appropriate pilot users.

### Identify and set up devices for validation

In addition to users, it's important to carefully choose devices to participate in app validation as well. For example, ideally, your selection will include devices representing all of the hardware models in your environment.

There is more than one way to choose devices for app validation:

- **Existing pilot devices**: You might already have a list of devices that you regularly use for testing updates as part of release cycles.
- **Manual selection**: Some internal groups like operations will have expertise to help choose devices manually based on specifications, usage, or records of past support problems.
- **Data-driven analysis**: With appropriate tools, you can use diagnostic data from devices to inform your choices.


### Desktop Analytics

Desktop Analytics can make all of the tasks discussed in this article significantly easier:

- Creating and maintaining an application and device inventory
- Assign owners to applications for testing
- Automatically apply your app classifications (critical, important, not important)
- Automatically identify application compatibility risks and provide recommendations for reducing those risks

For more information, see [What is Desktop Analytics?](https://docs.microsoft.com/mem/configmgr/desktop-analytics/overview)


## Prepare capability

In the plan phase, you determined the specific infrastructure and configuration changes that needed to be implemented to add new capabilities to the environment. Now you can move on to implementing those changes defined in the plan phase. You'll need to complete these higher-level tasks to gain those new capabilities:

- Enable capabilities across the environment by implementing the changes. For example, implement updates to relevant ADMX templates in Active Directory. New Windows versions will come with new policies that you use to update ADMX templates. 
- Validate new changes to understand how they affect the wider environment.
- Remediate any potential problems that have been identified through validation. 

## Prepare users

Users often feel like they are forced into updating their devices randomly. They often don't fully understand why an update is needed, and they don't know when updates would be applied to their devices ahead of time. It's best to ensure that upcoming updates are communicated clearly and with adequate warning.

You can employ a variety of measures to achieve this, for example:

- Send overview email about the update and how it will be deployed to the entire organization.
- Send personalized emails to users about the update with specific details.
- Set an opt-out deadline for employees that need to remain on the current version for a bit longer, due to a business need.
- Provide the ability to voluntarily update at users’ convenience.
- Inform users of a mandatory installation date when the update will be installed on all devices.

{I can include the calendar if desired, but the version in the source material isn't rendering well.}
