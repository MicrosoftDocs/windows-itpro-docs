---
title: Define readiness criteria
ms.reviewer: 
manager: laurawi
description: Learn how to set key benchmarks so you know when you're ready to deploy the next wave of updates
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

# Define readiness criteria

## Figure out personnel and roles


## Decide on app criteria

Some apps in your environment are fundamental to your core business activities. Other apps help workers perform their roles, but aren’t critical to your business operations. Before you start inventorying and assessing the apps in your environment, you should establish some criteria for categorizing your apps, and then determine a priority for each. This will help you understand how best to deploy updates and how to resolve any issues that could arise.

In the Prepare phase, you'll apply the criteria you define now to every app in your organization.

Here's a suggested classification scheme: {HOW WOULD YOU FEEL ABOUT SOME SPECIFIC EXAMPLES FOR ALL THESE? MAYBE USING MS AS AN EXAMPLE.}


|Classification  |Definition|
|---------|---------|
|Critical     | The most vital applications that handle core business activities and processes. If these applications were not available, the business, or a business unit, wouldn’t be able to function at all. |
|Important     | Applications that individual staff members need to support their productivity. Downtime here would affect individual users, but would only have a minimal impact on the business.       |
|Not important   | There is no impact on the business if these are not available for a while.        |

Once you have classified your applications, you should agree what each classification means to the organization in terms of priority and severity. This will help ensure that issues can be triaged with the right level of urgency. You should assign each app a time-based priority.

Here's an example priority rating system; of course the specifics could vary for your organization:


|Priority  |Definition  |
|---------|---------|
|1        | Any issues or risks identified must be investigated and resolved as soon as possible.        |
|2     | Start investigating risks and issues within two business days and fix them *during* the current deployment cycle.    |
|3     | Start investigating risks and issues within ten business days. You don’t have to fix them all within the current deployment cycle. However, all issues must be fixed by the end of the next deployment cycle.        |
|4     | Start investigating risks and issues within 20 business days. You can fix them in the current or any future development cycle.        |

Related to priority, but distinct, is the concept of severity. You should define a severity ranking as well, based on impact a problem with an app should have on the the deployment cycle.

Here's an example:


|Severity  |Impact  |
|---------|---------|
|1     | Work stoppage or loss of revenue        |
|2     | Productivity loss for a business unit        |
|Row3     | Productivity loss for individual users         |
|Row4     | Minimal impact on users        |

