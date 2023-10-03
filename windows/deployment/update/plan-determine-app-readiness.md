---
title: Determine application readiness
description: How to test your apps to identify which need attention prior to deploying an update in your organization.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.author: mstewart
author: mestew
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 12/31/2017
---

# Determine application readiness

Before you deploy a Windows client update, you should know which apps will continue to work without problems, which need their own updates, and which just won't work and must be replaced. If you haven't already, it's worth [classifying your apps](plan-define-readiness.md) with respect to their criticality in your organization.

## Validation methods

You can choose from various methods to validate apps. Exactly which ones to use depends on the specifics of your environment.


|Validation method  |Description  |
|---------|---------|
|Full regression     | A full quality assurance probing. Staff that know the application well and can validate its core functionality should do this validation.        |
|Smoke testing     | The application goes through formal validation. That is, a user validates the application following a detailed plan, ideally with limited, or no knowledge of the application they're validating.        |
|Automated testing     |  Software performs tests automatically. The software lets you know whether the tests have passed or failed, and provides detailed reporting for you automatically.    |
|Test in pilot     | You preselect users to be in the pilot deployment group and carry out the same tasks they do on a day-to-day basis to validate the application. Normally you use this method in addition to one of the other validation types.        |
|Reactive response     | Applications are validated in late pilot, and no specific users are selected. These applications normally aren't installed on many devices and aren't handled by enterprise application distribution.        |

Combining the various validation methods with the app classifications you've previously established might look like this:


|Validation method  |Critical apps  |Important apps  |Not important apps  |
|---------|---------|---------|---------|
|Full regression     | x        |         |         |
|Smoke testing     |         | x        |         |
|Automated testing     |  x       |   x      |  x       |
|Test in pilot     |  x       |  x       |  x       |


### Identify users

Since your organization no doubt has a wide variety of users, each with different background and regular tasks, you have to choose which users are best suited for validation testing. Some factors to consider include:

- **Location**: If users are in different physical locations, can you support them and get validation feedback from the region they're in?
- **Application knowledge**: Do the users have appropriate knowledge of how the app is supposed to work?
- **Technical ability**: Do the users have enough technical competence to provide useful feedback from various test scenarios?

You could seek volunteers who enjoy working with new features and include them in the pilot deployment. You might want to avoid using core users like department heads or project managers. Current application owners, operations personnel, and developers can help you identify the most appropriate pilot users.

### Identify and set up devices for validation

In addition to users, it's important to carefully choose devices to participate in app validation as well. For example, ideally, your selection includes devices representing all of the hardware models in your environment.

There's more than one way to choose devices for app validation:

- **Existing pilot devices**: You might already have a list of devices that you regularly use for testing updates as part of release cycles.
- **Manual selection**: Some internal groups like operations have expertise to help choose devices manually based on specifications, usage, or records of past support problems.
- **Data-driven analysis**: With appropriate tools, you can use diagnostic data from devices to inform your choices.
