---
title: Determine application readiness
ms.reviewer: 
manager: laurawi
description: How to test your apps to know which need attention prior to deploying an update
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
author: jaimeo
ms.topic: article
ms.collection: M365-modern-desktop
---

# Determine application readiness

Before you deploy a Windows 10 update, you should know which apps will continue to work without problems, which need their own updates, and which just won't work and must be replaced. If you haven't already, it's worth [classifying your apps]<link to plan-define-readiness> with respect to their criticality in your organization.

## Validation methods

You can choose from a variety of methods to validate apps. Exactly which ones to use will depend on the specifics of your environment.


|Validation method  |Description  |
|---------|---------|
|Full regression     | A full quality assurance probing. Staff who know the application very well and can validate its core functionality should do this.        |
|Smoke testing     | The application goes through formal validation. That is, a user validates the application following a detailed plan, ideally with limited, or no knowledge of the application they’re validating.        |
|Automated testing     |  Software performs tests automatically. The software will let you know whether the tests have passed or failed, and will provide detailed reporting for you automatically.    |
|Test in pilot     | You pre-select users to be in the pilot deployment group and carry out the same tasks they do on a day-to-day basis to validate the application. Normally you use this method in addition to one of the other validation types.        |
|Reactive response     | Applications are validated in late pilot, and no specific users are selected. These are normally applications aren't installed on many devices and aren’t handled by enterprise application distribution.        |

Combining the various validation methods with the app classifications you've previously established might look like this:


|Validation method  |Critical apps  |Important apps  |Not important apps  |
|---------|---------|---------|---------|
|Full regression     | x        |         |         |
|Smoke testing     |         | x        |         |
|Automated testing     |  x       |   x      |  x       |
|Test in pilot     |  x       |  x       |  x       |



