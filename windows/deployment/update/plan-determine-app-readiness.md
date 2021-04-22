---
title: Determine application readiness
manager: laurawi
description: How to test your apps to know which need attention prior to deploying an update
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
ms.localizationpriority: medium
ms.audience: itpro
ms.topic: article
ms.collection: m365initiative-coredeploy
ms.author: jaimeo
author: jaimeo
---

# Determine application readiness

Before you deploy a Windows 10 update, you should know which apps will continue to work without problems, which need their own updates, and which just won't work and must be replaced. If you haven't already, it's worth [classifying your apps]<link to plan-define-readiness> with respect to their criticality in your organization.

## Validation methods

You can choose from a variety of methods to validate apps. Exactly which ones to use will depend on the specifics of your environment.


|Validation method  |Description  |
|---------|---------|
|Full regression     | A full quality assurance probing. Staff who know the application well and can validate its core functionality should do this.        |
|Smoke testing     | The application goes through formal validation. That is, a user validates the application following a detailed plan, ideally with limited, or no knowledge of the application they’re validating.        |
|Automated testing     |  Software performs tests automatically. The software will let you know whether the tests have passed or failed, and will provide detailed reporting for you automatically.    |
|Test in pilot     | You pre-select users to be in the pilot deployment group and carry out the same tasks they do on a day-to-day basis to validate the application. Normally you use this method in addition to one of the other validation types.        |
|Reactive response     | Applications are validated in late pilot, and no specific users are selected. These applications normally aren't installed on many devices and aren’t handled by enterprise application distribution.        |

Combining the various validation methods with the app classifications you've previously established might look like this:


|Validation method  |Critical apps  |Important apps  |Not important apps  |
|---------|---------|---------|---------|
|Full regression     | x        |         |         |
|Smoke testing     |         | x        |         |
|Automated testing     |  x       |   x      |  x       |
|Test in pilot     |  x       |  x       |  x       |


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

For more information, see [What is Desktop Analytics?](/mem/configmgr/desktop-analytics/overview)